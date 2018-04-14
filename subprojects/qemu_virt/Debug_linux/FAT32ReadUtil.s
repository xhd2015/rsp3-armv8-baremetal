	.arch armv8.2-a+crc
	.file	"FAT32ReadUtil.cpp"
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
	.section	.text._ZNK11FATDirEntry10isVolumeIDEv,"axG",@progbits,_ZNK11FATDirEntry10isVolumeIDEv,comdat
	.align	2
	.weak	_ZNK11FATDirEntry10isVolumeIDEv
	.type	_ZNK11FATDirEntry10isVolumeIDEv, %function
_ZNK11FATDirEntry10isVolumeIDEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
	and	w0, w0, 63
	cmp	w0, 8
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK11FATDirEntry10isVolumeIDEv, .-_ZNK11FATDirEntry10isVolumeIDEv
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
	.text
	.align	2
	.global	_ZN13FAT32ReadUtil15findByShortNameEPK11FATDirEntrymPKcS4_
	.type	_ZN13FAT32ReadUtil15findByShortNameEPK11FATDirEntrymPKcS4_, %function
_ZN13FAT32ReadUtil15findByShortNameEPK11FATDirEntrymPKcS4_:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	str	xzr, [x29, 104]
.L15:
	ldr	x1, [x29, 104]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	beq	.L10
	ldr	x0, [x29, 104]
	lsl	x0, x0, 5
	ldr	x1, [x29, 56]
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	ldr	x0, [x29, 104]
	lsl	x0, x0, 5
	ldr	x1, [x29, 56]
	add	x19, x1, x0
	add	x0, x29, 72
	ldr	x1, [x29, 40]
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 88
	ldr	x1, [x29, 32]
	bl	_ZN9StringRefC1EPKv
	add	x1, x29, 88
	add	x0, x29, 72
	mov	x2, x1
	mov	x1, x0
	mov	x0, x19
	bl	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L11
	mov	w0, 1
	b	.L12
.L11:
	mov	w0, 0
.L12:
	cmp	w0, 0
	beq	.L13
	ldr	x0, [x29, 104]
	b	.L14
.L13:
	ldr	x0, [x29, 104]
	add	x0, x0, 1
	str	x0, [x29, 104]
	b	.L15
.L10:
	mov	x0, -1
.L14:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZN13FAT32ReadUtil15findByShortNameEPK11FATDirEntrymPKcS4_, .-_ZN13FAT32ReadUtil15findByShortNameEPK11FATDirEntrymPKcS4_
	.align	2
	.global	_ZN13FAT32ReadUtil14findByLongNameEPK11FATDirEntrymPKc
	.type	_ZN13FAT32ReadUtil14findByLongNameEPK11FATDirEntrymPKc, %function
_ZN13FAT32ReadUtil14findByLongNameEPK11FATDirEntrymPKc:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	xzr, [x29, 88]
.L20:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L17
	ldr	x0, [x29, 88]
	lsl	x0, x0, 5
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L17
	mov	w0, 1
	b	.L18
.L17:
	mov	w0, 0
.L18:
	cmp	w0, 0
	beq	.L19
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L20
.L19:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	bne	.L21
	mov	x0, -1
	b	.L22
.L21:
	ldr	x0, [x29, 88]
	lsl	x0, x0, 5
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	bl	_ZNK16FATLongNameEntry18getLastAppearEntryEv
	str	x0, [x29, 72]
	add	x0, x29, 56
	ldr	x1, [x29, 24]
	bl	_ZN9StringRefC1EPKv
	add	x0, x29, 56
	mov	w3, 0
	mov	x2, x0
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 72]
	bl	_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L23
	ldr	x0, [x29, 88]
	b	.L22
.L23:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x1, x0
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L20
.L22:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN13FAT32ReadUtil14findByLongNameEPK11FATDirEntrymPKc, .-_ZN13FAT32ReadUtil14findByLongNameEPK11FATDirEntrymPKc
	.section	.text._ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZN13FAT32ReadUtil17readAllDirEntriesERK6VectorI10FAT32EntryEmPK11FAT32ExtBPBR12SectorReader
	.type	_ZN13FAT32ReadUtil17readAllDirEntriesERK6VectorI10FAT32EntryEmPK11FAT32ExtBPBR12SectorReader, %function
_ZN13FAT32ReadUtil17readAllDirEntriesERK6VectorI10FAT32EntryEmPK11FAT32ExtBPBR12SectorReader:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x20, x8
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm
	str	x0, [x29, 112]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0, 13]
	mov	w1, w0
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 11]
	mul	w0, w1, w0
	sxtw	x0, w0
	lsr	x0, x0, 5
	str	x0, [x29, 104]
	ldr	x1, [x29, 112]
	ldr	x0, [x29, 104]
	mul	x1, x1, x0
	add	x0, x29, 64
	mov	w2, 1
	bl	_ZN6VectorI11FATDirEntryEC1Emb
	str	xzr, [x29, 120]
.L31:
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 112]
	cmp	x1, x0
	beq	.L27
	ldr	x0, [x29, 32]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x19, [x0]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 40]
	bl	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	mov	x4, x0
	ldr	x1, [x29, 64]
	ldr	x2, [x29, 120]
	ldr	x0, [x29, 104]
	mul	x0, x2, x0
	lsl	x0, x0, 5
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	ldrb	w0, [x0, 13]
	and	x0, x0, 255
	mov	x3, x0
	mov	x2, x1
	mov	x1, x4
	ldr	x0, [x29, 32]
	blr	x19
	ldr	x0, [x29, 56]
	str	x0, [x29, 96]
	ldr	x0, [x29, 48]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	bcc	.L29
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L29:
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 2
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	str	x0, [x29, 48]
	ldr	x0, [x29, 120]
	add	x0, x0, 1
	str	x0, [x29, 120]
	b	.L31
.L27:
	add	x0, x29, 64
	bl	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	mov	x0, x20
	bl	_ZN6VectorI11FATDirEntryEC1EOS1_
	add	x0, x29, 64
	bl	_ZN6VectorI11FATDirEntryED1Ev
	nop
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN13FAT32ReadUtil17readAllDirEntriesERK6VectorI10FAT32EntryEmPK11FAT32ExtBPBR12SectorReader, .-_ZN13FAT32ReadUtil17readAllDirEntriesERK6VectorI10FAT32EntryEmPK11FAT32ExtBPBR12SectorReader
	.align	2
	.global	_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm
	.type	_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm, %function
_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 1
	bls	.L34
	ldr	x0, [x29, 24]
	str	x0, [x29, 80]
	ldr	x0, [x29, 16]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L35
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L35:
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldr	x0, [x29, 72]
	lsl	x0, x0, 2
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry9isAllocedEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L37
.L34:
	mov	w0, 1
	b	.L38
.L37:
	mov	w0, 0
.L38:
	cmp	w0, 0
	beq	.L39
	mov	x0, 0
	b	.L40
.L39:
	str	xzr, [x29, 88]
.L47:
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 16]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L41
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L41:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L49
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bcc	.L45
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L45:
	ldr	x0, [x29, 48]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	lsl	x0, x0, 2
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	str	x0, [x29, 16]
	b	.L47
.L49:
	nop
	ldr	x0, [x29, 88]
.L40:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm, .-_ZN13FAT32ReadUtil13getEntryCountERK6VectorI10FAT32EntryEm
	.align	2
	.global	_ZN13FAT32ReadUtil17getNextEntryIndexEPK10FAT32Entrym
	.type	_ZN13FAT32ReadUtil17getNextEntryIndexEPK10FAT32Entrym, %function
_ZN13FAT32ReadUtil17getNextEntryIndexEPK10FAT32Entrym:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	lsl	x0, x0, 2
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13FAT32ReadUtil17getNextEntryIndexEPK10FAT32Entrym, .-_ZN13FAT32ReadUtil17getNextEntryIndexEPK10FAT32Entrym
	.align	2
	.global	_ZN13FAT32ReadUtil19getLastClusterIndexEPK10FAT32Entrym
	.type	_ZN13FAT32ReadUtil19getLastClusterIndexEPK10FAT32Entrym, %function
_ZN13FAT32ReadUtil19getLastClusterIndexEPK10FAT32Entrym:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 1
	bhi	.L53
	mov	x0, -1
	b	.L54
.L53:
	ldr	x0, [x29, 16]
	lsl	x0, x0, 2
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	ldr	x0, [x29, 16]
	add	x0, x0, 1
	str	x0, [x29, 16]
	b	.L53
.L55:
	ldr	x0, [x29, 16]
.L54:
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13FAT32ReadUtil19getLastClusterIndexEPK10FAT32Entrym, .-_ZN13FAT32ReadUtil19getLastClusterIndexEPK10FAT32Entrym
	.align	2
	.global	_ZN13FAT32ReadUtil25findFirstFreeClusterIndexEPK10FAT32Entrymm
	.type	_ZN13FAT32ReadUtil25findFirstFreeClusterIndexEPK10FAT32Entrymm, %function
_ZN13FAT32ReadUtil25findFirstFreeClusterIndexEPK10FAT32Entrymm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 1
	bhi	.L61
	mov	x0, 2
	str	x0, [x29, 24]
.L61:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L58
	ldr	x0, [x29, 24]
	lsl	x0, x0, 2
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	bl	_ZNK10FAT32Entry6isFreeEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L58
	mov	w0, 1
	b	.L59
.L58:
	mov	w0, 0
.L59:
	cmp	w0, 0
	beq	.L60
	ldr	x0, [x29, 24]
	add	x0, x0, 1
	str	x0, [x29, 24]
	b	.L61
.L60:
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L62
	ldr	x0, [x29, 24]
	b	.L64
.L62:
	mov	x0, -1
.L64:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN13FAT32ReadUtil25findFirstFreeClusterIndexEPK10FAT32Entrymm, .-_ZN13FAT32ReadUtil25findFirstFreeClusterIndexEPK10FAT32Entrymm
	.section	.text._ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_,"axG",@progbits,_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_,comdat
	.align	2
	.weak	_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_
	.type	_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_, %function
_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_, .-_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_
	.text
	.align	2
	.global	_ZN13FAT32ReadUtil22filterInDirFileEntriesERK6VectorI11FATDirEntryE
	.type	_ZN13FAT32ReadUtil22filterInDirFileEntriesERK6VectorI11FATDirEntryE, %function
_ZN13FAT32ReadUtil22filterInDirFileEntriesERK6VectorI11FATDirEntryE:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	add	x0, x29, 48
	bl	_ZN6VectorIPK11FATDirEntryEC1Ev
	str	xzr, [x29, 120]
.L78:
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 120]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L69
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	ldr	x0, [x29, 120]
	str	x0, [x29, 96]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 96]
	cmp	x1, x0
	bcc	.L70
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L70:
	ldr	x0, [x29, 104]
	ldr	x1, [x0]
	ldr	x0, [x29, 96]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L72
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 120]
	str	x0, [x29, 80]
	ldr	x0, [x29, 88]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 80]
	cmp	x1, x0
	bcc	.L73
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L73:
	ldr	x0, [x29, 88]
	ldr	x1, [x0]
	ldr	x0, [x29, 80]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry10isVolumeIDEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L72
	mov	w0, 1
	b	.L75
.L72:
	mov	w0, 0
.L75:
	cmp	w0, 0
	beq	.L76
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	ldr	x0, [x29, 120]
	lsl	x0, x0, 5
	add	x1, x1, x0
	add	x0, x29, 48
	bl	_ZN6VectorIPK11FATDirEntryE8pushBackES2_
.L76:
	ldr	x0, [x29, 120]
	add	x0, x0, 1
	str	x0, [x29, 120]
	b	.L78
.L69:
	add	x0, x29, 48
	bl	_ZSt4moveIR6VectorIPK11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS7_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorIPK11FATDirEntryEC1EOS3_
	add	x0, x29, 48
	bl	_ZN6VectorIPK11FATDirEntryED1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN13FAT32ReadUtil22filterInDirFileEntriesERK6VectorI11FATDirEntryE, .-_ZN13FAT32ReadUtil22filterInDirFileEntriesERK6VectorI11FATDirEntryE
	.section	.text._ZN6VectorI11FATDirEntryEC2Emb,"axG",@progbits,_ZN6VectorI11FATDirEntryEC5Emb,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryEC2Emb
	.type	_ZN6VectorI11FATDirEntryEC2Emb, %function
_ZN6VectorI11FATDirEntryEC2Emb:
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
	beq	.L81
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 32]
	mov	x0, 8
	cmp	x2, 8
	csel	x1, x1, x0, cs
	ldr	x0, [x29, 40]
	str	x1, [x0, 8]
	b	.L82
.L81:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
.L82:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L90
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	lsl	x1, x0, 5
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L84
	str	xzr, [x29, 56]
.L88:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L85
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L87
	stp	xzr, xzr, [x0]
	stp	xzr, xzr, [x0, 16]
.L87:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L88
.L85:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 16]
	b	.L90
.L84:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
.L90:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorI11FATDirEntryEC2Emb, .-_ZN6VectorI11FATDirEntryEC2Emb
	.weak	_ZN6VectorI11FATDirEntryEC1Emb
	.set	_ZN6VectorI11FATDirEntryEC1Emb,_ZN6VectorI11FATDirEntryEC2Emb
	.section	.text._ZN6VectorI11FATDirEntryED2Ev,"axG",@progbits,_ZN6VectorI11FATDirEntryED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryED2Ev
	.type	_ZN6VectorI11FATDirEntryED2Ev, %function
_ZN6VectorI11FATDirEntryED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L96
	str	xzr, [x29, 40]
.L94:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L93
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L94
.L93:
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
.L96:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI11FATDirEntryED2Ev, .-_ZN6VectorI11FATDirEntryED2Ev
	.weak	_ZN6VectorI11FATDirEntryED1Ev
	.set	_ZN6VectorI11FATDirEntryED1Ev,_ZN6VectorI11FATDirEntryED2Ev
	.section	.text._ZN6VectorI11FATDirEntryEC2EOS1_,"axG",@progbits,_ZN6VectorI11FATDirEntryEC5EOS1_,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryEC2EOS1_
	.type	_ZN6VectorI11FATDirEntryEC2EOS1_, %function
_ZN6VectorI11FATDirEntryEC2EOS1_:
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
	.size	_ZN6VectorI11FATDirEntryEC2EOS1_, .-_ZN6VectorI11FATDirEntryEC2EOS1_
	.weak	_ZN6VectorI11FATDirEntryEC1EOS1_
	.set	_ZN6VectorI11FATDirEntryEC1EOS1_,_ZN6VectorI11FATDirEntryEC2EOS1_
	.section	.text._ZN6VectorIPK11FATDirEntryEC2Ev,"axG",@progbits,_ZN6VectorIPK11FATDirEntryEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryEC2Ev
	.type	_ZN6VectorIPK11FATDirEntryEC2Ev, %function
_ZN6VectorIPK11FATDirEntryEC2Ev:
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
	.size	_ZN6VectorIPK11FATDirEntryEC2Ev, .-_ZN6VectorIPK11FATDirEntryEC2Ev
	.weak	_ZN6VectorIPK11FATDirEntryEC1Ev
	.set	_ZN6VectorIPK11FATDirEntryEC1Ev,_ZN6VectorIPK11FATDirEntryEC2Ev
	.section	.text._ZN6VectorIPK11FATDirEntryED2Ev,"axG",@progbits,_ZN6VectorIPK11FATDirEntryED5Ev,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryED2Ev
	.type	_ZN6VectorIPK11FATDirEntryED2Ev, %function
_ZN6VectorIPK11FATDirEntryED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L104
	str	xzr, [x29, 40]
.L102:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L101
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L102
.L101:
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
.L104:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIPK11FATDirEntryED2Ev, .-_ZN6VectorIPK11FATDirEntryED2Ev
	.weak	_ZN6VectorIPK11FATDirEntryED1Ev
	.set	_ZN6VectorIPK11FATDirEntryED1Ev,_ZN6VectorIPK11FATDirEntryED2Ev
	.section	.text._ZN6VectorIPK11FATDirEntryE8pushBackES2_,"axG",@progbits,_ZN6VectorIPK11FATDirEntryE8pushBackES2_,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryE8pushBackES2_
	.type	_ZN6VectorIPK11FATDirEntryE8pushBackES2_, %function
_ZN6VectorIPK11FATDirEntryE8pushBackES2_:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L109
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L109
	ldr	x1, [x29, 16]
	str	x1, [x0]
.L109:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorIPK11FATDirEntryE8pushBackES2_, .-_ZN6VectorIPK11FATDirEntryE8pushBackES2_
	.section	.text._ZN6VectorIPK11FATDirEntryEC2EOS3_,"axG",@progbits,_ZN6VectorIPK11FATDirEntryEC5EOS3_,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryEC2EOS3_
	.type	_ZN6VectorIPK11FATDirEntryEC2EOS3_, %function
_ZN6VectorIPK11FATDirEntryEC2EOS3_:
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
	.size	_ZN6VectorIPK11FATDirEntryEC2EOS3_, .-_ZN6VectorIPK11FATDirEntryEC2EOS3_
	.weak	_ZN6VectorIPK11FATDirEntryEC1EOS3_
	.set	_ZN6VectorIPK11FATDirEntryEC1EOS3_,_ZN6VectorIPK11FATDirEntryEC2EOS3_
	.section	.text._ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m
	.type	_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m, %function
_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m, .-_ZN13MemoryManager10allocateAsIP11FATDirEntryEET_m
	.section	.text._ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv, %function
_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L114
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L115
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L117
.L115:
	mov	x0, 8
.L117:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm
	and	w0, w0, 255
	b	.L118
.L114:
	mov	w0, 1
.L118:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv, .-_ZN6VectorIPK11FATDirEntryE24adjustCapacityForOneMoreEv
	.section	.text._ZN6VectorIPK11FATDirEntryE14resizeCapacityEm,"axG",@progbits,_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm
	.type	_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm, %function
_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L120
	mov	w0, 1
	b	.L121
.L120:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L122
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	lsl	x2, x0, 3
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L123
.L122:
	ldr	x0, [x29, 16]
	lsl	x1, x0, 3
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L123:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L124
	mov	w0, 0
	b	.L121
.L124:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L121:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm, .-_ZN6VectorIPK11FATDirEntryE14resizeCapacityEm
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__, 95
_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = FAT32Entry; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, 96
_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = FATDirEntry; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
