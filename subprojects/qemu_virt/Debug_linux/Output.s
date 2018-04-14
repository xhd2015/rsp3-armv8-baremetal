	.arch armv8.2-a+crc
	.file	"Output.cpp"
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
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.align	2
	.global	_ZN6Output5printEPKcm
	.type	_ZN6Output5printEPKcm, %function
_ZN6Output5printEPKcm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	bl	_Z6printkPKcm
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6Output5printEPKcm, .-_ZN6Output5printEPKcm
	.align	2
	.global	_ZN6Output5printEPKc
	.type	_ZN6Output5printEPKc, %function
_ZN6Output5printEPKc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_Z6printkPKc
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6Output5printEPKc, .-_ZN6Output5printEPKc
	.align	2
	.global	_ZN6OutputlsEc
	.type	_ZN6OutputlsEc, %function
_ZN6OutputlsEc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldrb	w0, [x29, 23]
	bl	_Z6printkc
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEc, .-_ZN6OutputlsEc
	.align	2
	.global	_ZN6OutputlsEh
	.type	_ZN6OutputlsEh, %function
_ZN6OutputlsEh:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldrb	w0, [x29, 23]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEh, .-_ZN6OutputlsEh
	.align	2
	.global	_ZN6OutputlsEt
	.type	_ZN6OutputlsEt, %function
_ZN6OutputlsEt:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strh	w1, [x29, 22]
	ldrh	w0, [x29, 22]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEt, .-_ZN6OutputlsEt
	.align	2
	.global	_ZN6OutputlsEj
	.type	_ZN6OutputlsEj, %function
_ZN6OutputlsEj:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	w0, [x29, 20]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEj, .-_ZN6OutputlsEj
	.section	.rodata
	.align	3
.LC0:
	.string	"true"
	.align	3
.LC1:
	.string	"false"
	.text
	.align	2
	.global	_ZN6OutputlsEb
	.type	_ZN6OutputlsEb, %function
_ZN6OutputlsEb:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldrb	w0, [x29, 23]
	cmp	w0, 0
	beq	.L14
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	b	.L15
.L14:
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
.L15:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEPKc
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEb, .-_ZN6OutputlsEb
	.align	2
	.global	_ZN6OutputlsEs
	.type	_ZN6OutputlsEs, %function
_ZN6OutputlsEs:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strh	w1, [x29, 22]
	ldrsh	x0, [x29, 22]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEs, .-_ZN6OutputlsEs
	.align	2
	.global	_ZN6OutputlsEi
	.type	_ZN6OutputlsEi, %function
_ZN6OutputlsEi:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldrsw	x0, [x29, 20]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEi, .-_ZN6OutputlsEi
	.align	2
	.global	_ZN6OutputlsEd
	.type	_ZN6OutputlsEd, %function
_ZN6OutputlsEd:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	d0, [x29, 16]
	ldr	d0, [x29, 16]
	fcvtzu	x0, d0
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEd, .-_ZN6OutputlsEd
	.align	2
	.global	_ZN6OutputlsEPKc
	.type	_ZN6OutputlsEPKc, %function
_ZN6OutputlsEPKc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_Z6printkPKc
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEPKc, .-_ZN6OutputlsEPKc
	.align	2
	.global	_ZN6OutputlsEm
	.type	_ZN6OutputlsEm, %function
_ZN6OutputlsEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	add	x0, x29, 40
	ldr	x1, [x29, 16]
	bl	_ZN16IntegerFormatterILi10EEC1Em
	add	x0, x29, 40
	bl	_ZNK16IntegerFormatterILi10EE6formatEv
	bl	_Z6printkPKc
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6OutputlsEm, .-_ZN6OutputlsEm
	.align	2
	.global	_ZN6OutputlsEPKv
	.type	_ZN6OutputlsEPKv, %function
_ZN6OutputlsEPKv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	add	x0, x29, 40
	ldr	x1, [x29, 16]
	bl	_ZN16IntegerFormatterILi16EEC1EPKv
	add	x0, x29, 40
	bl	_ZNK16IntegerFormatterILi16EE6formatEv
	bl	_Z6printkPKc
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6OutputlsEPKv, .-_ZN6OutputlsEPKv
	.align	2
	.global	_ZN6OutputlsEPVKv
	.type	_ZN6OutputlsEPVKv, %function
_ZN6OutputlsEPVKv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEPKv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6OutputlsEPVKv, .-_ZN6OutputlsEPVKv
	.align	2
	.global	_ZN6Output5flushEv
	.type	_ZN6Output5flushEv, %function
_ZN6Output5flushEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	bl	_Z5flushv
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6Output5flushEv, .-_ZN6Output5flushEv
	.align	2
	.global	_ZlsR6OutputRK9StringRef
	.type	_ZlsR6OutputRK9StringRef, %function
_ZlsR6OutputRK9StringRef:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 8]
	str	x0, [x29, 56]
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L36
.L37:
	ldr	x0, [x29, 56]
	sub	x1, x0, #1
	str	x1, [x29, 56]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L36
	ldr	x0, [x29, 48]
	add	x1, x0, 1
	str	x1, [x29, 48]
	ldrsb	w0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEc
	b	.L37
.L36:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZlsR6OutputRK9StringRef, .-_ZlsR6OutputRK9StringRef
	.section	.text._ZN16IntegerFormatterILi10EEC2Em,"axG",@progbits,_ZN16IntegerFormatterILi10EEC5Em,comdat
	.align	2
	.weak	_ZN16IntegerFormatterILi10EEC2Em
	.type	_ZN16IntegerFormatterILi10EEC2Em, %function
_ZN16IntegerFormatterILi10EEC2Em:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16IntegerFormatterILi10EEC2Em, .-_ZN16IntegerFormatterILi10EEC2Em
	.weak	_ZN16IntegerFormatterILi10EEC1Em
	.set	_ZN16IntegerFormatterILi10EEC1Em,_ZN16IntegerFormatterILi10EEC2Em
	.section	.text._ZNK16IntegerFormatterILi10EE6formatEv,"axG",@progbits,_ZNK16IntegerFormatterILi10EE6formatEv,comdat
	.align	2
	.weak	_ZNK16IntegerFormatterILi10EE6formatEv
	.type	_ZNK16IntegerFormatterILi10EE6formatEv, %function
_ZNK16IntegerFormatterILi10EE6formatEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	mov	x3, 65
	mov	x2, x0
	mov	w1, 10
	mov	x0, x4
	bl	_Z4itosmjPcm
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK16IntegerFormatterILi10EE6formatEv, .-_ZNK16IntegerFormatterILi10EE6formatEv
	.section	.text._ZN16IntegerFormatterILi16EEC2EPKv,"axG",@progbits,_ZN16IntegerFormatterILi16EEC5EPKv,comdat
	.align	2
	.weak	_ZN16IntegerFormatterILi16EEC2EPKv
	.type	_ZN16IntegerFormatterILi16EEC2EPKv, %function
_ZN16IntegerFormatterILi16EEC2EPKv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16IntegerFormatterILi16EEC2EPKv, .-_ZN16IntegerFormatterILi16EEC2EPKv
	.weak	_ZN16IntegerFormatterILi16EEC1EPKv
	.set	_ZN16IntegerFormatterILi16EEC1EPKv,_ZN16IntegerFormatterILi16EEC2EPKv
	.section	.text._ZNK16IntegerFormatterILi16EE6formatEv,"axG",@progbits,_ZNK16IntegerFormatterILi16EE6formatEv,comdat
	.align	2
	.weak	_ZNK16IntegerFormatterILi16EE6formatEv
	.type	_ZNK16IntegerFormatterILi16EE6formatEv, %function
_ZNK16IntegerFormatterILi16EE6formatEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	mov	x3, 65
	mov	x2, x0
	mov	w1, 16
	mov	x0, x4
	bl	_Z4itosmjPcm
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK16IntegerFormatterILi16EE6formatEv, .-_ZNK16IntegerFormatterILi16EE6formatEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
