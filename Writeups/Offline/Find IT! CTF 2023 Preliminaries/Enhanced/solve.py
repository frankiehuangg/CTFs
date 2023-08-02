import cv2
import binascii

def bintohex(b):
    return hex(int(b,2))[2:]

def extract(file):
    binary_string = ''
    image = cv2.imread(file)
    for values in image:
        for pixel in values:
            binary_string+=bin(pixel[0])[-1]
            binary_string+=bin(pixel[1])[-1]
            binary_string+=bin(pixel[2])[-1]
    index = binary_string.find('#######')
    binary_string = binary_string[index+7:]
    secret = bintohex(binary_string)
    secret = binascii.unhexlify(secret)
    return secret

secret = extract('enhancedfile')
print(secret)

