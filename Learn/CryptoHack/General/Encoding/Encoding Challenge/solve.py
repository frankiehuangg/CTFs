#!/usr/bin/python3

from pwn import * # pip install pwntools
import json

from Crypto.Util.number import *
import base64

r = remote('socket.cryptohack.org', 13377, level = 'debug')

def json_recv():
    line = r.recvline()
    return json.loads(line.decode())

def json_send(hsh):
    request = json.dumps(hsh).encode()
    r.sendline(request)


# Solver
def solve_base64(ct):
    return base64.b64decode(ct).decode("ASCII")

def solve_hex(ct):
    return bytes.fromhex(ct).decode("ASCII")

def solve_rot13(ct):
    pt = ""

    for i in range(len(ct)):
        val = ord(ct[i])
        if (val > 64 and val < 91):
            pt += chr((val - 65 + 13) % 26 + 65)
        elif (val > 96 and val < 123):
            pt += chr((val - 97 + 13) % 26 + 97)
        else:
            pt += chr(val)

    return pt

def solve_bigint(ct):
    return bytes.fromhex(ct[2:]).decode("ASCII")

def solve_utf8(ct):
    pt = ""

    for i in range(len(ct)):
        pt += chr(ct[i])

    print(pt)

    return pt 


for i in range(100):
    print(f"\n\nSolving problem {i+1}")
    
    received = json_recv()
    
    chall = received["type"]
    ct = received["encoded"]

    print(f"Received type: {chall}")
    print(f"Received encoded value: {ct}")

    to_send = {
        "decoded": "changeme"
    }

    if (chall == "base64"):
        print("Solving Base64...")
        to_send["decoded"] = solve_base64(ct)
    elif (chall == "hex"):
        print("Solving hex...")
        to_send["decoded"] = solve_hex(ct)
    elif (chall == "rot13"):
        print("Solving ROT13...")
        to_send["decoded"] = solve_rot13(ct)
    elif (chall == "bigint"):
        print("Solving BigInt...")
        to_send["decoded"] = solve_bigint(ct)
    elif (chall == "utf-8"):
        print("Solving UTF-8...")
        to_send["decoded"] = solve_utf8(ct)

    json_send(to_send)

json_recv()
