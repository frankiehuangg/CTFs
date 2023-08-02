#!/usr/bin/python3

# run with ./solve.py | grep crypto
from pwn import xor

ct = bytes.fromhex("73626960647f6b206821204f21254f7d694f7624662065622127234f726927756d")

for i in range(256):
    print(xor(ct, i))
