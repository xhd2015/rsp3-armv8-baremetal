	.arch armv8.2-a+crc
	.file	"generic_util.cpp"
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
	.global	digitsMap
	.align	3
	.type	digitsMap, %object
	.size	digitsMap, 16
digitsMap:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	97
	.byte	98
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.text
	.align	2
	.global	_Z4itobmPcm
	.type	_Z4itobmPcm, %function
_Z4itobmPcm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 32]
	mov	w1, 2
	ldr	x0, [x29, 40]
	bl	_Z4itosmjPcm
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z4itobmPcm, .-_Z4itobmPcm
	.align	2
	.global	_Z4itodmPcm
	.type	_Z4itodmPcm, %function
_Z4itodmPcm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 32]
	mov	w1, 10
	ldr	x0, [x29, 40]
	bl	_Z4itosmjPcm
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z4itodmPcm, .-_Z4itodmPcm
	.align	2
	.global	_Z4itoxmPcm
	.type	_Z4itoxmPcm, %function
_Z4itoxmPcm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 32]
	mov	w1, 16
	ldr	x0, [x29, 40]
	bl	_Z4itosmjPcm
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z4itoxmPcm, .-_Z4itoxmPcm
	.align	2
	.global	_Z4itosmjPcm
	.type	_Z4itosmjPcm, %function
_Z4itosmjPcm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	w0, [x29, 36]
	cmp	w0, 0
	beq	.L8
	ldr	w0, [x29, 36]
	cmp	w0, 16
	bls	.L9
.L8:
	mov	x0, 0
	b	.L10
.L9:
	ldr	x0, [x29, 16]
	cmp	x0, 0
	bne	.L11
	mov	x0, 0
	b	.L10
.L11:
	str	xzr, [x29, 56]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L12
	ldr	x0, [x29, 56]
	add	x1, x0, 1
	str	x1, [x29, 56]
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	mov	w1, 48
	strb	w1, [x0]
	b	.L13
.L12:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bls	.L13
	ldr	w1, [x29, 36]
	ldr	x0, [x29, 40]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [x29, 56]
	add	x2, x0, 1
	str	x2, [x29, 56]
	ldr	x2, [x29, 24]
	add	x0, x2, x0
	adrp	x2, digitsMap
	add	x2, x2, :lo12:digitsMap
	ldrsb	w1, [x2, x1]
	strb	w1, [x0]
	ldr	w0, [x29, 36]
	ldr	x1, [x29, 40]
	udiv	x0, x1, x0
	str	x0, [x29, 40]
	b	.L12
.L13:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 24]
	bl	_Z7reversePcm
	ldr	x0, [x29, 56]
.L10:
	ldp	x29, x30, [sp], 64
	ret
	.size	_Z4itosmjPcm, .-_Z4itosmjPcm
	.align	2
	.global	_Z10alignAheadmm
	.type	_Z10alignAheadmm, %function
_Z10alignAheadmm:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L15
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	b	.L17
.L15:
	ldr	x0, [sp, 8]
.L17:
	add	sp, sp, 32
	ret
	.size	_Z10alignAheadmm, .-_Z10alignAheadmm
	.align	2
	.global	_Z13alignBackwardmm
	.type	_Z13alignBackwardmm, %function
_Z13alignBackwardmm:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	udiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L19
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	b	.L21
.L19:
	ldr	x0, [sp, 8]
.L21:
	add	sp, sp, 32
	ret
	.size	_Z13alignBackwardmm, .-_Z13alignBackwardmm
	.align	2
	.global	_Z7reversePcm
	.type	_Z7reversePcm, %function
_Z7reversePcm:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 1
	bls	.L26
	str	xzr, [sp, 40]
	ldr	x0, [sp]
	sub	x0, x0, #1
	str	x0, [sp, 32]
.L25:
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bcs	.L26
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 31]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 32]
	add	x1, x1, x0
	ldr	x2, [sp, 8]
	ldr	x0, [sp, 40]
	add	x0, x2, x0
	ldrsb	w1, [x1]
	strb	w1, [x0]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	ldrb	w1, [sp, 31]
	strb	w1, [x0]
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	str	x0, [sp, 32]
	b	.L25
.L26:
	nop
	add	sp, sp, 48
	ret
	.size	_Z7reversePcm, .-_Z7reversePcm
	.align	2
	.global	_Z9strOffsetPKcm
	.type	_Z9strOffsetPKcm, %function
_Z9strOffsetPKcm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 24]
	adrp	x0, EMPTY_STR
	add	x0, x0, :lo12:EMPTY_STR
	cmp	x1, x0
	beq	.L28
	ldr	x0, [x29, 24]
	bl	strlen
	mov	x1, x0
	ldr	x0, [x29, 16]
	cmp	x0, x1
	bls	.L29
.L28:
	mov	w0, 1
	b	.L30
.L29:
	mov	w0, 0
.L30:
	cmp	w0, 0
	beq	.L31
	adrp	x0, EMPTY_STR
	add	x0, x0, :lo12:EMPTY_STR
	b	.L32
.L31:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 16]
	add	x0, x1, x0
.L32:
	ldp	x29, x30, [sp], 32
	ret
	.size	_Z9strOffsetPKcm, .-_Z9strOffsetPKcm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
