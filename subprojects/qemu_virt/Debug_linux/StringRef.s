	.arch armv8.2-a+crc
	.file	"StringRef.cpp"
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
	.text
	.align	2
	.global	_ZN9StringRefC2EPKv
	.type	_ZN9StringRefC2EPKv, %function
_ZN9StringRefC2EPKv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	strlen
	mov	x2, x0
	ldr	x1, [x29, 32]
	mov	x0, x19
	bl	_ZN9VectorRefIcEC2EPKcm
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN9StringRefC2EPKv, .-_ZN9StringRefC2EPKv
	.global	_ZN9StringRefC1EPKv
	.set	_ZN9StringRefC1EPKv,_ZN9StringRefC2EPKv
	.align	2
	.global	_ZN9StringRefC2EPKvm
	.type	_ZN9StringRefC2EPKvm, %function
_ZN9StringRefC2EPKvm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	bl	_ZN9VectorRefIcEC2EPKcm
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN9StringRefC2EPKvm, .-_ZN9StringRefC2EPKvm
	.global	_ZN9StringRefC1EPKvm
	.set	_ZN9StringRefC1EPKvm,_ZN9StringRefC2EPKvm
	.align	2
	.global	_ZN9StringRefC2ERK6String
	.type	_ZN9StringRefC2ERK6String, %function
_ZN9StringRefC2ERK6String:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x3, [x29, 24]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	mov	x2, x0
	mov	x0, x3
	bl	_ZN9VectorRefIcEC2EPKcm
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN9StringRefC2ERK6String, .-_ZN9StringRefC2ERK6String
	.global	_ZN9StringRefC1ERK6String
	.set	_ZN9StringRefC1ERK6String,_ZN9StringRefC2ERK6String
	.align	2
	.global	_ZN9StringRefC2ERK15UniversalString
	.type	_ZN9StringRefC2ERK15UniversalString, %function
_ZN9StringRefC2ERK15UniversalString:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x3, [x29, 24]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 24]
	mov	x2, x0
	mov	x0, x3
	bl	_ZN9VectorRefIcEC2EPKcm
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN9StringRefC2ERK15UniversalString, .-_ZN9StringRefC2ERK15UniversalString
	.global	_ZN9StringRefC1ERK15UniversalString
	.set	_ZN9StringRefC1ERK15UniversalString,_ZN9StringRefC2ERK15UniversalString
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/VectorRef.h"
	.text
	.align	2
	.global	_ZeqRK9StringRefS1_
	.type	_ZeqRK9StringRefS1_, %function
_ZeqRK9StringRefS1_:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 16]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	w0, 0
	b	.L13
.L12:
	str	xzr, [x29, 88]
.L21:
	ldr	x0, [x29, 16]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 88]
	str	x0, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 32]
	cmp	x1, x0
	bcc	.L16
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 30
	bl	_Z19report_assert_errorPKcmS0_S0_
.L16:
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	ldrsb	w1, [x0]
	ldr	x0, [x29, 16]
	str	x0, [x29, 56]
	ldr	x0, [x29, 88]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 8]
	ldr	x2, [x29, 48]
	cmp	x2, x0
	bcc	.L18
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 30
	bl	_Z19report_assert_errorPKcmS0_S0_
.L18:
	ldr	x0, [x29, 56]
	ldr	x2, [x0]
	ldr	x0, [x29, 48]
	add	x0, x2, x0
	ldrsb	w0, [x0]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	mov	w0, 0
	b	.L13
.L20:
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L21
.L15:
	mov	w0, 1
.L13:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZeqRK9StringRefS1_, .-_ZeqRK9StringRefS1_
	.align	2
	.global	_ZlsR6Output9StringRef
	.type	_ZlsR6Output9StringRef, %function
_ZlsR6Output9StringRef:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	stp	x1, x2, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 32]
	mov	x2, x1
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	_ZN6Output5printEPKcm
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZlsR6Output9StringRef, .-_ZlsR6Output9StringRef
	.section	.text._ZN9VectorRefIcEC2EPKcm,"axG",@progbits,_ZN9VectorRefIcEC5EPKcm,comdat
	.align	2
	.weak	_ZN9VectorRefIcEC2EPKcm
	.type	_ZN9VectorRefIcEC2EPKcm, %function
_ZN9VectorRefIcEC2EPKcm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	.size	_ZN9VectorRefIcEC2EPKcm, .-_ZN9VectorRefIcEC2EPKcm
	.weak	_ZN9VectorRefIcEC1EPKcm
	.set	_ZN9VectorRefIcEC1EPKcm,_ZN9VectorRefIcEC2EPKcm
	.section	.rodata
	.align	3
	.type	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, 92
_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& VectorRef<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
