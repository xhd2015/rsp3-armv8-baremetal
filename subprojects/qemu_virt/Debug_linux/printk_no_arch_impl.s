	.arch armv8.2-a+crc
	.file	"printk_no_arch_impl.cpp"
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
	.text
	.align	2
	.global	_Z6printkPKc
	.type	_Z6printkPKc, %function
_Z6printkPKc:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	xzr, [x29, 40]
.L3:
	ldr	x0, [x29, 24]
	ldrsb	w0, [x0]
	cmp	w0, 0
	beq	.L2
	ldr	x0, [x29, 24]
	add	x1, x0, 1
	str	x1, [x29, 24]
	ldrsb	w0, [x0]
	bl	_Z6printkc
	mov	x1, x0
	ldr	x0, [x29, 40]
	add	x0, x0, x1
	str	x0, [x29, 40]
	b	.L3
.L2:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z6printkPKc, .-_Z6printkPKc
	.align	2
	.global	_Z6printkPKcm
	.type	_Z6printkPKcm, %function
_Z6printkPKcm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	bne	.L6
	ldr	x0, [x29, 24]
	bl	_Z6printkPKc
	b	.L7
.L6:
	str	xzr, [x29, 40]
.L9:
	ldr	x0, [x29, 16]
	sub	x1, x0, #1
	str	x1, [x29, 16]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	x0, [x29, 24]
	add	x1, x0, 1
	str	x1, [x29, 24]
	ldrsb	w0, [x0]
	bl	_Z6printkc
	mov	x1, x0
	ldr	x0, [x29, 40]
	add	x0, x0, x1
	str	x0, [x29, 40]
	b	.L9
.L8:
	ldr	x0, [x29, 40]
.L7:
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z6printkPKcm, .-_Z6printkPKcm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
