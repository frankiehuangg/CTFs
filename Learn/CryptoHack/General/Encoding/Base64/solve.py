#!/usr/bin/python3

import base64

ct = "72bca9b68fc16ac7beeb8f849dca1d8a783e8acf9679bf9269f7bf"
ct = bytes.fromhex(ct)

pt = base64.b64encode(ct)

print(pt)
