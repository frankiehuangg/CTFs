#!/usr/bin/python3

import math
import os

os.system("clear")

from pwn import *

io = remote("lac.tf", 31190)

n = int(io.recvline(False).split()[2].decode("ASCII"))
a = int(io.recvline(False).split()[2].decode("ASCII"))

for i in range(150):
    c = int(io.recvline(False).split()[2].decode("ASCII"))

    amt = 0

    while (c % 6 == 0):
        c = c // 6
        amt += 1

    print(f'{i} : {amt}')

    # if c is divisible by 6 == amt must be even (since squared)
    # else : not divisible by 6 -> bit 0
    if (amt % 2 == 0): # not divisible by 6 == bit 0
        io.sendline(b'0')
    else:
        io.sendline(b'1')

    io.recv()

io.recvline()
print(io.recvline())
