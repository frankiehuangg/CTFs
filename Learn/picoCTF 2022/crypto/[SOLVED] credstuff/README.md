# credstuff

|Info           |Description                    |
|---------------|-------------------------------|
|Type           |crypto|
|Rating         |100 points|
|Link           |[credstuff](https://play.picoctf.org/practice/challenge/261)|

## Description

```txt
We found a leak of a blackmarket website's login credentials. Can you find the
password of the user cultiris and successfully decrypt it?
Download the leak here.
The first user in usernames.txt corresponds to the first password in
passwords.txt. The second user corresponds to the second password, and so
on.
```

Hints:
<details>
    <summary>1</summary>
    Maybe other passwords will have hints about the leak?
</details>

## Solution

First, i find the matching password with the username `cultiris` in line 378. Then,
i used online ROT13 converter to get the flag.

## Flag

```txt
picoCTF{C7r1F_54V35_71M3}
```

