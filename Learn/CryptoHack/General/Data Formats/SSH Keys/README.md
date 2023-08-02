# SSH Keys

## Description

Extract the modulus _n_ as a decimal integer from Bruce's SSH public key.

**Challenge files:**\
\- [bruce\_rsa.pub](https://cryptohack.org/static/challenges/bruce\_rsa\_6e7ecd53b443a97013397b1a1ea30e14.pub)

## Solution

The `cryptography` package in python provides a tool to read `.pub` file by using `RSA.importKey()`.

## Flag

```txt
flag{th15_i5_th3_fl49}
```
