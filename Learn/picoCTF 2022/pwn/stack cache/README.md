# stack cache

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |400 points|
|Link           |[stack cache](https://play.picoctf.org/practice/challenge/306)|

## Description

```txt
Undefined behaviours are fun.
It looks like Dr. Oswal allowed buffer overflows again. Analyse this program to
identify how you can get to the flag. You can view source here. And connect with 
it using nc saturn.picoctf.net 63458
```

Hints:
<details>
    <summary>1</summary>
    Maybe there is content left over from stack?
</details>
<details>
    <summary>2</summary>
    Try compiling it with gcc and clang-12 to see how the binaries differ
</details>

## Solution

This challenge requires us to leak the information in the stack by passing it into
the `UnderConstruction` function. Because the function `win` only reads the flag,
we need to pass it to the function `UnderConstruction` to view the read flag. Firstly,
i filled the payload with paddings, followed by the address of `win`, then the address
of `UnderConstruction`. Then, i used an online hex to ascii converter to get the flag.

## Flag

```txt
picoCTF{Cle4n_uP_M3m0rY_255ce767}
```

