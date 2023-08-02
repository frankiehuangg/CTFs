# Hex

## Description

Included below is a flag encoded as a hex string. Decode this back into bytes to get the flag.

`63727970746f7b596f755f77696c6c5f62655f776f726b696e675f776974685f6865785f737472696e67735f615f6c6f747d`

## Solution

Convert the hex string above to bytes using `bytes.fromhex(i)`.

```python
ct = "63727970746f7b596f755f77696c6c5f62655f776f726b696e675f776974685f6865785f737472696e67735f615f6c6f747d"
pt = bytes.fromhex(ct)

print(pt)
```

{% file src="../../../.gitbook/assets/hex.py" %}

## Flag

```txt
crypto{You_will_be_working_with_hex_strings_a_lot}
```
