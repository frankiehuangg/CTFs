#!/usr/bin/python3
import os
from Crypto.Util.number import *
from Crypto.Cipher import AES
from Crypto.Util.Padding import unpad
import zipfile
import threading

zip_file = open("flag.enc", "rb").read()[:-16]

def process(i, j):
    key = bytes([i, j])
    key = key * 8
    cipher = AES.new(key, AES.MODE_CBC, key)
    buf = cipher.decrypt(zip_file)
    try:
        buf = unpad(buf, 16)

        open("test.zip", "wb").write(buf)

        try:
            with zipfile.ZipFile("test.zip") as f:
                print("SUCCESS")
                exit()
        except zipfile.BadZipFile:
            print(f"failed")
    except:
        pass

threads = []
for i in range(256):
    for j in range(256):
        t = threading.Thread(target=process, args=(i,j))
        threads.append(t)
        t.start()

for t in threads:
    t.join()

print("FIN")
