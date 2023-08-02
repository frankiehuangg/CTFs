#!/usr/bin/python3
from pwn import *
import argparse

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

    if (args.debug):
        text += f"""
│  DEBUGGING   {cGRN}ENABLED{cDFL}          │"""
    else:
        text += f"""
│  DEBUGGING   {cRED}DISABLED{cDFL}         │"""

    if (args.ni):
        text += f"""
│  INTERACTIVE {cRED}DISABLED{cDFL}         │"""
    else:
        text += f"""
│  INTERACTIVE {cGRN}ENABLED{cDFL}          │"""

    if (args.gdb):
        text += f"""
│  RUNNING     {cYLW}GDB{cDFL}              │
└───────────────────────────────┘
"""
    elif (args.remote):
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
    if (args.debug):
        context.log_level = "debug"

    if (args.gdb):
        return pwnlib.gdb.debug(ELF.path, gdbscript=SCRIPT)
    if (args.remote):
        return remote(SERVER, PORT)
    return ELF.process()

top_parser = argparse.ArgumentParser()

running = top_parser.add_mutually_exclusive_group()
running.add_argument("-g", "--gdb", action="store_true", dest="gdb", help="connect to gdb")
running.add_argument("-r", "--remote", action="store_true", dest="remote", help="connect to remote")
running.add_argument("-l", "--local", action="store_true", dest="local", help="connect to local", default=True)

top_parser.add_argument("-d", "--debug", action="store_true", dest="debug", default=False, help="enable/disable debugging")
top_parser.add_argument("-ni", "--no-interactive", action="store_true", dest="ni", default=True, help="enable/disable interactive")
args = top_parser.parse_args()

# ===========================================================
#                       CONFIG SETUP
# ===========================================================

# LOCAL
FILE = "./chall"
LIBC = "./libc.so.6"
if (FILE != ""):
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

payload = Payload()

io.sendline(payload.get())

if (not args.ni):
    io.interactive()
