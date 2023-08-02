# wine

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |300 points|
|Link           |[wine](https://play.picoctf.org/practice/challenge/317)|

## Description

```txt
Challenge best paired with wine.
I love windows. Checkout my exe running on a linux box. You can view source 
here. And connect with it using nc saturn.picoctf.net 59394
```

Hints:
<details>
    <summary>1</summary>
    Gets is dangerous. Even on windows.
</details>

## Solution

This is a simple ret2win challenge. To find the `win()` function address, i
installed wine and used the command `winedbg --gdb vuln.exe`. For some reason,
i can't run the gdb, although i can disassemble the `win` function to find the
address. Then, i bruteforced the saved EIP address, which starts from the 141th
byte from the top of stack.

## Flag

```txt
picoCTF{Un_v3rr3_d3_v1n_1b905d38}
```
