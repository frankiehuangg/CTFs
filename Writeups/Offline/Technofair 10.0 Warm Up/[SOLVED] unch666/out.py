# Source Generated with Decompyle++
# File: unch666.pyc (Python 3.10)


def main():
    i = input('Enter the password: ')
    print(len(i))
    if len(i) == 39:
        c = fun00(i[:3]) + fun01(i[3:6]) + fun02(i[6:9]) + fun03(i[9:12]) + fun04(i[12:15]) + fun00(i[15:18]) + fun01(i[18:21]) + fun05(i[21:24]) + fun06(i[24:27]) + fun07(i[27:30]) + fun00(i[30:33]) + fun08(i[33:36]) + fun09(i[36:39])
        # oo  o1  o2  o3  o4  oo  o1  o5  o6  o7  oo  08  09
        # c0m p1L 3_t H3n _d3 c0m p1L 3_w 1tH _uN c0m pyl e_!
        # c0mp1L3_tH3n_d3c0mp1L3_w1tH_uNc0mpyle_!
        if c == 13:
            print('Pemanasan dulu bestie, ini untuk kamu: TechnoFairCTF{' + i + '}')
            return None
        print('coba lagi bestie')
        return None
    print('salah banget bestie')


def fun00(str):
    return int(str == 'c0m')


def fun01(str):
    return int(str == 'p1L')


def fun02(str):
    return int(str == '3_t')


def fun03(str):
    return int(str == 'H3n')


def fun04(str):
    return int(str == '_d3')


def fun05(str):
    return int(str == '3_w')


def fun06(str):
    return int(str == '1tH')


def fun07(str):
    return int(str == '_uN')


def fun08(str):
    return int(str == 'pyl')


def fun09(str):
    return int(str == 'e_!')

if __name__ == '__main__':
    main()
