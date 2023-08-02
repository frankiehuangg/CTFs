# buffer overflow 0
|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |100 points|
|Link           |[buffer overflow 0](https://play.picoctf.org/practice/challenge/257)|

## Description
```
Smash the stack
Let's start off simple, can you overflow the correct buffer? The program is available here. You can view source here. And connect with it using:
nc saturn.picoctf.net 65355
```

Hints:
<details>
    <summary>1</summary>
    
    How can you trigger the flag to print?
</details>

<details>
    <summary>2</summary>
    
    If you try to do the math by hand, maybe try and add a few more characters. Sometimes there are things you aren't expecting.
</details>

<details>
    <summary>3</summary>
    
    Run man gets and read the BUGS section. How many characters can the program really read?
</details>

## Solution
This is a simple buffer overflow task. I just inputted around 200 `A`'s and i get the flag.

## Flag
```
picoCTF{ov3rfl0ws_ar3nt_that_bad_34d6b87f}
```