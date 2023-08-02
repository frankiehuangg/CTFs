# Modular Inverting

## Description

What is the inverse element: `3 * d ≡ 1 mod 13`

## Solution

Continuing from Fermat's Little Theorem, we can expand it into

$$
a^{(p-1)} \equiv 1\ mod\ p
$$

$$
a^{(p-1)} a^{-1} \equiv a^{-1}\ mod\ p
$$

$$
a^{(p-2)} \equiv a^{-1}\ mod\ p
$$

Using python, we can calculate the value `d` by using `pow(3, 11, 13)`.

## Flag

```txt
9
```
