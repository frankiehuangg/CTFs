# Favourite byte

## Description

I've hidden some data using XOR with a single byte, but that byte is a secret. Don't forget to decode from hex first.

`73626960647f6b206821204f21254f7d694f7624662065622127234f726927756d`

## Solution

Since it is only encrypted using a single byte, then a brute-force method is feasible. Firstly, we need to decode the string above into bytes, then using the `xor` operation on the integer from 0 to 255. Finally, run the python script with `./solve.py | grep crypto` to get the flag.

## Flag

```txt
crypto{0x10_15_my_f4v0ur173_by7e}
```
