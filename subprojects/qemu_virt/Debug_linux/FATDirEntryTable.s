	.arch armv8.2-a+crc
	.file	"FATDirEntryTable.cpp"
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
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZNK16FATDirEntryTable15findByShortNameERK9StringRefS2_
	.type	_ZNK16FATDirEntryTable15findByShortNameERK9StringRefS2_, %function
_ZNK16FATDirEntryTable15findByShortNameERK9StringRefS2_:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	xzr, [x29, 88]
.L18:
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 88]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 64]
	cmp	x1, x0
	bcc	.L10
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
.L10:
	ldr	x0, [x29, 72]
	ldr	x1, [x0]
	ldr	x0, [x29, 64]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x0, [x29, 88]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcc	.L13
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
.L13:
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	bl	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	w0, 1
	b	.L15
.L12:
	mov	w0, 0
.L15:
	cmp	w0, 0
	beq	.L16
	ldr	x0, [x29, 88]
	b	.L17
.L16:
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L18
.L9:
	mov	x0, -1
.L17:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZNK16FATDirEntryTable15findByShortNameERK9StringRefS2_, .-_ZNK16FATDirEntryTable15findByShortNameERK9StringRefS2_
	.align	2
	.global	_ZNK16FATDirEntryTable14findByLongNameERK9StringRef
	.type	_ZNK16FATDirEntryTable14findByLongNameERK9StringRef, %function
_ZNK16FATDirEntryTable14findByLongNameERK9StringRef:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 88]
.L26:
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	beq	.L21
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 88]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcc	.L22
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
.L22:
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	mov	w0, 1
	b	.L24
.L21:
	mov	w0, 0
.L24:
	cmp	w0, 0
	beq	.L25
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L26
.L25:
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	mov	x0, -1
	b	.L29
.L28:
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 5
	add	x0, x1, x0
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	bl	_ZNK16FATLongNameEntry18getLastAppearEntryEv
	str	x0, [x29, 72]
	mov	w3, 0
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 72]
	bl	_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x1, x0
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	add	x0, x0, 1
	b	.L29
.L31:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 80]
	sub	x0, x1, x0
	asr	x0, x0, 5
	mov	x1, x0
	ldr	x0, [x29, 88]
	add	x0, x1, x0
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L26
.L29:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZNK16FATDirEntryTable14findByLongNameERK9StringRef, .-_ZNK16FATDirEntryTable14findByLongNameERK9StringRef
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
	.section	.rodata
	.align	3
.LC2:
	.string	""
	.text
	.align	2
	.global	_ZNK16FATDirEntryTable11volumnLabelEv
	.type	_ZNK16FATDirEntryTable11volumnLabelEv, %function
_ZNK16FATDirEntryTable11volumnLabelEv:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 96]
	str	xzr, [x29, 104]
.L42:
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L35
	ldr	x0, [x29, 96]
	str	x0, [x29, 80]
	ldr	x0, [x29, 104]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L36
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
.L36:
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldr	x0, [x29, 72]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry10isVolumeIDEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L38
	ldr	x0, [x29, 96]
	str	x0, [x29, 64]
	ldr	x0, [x29, 104]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L39
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
.L39:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	lsl	x0, x0, 5
	add	x0, x1, x0
	mov	x8, x19
	bl	_ZNK11FATDirEntry14getVolumnLabelEv
	b	.L33
.L38:
	ldr	x0, [x29, 104]
	add	x0, x0, 1
	str	x0, [x29, 104]
	b	.L42
.L35:
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6StringC1EPKc
.L33:
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZNK16FATDirEntryTable11volumnLabelEv, .-_ZNK16FATDirEntryTable11volumnLabelEv
	.section	.rodata
	.align	3
.LC3:
	.string	"\n"
	.align	3
.LC4:
	.string	"count : "
	.text
	.align	2
	.global	_ZNK16FATDirEntryTable16showAllFileNamesEv
	.type	_ZNK16FATDirEntryTable16showAllFileNamesEv, %function
_ZNK16FATDirEntryTable16showAllFileNamesEv:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 136]
	str	xzr, [x29, 152]
	str	xzr, [x29, 144]
.L58:
	ldr	x0, [x29, 136]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 144]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L45
	ldr	x0, [x29, 136]
	str	x0, [x29, 112]
	ldr	x0, [x29, 144]
	str	x0, [x29, 104]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	bcc	.L46
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
.L46:
	ldr	x0, [x29, 112]
	ldr	x1, [x0]
	ldr	x0, [x29, 104]
	lsl	x0, x0, 5
	add	x0, x1, x0
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	ldr	x0, [x29, 136]
	str	x0, [x29, 96]
	ldr	x0, [x29, 144]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	bcc	.L50
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
.L50:
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	ldr	x0, [x29, 136]
	str	x0, [x29, 80]
	ldr	x0, [x29, 144]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L52
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
.L52:
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldr	x0, [x29, 72]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry10isVolumeIDEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L49
	mov	w0, 1
	b	.L54
.L49:
	mov	w0, 0
.L54:
	cmp	w0, 0
	beq	.L55
	ldr	x0, [x29, 152]
	add	x0, x0, 1
	str	x0, [x29, 152]
	ldr	x0, [x29, 136]
	str	x0, [x29, 64]
	ldr	x0, [x29, 144]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L56
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
.L56:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	lsl	x0, x0, 5
	add	x0, x1, x0
	add	x1, x29, 32
	mov	x8, x1
	bl	_ZNK11FATDirEntry11getLongNameEv
	add	x1, x29, 32
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZlsIcER6OutputS1_RK6VectorIT_E
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	add	x0, x29, 32
	bl	_ZN6StringD1Ev
.L55:
	ldr	x0, [x29, 144]
	add	x0, x0, 1
	str	x0, [x29, 144]
	b	.L58
.L45:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 152]
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 160
	ret
	.size	_ZNK16FATDirEntryTable16showAllFileNamesEv, .-_ZNK16FATDirEntryTable16showAllFileNamesEv
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
	beq	.L64
	str	xzr, [x29, 40]
.L62:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L61
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L62
.L61:
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
.L64:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZlsIcER6OutputS1_RK6VectorIT_E,"axG",@progbits,_ZlsIcER6OutputS1_RK6VectorIT_E,comdat
	.align	2
	.weak	_ZlsIcER6OutputS1_RK6VectorIT_E
	.type	_ZlsIcER6OutputS1_RK6VectorIT_E, %function
_ZlsIcER6OutputS1_RK6VectorIT_E:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 56]
.L70:
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L67
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 56]
	str	x0, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 32]
	cmp	x1, x0
	bcc	.L68
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
.L68:
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEc
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L70
.L67:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZlsIcER6OutputS1_RK6VectorIT_E, .-_ZlsIcER6OutputS1_RK6VectorIT_E
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, 96
_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = FATDirEntry; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, 89
_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
