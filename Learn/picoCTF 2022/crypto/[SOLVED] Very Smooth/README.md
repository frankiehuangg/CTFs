# Very Smooth

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |300 points|
|Link           |![Very Smooth](https://play.picoctf.org/practice/challenge/315)|

## Description

```txt
Forget safe primes... Here, we like to live life dangerously... >:)
```

Hints:
<details>
    <summary>1</summary>    
    Don't look at me... Go ask Mr. Pollard if you need a hint!
</details>

## Solution

Looking at the hint, we can see that this is a simple Pollard p-1 problem. Since p
is very smooth (i.e. p-1 has many small primes). To solve it, we just check for the
gcd of 2^(k!) modulo n and n. If the result is > 1, then we've find the prime factor
p. Then we can find the value of q, m, d, and solve the problem.

Note: using `pow(a,b,n)` much faster than `a**b mod n`

## Flag

```txt
picoCTF{p0ll4rd_f4ct0r1z4at10n_FTW_7c8625a1}
```

