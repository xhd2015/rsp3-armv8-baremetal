	.arch armv8.2-a+crc
	.file	"PL011.cpp"
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
	.global	_ZN5PL0114initEv
	.type	_ZN5PL0114initEv, %function
_ZN5PL0114initEv:
	sub	sp, sp, #128
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	add	x0, x0, 36
	mov	w1, 16
	strh	w1, [x0]
	mov	x1, 49921
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x0, x0, 56
	strh	wzr, [x0]
	ldr	x0, [sp, 8]
	str	x0, [sp, 120]
	str	wzr, [sp, 116]
	ldr	x0, [sp, 120]
	str	x0, [sp, 104]
	ldr	x0, [sp, 104]
	str	x0, [sp, 96]
	ldr	x0, [sp, 96]
	ldr	x0, [x0]
	add	x0, x0, 52
	str	x0, [sp, 88]
	mov	w0, 3
	strb	w0, [sp, 87]
	mov	w0, 5
	strb	w0, [sp, 86]
	ldr	w0, [sp, 116]
	str	w0, [sp, 80]
	ldr	x0, [sp, 88]
	ldrh	w0, [x0]
	and	w1, w0, 65535
	ldrb	w2, [sp, 87]
	ldrb	w0, [sp, 86]
	str	x2, [sp, 72]
	str	x0, [sp, 64]
	ldr	x0, [sp, 72]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 72]
	mov	w3, w0
	ldr	x0, [sp, 64]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 64]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 65535
	mvn	w0, w0
	and	w0, w0, 65535
	and	w0, w1, w0
	and	w1, w0, 65535
	ldr	w0, [sp, 80]
	sxtw	x2, w0
	ldrb	w3, [sp, 86]
	ldrb	w0, [sp, 87]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 56]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 87]
	lsl	x0, x2, x0
	and	w0, w0, 65535
	orr	w0, w1, w0
	and	w1, w0, 65535
	ldr	x0, [sp, 88]
	strh	w1, [x0]
	nop
	add	sp, sp, 128
	ret
	.size	_ZN5PL0114initEv, .-_ZN5PL0114initEv
	.align	2
	.global	_ZNK5PL01115readDataBlockedEv
	.type	_ZNK5PL01115readDataBlockedEv, %function
_ZNK5PL01115readDataBlockedEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
.L18:
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [sp, 62]
	ldrh	w0, [sp, 62]
	strh	w0, [sp, 60]
	mov	x0, 24
	and	w1, w0, 65535
	ldrh	w0, [sp, 60]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	b	.L18
.L17:
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldrh	w0, [x0]
	and	w0, w0, 65535
	add	sp, sp, 64
	ret
	.size	_ZNK5PL01115readDataBlockedEv, .-_ZNK5PL01115readDataBlockedEv
	.align	2
	.global	_ZNK5PL01118readDataNonBlockedEv
	.type	_ZNK5PL01118readDataNonBlockedEv, %function
_ZNK5PL01118readDataNonBlockedEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [sp, 62]
	ldrh	w0, [sp, 62]
	strh	w0, [sp, 60]
	mov	x0, 24
	and	w1, w0, 65535
	ldrh	w0, [sp, 60]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	mov	w0, 65535
	b	.L29
.L28:
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldrh	w0, [x0]
	and	w0, w0, 65535
.L29:
	add	sp, sp, 64
	ret
	.size	_ZNK5PL01118readDataNonBlockedEv, .-_ZNK5PL01118readDataNonBlockedEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
