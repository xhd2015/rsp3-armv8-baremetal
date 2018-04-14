	.arch armv8.2-a+crc
	.file	"MemoryChunk.cpp"
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
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.rodata
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.text
	.align	2
	.global	_ZN11MemoryChunkC2Embbm
	.type	_ZN11MemoryChunkC2Embbm, %function
_ZN11MemoryChunkC2Embbm:
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	strb	w3, [sp, 14]
	str	x4, [sp]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	and	w1, w1, 255
	str	x0, [sp, 40]
	mov	w0, w1
	strb	w0, [sp, 39]
	ldrb	w0, [sp, 15]
	strb	w0, [sp, 38]
	ldrb	w0, [sp, 39]
	and	w0, w0, 127
	and	w2, w0, 255
	ldr	x1, [sp, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 7
	strb	w0, [x1]
	ldr	x1, [sp, 40]
	ldrb	w0, [x1]
	ldrb	w2, [sp, 38]
	bfi	w0, w2, 7, 1
	strb	w0, [x1]
	ldr	x1, [sp, 24]
	ldrb	w0, [x1, 1]
	ldrb	w2, [sp, 14]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [sp]
	and	x1, x0, 36028797018963967
	ldr	x0, [sp, 24]
	and	x2, x1, 127
	ubfiz	w2, w2, 1, 7
	ldrb	w3, [x0, 1]
	and	w3, w3, 1
	orr	w2, w3, w2
	strb	w2, [x0, 1]
	lsr	x2, x1, 7
	and	x4, x2, 255
	ldrb	w2, [x0, 2]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 2]
	lsr	x2, x1, 15
	and	x4, x2, 255
	ldrb	w2, [x0, 3]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 3]
	lsr	x2, x1, 23
	and	x4, x2, 255
	ldrb	w2, [x0, 4]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 4]
	lsr	x2, x1, 31
	and	x4, x2, 255
	ldrb	w2, [x0, 5]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 5]
	lsr	x2, x1, 39
	and	x4, x2, 255
	ldrb	w2, [x0, 6]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 6]
	lsr	x1, x1, 47
	and	x3, x1, 255
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	mov	w2, w1
	mov	w1, w3
	orr	w1, w2, w1
	strb	w1, [x0, 7]
	nop
	add	sp, sp, 48
	ret
	.size	_ZN11MemoryChunkC2Embbm, .-_ZN11MemoryChunkC2Embbm
	.global	_ZN11MemoryChunkC1Embbm
	.set	_ZN11MemoryChunkC1Embbm,_ZN11MemoryChunkC2Embbm
	.align	2
	.global	_ZNK11MemoryChunk14nextContineousEv
	.type	_ZNK11MemoryChunk14nextContineousEv, %function
_ZNK11MemoryChunk14nextContineousEv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L6
	mov	x0, 0
	b	.L7
.L6:
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	mov	w0, 1
	b	.L9
.L8:
	mov	w0, 0
.L9:
	cmp	w0, 0
	beq	.L11
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk6endPtrEv
	b	.L7
.L11:
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 7
	and	w0, w0, 255
	and	x0, x0, 255
	ldr	x1, [x29, 24]
	add	x0, x1, x0
.L7:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK11MemoryChunk14nextContineousEv, .-_ZNK11MemoryChunk14nextContineousEv
	.align	2
	.global	_ZN11MemoryChunk14nextContineousEv
	.type	_ZN11MemoryChunk14nextContineousEv, %function
_ZN11MemoryChunk14nextContineousEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk14nextContineousEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11MemoryChunk14nextContineousEv, .-_ZN11MemoryChunk14nextContineousEv
	.align	2
	.global	_ZNK11MemoryChunk9nextValidEv
	.type	_ZNK11MemoryChunk9nextValidEv, %function
_ZNK11MemoryChunk9nextValidEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk14nextContineousEv
	str	x0, [x29, 40]
.L22:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L16
	mov	x0, 0
	b	.L17
.L16:
	ldr	x0, [x29, 40]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	ldr	x0, [x29, 32]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L18
	mov	w0, 1
	b	.L19
.L18:
	mov	w0, 0
.L19:
	cmp	w0, 0
	beq	.L21
	ldr	x0, [x29, 40]
	b	.L17
.L21:
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk14nextContineousEv
	str	x0, [x29, 40]
	b	.L22
.L17:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNK11MemoryChunk9nextValidEv, .-_ZNK11MemoryChunk9nextValidEv
	.align	2
	.global	_ZN11MemoryChunk9nextValidEv
	.type	_ZN11MemoryChunk9nextValidEv, %function
_ZN11MemoryChunk9nextValidEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk9nextValidEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11MemoryChunk9nextValidEv, .-_ZN11MemoryChunk9nextValidEv
	.align	2
	.global	_ZN11MemoryChunk7dataPtrEv
	.type	_ZN11MemoryChunk7dataPtrEv, %function
_ZN11MemoryChunk7dataPtrEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk7dataPtrEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11MemoryChunk7dataPtrEv, .-_ZN11MemoryChunk7dataPtrEv
	.align	2
	.global	_ZNK11MemoryChunk7dataPtrEv
	.type	_ZNK11MemoryChunk7dataPtrEv, %function
_ZNK11MemoryChunk7dataPtrEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	add	sp, sp, 16
	ret
	.size	_ZNK11MemoryChunk7dataPtrEv, .-_ZNK11MemoryChunk7dataPtrEv
	.align	2
	.global	_ZN11MemoryChunk6endPtrEv
	.type	_ZN11MemoryChunk6endPtrEv, %function
_ZN11MemoryChunk6endPtrEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk6endPtrEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11MemoryChunk6endPtrEv, .-_ZN11MemoryChunk6endPtrEv
	.align	2
	.global	_ZNK11MemoryChunk6endPtrEv
	.type	_ZNK11MemoryChunk6endPtrEv, %function
_ZNK11MemoryChunk6endPtrEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	add	x0, x0, 8
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	add	sp, sp, 16
	ret
	.size	_ZNK11MemoryChunk6endPtrEv, .-_ZNK11MemoryChunk6endPtrEv
	.align	2
	.global	_ZN11MemoryChunk13findAllocableEmmRm
	.type	_ZN11MemoryChunk13findAllocableEmmRm, %function
_ZN11MemoryChunk13findAllocableEmmRm:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
.L43:
	ldr	x0, [x29, 72]
	cmp	x0, 0
	bne	.L34
	mov	x0, 0
	b	.L35
.L34:
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	ldr	x0, [x29, 64]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	mov	w0, 1
	b	.L37
.L36:
	mov	w0, 0
.L37:
	cmp	w0, 0
	beq	.L39
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 72]
	bl	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	mov	x1, x0
	ldr	x0, [x29, 16]
	str	x1, [x0]
	ldr	x0, [x29, 16]
	ldr	x0, [x0]
	cmn	x0, #1
	beq	.L39
	mov	w0, 1
	b	.L41
.L39:
	mov	w0, 0
.L41:
	cmp	w0, 0
	beq	.L42
	ldr	x0, [x29, 72]
	b	.L35
.L42:
	ldr	x0, [x29, 72]
	bl	_ZN11MemoryChunk14nextContineousEv
	str	x0, [x29, 72]
	b	.L43
.L35:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN11MemoryChunk13findAllocableEmmRm, .-_ZN11MemoryChunk13findAllocableEmmRm
	.align	2
	.global	_ZN11MemoryChunk9moveAheadEm
	.type	_ZN11MemoryChunk9moveAheadEm, %function
_ZN11MemoryChunk9moveAheadEm:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L45
	ldr	x0, [sp, 48]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L45
	mov	w0, 1
	b	.L46
.L45:
	mov	w0, 0
.L46:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L48
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L48
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp]
	cmp	x0, x1
	bcc	.L50
.L48:
	mov	w0, 1
	b	.L51
.L50:
	mov	w0, 0
.L51:
	cmp	w0, 0
	beq	.L52
	mov	x0, 0
	b	.L53
.L52:
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L54
	ldr	x0, [sp, 8]
	b	.L53
.L54:
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x0, [sp]
	cmp	x0, 7
	bls	.L55
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	str	x1, [x0]
	b	.L56
.L55:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	ldr	x0, [sp, 56]
	ldr	x1, [sp, 16]
	str	x1, [x0]
.L56:
	ldr	x0, [sp, 56]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp]
	sub	x0, x1, x0
	and	x1, x0, 36028797018963967
	ldr	x0, [sp, 56]
	and	x2, x1, 127
	ubfiz	w2, w2, 1, 7
	ldrb	w3, [x0, 1]
	and	w3, w3, 1
	orr	w2, w3, w2
	strb	w2, [x0, 1]
	lsr	x2, x1, 7
	and	x4, x2, 255
	ldrb	w2, [x0, 2]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 2]
	lsr	x2, x1, 15
	and	x4, x2, 255
	ldrb	w2, [x0, 3]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 3]
	lsr	x2, x1, 23
	and	x4, x2, 255
	ldrb	w2, [x0, 4]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 4]
	lsr	x2, x1, 31
	and	x4, x2, 255
	ldrb	w2, [x0, 5]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 5]
	lsr	x2, x1, 39
	and	x4, x2, 255
	ldrb	w2, [x0, 6]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 6]
	lsr	x1, x1, 47
	and	x3, x1, 255
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	mov	w2, w1
	mov	w1, w3
	orr	w1, w2, w1
	strb	w1, [x0, 7]
	ldr	x0, [sp]
	cmp	x0, 8
	bls	.L57
	ldr	x0, [sp]
	sub	x0, x0, #8
	and	x1, x0, 36028797018963967
	ldr	x0, [sp, 8]
	and	x2, x1, 127
	ubfiz	w2, w2, 1, 7
	ldrb	w3, [x0, 1]
	and	w3, w3, 1
	orr	w2, w3, w2
	strb	w2, [x0, 1]
	lsr	x2, x1, 7
	and	x4, x2, 255
	ldrb	w2, [x0, 2]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 2]
	lsr	x2, x1, 15
	and	x4, x2, 255
	ldrb	w2, [x0, 3]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 3]
	lsr	x2, x1, 23
	and	x4, x2, 255
	ldrb	w2, [x0, 4]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 4]
	lsr	x2, x1, 31
	and	x4, x2, 255
	ldrb	w2, [x0, 5]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 5]
	lsr	x2, x1, 39
	and	x4, x2, 255
	ldrb	w2, [x0, 6]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 6]
	lsr	x1, x1, 47
	and	x3, x1, 255
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	mov	w2, w1
	mov	w1, w3
	orr	w1, w2, w1
	strb	w1, [x0, 7]
	b	.L58
.L57:
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	and	w1, w1, 255
	str	x0, [sp, 32]
	mov	w0, w1
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	and	w0, w0, 127
	and	w2, w0, 255
	ldr	x1, [sp, 32]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 7
	strb	w0, [x1]
.L58:
	ldr	x0, [sp, 56]
.L53:
	add	sp, sp, 64
	ret
	.size	_ZN11MemoryChunk9moveAheadEm, .-_ZN11MemoryChunk9moveAheadEm
	.align	2
	.global	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.type	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm, %function
_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 32]
	cmp	x0, x1
	bls	.L60
	mov	x0, -1
	b	.L61
.L60:
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk7dataPtrEv
	ldr	x1, [x29, 24]
	udiv	x2, x0, x1
	ldr	x1, [x29, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L62
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	sub	x1, x1, x0
	ldr	x0, [x29, 32]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	ldrb	w2, [x0, 1]
	lsr	w2, w2, 1
	and	x2, x2, 255
	ldrb	w3, [x0, 2]
	lsl	x3, x3, 7
	orr	x2, x3, x2
	ldrb	w3, [x0, 3]
	lsl	x3, x3, 15
	orr	x2, x3, x2
	ldrb	w3, [x0, 4]
	lsl	x3, x3, 23
	orr	x2, x3, x2
	ldrb	w3, [x0, 5]
	lsl	x3, x3, 31
	orr	x2, x3, x2
	ldrb	w3, [x0, 6]
	lsl	x3, x3, 39
	orr	x2, x3, x2
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x2
	cmp	x1, x0
	bls	.L63
	mov	x0, -1
	b	.L61
.L63:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	b	.L61
.L62:
	mov	x0, 0
.L61:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm, .-_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.align	2
	.global	_ZN11MemoryChunk5splitEm
	.type	_ZN11MemoryChunk5splitEm, %function
_ZN11MemoryChunk5splitEm:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L65
	ldr	x0, [x29, 72]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L65
	mov	w0, 1
	b	.L66
.L65:
	mov	w0, 0
.L66:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L68
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L68
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 16]
	cmp	x0, x1
	bhi	.L68
	ldr	x0, [x29, 16]
	cmp	x0, 0
	bne	.L70
.L68:
	mov	w0, 1
	b	.L71
.L70:
	mov	w0, 0
.L71:
	cmp	w0, 0
	beq	.L72
	mov	w0, 0
	b	.L73
.L72:
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 16]
	sub	x0, x1, x0
	str	x0, [x29, 88]
	ldr	x0, [x29, 16]
	add	x0, x0, 8
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	str	x0, [x29, 80]
	ldr	x0, [x29, 88]
	cmp	x0, 8
	bls	.L74
	ldr	x0, [x29, 80]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	mov	x5, x0
	cmp	x5, 0
	beq	.L76
	ldr	x0, [x29, 88]
	sub	x0, x0, #8
	mov	x4, x0
	mov	w3, 0
	mov	w2, 0
	mov	x1, 0
	mov	x0, x5
	bl	_ZN11MemoryChunkC1Embbm
.L76:
	ldr	x0, [x29, 16]
	and	x1, x0, 36028797018963967
	ldr	x0, [x29, 24]
	and	x2, x1, 127
	ubfiz	w2, w2, 1, 7
	ldrb	w3, [x0, 1]
	and	w3, w3, 1
	orr	w2, w3, w2
	strb	w2, [x0, 1]
	lsr	x2, x1, 7
	and	x4, x2, 255
	ldrb	w2, [x0, 2]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 2]
	lsr	x2, x1, 15
	and	x4, x2, 255
	ldrb	w2, [x0, 3]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 3]
	lsr	x2, x1, 23
	and	x4, x2, 255
	ldrb	w2, [x0, 4]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 4]
	lsr	x2, x1, 31
	and	x4, x2, 255
	ldrb	w2, [x0, 5]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 5]
	lsr	x2, x1, 39
	and	x4, x2, 255
	ldrb	w2, [x0, 6]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 6]
	lsr	x1, x1, 47
	and	x3, x1, 255
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	mov	w2, w1
	mov	w1, w3
	orr	w1, w2, w1
	strb	w1, [x0, 7]
	b	.L77
.L74:
	ldr	x0, [x29, 88]
	cmp	x0, 0
	beq	.L77
	ldr	x0, [x29, 88]
	cmp	x0, 128
	bls	.L78
	mov	w0, 0
	b	.L73
.L78:
	ldr	x0, [x29, 80]
	ldr	x1, [x29, 88]
	and	w1, w1, 255
	str	x0, [x29, 40]
	mov	w0, w1
	strb	w0, [x29, 39]
	ldrb	w0, [x29, 39]
	and	w0, w0, 127
	and	w2, w0, 255
	ldr	x1, [x29, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 7
	strb	w0, [x1]
	ldr	x0, [x29, 80]
	str	x0, [x29, 56]
	strb	wzr, [x29, 55]
	ldr	x1, [x29, 56]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 55]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
.L77:
	mov	w0, 1
.L73:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN11MemoryChunk5splitEm, .-_ZN11MemoryChunk5splitEm
	.align	2
	.global	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.type	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv, %function
_ZN11MemoryChunk25mergeTrailingsUnallocatedEv:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L80
	ldr	x0, [x29, 72]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L80
	mov	w0, 1
	b	.L81
.L80:
	mov	w0, 0
.L81:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L83
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L85
.L83:
	mov	w0, 1
	b	.L86
.L85:
	mov	w0, 0
.L86:
	cmp	w0, 0
	bne	.L104
	str	xzr, [x29, 88]
	ldr	x0, [x29, 24]
	bl	_ZN11MemoryChunk14nextContineousEv
	str	x0, [x29, 80]
.L103:
	ldr	x0, [x29, 80]
	cmp	x0, 0
	beq	.L89
	ldr	x0, [x29, 80]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L91
.L89:
	mov	w0, 1
	b	.L92
.L91:
	mov	w0, 0
.L92:
	cmp	w0, 0
	bne	.L105
	ldr	x0, [x29, 80]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L95
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L95
	mov	w0, 1
	b	.L96
.L95:
	mov	w0, 0
.L96:
	cmp	w0, 0
	beq	.L98
	ldr	x0, [x29, 80]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L106
	ldr	x0, [x29, 80]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	add	x0, x0, 8
	str	x0, [x29, 88]
	b	.L101
.L98:
	ldr	x0, [x29, 80]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 7
	and	w0, w0, 255
	and	x0, x0, 255
	ldr	x1, [x29, 88]
	add	x0, x1, x0
	str	x0, [x29, 88]
.L101:
	ldr	x0, [x29, 80]
	bl	_ZN11MemoryChunk14nextContineousEv
	str	x0, [x29, 80]
	b	.L103
.L105:
	nop
	b	.L94
.L106:
	nop
.L94:
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	and	x1, x0, 36028797018963967
	ldr	x0, [x29, 24]
	and	x2, x1, 127
	ubfiz	w2, w2, 1, 7
	ldrb	w3, [x0, 1]
	and	w3, w3, 1
	orr	w2, w3, w2
	strb	w2, [x0, 1]
	lsr	x2, x1, 7
	and	x4, x2, 255
	ldrb	w2, [x0, 2]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 2]
	lsr	x2, x1, 15
	and	x4, x2, 255
	ldrb	w2, [x0, 3]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 3]
	lsr	x2, x1, 23
	and	x4, x2, 255
	ldrb	w2, [x0, 4]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 4]
	lsr	x2, x1, 31
	and	x4, x2, 255
	ldrb	w2, [x0, 5]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 5]
	lsr	x2, x1, 39
	and	x4, x2, 255
	ldrb	w2, [x0, 6]
	mov	w3, 0
	and	w2, w2, w3
	mov	w3, w2
	mov	w2, w4
	orr	w2, w3, w2
	strb	w2, [x0, 6]
	lsr	x1, x1, 47
	and	x3, x1, 255
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	mov	w2, w1
	mov	w1, w3
	orr	w1, w2, w1
	strb	w1, [x0, 7]
	b	.L79
.L104:
	nop
.L79:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv, .-_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.align	2
	.global	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv
	.type	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv, %function
_ZN11MemoryChunk17chunkPtrOfDataPtrEPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 7
	bhi	.L108
	mov	x0, 0
	b	.L109
.L108:
	ldr	x0, [sp, 8]
	sub	x0, x0, #8
.L109:
	add	sp, sp, 16
	ret
	.size	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv, .-_ZN11MemoryChunk17chunkPtrOfDataPtrEPv
	.align	2
	.global	_ZN11MemoryChunk17chunkPtrOfDataPtrEPKv
	.type	_ZN11MemoryChunk17chunkPtrOfDataPtrEPKv, %function
_ZN11MemoryChunk17chunkPtrOfDataPtrEPKv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	cmp	x0, 7
	bhi	.L111
	mov	x0, 0
	b	.L112
.L111:
	ldr	x0, [sp, 8]
	sub	x0, x0, #8
.L112:
	add	sp, sp, 16
	ret
	.size	_ZN11MemoryChunk17chunkPtrOfDataPtrEPKv, .-_ZN11MemoryChunk17chunkPtrOfDataPtrEPKv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
