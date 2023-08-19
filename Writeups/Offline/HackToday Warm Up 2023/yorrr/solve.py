import string

pair1 = """abcdefghijklmnopqrstuvwxyzABCDEFGH"""
encoding1 = """
2e 29 28 2b 22 2d 2c 2f 26 21 20 23 3a 25 24 27
3e 39 38 3b 32 3d 3c 3f 08 0b 30 33 0c 0f 0e 09
00 00 02 0d
"""
encoding1 = encoding1.lstrip('\n').rstrip('\n').replace('\n', ' ').split(' ')
encoding1 = [encoding1[i:i+4] for i in range(0, len(encoding1), 4)]

for enc in encoding1:
    enc.reverse()

encoding1 = ["".join(enc) for enc in encoding1]
encoding1 = "".join(encoding1)[:-4]

pair2 = """0123456789IJKLMNOPQRSTUVWXYZ!"#$%&"""
encoding2 = """
79 78 7b 7a 7d 7c 7f 7e 00 03 73 72 04 07 06 01
18 1b 1a 05 1c 1f 1e 19 10 13 12 1d 6e 69 68 6b
00 00 6c 6f
"""
encoding2 = encoding2.lstrip('\n').rstrip('\n').replace('\n', ' ').split(' ')
encoding2 = [encoding2[i:i+4] for i in range(0, len(encoding2), 4)]

for enc in encoding2:
    enc.reverse()

encoding2 = ["".join(enc) for enc in encoding2]
encoding2 = "".join(encoding2)[:-4]

pair3 = """'()*+,-./:;<=>?@[\]^_`{|}~"""
encoding3 = """
60 63 62 6d 64 67 66 61 76 71 70 65 0a 75 74 77
14 17 16 11 36 31 2a 15 00 00 34 37
"""
encoding3 = encoding3.lstrip('\n').rstrip('\n').replace('\n', ' ').split(' ')
encoding3 = [encoding3[i:i+4] for i in range(0, len(encoding3), 4)]

for enc in encoding3:
    enc.reverse()

encoding3 = ["".join(enc) for enc in encoding3]
encoding3 = "".join(encoding3)[:-4]

pair = "".join([pair1, pair2, pair3])
print(pair)

encoding = "".join([encoding1, encoding2, encoding3])
encoding = [int(encoding[i:i+2], 16) for i in range(0, len(encoding), 2)]
print(encoding)

encoded_flag = """
0x00000022	0x0000002b	0x00000029	0x00000021
0x0000003e	0x00000025	0x0000002e	0x0000002b
0x00000033	0x00000031	0x00000009	0x0000003f
0x00000027	0x0000007e	0x00000015	0x00000032
0x0000007a	0x00000038	0x00000015	0x0000000e
0x0000007a	0x0000007e	0x00000024	0x0000000d
0x00000015	0x00000021	0x0000007a	0x00000021
0x00000015	0x00000008	0x0000007e	0x00000024
0x00000073	0x00000037
"""
encoded_flag = encoded_flag.lstrip('\n').rstrip('\n').replace('\n', '\t').split('\t')
encoded_flag = [int(encoded_flag[i], 16) for i in range(0, len(encoded_flag))

for c in encoded_flag:
    print(pair[encoding.index(c)], end="")
print()
