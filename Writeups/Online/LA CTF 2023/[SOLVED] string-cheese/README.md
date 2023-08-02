# string-cheese

## Description
I'm something of a cheese connoisseur myself. If you can guess my favorite flavor of string cheese, I'll even give you a flag. Of course, since I'm lazy and socially inept, I slapped together a program to do the verification for me.

Connect to my service at nc lac.tf 31131

Note: The attached binary is the exact same as the one executing on the remote server.

## Solution
Debugging the provided 64-bit ELF file, we can see that it calls `strcmp()` at <main+117>. Placing a break point and viewing the content of `$rsi`, we find the value `blueberry`.

## Flag
```txt
lactf{d0n7_m4k3_fun_0f_my_t4st3_1n_ch33s3}
```
