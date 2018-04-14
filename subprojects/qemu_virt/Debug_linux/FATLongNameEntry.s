	.arch armv8.2-a+crc
	.file	"FATLongNameEntry.cpp"
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
	.global	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	.type	_ZNK16FATLongNameEntry14getAsAsciiNameEb, %function
_ZNK16FATLongNameEntry14getAsAsciiNameEb:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	strb	w1, [x29, 39]
	add	x0, x29, 56
	bl	_ZN6VectorIcEC2Ev
	str	xzr, [x29, 88]
	strb	wzr, [x29, 87]
	ldrb	w0, [x29, 39]
	cmp	w0, 0
	beq	.L15
.L11:
	ldr	x0, [x29, 88]
	cmp	x0, 9
	bhi	.L9
	ldr	x0, [x29, 40]
	add	x1, x0, 1
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	sxtb	w0, w0
	cmp	w0, 32
	bne	.L9
	mov	w0, 1
	b	.L10
.L9:
	mov	w0, 0
.L10:
	cmp	w0, 0
	beq	.L15
	ldr	x0, [x29, 88]
	add	x0, x0, 2
	str	x0, [x29, 88]
	b	.L11
.L15:
	ldr	x0, [x29, 88]
	cmp	x0, 10
	beq	.L12
	ldr	x0, [x29, 40]
	add	x1, x0, 1
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 87]
	ldrsb	w0, [x29, 87]
	cmp	w0, 0
	beq	.L12
	mov	w0, 1
	b	.L13
.L12:
	mov	w0, 0
.L13:
	cmp	w0, 0
	beq	.L14
	add	x0, x29, 56
	ldrb	w1, [x29, 87]
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 2
	str	x0, [x29, 88]
	b	.L15
.L14:
	ldrsb	w0, [x29, 87]
	cmp	w0, 0
	beq	.L16
	str	xzr, [x29, 88]
.L19:
	ldr	x0, [x29, 88]
	cmp	x0, 12
	beq	.L17
	ldr	x0, [x29, 40]
	add	x1, x0, 14
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 87]
	ldrsb	w0, [x29, 87]
	cmp	w0, 0
	beq	.L17
	mov	w0, 1
	b	.L18
.L17:
	mov	w0, 0
.L18:
	cmp	w0, 0
	beq	.L16
	add	x0, x29, 56
	ldrb	w1, [x29, 87]
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 2
	str	x0, [x29, 88]
	b	.L19
.L16:
	ldrsb	w0, [x29, 87]
	cmp	w0, 0
	beq	.L20
	str	xzr, [x29, 88]
.L23:
	ldr	x0, [x29, 88]
	cmp	x0, 4
	beq	.L21
	ldr	x0, [x29, 40]
	add	x1, x0, 28
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 87]
	ldrsb	w0, [x29, 87]
	cmp	w0, 0
	beq	.L21
	mov	w0, 1
	b	.L22
.L21:
	mov	w0, 0
.L22:
	cmp	w0, 0
	beq	.L20
	add	x0, x29, 56
	ldrb	w1, [x29, 87]
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 2
	str	x0, [x29, 88]
	b	.L23
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
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZNK16FATLongNameEntry14getAsAsciiNameEb, .-_ZNK16FATLongNameEntry14getAsAsciiNameEb
	.align	2
	.global	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
	.type	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv, %function
_ZNK16FATLongNameEntry19uni_isLongNameEntryEv:
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
	.size	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv, .-_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
	.align	2
	.global	_ZNK16FATLongNameEntry18getLastAppearEntryEv
	.type	_ZNK16FATLongNameEntry18getLastAppearEntryEv, %function
_ZNK16FATLongNameEntry18getLastAppearEntryEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
.L29:
	ldr	x0, [x29, 40]
	add	x0, x0, 32
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	b	.L29
.L28:
	ldr	x0, [x29, 40]
	sub	x0, x0, #32
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNK16FATLongNameEntry18getLastAppearEntryEv, .-_ZNK16FATLongNameEntry18getLastAppearEntryEv
	.align	2
	.global	_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv
	.type	_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv, %function
_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK16FATLongNameEntry18getLastAppearEntryEv
	add	x0, x0, 32
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv, .-_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv
	.align	2
	.global	_ZN16FATLongNameEntry18getLastAppearEntryEv
	.type	_ZN16FATLongNameEntry18getLastAppearEntryEv, %function
_ZN16FATLongNameEntry18getLastAppearEntryEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK16FATLongNameEntry18getLastAppearEntryEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FATLongNameEntry18getLastAppearEntryEv, .-_ZN16FATLongNameEntry18getLastAppearEntryEv
	.align	2
	.global	_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv
	.type	_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv, %function
_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv, .-_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv
	.align	2
	.global	_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb
	.type	_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb, %function
_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	strb	w2, [x29, 47]
	ldr	x0, [x29, 56]
	bl	_ZNK16FATLongNameEntry19lookupFirstNullCharEv
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	cmp	x0, 9
	bls	.L38
	ldr	x0, [x29, 152]
	cmp	x0, 21
	bhi	.L39
	mov	w0, 2
	b	.L41
.L39:
	mov	w0, 3
	b	.L41
.L38:
	mov	w0, 1
.L41:
	str	w0, [x29, 148]
	ldr	w0, [x29, 148]
	cmp	w0, 2
	beq	.L43
	cmp	w0, 3
	beq	.L44
	cmp	w0, 1
	bne	.L54
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	ldrb	w3, [x29, 47]
	ldr	x2, [x29, 48]
	mov	x1, 10
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	b	.L46
.L43:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	mov	w3, 1
	ldr	x2, [x29, 48]
	mov	x1, 10
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L47
	ldr	x0, [x29, 56]
	add	x19, x0, 14
	ldr	x0, [x29, 48]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	mov	x1, 5
	bl	_Z9strOffsetPKcm
	mov	x1, x0
	add	x0, x29, 72
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 72
	ldrb	w3, [x29, 47]
	mov	x2, x0
	mov	x1, 12
	mov	x0, x19
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L47
	mov	w0, 1
	b	.L46
.L47:
	mov	w0, 0
	b	.L46
.L44:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	mov	w3, 1
	ldr	x2, [x29, 48]
	mov	x1, 10
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L50
	ldr	x0, [x29, 56]
	add	x19, x0, 14
	ldr	x0, [x29, 48]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0]
	mov	x1, 5
	bl	_Z9strOffsetPKcm
	mov	x1, x0
	add	x0, x29, 88
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 88
	mov	w3, 1
	mov	x2, x0
	mov	x1, 12
	mov	x0, x19
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L50
	ldr	x0, [x29, 56]
	add	x19, x0, 28
	ldr	x0, [x29, 48]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	mov	x1, 11
	bl	_Z9strOffsetPKcm
	mov	x1, x0
	add	x0, x29, 104
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 104
	ldrb	w3, [x29, 47]
	mov	x2, x0
	mov	x1, 4
	mov	x0, x19
	bl	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L50
	mov	w0, 1
	b	.L46
.L50:
	mov	w0, 0
	b	.L46
.L54:
	mov	w0, 0
.L46:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 160
	ret
	.size	_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb, .-_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb
	.align	2
	.global	_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb
	.type	_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb, %function
_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	strb	w3, [x29, 23]
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	ldr	x0, [x29, 24]
	ldp	x0, x1, [x0]
	stp	x0, x1, [x29, 48]
.L64:
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L56
	add	x0, x29, 48
	mov	w2, 1
	mov	x1, x0
	ldr	x0, [x29, 104]
	bl	_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L57
	mov	w0, 0
	b	.L65
.L57:
	ldr	x0, [x29, 104]
	sub	x0, x0, #32
	str	x0, [x29, 104]
	mov	x0, 13
	str	x0, [x29, 96]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 96]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L60
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 96]
	add	x0, x1, x0
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	str	x0, [x29, 48]
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 96]
	sub	x0, x1, x0
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 56]
	b	.L64
.L60:
	adrp	x0, EMPTY_STR
	add	x0, x0, :lo12:EMPTY_STR
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	str	xzr, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	b	.L64
.L56:
	add	x0, x29, 48
	ldrb	w2, [x29, 23]
	mov	x1, x0
	ldr	x0, [x29, 104]
	bl	_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb
	and	w0, w0, 255
.L65:
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb, .-_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb
	.align	2
	.global	_ZNK16FATLongNameEntry19lookupFirstNullCharEv
	.type	_ZNK16FATLongNameEntry19lookupFirstNullCharEv, %function
_ZNK16FATLongNameEntry19lookupFirstNullCharEv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	xzr, [x29, 56]
.L70:
	ldr	x0, [x29, 56]
	cmp	x0, 10
	beq	.L67
	ldr	x0, [x29, 24]
	add	x1, x0, 1
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 39]
	ldrsb	w0, [x29, 39]
	cmp	w0, 0
	bne	.L68
	ldr	x0, [x29, 56]
	b	.L69
.L68:
	ldr	x0, [x29, 56]
	add	x0, x0, 2
	str	x0, [x29, 56]
	b	.L70
.L67:
	str	xzr, [x29, 48]
.L73:
	ldr	x0, [x29, 48]
	cmp	x0, 12
	beq	.L71
	ldr	x0, [x29, 24]
	add	x1, x0, 14
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 38]
	ldrsb	w0, [x29, 38]
	cmp	w0, 0
	bne	.L72
	ldr	x0, [x29, 48]
	add	x0, x0, 10
	b	.L69
.L72:
	ldr	x0, [x29, 48]
	add	x0, x0, 2
	str	x0, [x29, 48]
	b	.L73
.L71:
	str	xzr, [x29, 40]
.L76:
	ldr	x0, [x29, 40]
	cmp	x0, 4
	beq	.L74
	ldr	x0, [x29, 24]
	add	x1, x0, 28
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 37]
	ldrsb	w0, [x29, 37]
	cmp	w0, 0
	bne	.L75
	ldr	x0, [x29, 40]
	add	x0, x0, 22
	b	.L69
.L75:
	ldr	x0, [x29, 40]
	add	x0, x0, 2
	str	x0, [x29, 40]
	b	.L76
.L74:
	mov	x0, -1
.L69:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK16FATLongNameEntry19lookupFirstNullCharEv, .-_ZNK16FATLongNameEntry19lookupFirstNullCharEv
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/VectorRef.h"
	.text
	.align	2
	.global	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	.type	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb, %function
_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	strb	w3, [x29, 23]
	str	xzr, [x29, 88]
.L84:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L78
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	bl	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	strb	w0, [x29, 87]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 88]
	lsr	x0, x0, 1
	str	x1, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 64]
	cmp	x1, x0
	bcc	.L79
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
.L79:
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	ldr	x0, [x29, 64]
	add	x0, x1, x0
	ldrb	w0, [x0]
	strb	w0, [x29, 86]
	ldrsb	w1, [x29, 87]
	ldrsb	w0, [x29, 86]
	cmp	w1, w0
	beq	.L81
	mov	w0, 0
	b	.L82
.L81:
	ldrsb	w0, [x29, 86]
	cmp	w0, 0
	bne	.L83
	mov	w0, 1
	b	.L82
.L83:
	ldr	x0, [x29, 88]
	add	x0, x0, 2
	str	x0, [x29, 88]
	b	.L84
.L78:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 88]
	lsr	x0, x0, 1
	str	x1, [x29, 56]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcc	.L85
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
.L85:
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	cmp	w0, 0
	beq	.L87
	ldrb	w0, [x29, 23]
	cmp	w0, 0
	beq	.L88
.L87:
	mov	w0, 1
	b	.L90
.L88:
	mov	w0, 0
.L90:
	nop
.L82:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb, .-_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb
	.align	2
	.global	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
	.type	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv, %function
_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0]
	sxtb	w0, w0
	add	sp, sp, 16
	ret
	.size	_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv, .-_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv
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
	beq	.L99
	str	xzr, [x29, 40]
.L97:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L96
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L97
.L96:
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
.L99:
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
	beq	.L105
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
	beq	.L105
	ldrb	w1, [x29, 23]
	strb	w1, [x0]
.L105:
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
	bne	.L107
	mov	w0, 1
	b	.L108
.L107:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L109
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	ldr	x2, [x29, 16]
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L110
.L109:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L110:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L111
	mov	w0, 0
	b	.L108
.L111:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L108:
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
	bls	.L113
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L114
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L116
.L114:
	mov	x0, 8
.L116:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	b	.L117
.L113:
	mov	w0, 1
.L117:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE24adjustCapacityForOneMoreEv, .-_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.section	.rodata
	.align	3
	.type	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__, 92
_ZZNK9VectorRefIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& VectorRef<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
