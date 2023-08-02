# Name
|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |150 points|
|Link           |[clutter-overflow](https://play.picoctf.org/practice/challenge/216)|

## Description
```
Clutter, clutter everywhere and not a byte to use.
nc mars.picoctf.net 31890
```

## Solution
This is a classic buffer overflow challenge. Looking at the buffer size (256), i just brute force my input until i've overwritten `code`'s value, which is 264 padding + `0xdeadbeef`.

## Flag
```
picoCTF{c0ntr0ll3d_clutt3r_1n_my_buff3r}
```