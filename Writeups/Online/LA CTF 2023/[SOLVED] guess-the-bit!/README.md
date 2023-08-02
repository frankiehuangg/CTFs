# guess-the-bit!

## Description
I'm trying out for this new game show, but it doesn't seem that hard since there are only two choices? Regardless, I heard someone name Pollard could help me out with it?

`nc lac.tf 31190`

## Solution
Looking at the provided file, we are given the value `n` and `a` and the program will generate two random integer at each loop, `bit` and `c` such that `bit` is either 0 or 1 and `c` is between 0 and n. If `bit` is 1, then we multiply the value of `c` by `a`.

Because the value of `c` is squared before we multiply it by `a`, then `c` must be divisible by `a` if we can devide `c^2` by `a^2`. By using this simple logic, we can deduce that if we can divide a odd number of times, then `c` is multiplied by `a`, otherwise it's not.

## Flag
```txt
lactf{sm4ll_pla1nt3xt_sp4ac3s_ar3n't_al4ways_e4sy}
```
