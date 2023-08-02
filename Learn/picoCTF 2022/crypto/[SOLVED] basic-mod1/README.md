
# basic-mod1

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[basic-mod1](https://play.picoctf.org/practice/challenge/253)|

## Description

```txt
We found this weird message being passed around on the servers, we think we have a working decryption scheme.
Download the message here.
Take each number mod 37 and map it to the following character set: 0-25 is the alphabet (uppercase), 26-35 are the decimal digits, and 36 is an underscore.
Wrap your decrypted message in the picoCTF flag format (i.e. picoCTF{decrypted_message})
```

Hints:
<details>
    <summary>1</summary>
    Do you know what mod 37 means?
</details>
<details>
    <summary>2</summary>
    mod 37 means modulo 37. It gives the remainder of a number after being divided by 37.
</details>

## Solution

This is a simple programming challenge. Just mod all numbers by 37, then map it accordingly.
Finally, wrap it with `picoCTF{}`

## Flag

```txt
picoCTF{R0UND_N_R0UND_ADD17EC2}
```

