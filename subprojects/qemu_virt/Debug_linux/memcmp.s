	.arch armv8.2-a+crc
	.file	"memcmp.cpp"
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
	.global	memcmp
	.type	memcmp, %function
memcmp:
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 16]
	str	x0, [sp, 32]
.L7:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	ldr	x0, [sp, 40]
	add	x1, x0, 1
	str	x1, [sp, 40]
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	add	x2, x0, 1
	str	x2, [sp, 32]
	ldrb	w0, [x0]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	x0, [sp, 40]
	sub	x0, x0, #1
	ldrb	w1, [x0]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	ldrb	w0, [x0]
	cmp	w1, w0
	bcs	.L4
	mov	w0, -1
	b	.L6
.L4:
	mov	w0, 1
	b	.L6
.L2:
	mov	w0, 0
.L6:
	add	sp, sp, 48
	ret
	.size	memcmp, .-memcmp
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
