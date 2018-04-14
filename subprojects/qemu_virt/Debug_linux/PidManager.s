	.arch armv8.2-a+crc
	.file	"PidManager.cpp"
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
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.align	1
	.type	_ZL11PID_INVALID, %object
	.size	_ZL11PID_INVALID, 2
_ZL11PID_INVALID:
	.zero	2
	.align	1
	.type	_ZL11PID_CURRENT, %object
	.size	_ZL11PID_CURRENT, 2
_ZL11PID_CURRENT:
	.hword	1
	.align	1
	.type	_ZL10PID_PARENT, %object
	.size	_ZL10PID_PARENT, 2
_ZL10PID_PARENT:
	.hword	2
	.text
	.align	2
	.global	_ZN10PidManagerC2Ev
	.type	_ZN10PidManagerC2Ev, %function
_ZN10PidManagerC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN10PidManager8clearAllEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10PidManagerC2Ev, .-_ZN10PidManagerC2Ev
	.global	_ZN10PidManagerC1Ev
	.set	_ZN10PidManagerC1Ev,_ZN10PidManagerC2Ev
	.align	2
	.global	_ZNK10PidManager11isAllocatedEt
	.type	_ZNK10PidManager11isAllocatedEt, %function
_ZNK10PidManager11isAllocatedEt:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	strh	w1, [sp, 6]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldrh	w0, [sp, 6]
	strh	w0, [sp, 30]
	ldrh	w0, [sp, 30]
	lsr	w0, w0, 3
	and	w0, w0, 65535
	and	x0, x0, 65535
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, x0]
	and	x0, x0, 255
	ldr	x1, [sp, 8]
	str	x1, [sp, 48]
	ldrh	w1, [sp, 6]
	strh	w1, [sp, 46]
	ldrh	w1, [sp, 46]
	and	x1, x1, 7
	and	w1, w1, 255
	str	x0, [sp, 88]
	mov	w0, w1
	strb	w0, [sp, 87]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 71]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 70]
	ldrb	w0, [sp, 71]
	ldr	x1, [sp, 72]
	lsr	x1, x1, x0
	ldrb	w2, [sp, 70]
	ldrb	w0, [sp, 71]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [sp, 56]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 96
	ret
	.size	_ZNK10PidManager11isAllocatedEt, .-_ZNK10PidManager11isAllocatedEt
	.align	2
	.global	_ZN10PidManager8allocateEv
	.type	_ZN10PidManager8allocateEv, %function
_ZN10PidManager8allocateEv:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	str	xzr, [sp, 88]
.L17:
	ldr	x0, [sp, 88]
	cmp	x0, 128
	beq	.L10
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 255
	beq	.L11
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [sp, 87]
	str	xzr, [sp, 72]
.L13:
	ldrb	w0, [sp, 87]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L12
	ldrb	w0, [sp, 87]
	asr	w0, w0, 1
	strb	w0, [sp, 87]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L13
.L12:
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 88]
	add	x0, x1, x0
	ldr	x1, [sp, 72]
	and	w1, w1, 255
	str	x0, [sp, 64]
	mov	w0, w1
	strb	w0, [sp, 63]
	mov	w0, 1
	str	w0, [sp, 56]
	ldr	x0, [sp, 64]
	str	x0, [sp, 48]
	ldrb	w0, [sp, 63]
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 63]
	strb	w0, [sp, 46]
	ldr	w0, [sp, 56]
	str	w0, [sp, 40]
	ldr	x0, [sp, 48]
	ldrb	w1, [x0]
	ldrb	w2, [sp, 47]
	ldrb	w0, [sp, 46]
	str	x2, [sp, 32]
	str	x0, [sp, 24]
	ldr	x0, [sp, 32]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 32]
	mov	w3, w0
	ldr	x0, [sp, 24]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 24]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [sp, 40]
	ldrb	w3, [sp, 46]
	ldrb	w0, [sp, 47]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 16]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 47]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 48]
	strb	w1, [x0]
	ldr	x0, [sp, 88]
	and	w0, w0, 65535
	ubfiz	w0, w0, 3, 13
	and	w1, w0, 65535
	ldr	x0, [sp, 72]
	and	w0, w0, 65535
	add	w0, w1, w0
	and	w0, w0, 65535
	b	.L16
.L11:
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
	b	.L17
.L10:
	mov	w0, 0
.L16:
	add	sp, sp, 96
	ret
	.size	_ZN10PidManager8allocateEv, .-_ZN10PidManager8allocateEv
	.align	2
	.global	_ZN10PidManager8allocateEt
	.type	_ZN10PidManager8allocateEt, %function
_ZN10PidManager8allocateEt:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strh	w1, [x29, 22]
	ldrh	w0, [x29, 22]
	bl	_ZN10PidManager13isReservedPidEt
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	mov	w0, 0
	b	.L20
.L19:
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldrh	w0, [x29, 22]
	strh	w0, [x29, 94]
	ldrh	w0, [x29, 94]
	lsr	w0, w0, 3
	and	w0, w0, 65535
	and	x0, x0, 65535
	str	x0, [x29, 168]
	ldr	x0, [x29, 24]
	str	x0, [x29, 112]
	ldrh	w0, [x29, 22]
	strh	w0, [x29, 110]
	ldrh	w0, [x29, 110]
	and	x0, x0, 7
	str	x0, [x29, 160]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 168]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [x29, 160]
	and	w1, w1, 255
	str	x0, [x29, 152]
	mov	w0, w1
	strb	w0, [x29, 151]
	ldr	x0, [x29, 152]
	str	x0, [x29, 136]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 135]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 134]
	ldrb	w0, [x29, 135]
	ldr	x1, [x29, 136]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 134]
	ldrb	w0, [x29, 135]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 120]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L26
	mov	w0, 0
	b	.L20
.L26:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 168]
	add	x0, x1, x0
	ldr	x1, [x29, 160]
	and	w1, w1, 255
	str	x0, [x29, 80]
	mov	w0, w1
	strb	w0, [x29, 79]
	mov	w0, 1
	str	w0, [x29, 72]
	ldr	x0, [x29, 80]
	str	x0, [x29, 64]
	ldrb	w0, [x29, 79]
	strb	w0, [x29, 63]
	ldrb	w0, [x29, 79]
	strb	w0, [x29, 62]
	ldr	w0, [x29, 72]
	str	w0, [x29, 56]
	ldr	x0, [x29, 64]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 63]
	ldrb	w0, [x29, 62]
	str	x2, [x29, 48]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 48]
	mov	w3, w0
	ldr	x0, [x29, 40]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 40]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [x29, 56]
	ldrb	w3, [x29, 62]
	ldrb	w0, [x29, 63]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 32]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 63]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 64]
	strb	w1, [x0]
	ldrh	w0, [x29, 22]
.L20:
	ldp	x29, x30, [sp], 176
	ret
	.size	_ZN10PidManager8allocateEt, .-_ZN10PidManager8allocateEt
	.align	2
	.global	_ZN10PidManager10deallocateEt
	.type	_ZN10PidManager10deallocateEt, %function
_ZN10PidManager10deallocateEt:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strh	w1, [x29, 22]
	ldrh	w0, [x29, 22]
	bl	_ZN10PidManager13isReservedPidEt
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L39
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldrh	w0, [x29, 22]
	strh	w0, [x29, 94]
	ldrh	w0, [x29, 94]
	lsr	w0, w0, 3
	and	w0, w0, 65535
	and	x0, x0, 65535
	str	x0, [x29, 168]
	ldr	x0, [x29, 24]
	str	x0, [x29, 112]
	ldrh	w0, [x29, 22]
	strh	w0, [x29, 110]
	ldrh	w0, [x29, 110]
	and	x0, x0, 7
	str	x0, [x29, 160]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 168]
	add	x0, x1, x0
	ldrb	w0, [x0]
	and	x0, x0, 255
	ldr	x1, [x29, 160]
	and	w1, w1, 255
	str	x0, [x29, 152]
	mov	w0, w1
	strb	w0, [x29, 151]
	ldr	x0, [x29, 152]
	str	x0, [x29, 136]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 135]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 134]
	ldrb	w0, [x29, 135]
	ldr	x1, [x29, 136]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 134]
	ldrb	w0, [x29, 135]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 120]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 168]
	add	x0, x1, x0
	ldr	x1, [x29, 160]
	and	w1, w1, 255
	str	x0, [x29, 80]
	mov	w0, w1
	strb	w0, [x29, 79]
	str	wzr, [x29, 72]
	ldr	x0, [x29, 80]
	str	x0, [x29, 64]
	ldrb	w0, [x29, 79]
	strb	w0, [x29, 63]
	ldrb	w0, [x29, 79]
	strb	w0, [x29, 62]
	ldr	w0, [x29, 72]
	str	w0, [x29, 56]
	ldr	x0, [x29, 64]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 63]
	ldrb	w0, [x29, 62]
	str	x2, [x29, 48]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 48]
	mov	w3, w0
	ldr	x0, [x29, 40]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 40]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [x29, 56]
	ldrb	w3, [x29, 62]
	ldrb	w0, [x29, 63]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 32]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 63]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 64]
	strb	w1, [x0]
	b	.L29
.L39:
	nop
.L29:
	ldp	x29, x30, [sp], 176
	ret
	.size	_ZN10PidManager10deallocateEt, .-_ZN10PidManager10deallocateEt
	.align	2
	.global	_ZN10PidManager8clearAllEv
	.type	_ZN10PidManager8clearAllEv, %function
_ZN10PidManager8clearAllEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	mov	x2, 128
	mov	w1, 0
	bl	memset
	ldr	x0, [x29, 24]
	bl	_ZN10PidManager27forceReservedPidPresetValueEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10PidManager8clearAllEv, .-_ZN10PidManager8clearAllEv
	.align	2
	.global	_ZN10PidManager13isReservedPidEt
	.type	_ZN10PidManager13isReservedPidEt, %function
_ZN10PidManager13isReservedPidEt:
	sub	sp, sp, #16
	strh	w0, [sp, 14]
	ldrh	w0, [sp, 14]
	cmp	w0, 0
	beq	.L42
	ldrh	w0, [sp, 14]
	cmp	w0, 2
	beq	.L42
	ldrh	w0, [sp, 14]
	cmp	w0, 1
	bne	.L43
.L42:
	mov	w0, 1
	b	.L44
.L43:
	mov	w0, 0
.L44:
	add	sp, sp, 16
	ret
	.size	_ZN10PidManager13isReservedPidEt, .-_ZN10PidManager13isReservedPidEt
	.align	2
	.global	_ZN10PidManager9setPidBitEth
	.type	_ZN10PidManager9setPidBitEth, %function
_ZN10PidManager9setPidBitEth:
	sub	sp, sp, #112
	str	x0, [sp, 8]
	strh	w1, [sp, 6]
	strb	w2, [sp, 5]
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	ldrh	w0, [sp, 6]
	strh	w0, [sp, 30]
	ldrh	w0, [sp, 30]
	lsr	w0, w0, 3
	and	w0, w0, 65535
	and	x0, x0, 65535
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	x1, [sp, 8]
	str	x1, [sp, 48]
	ldrh	w1, [sp, 6]
	strh	w1, [sp, 46]
	ldrh	w1, [sp, 46]
	and	x1, x1, 7
	and	w1, w1, 255
	str	x0, [sp, 104]
	mov	w0, w1
	strb	w0, [sp, 103]
	ldrb	w0, [sp, 5]
	strb	w0, [sp, 102]
	ldr	x0, [sp, 104]
	str	x0, [sp, 88]
	ldrb	w0, [sp, 103]
	strb	w0, [sp, 87]
	ldrb	w0, [sp, 103]
	strb	w0, [sp, 86]
	ldrb	w0, [sp, 102]
	strb	w0, [sp, 85]
	ldr	x0, [sp, 88]
	ldrb	w1, [x0]
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
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 85]
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
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 88]
	strb	w1, [x0]
	nop
	add	sp, sp, 112
	ret
	.size	_ZN10PidManager9setPidBitEth, .-_ZN10PidManager9setPidBitEth
	.align	2
	.global	_ZN10PidManager27forceReservedPidPresetValueEv
	.type	_ZN10PidManager27forceReservedPidPresetValueEv, %function
_ZN10PidManager27forceReservedPidPresetValueEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	mov	w2, 1
	mov	w1, 0
	ldr	x0, [x29, 24]
	bl	_ZN10PidManager9setPidBitEth
	mov	w2, 1
	mov	w1, 2
	ldr	x0, [x29, 24]
	bl	_ZN10PidManager9setPidBitEth
	mov	w2, 1
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN10PidManager9setPidBitEth
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10PidManager27forceReservedPidPresetValueEv, .-_ZN10PidManager27forceReservedPidPresetValueEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
