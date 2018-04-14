	.arch armv8.2-a+crc
	.file	"VirtualAddress.cpp"
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
	.global	_ZN14VirtualAddressC2Eh
	.type	_ZN14VirtualAddressC2Eh, %function
_ZN14VirtualAddressC2Eh:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	ldrb	w1, [sp, 7]
	strb	w1, [x0, 8]
	ldr	x0, [sp, 8]
	strb	wzr, [x0, 9]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14VirtualAddressC2Eh, .-_ZN14VirtualAddressC2Eh
	.global	_ZN14VirtualAddressC1Eh
	.set	_ZN14VirtualAddressC1Eh,_ZN14VirtualAddressC2Eh
	.align	2
	.global	_ZN14VirtualAddressC2Emh
	.type	_ZN14VirtualAddressC2Emh, %function
_ZN14VirtualAddressC2Emh:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	strb	w2, [sp, 15]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldrb	w1, [sp, 15]
	strb	w1, [x0, 8]
	ldr	x0, [sp, 24]
	strb	wzr, [x0, 9]
	nop
	add	sp, sp, 32
	ret
	.size	_ZN14VirtualAddressC2Emh, .-_ZN14VirtualAddressC2Emh
	.global	_ZN14VirtualAddressC1Emh
	.set	_ZN14VirtualAddressC1Emh,_ZN14VirtualAddressC2Emh
	.align	2
	.global	_ZN14VirtualAddress5indexEhj
	.type	_ZN14VirtualAddress5indexEhj, %function
_ZN14VirtualAddress5indexEhj:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	strb	w1, [x29, 39]
	str	w2, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZNK14VirtualAddress12initialLevelEv
	strb	w0, [x29, 94]
	ldrb	w1, [x29, 39]
	ldrb	w0, [x29, 94]
	cmp	w1, w0
	bcs	.L4
	ldr	x0, [x29, 40]
	b	.L5
.L4:
	ldrb	w0, [x29, 39]
	mov	w1, 3
	sub	w0, w1, w0
	and	w0, w0, 255
	mov	w1, w0
	mov	w0, w1
	ubfiz	w0, w0, 3, 5
	add	w0, w0, w1
	and	w0, w0, 255
	add	w0, w0, 12
	strb	w0, [x29, 93]
	ldrb	w0, [x29, 93]
	add	w0, w0, 8
	strb	w0, [x29, 95]
	ldrb	w1, [x29, 39]
	ldrb	w0, [x29, 94]
	cmp	w1, w0
	bne	.L6
	ldr	x0, [x29, 40]
	ldrb	w19, [x0, 8]
	ldrb	w1, [x29, 39]
	ldr	x0, [x29, 40]
	bl	_ZNK14VirtualAddress14rightShiftBitsEh
	and	w0, w0, 255
	sub	w0, w19, w0
	and	w0, w0, 255
	ldrb	w1, [x29, 93]
	add	w0, w0, w1
	and	w0, w0, 255
	sub	w0, w0, #1
	strb	w0, [x29, 95]
.L6:
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	ldrb	w0, [x29, 93]
	strb	w0, [x29, 79]
	ldrb	w0, [x29, 95]
	strb	w0, [x29, 78]
	ldr	w0, [x29, 32]
	str	w0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldrb	w2, [x29, 79]
	ldrb	w0, [x29, 78]
	str	x2, [x29, 64]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 64]
	mov	w3, w0
	ldr	x0, [x29, 56]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 56]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	x0, x0
	and	x1, x1, x0
	ldr	w2, [x29, 72]
	ldrb	w3, [x29, 78]
	ldrb	w0, [x29, 79]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 48]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 79]
	lsl	x0, x2, x0
	orr	x1, x1, x0
	ldr	x0, [x29, 80]
	str	x1, [x0]
	ldr	x0, [x29, 40]
.L5:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN14VirtualAddress5indexEhj, .-_ZN14VirtualAddress5indexEhj
	.align	2
	.global	_ZNK14VirtualAddress5indexEh
	.type	_ZNK14VirtualAddress5indexEh, %function
_ZNK14VirtualAddress5indexEh:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	strb	w1, [x29, 39]
	ldr	x0, [x29, 40]
	bl	_ZNK14VirtualAddress12initialLevelEv
	strb	w0, [x29, 78]
	ldrb	w1, [x29, 39]
	ldrb	w0, [x29, 78]
	cmp	w1, w0
	bcs	.L10
	mov	w0, -1
	b	.L11
.L10:
	ldrb	w0, [x29, 39]
	mov	w1, 3
	sub	w0, w1, w0
	and	w0, w0, 255
	mov	w1, w0
	mov	w0, w1
	ubfiz	w0, w0, 3, 5
	add	w0, w0, w1
	and	w0, w0, 255
	add	w0, w0, 12
	strb	w0, [x29, 77]
	ldrb	w0, [x29, 77]
	add	w0, w0, 8
	strb	w0, [x29, 79]
	ldrb	w1, [x29, 39]
	ldrb	w0, [x29, 78]
	cmp	w1, w0
	bne	.L12
	ldr	x0, [x29, 40]
	ldrb	w19, [x0, 8]
	ldrb	w1, [x29, 39]
	ldr	x0, [x29, 40]
	bl	_ZNK14VirtualAddress14rightShiftBitsEh
	and	w0, w0, 255
	sub	w0, w19, w0
	and	w0, w0, 255
	ldrb	w1, [x29, 77]
	add	w0, w0, w1
	and	w0, w0, 255
	sub	w0, w0, #1
	strb	w0, [x29, 79]
.L12:
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 64]
	ldrb	w0, [x29, 77]
	strb	w0, [x29, 63]
	ldrb	w0, [x29, 79]
	strb	w0, [x29, 62]
	ldrb	w0, [x29, 63]
	ldr	x1, [x29, 64]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 62]
	ldrb	w0, [x29, 63]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 48]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
.L11:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNK14VirtualAddress5indexEh, .-_ZNK14VirtualAddress5indexEh
	.align	2
	.global	_ZN14VirtualAddress6offsetEm
	.type	_ZN14VirtualAddress6offsetEm, %function
_ZN14VirtualAddress6offsetEm:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	strb	wzr, [sp, 55]
	mov	w0, 11
	strb	w0, [sp, 54]
	ldr	x0, [sp]
	str	x0, [sp, 40]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrb	w2, [sp, 55]
	ldrb	w0, [sp, 54]
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
	mvn	x0, x0
	and	x1, x1, x0
	ldrb	w2, [sp, 54]
	ldrb	w0, [sp, 55]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [sp, 16]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x2, x2, x0
	ldr	x0, [sp, 40]
	and	x2, x2, x0
	ldrb	w0, [sp, 55]
	lsl	x0, x2, x0
	orr	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 64
	ret
	.size	_ZN14VirtualAddress6offsetEm, .-_ZN14VirtualAddress6offsetEm
	.align	2
	.global	_ZNK14VirtualAddress6offsetEv
	.type	_ZNK14VirtualAddress6offsetEv, %function
_ZNK14VirtualAddress6offsetEv:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 40]
	strb	wzr, [sp, 39]
	mov	w0, 11
	strb	w0, [sp, 38]
	ldrb	w0, [sp, 39]
	ldr	x1, [sp, 40]
	lsr	x1, x1, x0
	ldrb	w2, [sp, 38]
	ldrb	w0, [sp, 39]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [sp, 24]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	nop
	add	sp, sp, 48
	ret
	.size	_ZNK14VirtualAddress6offsetEv, .-_ZNK14VirtualAddress6offsetEv
	.align	2
	.global	_ZN14VirtualAddress7addrLenEh
	.type	_ZN14VirtualAddress7addrLenEh, %function
_ZN14VirtualAddress7addrLenEh:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	ldrb	w1, [sp, 7]
	strb	w1, [x0, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZN14VirtualAddress7addrLenEh, .-_ZN14VirtualAddress7addrLenEh
	.align	2
	.global	_ZNK14VirtualAddress7addrLenEv
	.type	_ZNK14VirtualAddress7addrLenEv, %function
_ZNK14VirtualAddress7addrLenEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	add	sp, sp, 16
	ret
	.size	_ZNK14VirtualAddress7addrLenEv, .-_ZNK14VirtualAddress7addrLenEv
	.align	2
	.global	_ZN14VirtualAddress4addrEm
	.type	_ZN14VirtualAddress4addrEm, %function
_ZN14VirtualAddress4addrEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZN14VirtualAddress4addrEm, .-_ZN14VirtualAddress4addrEm
	.align	2
	.global	_ZNK14VirtualAddress4addrEv
	.type	_ZNK14VirtualAddress4addrEv, %function
_ZNK14VirtualAddress4addrEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	.size	_ZNK14VirtualAddress4addrEv, .-_ZNK14VirtualAddress4addrEv
	.align	2
	.global	_ZNK14VirtualAddress7ttbrSelEv
	.type	_ZNK14VirtualAddress7ttbrSelEv, %function
_ZNK14VirtualAddress7ttbrSelEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	lsr	x0, x0, 55
	and	w0, w0, 1
	add	sp, sp, 16
	ret
	.size	_ZNK14VirtualAddress7ttbrSelEv, .-_ZNK14VirtualAddress7ttbrSelEv
	.align	2
	.global	_ZN14VirtualAddress7ttbrSelEi
	.type	_ZN14VirtualAddress7ttbrSelEi, %function
_ZN14VirtualAddress7ttbrSelEi:
	sub	sp, sp, #112
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 1
	bne	.L34
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 8]
	str	x0, [sp, 104]
	mov	w0, w1
	strb	w0, [sp, 103]
	mov	w0, 63
	strb	w0, [sp, 102]
	mov	x0, -1
	str	x0, [sp, 88]
	ldr	x0, [sp, 104]
	ldr	x1, [x0]
	ldrb	w2, [sp, 103]
	ldrb	w0, [sp, 102]
	str	x2, [sp, 80]
	str	x0, [sp, 72]
	ldr	x0, [sp, 80]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 80]
	mov	w3, w0
	ldr	x0, [sp, 72]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 72]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	x0, x0
	and	x1, x1, x0
	ldrb	w2, [sp, 102]
	ldrb	w0, [sp, 103]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [sp, 64]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x2, x2, x0
	ldr	x0, [sp, 88]
	and	x2, x2, x0
	ldrb	w0, [sp, 103]
	lsl	x0, x2, x0
	orr	x1, x1, x0
	ldr	x0, [sp, 104]
	str	x1, [x0]
	b	.L37
.L34:
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L37
	ldr	x0, [sp, 8]
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 8]
	str	x0, [sp, 56]
	mov	w0, w1
	strb	w0, [sp, 55]
	mov	w0, 63
	strb	w0, [sp, 54]
	str	wzr, [sp, 48]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldrb	w2, [sp, 55]
	ldrb	w0, [sp, 54]
	str	x2, [sp, 40]
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 40]
	mov	w3, w0
	ldr	x0, [sp, 32]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 32]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	x0, x0
	and	x1, x1, x0
	ldrsw	x2, [sp, 48]
	ldrb	w3, [sp, 54]
	ldrb	w0, [sp, 55]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 24]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 55]
	lsl	x0, x2, x0
	orr	x1, x1, x0
	ldr	x0, [sp, 56]
	str	x1, [x0]
.L37:
	ldr	x0, [sp, 8]
	add	sp, sp, 112
	ret
	.size	_ZN14VirtualAddress7ttbrSelEi, .-_ZN14VirtualAddress7ttbrSelEi
	.align	2
	.global	_ZNK14VirtualAddress5validEv
	.type	_ZNK14VirtualAddress5validEv, %function
_ZNK14VirtualAddress5validEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 8]
	lsr	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L42
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	mov	w1, w0
	mov	w0, 64
	sub	w0, w0, w1
	sxtw	x0, w0
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	mov	w1, w0
	mov	w0, 64
	sub	w0, w0, w1
	mov	x1, -1
	lsl	x1, x1, x0
	ldr	x0, [sp, 16]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	lsr	x0, x1, x0
	ldr	x1, [sp, 24]
	cmp	x1, x0
	bne	.L44
.L42:
	mov	w0, 1
	b	.L45
.L44:
	mov	w0, 0
.L45:
	add	sp, sp, 32
	ret
	.size	_ZNK14VirtualAddress5validEv, .-_ZNK14VirtualAddress5validEv
	.align	2
	.global	_ZNK14VirtualAddress12initialLevelEv
	.type	_ZNK14VirtualAddress12initialLevelEv, %function
_ZNK14VirtualAddress12initialLevelEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	cmp	w0, 12
	bhi	.L48
	mov	w0, 255
	b	.L49
.L48:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 8]
	sub	w0, w0, #13
	mov	w1, 36409
	movk	w1, 0x38e3, lsl 16
	smull	x1, w0, w1
	lsr	x1, x1, 32
	asr	w1, w1, 1
	asr	w0, w0, 31
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 3
	ble	.L50
	mov	w0, 255
	b	.L49
.L50:
	ldr	w0, [sp, 28]
	and	w0, w0, 255
	mov	w1, 3
	sub	w0, w1, w0
	and	w0, w0, 255
.L49:
	add	sp, sp, 32
	ret
	.size	_ZNK14VirtualAddress12initialLevelEv, .-_ZNK14VirtualAddress12initialLevelEv
	.align	2
	.global	_ZNK14VirtualAddress8hasLevelEh
	.type	_ZNK14VirtualAddress8hasLevelEh, %function
_ZNK14VirtualAddress8hasLevelEh:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldr	x0, [x29, 24]
	bl	_ZNK14VirtualAddress12initialLevelEv
	and	w0, w0, 255
	ldrb	w1, [x29, 23]
	cmp	w1, w0
	cset	w0, cs
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK14VirtualAddress8hasLevelEh, .-_ZNK14VirtualAddress8hasLevelEh
	.align	2
	.global	_ZNK14VirtualAddress14rightShiftBitsEh
	.type	_ZNK14VirtualAddress14rightShiftBitsEh, %function
_ZNK14VirtualAddress14rightShiftBitsEh:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	mov	w1, 3
	sub	w0, w1, w0
	and	w0, w0, 255
	mov	w1, w0
	mov	w0, w1
	ubfiz	w0, w0, 3, 5
	add	w0, w0, w1
	and	w0, w0, 255
	add	w0, w0, 12
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14VirtualAddress14rightShiftBitsEh, .-_ZNK14VirtualAddress14rightShiftBitsEh
	.align	2
	.global	_ZNK14VirtualAddress14levelIndexMaskEv
	.type	_ZNK14VirtualAddress14levelIndexMaskEv, %function
_ZNK14VirtualAddress14levelIndexMaskEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 511
	add	sp, sp, 16
	ret
	.size	_ZNK14VirtualAddress14levelIndexMaskEv, .-_ZNK14VirtualAddress14levelIndexMaskEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
