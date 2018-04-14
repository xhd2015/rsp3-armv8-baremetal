	.arch armv8.2-a+crc
	.file	"XilinxUARTPS.cpp"
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
	.global	_ZN12XilinxUARTPSC2EPv
	.type	_ZN12XilinxUARTPSC2EPv, %function
_ZN12XilinxUARTPSC2EPv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0]
	add	x1, x0, 44
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x1, x0, 48
	ldr	x0, [x29, 24]
	str	x1, [x0, 24]
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN12XilinxUARTPSC2EPv, .-_ZN12XilinxUARTPSC2EPv
	.global	_ZN12XilinxUARTPSC1EPv
	.set	_ZN12XilinxUARTPSC1EPv,_ZN12XilinxUARTPSC2EPv
	.align	2
	.global	_ZN12XilinxUARTPS4initEv
	.type	_ZN12XilinxUARTPS4initEv, %function
_ZN12XilinxUARTPS4initEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	ldr	w0, [x0]
	and	w0, w0, -61
	mov	x1, 16
	orr	w1, w0, w1
	mov	x0, 4
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 8]
	orr	w1, w1, w2
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN12XilinxUARTPS4initEv, .-_ZN12XilinxUARTPS4initEv
	.align	2
	.global	_ZN12XilinxUARTPS5writeEc
	.type	_ZN12XilinxUARTPS5writeEc, %function
_ZN12XilinxUARTPS5writeEc:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
.L12:
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	w0, [x0]
	uxtw	x1, w0
	mov	x0, 16
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	b	.L12
.L11:
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	ldrsb	w1, [sp, 7]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	ret
	.size	_ZN12XilinxUARTPS5writeEc, .-_ZN12XilinxUARTPS5writeEc
	.align	2
	.global	_ZNK12XilinxUARTPS14readNonBlockedEv
	.type	_ZNK12XilinxUARTPS14readNonBlockedEv, %function
_ZNK12XilinxUARTPS14readNonBlockedEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	w0, [x0]
	uxtw	x1, w0
	mov	x0, 2
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L16
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	ldr	w0, [x0]
	sxtb	w0, w0
	b	.L17
.L16:
	mov	w0, 0
.L17:
	add	sp, sp, 32
	ret
	.size	_ZNK12XilinxUARTPS14readNonBlockedEv, .-_ZNK12XilinxUARTPS14readNonBlockedEv
	.align	2
	.global	_ZNK12XilinxUARTPS11readBlockedEv
	.type	_ZNK12XilinxUARTPS11readBlockedEv, %function
_ZNK12XilinxUARTPS11readBlockedEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
.L22:
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 16]
	ldr	w0, [x0]
	uxtw	x1, w0
	mov	x0, 2
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	b	.L22
.L21:
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	ldr	w0, [x0]
	sxtb	w0, w0
	add	sp, sp, 32
	ret
	.size	_ZNK12XilinxUARTPS11readBlockedEv, .-_ZNK12XilinxUARTPS11readBlockedEv
	.section	.text._ZN17MemBasedRegReaderILb1EEC2IPvEET_,"axG",@progbits,_ZN17MemBasedRegReaderILb1EEC5IPvEET_,comdat
	.align	2
	.weak	_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.type	_ZN17MemBasedRegReaderILb1EEC2IPvEET_, %function
_ZN17MemBasedRegReaderILb1EEC2IPvEET_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17MemBasedRegReaderILb1EEC2IPvEET_, .-_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.weak	_ZN17MemBasedRegReaderILb1EEC1IPvEET_
	.set	_ZN17MemBasedRegReaderILb1EEC1IPvEET_,_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
