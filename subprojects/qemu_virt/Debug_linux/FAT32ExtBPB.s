	.arch armv8.2-a+crc
	.file	"FAT32ExtBPB.cpp"
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
	.global	_ZNK11FAT32ExtBPB14uni_getFatSizeEv
	.type	_ZNK11FAT32ExtBPB14uni_getFatSizeEv, %function
_ZNK11FAT32ExtBPB14uni_getFatSizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 22]
	cmp	w0, 0
	bne	.L2
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 36]
	uxtw	x0, w0
	b	.L4
.L2:
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 22]
	and	x0, x0, 65535
.L4:
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB14uni_getFatSizeEv, .-_ZNK11FAT32ExtBPB14uni_getFatSizeEv
	.align	2
	.global	_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv
	.type	_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv, %function
_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 19]
	cmp	w0, 0
	bne	.L6
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 32]
	uxtw	x0, w0
	b	.L8
.L6:
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 19]
	and	x0, x0, 65535
.L8:
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv, .-_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv
	.align	2
	.global	_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv
	.type	_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv, %function
_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	bl	_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv
	mov	x21, x0
	ldr	x0, [x29, 56]
	ldrh	w0, [x0, 14]
	and	x19, x0, 65535
	ldr	x0, [x29, 56]
	ldrb	w0, [x0, 16]
	and	x20, x0, 255
	ldr	x0, [x29, 56]
	bl	_ZNK11FAT32ExtBPB14uni_getFatSizeEv
	mul	x0, x20, x0
	add	x19, x19, x0
	ldr	x0, [x29, 56]
	bl	_ZNK7FAT_BPB22uni_getRootDirSecCountEv
	add	x0, x19, x0
	sub	x0, x21, x0
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv, .-_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv
	.align	2
	.global	_ZNK11FAT32ExtBPB20uni_getClustersCountEv
	.type	_ZNK11FAT32ExtBPB20uni_getClustersCountEv, %function
_ZNK11FAT32ExtBPB20uni_getClustersCountEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv
	mov	x1, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 13]
	and	x0, x0, 255
	udiv	x0, x1, x0
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK11FAT32ExtBPB20uni_getClustersCountEv, .-_ZNK11FAT32ExtBPB20uni_getClustersCountEv
	.align	2
	.global	_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm
	.type	_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm, %function
_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	ldr	x0, [sp, 24]
	ldrh	w0, [x0, 11]
	mul	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [sp, 8]
	lsl	x2, x0, 2
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 36]
	uxtw	x3, w0
	ldr	x0, [sp, 16]
	mul	x3, x3, x0
	ldr	x0, [sp, 24]
	ldrh	w0, [x0, 11]
	and	x0, x0, 65535
	mul	x0, x3, x0
	add	x0, x2, x0
	add	x0, x1, x0
	add	sp, sp, 32
	ret
	.size	_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm, .-_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm
	.align	2
	.global	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	.type	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm, %function
_ZNK11FAT32ExtBPB21getClusterFirstSectorEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 1
	bhi	.L16
	mov	x0, 0
	b	.L17
.L16:
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 16]
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 36]
	mul	w0, w2, w0
	add	w0, w1, w0
	uxtw	x1, w0
	ldr	x0, [sp]
	sub	x2, x0, #2
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	and	x0, x0, 255
	mul	x0, x2, x0
	add	x0, x1, x0
.L17:
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm, .-_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	.align	2
	.global	_ZNK11FAT32ExtBPB15getRootFATEntryEv
	.type	_ZNK11FAT32ExtBPB15getRootFATEntryEv, %function
_ZNK11FAT32ExtBPB15getRootFATEntryEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 44]
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB15getRootFATEntryEv, .-_ZNK11FAT32ExtBPB15getRootFATEntryEv
	.align	2
	.global	_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv
	.type	_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv, %function
_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 44]
	uxtw	x0, w0
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv, .-_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv
	.align	2
	.global	_ZNK11FAT32ExtBPB20uni_determineFATTypeEv
	.type	_ZNK11FAT32ExtBPB20uni_determineFATTypeEv, %function
_ZNK11FAT32ExtBPB20uni_determineFATTypeEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNK11FAT32ExtBPB20uni_getClustersCountEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 4084
	bhi	.L23
	mov	w0, 0
	b	.L24
.L23:
	ldr	x1, [x29, 40]
	mov	x0, 65524
	cmp	x1, x0
	bhi	.L25
	mov	w0, 1
	b	.L24
.L25:
	mov	w0, 2
.L24:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNK11FAT32ExtBPB20uni_determineFATTypeEv, .-_ZNK11FAT32ExtBPB20uni_determineFATTypeEv
	.align	2
	.global	_ZNK11FAT32ExtBPB10getFATTypeEv
	.type	_ZNK11FAT32ExtBPB10getFATTypeEv, %function
_ZNK11FAT32ExtBPB10getFATTypeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 2
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB10getFATTypeEv, .-_ZNK11FAT32ExtBPB10getFATTypeEv
	.align	2
	.global	_ZNK11FAT32ExtBPB16calculateFATSz32Em
	.type	_ZNK11FAT32ExtBPB16calculateFATSz32Em, %function
_ZNK11FAT32ExtBPB16calculateFATSz32Em:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 14]
	and	x0, x0, 65535
	ldr	x1, [sp]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	lsl	w0, w0, 8
	ldr	x1, [sp, 8]
	ldrb	w1, [x1, 16]
	add	w0, w0, w1
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	sub	x1, x0, #1
	ldr	x0, [sp, 16]
	udiv	x0, x1, x0
	add	sp, sp, 32
	ret
	.size	_ZNK11FAT32ExtBPB16calculateFATSz32Em, .-_ZNK11FAT32ExtBPB16calculateFATSz32Em
	.align	2
	.global	_ZNK11FAT32ExtBPB18getClusterByteSizeEv
	.type	_ZNK11FAT32ExtBPB18getClusterByteSizeEv, %function
_ZNK11FAT32ExtBPB18getClusterByteSizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 11]
	mov	w1, w0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 13]
	mul	w0, w1, w0
	sxtw	x0, w0
	add	sp, sp, 16
	ret
	.size	_ZNK11FAT32ExtBPB18getClusterByteSizeEv, .-_ZNK11FAT32ExtBPB18getClusterByteSizeEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
