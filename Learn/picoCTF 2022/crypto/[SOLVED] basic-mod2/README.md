# basic-mod2

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[basic-mod2](https://play.picoctf.org/practice/challenge/254)|

## Description

```txt
A new modular challenge!
Download the message here.
Take each number mod 41 and find the modular inverse for the result. Then
map to the following character set: 1-26 are the alphabet, 27-36 are the decimal
digits, and 37 is an underscore.
Wrap your decrypted message in the picoCTF flag format (i.e.
picoCTF{decrypted_message})
```

Hints:
<details>
    <summary>1</summary>
    Do you know what the modular inverse is?
</details>
<details>
    <summary>2</summary>
    The inverse modulo z of x is the number, y that when multiplied by x is 1 modulo z
</details>
<details>
    <summary>3</summary>
    It's recommended to use a tool to find the modular inverses
</details>

## Solution

Similar to basic-mod1, we just need to add an extra line to find the modulo inverse of
i in respect to 41.

## Flag

```txt
picoCTF{1NV3R53LY_H4RD_DADAACAA}
```

