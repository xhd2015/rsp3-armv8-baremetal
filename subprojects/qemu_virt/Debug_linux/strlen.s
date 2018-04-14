	.arch armv8.2-a+crc
	.file	"strlen.cpp"
	.text
	.align	2
	.global	strlen
	.type	strlen, %function
strlen:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
.L3:
	ldr	x0, [sp, 24]
	add	x1, x0, 1
	str	x1, [sp, 24]
	ldrsb	w0, [x0]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	b	.L3
.L2:
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 8]
	sub	x0, x1, x0
	sub	x0, x0, #1
	add	sp, sp, 32
	ret
	.size	strlen, .-strlen
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
