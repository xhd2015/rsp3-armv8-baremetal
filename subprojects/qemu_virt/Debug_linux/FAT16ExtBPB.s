	.arch armv8.2-a+crc
	.file	"FAT16ExtBPB.cpp"
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
	.global	_ZNK8ExtBPB1621getClusterEntryOffsetEm
	.type	_ZNK8ExtBPB1621getClusterEntryOffsetEm, %function
_ZNK8ExtBPB1621getClusterEntryOffsetEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 11]
	mul	w0, w1, w0
	sxtw	x1, w0
	ldr	x0, [sp]
	lsl	x0, x0, 1
	add	x0, x1, x0
	add	sp, sp, 16
	ret
	.size	_ZNK8ExtBPB1621getClusterEntryOffsetEm, .-_ZNK8ExtBPB1621getClusterEntryOffsetEm
	.align	2
	.global	_ZNK8ExtBPB1621getRootDirFirstSectorEv
	.type	_ZNK8ExtBPB1621getRootDirFirstSectorEv, %function
_ZNK8ExtBPB1621getRootDirFirstSectorEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 16]
	mov	w2, w0
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 22]
	mul	w0, w2, w0
	add	w0, w1, w0
	sxtw	x0, w0
	add	sp, sp, 16
	ret
	.size	_ZNK8ExtBPB1621getRootDirFirstSectorEv, .-_ZNK8ExtBPB1621getRootDirFirstSectorEv
	.align	2
	.global	_ZNK8ExtBPB1610getFATTypeEv
	.type	_ZNK8ExtBPB1610getFATTypeEv, %function
_ZNK8ExtBPB1610getFATTypeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 1
	add	sp, sp, 16
	ret
	.size	_ZNK8ExtBPB1610getFATTypeEv, .-_ZNK8ExtBPB1610getFATTypeEv
	.align	2
	.global	_ZNK8ExtBPB1616calculateFATSz16Em
	.type	_ZNK8ExtBPB1616calculateFATSz16Em, %function
_ZNK8ExtBPB1616calculateFATSz16Em:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 14]
	and	x19, x0, 65535
	ldr	x0, [x29, 40]
	bl	_ZNK8ExtBPB1621getRootDirFirstSectorEv
	add	x0, x19, x0
	ldr	x1, [x29, 32]
	sub	x0, x1, x0
	str	x0, [x29, 56]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0, 13]
	lsl	w0, w0, 8
	ldr	x1, [x29, 40]
	ldrb	w1, [x1, 16]
	add	w0, w0, w1
	sxtw	x0, w0
	str	x0, [x29, 48]
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	sub	x1, x0, #1
	ldr	x0, [x29, 48]
	udiv	x0, x1, x0
	and	w0, w0, 65535
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK8ExtBPB1616calculateFATSz16Em, .-_ZNK8ExtBPB1616calculateFATSz16Em
	.align	2
	.global	_ZNK8ExtBPB1210getFATTypeEv
	.type	_ZNK8ExtBPB1210getFATTypeEv, %function
_ZNK8ExtBPB1210getFATTypeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 1
	add	sp, sp, 16
	ret
	.size	_ZNK8ExtBPB1210getFATTypeEv, .-_ZNK8ExtBPB1210getFATTypeEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
