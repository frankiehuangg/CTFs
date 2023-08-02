#!/usr/bin/python3

import random
from randcrack import RandCrack

random.seed(b'among us')

rc = RandCrack()

for i in range(624):
    val = random.getrandbits(32)
    rc.submit(val)

for _ in range(10):
    print("Random result: {}\nCracker result: {}"
          .format(random.getrandbits(512), rc.predict_getrandbits(512)))
