	.arch armv8.2-a+crc
	.file	"memmove.cpp"
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
	.global	memmove
	.type	memmove, %function
memmove:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 16]
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	cmp	x1, x0
	bcs	.L2
.L4:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	x1, [sp, 48]
	add	x0, x1, 1
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	add	x2, x0, 1
	str	x2, [sp, 56]
	ldrsb	w1, [x1]
	strb	w1, [x0]
	b	.L4
.L2:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	ldr	x1, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 32]
.L5:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	ldr	x1, [sp, 40]
	sub	x0, x1, #1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x2, x0, #1
	str	x2, [sp, 32]
	ldrsb	w1, [x1]
	strb	w1, [x0]
	b	.L5
.L3:
	ldr	x0, [sp, 24]
	add	sp, sp, 64
	ret
	.size	memmove, .-memmove
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
