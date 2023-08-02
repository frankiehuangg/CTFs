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
file = ""
libc = ""
if (file != ""):
    elf = context.binary = ELF(file, checksec=False)

# REMOTE
server = "ctf-gemastik.ub.ac.id"
port = 10000

# GDB
context.terminal = "kitty"
script = """

"""

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

import sys
from sage.all import *

io = initIO()

io.recvuntil(b'k = ')
k = int(io.recvline(False))

print(f'k = {k}')

shares = []
for i in range(k-1):
    leak = io.recvuntil(b')\n').decode().lstrip('(').rstrip(')\n').split(', ')
    x = int(leak[0])
    y = int(leak[1])
    shares.append([x, y])

x = [shares[i][0] for i in range(len(shares))]
y = [shares[i][1] for i in range(len(shares))]

mtx = Matrix([[pow(x[i], j) % 1000000 for i in range(len(x))] for j in range(len(y) + 1)])

y = vector(y)

print('calc inv')
mtrx = [[pow(x[_], j) % 1000000 for _ in range(len(x))] for j in range(1, len(y) + 1)]
print(mtrx)
mtrx = Matrix(mtrx).inverse()

for i in range(1, 10**6):
    temp = y-vector([i for _ in range(len(shares))])

    if (i % 100 == 0):
        print(i)

    res = mtrx.solve_left(temp)
    #res = i
    #for j in range(0, len(y)):
    #    res += (mtrx[j][0] * temp[j])

    print(res[0])

    if (int(res[0]) == res[0]):
        print(i)
        io.sendline(str(i).encode())
        break

if (args.interactive):
    io.interactive()
