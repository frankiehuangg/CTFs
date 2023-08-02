# substitution1

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[substitution1](https://play.picoctf.org/practice/challenge/309)|

## Description

```txt
It seems that another encrypted message has been intercepted. The encryptor
seems to have learned their lesson though and now there isn't any punctuation!
Can you still crack the cipher?
Download the message here.
```

Hints:
<details>
    <summary>1</summary>
    Try refining your frequency attack, maybe
	analyzing groups of letters would improve
	your results?
</details>

## Solution

This challenge is similar to the `substitution0` challenge. However, we are not
given the direct substitution, so i decrypt each alphabet with the corresponding
encrypted alphabet. I started from the last line, guessing that it must be `the
flag is: picoCTF{something}`. Then, i fill in the rest and plug it in the script.

## Flag

```txt
picoCTF{FR3QU3NCY_4774CK5_4R3_C001_7AA384BC}
```

