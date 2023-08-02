#!/usr/bin/python3

from pwn import *

io = remote(b"lac.tf", 31110)

p = int(io.recvline())
q = int(io.recvline())

n = p * q

io.recv()
io.sendline(b'1')

io.recv()
io.sendline(str(n).encode("ASCII"))

target = io.recvline()

io.recv()
io.sendline(b'2')

io.recv()
io.sendline(target)

print(io.recv())
