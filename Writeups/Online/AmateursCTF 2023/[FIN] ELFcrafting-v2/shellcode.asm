		BITS 32
  
		org	0x00010000
  
		db	0x7F, "ELF"
		dd	1
		dd	0
		dd	$$
		dw	2
		dw	3
		dd	_start
		dd	_start
		dd	4
_start:	mov	al,	11
        jmp	next
		nop
		nop
		nop
		db	0
		dw	0x34
		dw	0x20
		dd	1
next:	mov	ebx,	bin_sh
        int	0x80
bin_sh:	db	"/bin/sh", 0
  
filesize	equ	$ - $$
