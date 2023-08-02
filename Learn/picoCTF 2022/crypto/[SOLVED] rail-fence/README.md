# rail-fence

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[rail-fence](https://play.picoctf.org/practice/challenge/289)|

## Description

```txt
A type of transposition cipher is the rail fence cipher, which is described here. 
Here is one such cipher encrypted using the rail fence with 4 rails. Can you
decrypt it?
Download the message here.
Put the decoded message in the picoCTF flag format, 
picoCTF{decoded_message}.
```

Hints:
<details>
    <summary>1</summary>
    Once you've understood how the cipher
	works, it's best to draw it out yourself on 
	paper
</details>

## Solution

Using the formula provided in the wikipedia link, we can construct a rail fence
of N=4, x=18, and y = 2. This means we need to pad 2 X at the end of the rail fence.
To do this, i split the string into 4 substrings. The first one has the length of
10 (`ceil((x+1)/2)`). The second one has the length of 19 (`x+1`). The third one
has the length of 18 (because we need to pad 2 X's), and the last one has the length
of 9.

## Flag

```txt
picoCTF{WH3R3_D035_7H3_F3NC3_8361N_4ND_3ND_83F6D8D7}
```

