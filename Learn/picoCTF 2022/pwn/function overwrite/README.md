# function overwrite

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |400 points|
|Link           |[function overwrite](https://play.picoctf.org/practice/challenge/272)|

## Description

```txt
Story telling class 2/2
You can point to all kinds of things in C. Checkout our function pointers demo 
program. You can view source here. And connect with it using nc 
saturn.picoctf.net 64170
```

Hints:
<details>
    <summary>1</summary>
    Don't be so negative
</details>

## Solution

In this challenge, we are tasked to change the global value of `void (*check)` to
`easy_checker`. First, we need to find the address of `(*check)`; i used ghidra to
find the address. Then, because both `(*check)` and `fun` are global variables, we
can change the value of `(*check)` with respect to `fun`. Opening gdb, we can see that
at `fun-64`, it redirects to the function `hard_checker`. So, we pass the string with
a length of 1337, -16 (the offset of `(*check)` in respect from `fun`), and -314 (the
difference between `easy_checker` and `hard_checker`).

## Flag

```txt
picoCTF{0v3rwrit1ng_P01nt3rs_53614882}
```

