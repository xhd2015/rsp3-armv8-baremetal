	.arch armv8.2-a+crc
	.file	"SectorReaderToByteReader.cpp"
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
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
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
	.section	.text._ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZN6StringC2EOS_,"axG",@progbits,_ZN6StringC5EOS_,comdat
	.align	2
	.weak	_ZN6StringC2EOS_
	.type	_ZN6StringC2EOS_, %function
_ZN6StringC2EOS_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorIcEC2EOS0_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6StringC2EOS_, .-_ZN6StringC2EOS_
	.weak	_ZN6StringC1EOS_
	.set	_ZN6StringC1EOS_,_ZN6StringC2EOS_
	.text
	.align	2
	.type	_ZL20__gthread_key_deletei, %function
_ZL20__gthread_key_deletei:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	mov	w0, 0
	add	sp, sp, 16
	ret
	.size	_ZL20__gthread_key_deletei, .-_ZL20__gthread_key_deletei
	.section	.rodata
	.align	3
	.type	_ZStL13allocator_arg, %object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.align	3
	.type	_ZStL6ignore, %object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.section	.text._ZN10ByteReaderC2Ev,"axG",@progbits,_ZN10ByteReaderC5Ev,comdat
	.align	2
	.weak	_ZN10ByteReaderC2Ev
	.type	_ZN10ByteReaderC2Ev, %function
_ZN10ByteReaderC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	adrp	x0, _ZTV10ByteReader+16
	add	x1, x0, :lo12:_ZTV10ByteReader+16
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN10ByteReaderC2Ev, .-_ZN10ByteReaderC2Ev
	.weak	_ZN10ByteReaderC1Ev
	.set	_ZN10ByteReaderC1Ev,_ZN10ByteReaderC2Ev
	.section	.text._ZN10ByteReaderD2Ev,"axG",@progbits,_ZN10ByteReaderD5Ev,comdat
	.align	2
	.weak	_ZN10ByteReaderD2Ev
	.type	_ZN10ByteReaderD2Ev, %function
_ZN10ByteReaderD2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	adrp	x0, _ZTV10ByteReader+16
	add	x1, x0, :lo12:_ZTV10ByteReader+16
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN10ByteReaderD2Ev, .-_ZN10ByteReaderD2Ev
	.weak	_ZN10ByteReaderD1Ev
	.set	_ZN10ByteReaderD1Ev,_ZN10ByteReaderD2Ev
	.section	.text._ZN10ByteReaderD0Ev,"axG",@progbits,_ZN10ByteReaderD5Ev,comdat
	.align	2
	.weak	_ZN10ByteReaderD0Ev
	.type	_ZN10ByteReaderD0Ev, %function
_ZN10ByteReaderD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN10ByteReaderD1Ev
	mov	x1, 8
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10ByteReaderD0Ev, .-_ZN10ByteReaderD0Ev
	.text
	.align	2
	.global	_ZN24SectorReaderToByteReaderC2ER12SectorReader
	.type	_ZN24SectorReaderToByteReaderC2ER12SectorReader, %function
_ZN24SectorReaderToByteReaderC2ER12SectorReader:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN10ByteReaderC2Ev
	adrp	x0, _ZTV24SectorReaderToByteReader+16
	add	x1, x0, :lo12:_ZTV24SectorReaderToByteReader+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN24SectorReaderToByteReaderC2ER12SectorReader, .-_ZN24SectorReaderToByteReaderC2ER12SectorReader
	.global	_ZN24SectorReaderToByteReaderC1ER12SectorReader
	.set	_ZN24SectorReaderToByteReaderC1ER12SectorReader,_ZN24SectorReaderToByteReaderC2ER12SectorReader
	.align	2
	.global	_ZN24SectorReaderToByteReaderD2Ev
	.type	_ZN24SectorReaderToByteReaderD2Ev, %function
_ZN24SectorReaderToByteReaderD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, _ZTV24SectorReaderToByteReader+16
	add	x1, x0, :lo12:_ZTV24SectorReaderToByteReader+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
.L13:
	ldr	x0, [x29, 24]
	bl	_ZN10ByteReaderD2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN24SectorReaderToByteReaderD2Ev, .-_ZN24SectorReaderToByteReaderD2Ev
	.global	_ZN24SectorReaderToByteReaderD1Ev
	.set	_ZN24SectorReaderToByteReaderD1Ev,_ZN24SectorReaderToByteReaderD2Ev
	.align	2
	.global	_ZN24SectorReaderToByteReaderD0Ev
	.type	_ZN24SectorReaderToByteReaderD0Ev, %function
_ZN24SectorReaderToByteReaderD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN24SectorReaderToByteReaderD1Ev
	mov	x1, 24
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN24SectorReaderToByteReaderD0Ev, .-_ZN24SectorReaderToByteReaderD0Ev
	.section	.text._ZN6StringD2Ev,"axG",@progbits,_ZN6StringD5Ev,comdat
	.align	2
	.weak	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, %function
_ZN6StringD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
	.weak	_ZN6StringD1Ev
	.set	_ZN6StringD1Ev,_ZN6StringD2Ev
	.text
	.align	2
	.global	_ZN24SectorReaderToByteReader4readEmm
	.type	_ZN24SectorReaderToByteReader4readEmm, %function
_ZN24SectorReaderToByteReader4readEmm:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 96]
	mov	w0, 1
	strb	w0, [x29, 95]
	add	x0, x29, 64
	ldrb	w2, [x29, 95]
	ldr	x1, [x29, 96]
	bl	_ZN6VectorIcEC2Emb
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x4, [x0]
	ldr	x0, [x29, 64]
	ldr	x3, [x29, 40]
	mov	x2, x0
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	blr	x4
	str	x0, [x29, 104]
	add	x0, x29, 64
	ldr	x1, [x29, 104]
	bl	_ZN6VectorIcE6resizeEm
	add	x0, x29, 64
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6StringC1EOS_
	add	x0, x29, 64
	bl	_ZN6StringD1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZN24SectorReaderToByteReader4readEmm, .-_ZN24SectorReaderToByteReader4readEmm
	.align	2
	.global	_ZN24SectorReaderToByteReader5writeEmRK9StringRef
	.type	_ZN24SectorReaderToByteReader5writeEmRK9StringRef, %function
_ZN24SectorReaderToByteReader5writeEmRK9StringRef:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 40
	ldr	x4, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 8]
	mov	x3, x0
	mov	x2, x1
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	blr	x4
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN24SectorReaderToByteReader5writeEmRK9StringRef, .-_ZN24SectorReaderToByteReader5writeEmRK9StringRef
	.align	2
	.global	_ZN24SectorReaderToByteReader4readEmPvm
	.type	_ZN24SectorReaderToByteReader4readEmPvm, %function
_ZN24SectorReaderToByteReader4readEmPvm:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 128]
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	mov	x0, 512
	mov	x1, x0
	ldr	x0, [x29, 32]
	bl	_Z10alignAheadmm
	mov	x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	str	x0, [x29, 120]
	ldr	x4, [x29, 128]
	mov	x3, 0
	ldr	x2, [x29, 120]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	mov	x1, x0
	ldr	x0, [x29, 120]
	cmp	x0, x1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L25
	mov	x0, 0
	b	.L26
.L25:
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 16]
	add	x0, x1, x0
	str	x0, [x29, 112]
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	mov	x1, 512
	ldr	x0, [x29, 112]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [x29, 104]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 120]
	sub	x1, x1, x0
	ldr	x0, [x29, 104]
	sub	x0, x1, x0
	str	x0, [x29, 96]
	ldr	x1, [x29, 112]
	ldr	x0, [x29, 104]
	sub	x5, x1, x0
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 96]
	add	x0, x1, x0
	ldr	x1, [x29, 128]
	add	x0, x1, x0
	mov	x4, x0
	mov	x3, 0
	ldr	x2, [x29, 104]
	mov	x1, x5
	ldr	x0, [x29, 40]
	bl	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	mov	x1, x0
	ldr	x0, [x29, 104]
	cmp	x0, x1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	ldr	x0, [x29, 120]
	b	.L26
.L28:
	ldr	x0, [x29, 40]
	str	x0, [x29, 64]
	mov	x0, 512
	ldr	x1, [x29, 96]
	udiv	x0, x1, x0
	str	x0, [x29, 88]
	str	xzr, [x29, 136]
	ldr	x0, [x29, 96]
	cmp	x0, 0
	beq	.L30
	ldr	x0, [x29, 40]
	ldr	x5, [x0, 8]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x4, [x0]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 120]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	mov	x0, 512
	udiv	x6, x1, x0
	ldr	x1, [x29, 128]
	ldr	x0, [x29, 120]
	add	x0, x1, x0
	ldr	x3, [x29, 88]
	mov	x2, x0
	mov	x1, x6
	mov	x0, x5
	blr	x4
	str	x0, [x29, 136]
.L30:
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 88]
	cmp	x1, x0
	bne	.L32
	ldr	x0, [x29, 16]
	b	.L26
.L32:
	ldr	x0, [x29, 40]
	str	x0, [x29, 48]
	mov	x1, 512
	ldr	x0, [x29, 136]
	mul	x1, x1, x0
	ldr	x0, [x29, 120]
	add	x0, x1, x0
.L26:
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZN24SectorReaderToByteReader4readEmPvm, .-_ZN24SectorReaderToByteReader4readEmPvm
	.align	2
	.global	_ZN24SectorReaderToByteReader5writeEmPKvm
	.type	_ZN24SectorReaderToByteReader5writeEmPKvm, %function
_ZN24SectorReaderToByteReader5writeEmPKvm:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 128]
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	mov	x0, 512
	mov	x1, x0
	ldr	x0, [x29, 32]
	bl	_Z10alignAheadmm
	mov	x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	str	x0, [x29, 120]
	mov	x4, 0
	ldr	x3, [x29, 128]
	ldr	x2, [x29, 120]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	mov	x1, x0
	ldr	x0, [x29, 120]
	cmp	x0, x1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L36
	mov	x0, 0
	b	.L37
.L36:
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 16]
	add	x0, x1, x0
	str	x0, [x29, 112]
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	mov	x1, 512
	ldr	x0, [x29, 112]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [x29, 104]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 120]
	sub	x1, x1, x0
	ldr	x0, [x29, 104]
	sub	x0, x1, x0
	str	x0, [x29, 96]
	ldr	x1, [x29, 112]
	ldr	x0, [x29, 104]
	sub	x5, x1, x0
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 96]
	add	x0, x1, x0
	ldr	x1, [x29, 128]
	add	x0, x1, x0
	mov	x4, 0
	mov	x3, x0
	ldr	x2, [x29, 104]
	mov	x1, x5
	ldr	x0, [x29, 40]
	bl	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	mov	x1, x0
	ldr	x0, [x29, 104]
	cmp	x0, x1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L39
	ldr	x0, [x29, 120]
	b	.L37
.L39:
	ldr	x0, [x29, 40]
	str	x0, [x29, 64]
	mov	x0, 512
	ldr	x1, [x29, 96]
	udiv	x0, x1, x0
	str	x0, [x29, 88]
	str	xzr, [x29, 136]
	ldr	x0, [x29, 96]
	cmp	x0, 0
	beq	.L41
	ldr	x0, [x29, 40]
	ldr	x5, [x0, 8]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldr	x4, [x0]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 120]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	mov	x0, 512
	udiv	x6, x1, x0
	ldr	x1, [x29, 128]
	ldr	x0, [x29, 120]
	add	x0, x1, x0
	ldr	x3, [x29, 88]
	mov	x2, x0
	mov	x1, x6
	mov	x0, x5
	blr	x4
	str	x0, [x29, 136]
.L41:
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 88]
	cmp	x1, x0
	bne	.L43
	ldr	x0, [x29, 16]
	b	.L37
.L43:
	ldr	x0, [x29, 40]
	str	x0, [x29, 48]
	mov	x1, 512
	ldr	x0, [x29, 136]
	mul	x1, x1, x0
	ldr	x0, [x29, 120]
	add	x0, x1, x0
.L37:
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZN24SectorReaderToByteReader5writeEmPKvm, .-_ZN24SectorReaderToByteReader5writeEmPKvm
	.align	2
	.global	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	.type	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc, %function
_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	str	x4, [x29, 24]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L46
	ldr	x0, [x29, 56]
	str	x0, [x29, 72]
	mov	x1, 512
	ldr	x0, [x29, 48]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [x29, 40]
	add	x1, x1, x0
	ldr	x0, [x29, 56]
	str	x0, [x29, 80]
	mov	x0, 512
	cmp	x1, x0
	bls	.L49
.L46:
	mov	w0, 1
	b	.L50
.L49:
	mov	w0, 0
.L50:
	cmp	w0, 0
	beq	.L51
	mov	x0, 0
	b	.L52
.L51:
	ldr	x0, [x29, 56]
	str	x0, [x29, 64]
	mov	x0, 512
	ldr	x1, [x29, 48]
	udiv	x0, x1, x0
	str	x0, [x29, 88]
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 56]
	bl	_ZN24SectorReaderToByteReader18readSectorToBufferEm
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L54
	mov	x0, 0
	b	.L52
.L54:
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	.L55
	ldr	x0, [x29, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 32]
	bl	memcpy
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 56]
	bl	_ZN24SectorReaderToByteReader21writeSectorFromBufferEm
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L56
	mov	x0, 0
	b	.L52
.L55:
	ldr	x0, [x29, 24]
	cmp	x0, 0
	beq	.L56
	ldr	x0, [x29, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	ldr	x2, [x29, 40]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	memcpy
.L56:
	ldr	x0, [x29, 40]
.L52:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc, .-_ZN24SectorReaderToByteReader27oneSectorPartialReadOrWriteEmmPKcPc
	.align	2
	.global	_ZN24SectorReaderToByteReader18readSectorToBufferEm
	.type	_ZN24SectorReaderToByteReader18readSectorToBufferEm, %function
_ZN24SectorReaderToByteReader18readSectorToBufferEm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN24SectorReaderToByteReader18ensureSectorBufferEv
	ldr	x0, [x29, 24]
	ldr	x5, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x4, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	mov	x3, 1
	mov	x2, x0
	ldr	x1, [x29, 16]
	mov	x0, x5
	blr	x4
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN24SectorReaderToByteReader18readSectorToBufferEm, .-_ZN24SectorReaderToByteReader18readSectorToBufferEm
	.align	2
	.global	_ZN24SectorReaderToByteReader21writeSectorFromBufferEm
	.type	_ZN24SectorReaderToByteReader21writeSectorFromBufferEm, %function
_ZN24SectorReaderToByteReader21writeSectorFromBufferEm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN24SectorReaderToByteReader18ensureSectorBufferEv
	ldr	x0, [x29, 24]
	ldr	x5, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldr	x4, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	mov	x3, 1
	mov	x2, x0
	ldr	x1, [x29, 16]
	mov	x0, x5
	blr	x4
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN24SectorReaderToByteReader21writeSectorFromBufferEm, .-_ZN24SectorReaderToByteReader21writeSectorFromBufferEm
	.align	2
	.global	_ZN24SectorReaderToByteReader18ensureSectorBufferEv
	.type	_ZN24SectorReaderToByteReader18ensureSectorBufferEv, %function
_ZN24SectorReaderToByteReader18ensureSectorBufferEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L64
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	mov	x1, 512
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIPcEET_m
	mov	x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
.L64:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN24SectorReaderToByteReader18ensureSectorBufferEv, .-_ZN24SectorReaderToByteReader18ensureSectorBufferEv
	.section	.text._ZN6VectorIcED2Ev,"axG",@progbits,_ZN6VectorIcED5Ev,comdat
	.align	2
	.weak	_ZN6VectorIcED2Ev
	.type	_ZN6VectorIcED2Ev, %function
_ZN6VectorIcED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L70
	str	xzr, [x29, 40]
.L68:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L67
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L68
.L67:
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	adrp	x0, mman
	add	x2, x0, :lo12:mman
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
.L70:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZN6VectorIcEC2Emb,"axG",@progbits,_ZN6VectorIcEC5Emb,comdat
	.align	2
	.weak	_ZN6VectorIcEC2Emb
	.type	_ZN6VectorIcEC2Emb, %function
_ZN6VectorIcEC2Emb:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	strb	w2, [x29, 31]
	ldr	x0, [x29, 40]
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 16]
	ldrb	w0, [x29, 31]
	cmp	w0, 0
	beq	.L72
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 32]
	mov	x0, 8
	cmp	x2, 8
	csel	x1, x1, x0, cs
	ldr	x0, [x29, 40]
	str	x1, [x0, 8]
	b	.L73
.L72:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
.L73:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L81
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIPcEET_m
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L75
	str	xzr, [x29, 56]
.L79:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L76
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L78
	strb	wzr, [x0]
.L78:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L79
.L76:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 16]
	b	.L81
.L75:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
.L81:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorIcEC2Emb, .-_ZN6VectorIcEC2Emb
	.weak	_ZN6VectorIcEC1Emb
	.set	_ZN6VectorIcEC1Emb,_ZN6VectorIcEC2Emb
	.section	.text._ZN6VectorIcEC2EOS0_,"axG",@progbits,_ZN6VectorIcEC5EOS0_,comdat
	.align	2
	.weak	_ZN6VectorIcEC2EOS0_
	.type	_ZN6VectorIcEC2EOS0_, %function
_ZN6VectorIcEC2EOS0_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	str	xzr, [x0]
	ldr	x0, [sp]
	str	xzr, [x0, 8]
	ldr	x0, [sp]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorIcEC2EOS0_, .-_ZN6VectorIcEC2EOS0_
	.weak	_ZN6VectorIcEC1EOS0_
	.set	_ZN6VectorIcEC1EOS0_,_ZN6VectorIcEC2EOS0_
	.section	.text._ZN6VectorIcE6resizeEm,"axG",@progbits,_ZN6VectorIcE6resizeEm,comdat
	.align	2
	.weak	_ZN6VectorIcE6resizeEm
	.type	_ZN6VectorIcE6resizeEm, %function
_ZN6VectorIcE6resizeEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 16]
	mov	x0, 8
	cmp	x2, 8
	csel	x0, x1, x0, cs
	str	x0, [x29, 40]
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L84
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
.L84:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L85
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bne	.L85
	mov	w0, 1
	b	.L86
.L85:
	mov	w0, 0
.L86:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE6resizeEm, .-_ZN6VectorIcE6resizeEm
	.section	.text._ZN13MemoryManager10allocateAsIPcEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIPcEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIPcEET_m
	.type	_ZN13MemoryManager10allocateAsIPcEET_m, %function
_ZN13MemoryManager10allocateAsIPcEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIPcEET_m, .-_ZN13MemoryManager10allocateAsIPcEET_m
	.section	.text._ZN6VectorIcE14resizeCapacityEm,"axG",@progbits,_ZN6VectorIcE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorIcE14resizeCapacityEm
	.type	_ZN6VectorIcE14resizeCapacityEm, %function
_ZN6VectorIcE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L91
	mov	w0, 1
	b	.L92
.L91:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L93
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	ldr	x2, [x29, 16]
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L94
.L93:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L94:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L95
	mov	w0, 0
	b	.L92
.L95:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L92:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE14resizeCapacityEm, .-_ZN6VectorIcE14resizeCapacityEm
	.weak	_ZTV24SectorReaderToByteReader
	.section	.rodata._ZTV24SectorReaderToByteReader,"aG",@progbits,_ZTV24SectorReaderToByteReader,comdat
	.align	3
	.type	_ZTV24SectorReaderToByteReader, %object
	.size	_ZTV24SectorReaderToByteReader, 64
_ZTV24SectorReaderToByteReader:
	.xword	0
	.xword	0
	.xword	_ZN24SectorReaderToByteReaderD1Ev
	.xword	_ZN24SectorReaderToByteReaderD0Ev
	.xword	_ZN24SectorReaderToByteReader4readEmm
	.xword	_ZN24SectorReaderToByteReader5writeEmRK9StringRef
	.xword	_ZN24SectorReaderToByteReader4readEmPvm
	.xword	_ZN24SectorReaderToByteReader5writeEmPKvm
	.weak	_ZTV10ByteReader
	.section	.rodata._ZTV10ByteReader,"aG",@progbits,_ZTV10ByteReader,comdat
	.align	3
	.type	_ZTV10ByteReader, %object
	.size	_ZTV10ByteReader, 64
_ZTV10ByteReader:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	__cxa_pure_virtual
	.xword	__cxa_pure_virtual
	.xword	__cxa_pure_virtual
	.xword	__cxa_pure_virtual
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
