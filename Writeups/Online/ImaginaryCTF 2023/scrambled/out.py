flag = """0x7a
0x79
0x78
0x5e
0x77
0x75
0x25
0x76
0x21
0x74
0x73
0x31
0x72
0x3b
0x71
0x40
0x6f
0x70
0x23
0x6e
0x6d
0x24
0x6c
0x6b
0x28
0x69
0x6a
0x67
0x68
0x2a
0x66
0x65
0x64
0x26
0x63
0x61
0x30
0x62
0x2d
0x7b
0x7d
0x29"""

flag = flag.split('\n')
print(flag)

for f in flag:
    print(chr(int(f, 16)), end='')
