.align 2

.section .text
.globl _start

_start:
	nop
	j htif_poweroff

htif_poweroff:
	li s0, 1
	la s1, tohost
1:	sw s0, 0(s1)
	j 1b

.section .htif
.align 6
.global tohost
.global fromhost
tohost:
	.dword 0
fromhost:
	.dword 0

