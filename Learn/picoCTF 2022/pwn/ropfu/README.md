# ropfu

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |300 points|
|Link           |[ropfu](https://play.picoctf.org/practice/challenge/292)|

## Description

```txt
What's ROP?
Can you exploit the following program to get the flag? Download source.
nc saturn.picoctf.net 59254
```

Hints:
<details>
    <summary>1</summary>
    This is a classic ROP to get a shell
</details>

## Solution

This challenge requires us to spawn a remote shell to view the `flag.txt` file's
content. First, i use the payload 

```txt
padding + (this_address+4) + NOPs + shellcode
```

However, the payload above didn't work. Then, i use ROPgadget to find a fitting
gadget to jump to. I found a `jump eax` instruction, so i change the payload to

```txt
NOP sleds + \xeb\x08\x90\x90(jump 8 bytes) + (jump eax address) + NOP sleds + shellcode
```

The payload above works for me.

## Flag

```txt
picoCTF{5n47ch_7h3_5h311_5b4fc869}
```

