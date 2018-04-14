	.arch armv8.2-a+crc
	.file	"String.cpp"
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
	.text
	.align	2
	.global	_ZN6StringC2EPKc
	.type	_ZN6StringC2EPKc, %function
_ZN6StringC2EPKc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcEC2Ev
.L5:
	ldr	x0, [x29, 16]
	ldrsb	w0, [x0]
	cmp	w0, 0
	beq	.L6
	ldr	x2, [x29, 24]
	ldr	x0, [x29, 16]
	add	x1, x0, 1
	str	x1, [x29, 16]
	ldrsb	w0, [x0]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6VectorIcE8pushBackEc
	b	.L5
.L6:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6StringC2EPKc, .-_ZN6StringC2EPKc
	.global	_ZN6StringC1EPKc
	.set	_ZN6StringC1EPKc,_ZN6StringC2EPKc
	.align	2
	.global	_ZN6StringaSEPKc
	.type	_ZN6StringaSEPKc, %function
_ZN6StringaSEPKc:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	strlen
	str	x0, [x29, 48]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 48]
	bl	_ZN6VectorIcE6resizeEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	str	xzr, [x29, 56]
.L11:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	beq	.L8
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 56]
	add	x1, x1, x0
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x0, [x29, 56]
	add	x0, x2, x0
	ldrsb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L11
.L8:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6StringaSEPKc, .-_ZN6StringaSEPKc
	.align	2
	.global	_ZN6String6appendEPKcm
	.type	_ZN6String6appendEPKcm, %function
_ZN6String6appendEPKcm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
.L15:
	ldr	x0, [x29, 32]
	ldrsb	w0, [x0]
	cmp	w0, 0
	beq	.L14
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L14
	ldr	x2, [x29, 40]
	ldr	x0, [x29, 32]
	add	x1, x0, 1
	str	x1, [x29, 32]
	ldrsb	w0, [x0]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 56]
	sub	x0, x0, #1
	str	x0, [x29, 56]
	b	.L15
.L14:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6String6appendEPKcm, .-_ZN6String6appendEPKcm
	.align	2
	.global	_ZN6String6appendEPKc
	.type	_ZN6String6appendEPKc, %function
_ZN6String6appendEPKc:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
.L19:
	ldr	x0, [x29, 16]
	add	x1, x0, 1
	str	x1, [x29, 16]
	ldrb	w0, [x0]
	strb	w0, [x29, 47]
	ldrsb	w0, [x29, 47]
	cmp	w0, 0
	beq	.L18
	ldr	x0, [x29, 24]
	ldrb	w1, [x29, 47]
	bl	_ZN6VectorIcE8pushBackEc
	b	.L19
.L18:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6String6appendEPKc, .-_ZN6String6appendEPKc
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
	.global	_ZNK6String9findFirstEmRKS_
	.type	_ZNK6String9findFirstEmRKS_, %function
_ZNK6String9findFirstEmRKS_:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	add	x0, x29, 88
	ldr	x1, [x29, 40]
	bl	_ZN9StringRefC1ERK6String
	ldr	x0, [x29, 48]
	str	x0, [x29, 136]
.L30:
	ldr	x0, [x29, 56]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 136]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L24
	ldr	x0, [x29, 40]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0, 16]
	add	x1, x29, 64
	mov	x8, x1
	mov	x2, x0
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 40]
	bl	_ZNK6String9subStringEmm
	add	x1, x29, 64
	add	x0, x29, 104
	bl	_ZN9StringRefC1ERK6String
	add	x1, x29, 88
	add	x0, x29, 104
	bl	_ZeqRK9StringRefS1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L26
	ldr	x19, [x29, 136]
	mov	w20, 0
	b	.L27
.L26:
	mov	w20, 1
.L27:
	add	x0, x29, 64
	bl	_ZN6StringD1Ev
	cmp	w20, 1
	bne	.L32
	nop
	ldr	x0, [x29, 136]
	add	x0, x0, 1
	str	x0, [x29, 136]
	b	.L30
.L24:
	mov	x19, -1
.L32:
	mov	x0, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZNK6String9findFirstEmRKS_, .-_ZNK6String9findFirstEmRKS_
	.section	.text._ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_
	.text
	.align	2
	.global	_ZNK6String5splitERKS_
	.type	_ZNK6String5splitERKS_, %function
_ZNK6String5splitERKS_:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	add	x0, x29, 56
	bl	_ZN6VectorI6StringEC1Ev
	str	xzr, [x29, 136]
.L42:
	ldr	x0, [x29, 40]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 136]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 40]
	bl	_ZNK6String9findFirstEmRKS_
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	cmn	x0, #1
	bne	.L39
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	str	x0, [x29, 128]
.L39:
	ldr	x1, [x29, 128]
	ldr	x0, [x29, 136]
	sub	x0, x1, x0
	add	x1, x29, 80
	mov	x8, x1
	mov	x2, x0
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 40]
	bl	_ZNK6String9subStringEmm
	add	x1, x29, 80
	add	x0, x29, 56
	bl	_ZN6VectorI6StringE8pushBackES0_
	add	x0, x29, 80
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 32]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 128]
	add	x0, x1, x0
	str	x0, [x29, 136]
	b	.L42
.L38:
	add	x0, x29, 56
	bl	_ZSt4moveIR6VectorI6StringEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorI6StringEC1EOS1_
	add	x0, x29, 56
	bl	_ZN6VectorI6StringED1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZNK6String5splitERKS_, .-_ZNK6String5splitERKS_
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZNK6String9subStringEmm
	.type	_ZNK6String9subStringEmm, %function
_ZNK6String9subStringEmm:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	cset	w0, cs
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L46
	ldr	x0, [x29, 56]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 16]
	sub	x0, x0, #1
	str	x0, [x29, 48]
.L46:
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	add	x1, x1, x0
	ldr	x0, [x29, 56]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 16]
	cmp	x1, x0
	cset	w0, cs
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	ldr	x0, [x29, 56]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 48]
	sub	x0, x1, x0
	str	x0, [x29, 40]
.L49:
	str	x19, [x29, 80]
	ldr	x0, [x29, 80]
	bl	_ZN6VectorIcEC2Ev
	str	xzr, [x29, 120]
.L54:
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 40]
	cmp	x1, x0
	beq	.L56
	mov	x3, x19
	ldr	x1, [x29, 56]
	ldr	x2, [x29, 120]
	ldr	x0, [x29, 48]
	add	x0, x2, x0
	str	x1, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 64]
	cmp	x1, x0
	bcc	.L52
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L52:
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	ldr	x0, [x29, 64]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	mov	x0, x3
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 120]
	add	x0, x0, 1
	str	x0, [x29, 120]
	b	.L54
.L56:
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZNK6String9subStringEmm, .-_ZNK6String9subStringEmm
	.align	2
	.global	_ZeqRK6StringS1_
	.type	_ZeqRK6StringS1_, %function
_ZeqRK6StringS1_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	add	x0, x29, 32
	ldr	x1, [x29, 24]
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 48
	ldr	x1, [x29, 16]
	bl	_ZN9StringRefC1ERK6String
	add	x1, x29, 48
	add	x0, x29, 32
	bl	_ZeqRK9StringRefS1_
	and	w0, w0, 255
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZeqRK6StringS1_, .-_ZeqRK6StringS1_
	.section	.text._ZN6VectorIcEC2Ev,"axG",@progbits,_ZN6VectorIcEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorIcEC2Ev
	.type	_ZN6VectorIcEC2Ev, %function
_ZN6VectorIcEC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorIcEC2Ev, .-_ZN6VectorIcEC2Ev
	.weak	_ZN6VectorIcEC1Ev
	.set	_ZN6VectorIcEC1Ev,_ZN6VectorIcEC2Ev
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
	beq	.L65
	str	xzr, [x29, 40]
.L63:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L62
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L63
.L62:
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
.L65:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZN6VectorIcEC2ERKS0_,"axG",@progbits,_ZN6VectorIcEC5ERKS0_,comdat
	.align	2
	.weak	_ZN6VectorIcEC2ERKS0_
	.type	_ZN6VectorIcEC2ERKS0_, %function
_ZN6VectorIcEC2ERKS0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 8]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIPcEET_m
	mov	x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L72
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 16]
	ldr	x0, [x0]
	str	x0, [x29, 32]
	str	xzr, [x29, 40]
.L71:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L72
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L70
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 40]
	add	x1, x2, x1
	ldrsb	w1, [x1]
	strb	w1, [x0]
.L70:
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L71
.L72:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcEC2ERKS0_, .-_ZN6VectorIcEC2ERKS0_
	.weak	_ZN6VectorIcEC1ERKS0_
	.set	_ZN6VectorIcEC1ERKS0_,_ZN6VectorIcEC2ERKS0_
	.section	.text._ZN6VectorIcE8pushBackEc,"axG",@progbits,_ZN6VectorIcE8pushBackEc,comdat
	.align	2
	.weak	_ZN6VectorIcE8pushBackEc
	.type	_ZN6VectorIcE8pushBackEc, %function
_ZN6VectorIcE8pushBackEc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L77
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	sub	x0, x0, #1
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L77
	ldrb	w1, [x29, 23]
	strb	w1, [x0]
.L77:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorIcE8pushBackEc, .-_ZN6VectorIcE8pushBackEc
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
	beq	.L79
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
.L79:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L80
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bne	.L80
	mov	w0, 1
	b	.L81
.L80:
	mov	w0, 0
.L81:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE6resizeEm, .-_ZN6VectorIcE6resizeEm
	.section	.text._ZN6VectorI6StringEC2Ev,"axG",@progbits,_ZN6VectorI6StringEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorI6StringEC2Ev
	.type	_ZN6VectorI6StringEC2Ev, %function
_ZN6VectorI6StringEC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorI6StringEC2Ev, .-_ZN6VectorI6StringEC2Ev
	.weak	_ZN6VectorI6StringEC1Ev
	.set	_ZN6VectorI6StringEC1Ev,_ZN6VectorI6StringEC2Ev
	.section	.text._ZN6VectorI6StringED2Ev,"axG",@progbits,_ZN6VectorI6StringED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI6StringED2Ev
	.type	_ZN6VectorI6StringED2Ev, %function
_ZN6VectorI6StringED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L89
	str	xzr, [x29, 40]
.L87:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L86
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L87
.L86:
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
.L89:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI6StringED2Ev, .-_ZN6VectorI6StringED2Ev
	.weak	_ZN6VectorI6StringED1Ev
	.set	_ZN6VectorI6StringED1Ev,_ZN6VectorI6StringED2Ev
	.section	.text._ZN6VectorI6StringE8pushBackES0_,"axG",@progbits,_ZN6VectorI6StringE8pushBackES0_,comdat
	.align	2
	.weak	_ZN6VectorI6StringE8pushBackES0_
	.type	_ZN6VectorI6StringE8pushBackES0_, %function
_ZN6VectorI6StringE8pushBackES0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI6StringE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L94
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #24
	add	x0, x2, x0
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L94
	str	x0, [x29, 40]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	bl	_ZN6VectorIcEC2ERKS0_
.L94:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI6StringE8pushBackES0_, .-_ZN6VectorI6StringE8pushBackES0_
	.section	.text._ZN6VectorI6StringEC2EOS1_,"axG",@progbits,_ZN6VectorI6StringEC5EOS1_,comdat
	.align	2
	.weak	_ZN6VectorI6StringEC2EOS1_
	.type	_ZN6VectorI6StringEC2EOS1_, %function
_ZN6VectorI6StringEC2EOS1_:
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
	.size	_ZN6VectorI6StringEC2EOS1_, .-_ZN6VectorI6StringEC2EOS1_
	.weak	_ZN6VectorI6StringEC1EOS1_
	.set	_ZN6VectorI6StringEC1EOS1_,_ZN6VectorI6StringEC2EOS1_
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
	bne	.L99
	mov	w0, 1
	b	.L100
.L99:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L101
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	ldr	x2, [x29, 16]
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L102
.L101:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L102:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L103
	mov	w0, 0
	b	.L100
.L103:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L100:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE14resizeCapacityEm, .-_ZN6VectorIcE14resizeCapacityEm
	.section	.text._ZN6VectorIcE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorIcE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorIcE24adjustCapacityForOneMoreEv, %function
_ZN6VectorIcE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L105
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L106
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L108
.L106:
	mov	x0, 8
.L108:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	b	.L109
.L105:
	mov	w0, 1
.L109:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE24adjustCapacityForOneMoreEv, .-_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.section	.text._ZN6VectorI6StringE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorI6StringE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorI6StringE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorI6StringE24adjustCapacityForOneMoreEv, %function
_ZN6VectorI6StringE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L111
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L112
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L114
.L112:
	mov	x0, 8
.L114:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI6StringE14resizeCapacityEm
	and	w0, w0, 255
	b	.L115
.L111:
	mov	w0, 1
.L115:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI6StringE24adjustCapacityForOneMoreEv, .-_ZN6VectorI6StringE24adjustCapacityForOneMoreEv
	.section	.text._ZN6VectorI6StringE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI6StringE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI6StringE14resizeCapacityEm
	.type	_ZN6VectorI6StringE14resizeCapacityEm, %function
_ZN6VectorI6StringE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L117
	mov	w0, 1
	b	.L118
.L117:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L119
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	mov	x2, x1
	mov	x1, x4
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L120
.L119:
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L120:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L121
	mov	w0, 0
	b	.L118
.L121:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L118:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI6StringE14resizeCapacityEm, .-_ZN6VectorI6StringE14resizeCapacityEm
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, 89
_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
