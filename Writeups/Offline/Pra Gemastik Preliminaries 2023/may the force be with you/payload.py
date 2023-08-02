#!/usr/bin/python3
from pwn import *

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.REMOTE):   # ("server", port)
        return remote(sys.argv[1], sys.argv[2])
    else:               # Run locally
        return ELF.process()

# Set up the correct architecture for pwn
file = "./chall"
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
# payload = flat(
#     offset * b'A',
#     ELF.symbols.secret_spider
# )
# 
# io.sendline(payload)

io.interactive()
