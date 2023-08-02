# buffer overflow 1

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |200 points|
|Link           |[buffer overflow 1](https://play.picoctf.org/practice/challenge/258)|

## Description

```txt
Control the return address
```

## Solution

This is a simple ROP challenge, i use De Bruijn sequence to find out the EIP
offset, which begins after 44 inputs. Then, i use gdb to find the address of the
`win` function. Using pwntools, i send the payload to the server and i got the answer.

##Flag

```txt
picoCTF{addr3ss3s_ar3_3asy_2e53b270}
```

