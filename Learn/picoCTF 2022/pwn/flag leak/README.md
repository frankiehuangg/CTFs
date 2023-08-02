
# flag leak

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |pwn|
|Rating         |300 points|
|Link           |[flag leak](https://play.picoctf.org/practice/challenge/269)|

## Description

```txt
Story telling class 1/2
I'm just copying and pasting with this program. What can go wrong? You can 
view source here. And connect with it using:
nc saturn.picoctf.net 64174
```

Hints:
<details>
    <summary>1</summary>
    Format Strings
</details>

## Solution

Using format string vulnerability, we can leak the value of the address by pointing
the `%s` to the `flag`'s address. First i attempted to use `flag`'s address + pointer
to stack payload (`\x40\xd6\xff\xff%4$s`), but it did not work. Then, i found that
the address of `flag` exists on the stack, so i just needed to point it to the 20th
offset from the top of the stack.

NB: For some reason, in the ELF file given the offset is 20th, but connecting it
remotely requires us to point it to the 24th offset to get the flag.

## Flag

```txt
picoCTF{L34k1ng_Fl4g_0ff_St4ck_6aea3c7c}
```

