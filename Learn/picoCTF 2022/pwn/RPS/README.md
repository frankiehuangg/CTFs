
# RPS

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |200 points|
|Link           |[RPS](https://play.picoctf.org/practice/challenge/293)|

## Description

```txt
Here's a program that plays rock, paper, scissors against you. I hear something good happens if you win 5 times in a row.
Connect to the program with netcat:
$ nc saturn.picoctf.net 53865
The program's source code with the flag redacted can be downloaded here.
```

Hints:
<details>
    <summary>1</summary>    
    How does the program check if you won?
</details>

## Solution

Looking at the provided c file, the program uses the function `strstr()` to 
check which input are given. `strstr()` checks whether the random computer input
are a subset of our input. Given a string of all possible answer, we can guarantee
that our input will always results in a win.

## Flag

```txt
picoCTF{50M3_3X7R3M3_1UCK_B69E01B8}
```

