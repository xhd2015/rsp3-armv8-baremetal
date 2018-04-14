	.arch armv8.2-a+crc
	.file	"FATDirEntry.cpp"
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
	.section	.text._ZNK11FATDirEntry19uni_isLongNameEntryEv,"axG",@progbits,_ZNK11FATDirEntry19uni_isLongNameEntryEv,comdat
	.align	2
	.weak	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.type	_ZNK11FATDirEntry19uni_isLongNameEntryEv, %function
_ZNK11FATDirEntry19uni_isLongNameEntryEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
	and	w0, w0, 63
	cmp	w0, 15
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK11FATDirEntry19uni_isLongNameEntryEv, .-_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.text
	.align	2
	.global	_ZN11FATDirEntry6chksumEPc
	.type	_ZN11FATDirEntry6chksumEPc, %function
_ZN11FATDirEntry6chksumEPc:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	wzr, [sp, 31]
	mov	x0, 11
	str	x0, [sp, 16]
.L10:
	ldr	x0, [sp, 16]
	cmp	x0, 0
	beq	.L9
	ldrb	w0, [sp, 31]
	lsl	w0, w0, 7
	and	w1, w0, 255
	ldrb	w0, [sp, 31]
	asr	w0, w0, 1
	and	w0, w0, 255
	add	w0, w1, w0
	strb	w0, [sp, 31]
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 16]
	b	.L10
.L9:
	ldrb	w0, [sp, 31]
	add	sp, sp, 32
	ret
	.size	_ZN11FATDirEntry6chksumEPc, .-_ZN11FATDirEntry6chksumEPc
	.align	2
	.global	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	.type	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_, %function
_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x1, [x29, 40]
	add	x0, x29, 48
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 48
	ldr	x2, [x29, 32]
	mov	x1, 8
	bl	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L13
	ldr	x0, [x29, 40]
	add	x1, x0, 8
	add	x0, x29, 64
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 64
	ldr	x2, [x29, 24]
	mov	x1, 3
	bl	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L13
	mov	w0, 1
	b	.L14
.L13:
	mov	w0, 0
.L14:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_, .-_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	.align	2
	.global	_ZNK11FATDirEntry17getFirstClusIndexEv
	.type	_ZNK11FATDirEntry17getFirstClusIndexEv, %function
_ZNK11FATDirEntry17getFirstClusIndexEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 20]
	lsl	w0, w0, 16
	ldr	x1, [sp, 8]
	ldrh	w1, [x1, 26]
	orr	w0, w0, w1
	add	sp, sp, 16
	ret
	.size	_ZNK11FATDirEntry17getFirstClusIndexEv, .-_ZNK11FATDirEntry17getFirstClusIndexEv
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
	.global	_ZNK11FATDirEntry11getLongNameEv
	.type	_ZNK11FATDirEntry11getLongNameEv, %function
_ZNK11FATDirEntry11getLongNameEv:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	add	x0, x29, 56
	bl	_ZN6VectorIcEC2Ev
	ldr	x0, [x29, 40]
	sub	x0, x0, #32
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	x0, [x29, 128]
	str	x0, [x29, 136]
	add	x0, x29, 80
	mov	x8, x0
	mov	w1, 1
	ldr	x0, [x29, 136]
	bl	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	add	x1, x29, 80
	add	x0, x29, 56
	mov	x2, -1
	bl	_ZN6VectorIcE6appendERKS0_m
	add	x0, x29, 80
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 136]
	sub	x0, x0, #32
	str	x0, [x29, 136]
.L22:
	ldr	x0, [x29, 136]
	bl	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	add	x0, x29, 104
	mov	x8, x0
	mov	w1, 0
	ldr	x0, [x29, 136]
	bl	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	add	x1, x29, 104
	add	x0, x29, 56
	mov	x2, -1
	bl	_ZN6VectorIcE6appendERKS0_m
	add	x0, x29, 104
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 136]
	sub	x0, x0, #32
	str	x0, [x29, 136]
	b	.L22
.L20:
	add	x0, x29, 56
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6StringC1EOS_
	add	x0, x29, 56
	bl	_ZN6StringD1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZNK11FATDirEntry11getLongNameEv, .-_ZNK11FATDirEntry11getLongNameEv
	.align	2
	.global	_ZNK11FATDirEntry12getShortNameEv
	.type	_ZNK11FATDirEntry12getShortNameEv, %function
_ZNK11FATDirEntry12getShortNameEv:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	add	x0, x29, 56
	bl	_ZN6VectorIcEC2Ev
	ldr	x0, [x29, 40]
	mov	x1, 8
	bl	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	str	x0, [x29, 88]
	ldr	x0, [x29, 40]
	mov	x1, 8
	bl	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	str	x0, [x29, 80]
.L26:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 80]
	cmp	x1, x0
	bhi	.L25
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	ldrsb	w1, [x0]
	add	x0, x29, 56
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L26
.L25:
	add	x0, x29, 56
	mov	w1, 46
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	mov	x1, 3
	bl	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	add	x0, x0, 8
	str	x0, [x29, 88]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	mov	x1, 3
	bl	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	add	x0, x0, 8
	str	x0, [x29, 80]
.L28:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 80]
	cmp	x1, x0
	bhi	.L27
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	ldrsb	w1, [x0]
	add	x0, x29, 56
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L28
.L27:
	add	x0, x29, 56
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6StringC1EOS_
	add	x0, x29, 56
	bl	_ZN6StringD1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZNK11FATDirEntry12getShortNameEv, .-_ZNK11FATDirEntry12getShortNameEv
	.align	2
	.global	_ZNK11FATDirEntry14getVolumnLabelEv
	.type	_ZNK11FATDirEntry14getVolumnLabelEv, %function
_ZNK11FATDirEntry14getVolumnLabelEv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	str	x19, [x29, 56]
	ldr	x0, [x29, 56]
	bl	_ZN6VectorIcEC2Ev
	ldr	x0, [x29, 40]
	mov	x1, 8
	bl	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	str	x0, [x29, 72]
	ldr	x0, [x29, 40]
	mov	x1, 8
	bl	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	str	x0, [x29, 64]
.L32:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 64]
	cmp	x1, x0
	bhi	.L34
	mov	x2, x19
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 72]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 72]
	add	x0, x0, 1
	str	x0, [x29, 72]
	b	.L32
.L34:
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNK11FATDirEntry14getVolumnLabelEv, .-_ZNK11FATDirEntry14getVolumnLabelEv
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/VectorRef.h"
	.text
	.align	2
	.global	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	.type	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_, %function
_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	strb	wzr, [x29, 143]
	str	xzr, [x29, 128]
.L50:
	ldr	x1, [x29, 128]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L36
	ldrb	w0, [x29, 143]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L37
	ldr	x0, [x29, 24]
	str	x0, [x29, 112]
	ldr	x0, [x29, 128]
	str	x0, [x29, 104]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	bcc	.L38
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
.L38:
	ldr	x0, [x29, 112]
	ldr	x1, [x0]
	ldr	x0, [x29, 104]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	cmp	w0, 0
	bne	.L37
	mov	w0, 1
	b	.L40
.L37:
	mov	w0, 0
.L40:
	cmp	w0, 0
	beq	.L41
	mov	w0, 1
	strb	w0, [x29, 143]
.L41:
	ldrb	w0, [x29, 143]
	cmp	w0, 0
	beq	.L42
	mov	w0, 32
	b	.L43
.L42:
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldr	x0, [x29, 128]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	bcc	.L44
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
.L44:
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	ldrsb	w0, [x0]
.L43:
	strb	w0, [x29, 127]
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	ldr	x0, [x29, 128]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L46
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
.L46:
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldr	x0, [x29, 72]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	ldrsb	w1, [x29, 127]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L48
	mov	w0, 0
	b	.L49
.L48:
	ldr	x0, [x29, 128]
	add	x0, x0, 1
	str	x0, [x29, 128]
	b	.L50
.L36:
	ldrb	w0, [x29, 143]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 128]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L52
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
.L52:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	cmp	w0, 0
	beq	.L51
	mov	w0, 1
	b	.L54
.L51:
	mov	w0, 0
.L54:
	cmp	w0, 0
	beq	.L55
	mov	w0, 0
	b	.L49
.L55:
	mov	w0, 1
.L49:
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_, .-_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	.align	2
	.global	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	.type	_ZN11FATDirEntry17findFirstNonSpaceEPKcm, %function
_ZN11FATDirEntry17findFirstNonSpaceEPKcm:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	str	xzr, [sp, 24]
.L60:
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	cmp	x1, x0
	beq	.L57
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	cmp	w0, 32
	beq	.L58
	ldr	x0, [sp, 24]
	b	.L59
.L58:
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	b	.L60
.L57:
	ldr	x0, [sp]
.L59:
	add	sp, sp, 32
	ret
	.size	_ZN11FATDirEntry17findFirstNonSpaceEPKcm, .-_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	.align	2
	.global	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	.type	_ZN11FATDirEntry16findLastNonSpaceEPKcm, %function
_ZN11FATDirEntry16findLastNonSpaceEPKcm:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	str	x0, [sp, 24]
.L65:
	ldr	x0, [sp, 24]
	cmp	x0, 0
	beq	.L62
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	cmp	w0, 32
	beq	.L63
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	b	.L64
.L63:
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	b	.L65
.L62:
	ldr	x0, [sp]
.L64:
	add	sp, sp, 32
	ret
	.size	_ZN11FATDirEntry16findLastNonSpaceEPKcm, .-_ZN11FATDirEntry16findLastNonSpaceEPKcm
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
	beq	.L72
	str	xzr, [x29, 40]
.L70:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L69
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L70
.L69:
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
.L72:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
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
	.section	.rodata
	.align	3
.LC2:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.section	.text._ZN6VectorIcE6appendERKS0_m,"axG",@progbits,_ZN6VectorIcE6appendERKS0_m,comdat
	.align	2
	.weak	_ZN6VectorIcE6appendERKS0_m
	.type	_ZN6VectorIcE6appendERKS0_m, %function
_ZN6VectorIcE6appendERKS0_m:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 24]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L76
	ldr	x0, [x29, 32]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	str	x0, [x29, 24]
.L76:
	str	xzr, [x29, 88]
.L81:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	.L78
	ldr	x0, [x29, 32]
	str	x0, [x29, 64]
	ldr	x0, [x29, 88]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L79
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L79:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 40]
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L81
.L78:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN6VectorIcE6appendERKS0_m, .-_ZN6VectorIcE6appendERKS0_m
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
	beq	.L87
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
	beq	.L87
	ldrb	w1, [x29, 23]
	strb	w1, [x0]
.L87:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorIcE8pushBackEc, .-_ZN6VectorIcE8pushBackEc
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
	bne	.L89
	mov	w0, 1
	b	.L90
.L89:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L91
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	ldr	x2, [x29, 16]
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L92
.L91:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L92:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L93
	mov	w0, 0
	b	.L90
.L93:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L90:
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
	bls	.L95
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L96
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L98
.L96:
	mov	x0, 8
.L98:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	b	.L99
.L95:
	mov	w0, 1
.L99:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE24adjustCapacityForOneMoreEv, .-_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, 89
_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, 92
_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& VectorRef<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
