
# buffer overflow 2

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |300 points|
|Link           |[buffer overflow 2](https://play.picoctf.org/practice/challenge/259)|

## Description

```txt
Control the return address and arguments
```

## Solution

This challenge requires us to overflow the saved EIP to the `win()` with two
parameters. First use De Bruijn sequence to find the offset then fill the 
padding, continued by `win()` address, the return address(just use a random
string), then 1st parameter followed by the 2nd parameter.


## Flag

```txt
picoCTF{argum3nt5_4_d4yZ_4b24a3aa}
```

