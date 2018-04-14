	.arch armv8.2-a+crc
	.file	"printk_qemu_virt.cpp"
	.section	.rodata
	.align	2
	.type	_ZL6UNIT_K, %object
	.size	_ZL6UNIT_K, 4
_ZL6UNIT_K:
	.word	1024
	.align	2
	.type	_ZL3KiB, %object
	.size	_ZL3KiB, 4
_ZL3KiB:
	.word	1024
	.align	2
	.type	_ZL3MiB, %object
	.size	_ZL3MiB, 4
_ZL3MiB:
	.word	1048576
	.align	2
	.type	_ZL3GiB, %object
	.size	_ZL3GiB, 4
_ZL3GiB:
	.word	1073741824
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.align	2
	.global	_Z6printkc
	.type	_Z6printkc, %function
_Z6printkc:
	sub	sp, sp, #32
	strb	w0, [sp, 15]
	ldrsb	w0, [sp, 15]
	cmp	w0, 0
	bne	.L2
	mov	x0, 0
	b	.L3
.L2:
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 31]
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	mov	x0, 1
.L3:
	add	sp, sp, 32
	ret
	.size	_Z6printkc, .-_Z6printkc
	.align	2
	.global	_Z5flushv
	.type	_Z5flushv, %function
_Z5flushv:
	nop
	ret
	.size	_Z5flushv, .-_Z5flushv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
