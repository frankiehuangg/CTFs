# finals-simulator

## Description
Don't you love taking finals? Don't you wish you could do it not only during finals week, but during every week? Fret no more, Finals Simulator 2023 has got your back! If you install now and get an A+ on your simulated final, you'll even get the limited time Flag DLC for free! Also, after numerous reports of cheating we've installed an anti-cheating mechanism so people actually have to solve the problem.

## Solution
Opening the provided file in ghidra, we can see that it will call `strcmp` 3 times: 

![[Pasted image 20230214210817.png]]
Comparing the first value with `six`

![[Pasted image 20230214210838.png]]
Comparing the second value `(v + 0x58 * 0x2a)` with `0x2179556a`

![[Pasted image 20230214210856.png]]
Comparing the third value `v * 0x11 % 0xfd`.

The first one is pretty straightforward. For the second one, we just need to do basic arithmetic (can be solved using `python -c "print(int(0x2179556a)//int(0x2a)-int(0x58))"`).

For the last one, firstly we need to find the value of `enc` using gdb.

![[Pasted image 20230214211425.png]]

Finally, we can find the byte of each string by bruteforcing. A simple way to do this is to get all the bytes (until the `\00`) then find the integer `i` such that `i * 0x11 % 253 = v`.

## Flag
```txt
lactf{im_n0t_qu1t3_sur3_th4ts_h0w_m4th_w0rks_bu7_0k}
```
