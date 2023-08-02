# transposition-trial

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[transposition-trial](https://play.picoctf.org/practice/challenge/312)|

## Description

```txt
Our data got corrupted on the way here. Luckily, nothing got replaced, but every
block of 3 got scrambled around! The first word seems to be three letters long,
maybe you can use that to recover the rest of the message.
Download the corrupted message here.
```

Hints:
<details>
    <summary>1</summary>
    Split the message up into blocks of 3 and see
	how the first block is scrambled
</details>

## Solution

The message is encrypted by separating a string into a substring of length 3,
then rearranging the position into 2-3-1. Using a simple python script, we can
get the original flag.

## Flag

```txt
picoCTF{7R4N5P051N6_15_3XP3N51V3_109AB02E}
```

