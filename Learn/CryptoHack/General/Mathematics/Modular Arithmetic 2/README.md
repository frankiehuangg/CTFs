# Modular Arithmetic 2

## Description

Now take the prime `p = 65537`. Calculate `27324678765465536 mod 65537`.

Did you need a calculator?

## Solution

Since the number `p` is a prime number and we can assume the integer is not a multiple of `p`, then by Fermat's Little Theorem,

$$
a^{(p-1)} \equiv 1\ mod\ p
$$

the answer is 1.

## Flag

```txt
1
```
