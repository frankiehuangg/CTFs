#!/usr/bin/python3

from pwn import xor
import cv2

flag_img = cv2.imread("flag.png")
lemur_img = cv2.imread("lemur.png")

flag = cv2.bitwise_xor(flag_img, lemur_img)

cv2.imwrite("output.png", flag)
