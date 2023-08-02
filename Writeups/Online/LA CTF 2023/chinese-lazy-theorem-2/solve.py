#!/usr/bin/python3

from pwn import *

io = remote("nc lac.tf", 31111)

p = int(io.recvline(False).decode("ASCII"))
q = int(io.recvline(False).decode("ASCII"))

print(p, q)
