#!/usr/bin/python3

import requests
import json

r = requests.get('http://aes.cryptohack.org/passwords_as_keys/encrypt_flag/')

ciphertext = r.json()["ciphertext"]

with open('words', 'r') as f:
    for word in f:
        print('http://aes.cryptohack.org/passwords_as_keys/decrypt/' + ciphertext + '/' + word.strip('\n') + '/')
        r = requests.get('http://aes.cryptohack.org/passwords_as_keys/decrypt/' + ciphertext + '/' + word.strip('\n') + '/')
        r.json()
