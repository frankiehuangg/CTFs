# Source Generated with Decompyle++
# File: mencariPW.pyc (Python 3.10)

import tkinter
import string
from tkinter import messagebox
window = tkinter.Tk()
window.title('Login form')
window.geometry('340x440')
window.configure(bg='#333333')

def login():
    username = 'TechnoFairCTF'
    password = [
        'qswaefrdthy_gukojplzcxvbmn',
        'pkolihu_jyftgrsedwaqmzbxvc',
        'mlnkbjvhcgxfzdsapqowueyr_t',
        'plokijuhygtfrdeswaqmnbvcxz',
        'qswdefrgthyjukilopmnbzvcx_',
        'qswaefrgthyjukilpom_znxbcv',
        'zqwsedrftgyhuji_kolpxcvbnm',
        'qaedwsrf_tgujyhikpomznxbcv',
        'mxnzbcvqsplokwdij_efuhrgyt',
        'plokmnzbxvcijuygtfrdeswa_q',
        'plmoknijbuhvygctfxrdzeswaq',
        'qazwsxedcrfvtgbyhnujmikol_',
        'wqzsxedcrfvt_gbyhnujmikolp',
        'qazwxedcrf_vtgbyhnplmokiju',
        'okmplijnuhbygvtfcrdxewqaz_',
        'ygvtfcrd_xeszqaplmoknijbuh',
        'ijnkmpluhbygvtfc_rdxeszwqa',
        'tyuioplkjhgfdsaqwezxcvb_nm',
        'mkolpijnuhbygv_tfcrxeszwaq',
        'hubijnmkoplygvtfcrdxeszwaq',
        'swxedcr_fvtgbynujmikolpqaz',
        'trqwyuioplkjhgfdsazxcvbn_m',
        'klopmijn_ubygvtfcrdxeszaqw',
        'bvnmczxlaksjdhfgp_qowiruty']
    entered_username = username_entry.get()
    entered_password = password_entry.get()
    if entered_username != username:
        messagebox.showerror(title='Error', message='Invalid Login')
        return None
    if len(entered_password) < 8 and len(entered_password) < 24 or len(entered_password) > 24:
        messagebox.showerror(title='Error', message='Password di antara 1 sampai 24 karakter.')
        return None
    for char, pw_string in zip(entered_password, password):
        print(char, pw_string)
        print(char in pw_string)
        print(char not in string.ascii_lowercase+'_')
        if char in pw_string or char not in string.ascii_lowercase + '_':
            messagebox.showerror(title='Error', message='masih salah, coba lagi bestie')
            return None
        messagebox.showinfo(title='Login Success', message='GG gaming abang heker \nTechnoFairCTF{%s}' % entered_password)
        return None

frame = tkinter.Frame(bg='#333333')
login_label = tkinter.Label(frame, text='Login', bg='#333333', fg='#FF3399', font=('Arial', 30))
username_label = tkinter.Label(frame, text='Username', bg='#333333', fg='#FFFFFF', font=('Arial', 16))
username_entry = tkinter.Entry(frame, font=('Arial', 16))
password_entry = tkinter.Entry(frame, show='*', font=('Arial', 16))
password_label = tkinter.Label(frame, text='Password', bg='#333333', fg='#FFFFFF', font=('Arial', 16))
login_button = tkinter.Button(frame, text='Login', bg='#FF3399', fg='#FFFFFF', font=('Arial', 16), command=login)
login_label.grid(row=0, column=0, columnspan=2, sticky='news', pady=40)
username_label.grid(row=1, column=0)
username_entry.grid(row=1, column=1, pady=20)
password_label.grid(row=2, column=0)
password_entry.grid(row=2, column=1, pady=20)
login_button.grid(row=3, column=0, columnspan=2, pady=30)
frame.pack()
window.mainloop()
