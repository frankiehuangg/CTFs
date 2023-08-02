# x-sixty-what

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |200 points|
|Link           |[x-sixty-what](https://play.picoctf.org/practice/challenge/319)|

## Description

```txt
Overflow x64 code Most problems before this are 32-bit x86. Now we'll consider 64-bit x86 which is a little different! Overflow the buffer and change the return address to the flag function in this program. Download source. nc saturn.picoctf.net 59713
```

Hints:
<details>
    <summary>1</summary>
    Now that we're in 64-bit, what used to be 4 bytes, now may be 8 bytes.
</details>

<details>
    <summary>2</summary>
    Jump to the second instruction (the one after the first push) in the flag function, if you're getting mysterious segmentation faults.
</details>

## Solution

The method use is similar to that of 32-bit ret2win challenges. First, find the
rip offset, then load the payload with padding+`flag()` address. For some reason
if we set the address before the `push %ebp` instruction the payload will return
an EOF error, so i use the next instruction address.

## Flag

```txt
picoCTF{b1663r_15_b3773r_be31178c}
```

