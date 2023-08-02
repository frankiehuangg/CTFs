import os
from Crypto.Util.number import *
from Crypto.Cipher import AES
from Crypto.Util.Padding import pad, unpad

flag =  open("flag.zip", "rb").read()
buf = pad(flag, 16)

for _ in range(2):
    key = os.urandom(2)
    key = key*8
    cipher = AES.new(key, AES.MODE_CBC, key)
    buf = cipher.encrypt(buf)

buf += flag[:16]
open("flag.enc", "wb").write(buf)