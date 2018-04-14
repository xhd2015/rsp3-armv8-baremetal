	.arch armv8.2-a+crc
	.file	"FAT_BPB.cpp"
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
	.global	_ZNK7FAT_BPB22uni_getRootDirSecCountEv
	.type	_ZNK7FAT_BPB22uni_getRootDirSecCountEv, %function
_ZNK7FAT_BPB22uni_getRootDirSecCountEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 17]
	lsl	w1, w0, 5
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 11]
	sub	w0, w0, #1
	add	w0, w1, w0
	ldr	x1, [sp, 8]
	ldrh	w1, [x1, 11]
	sdiv	w0, w0, w1
	sxtw	x0, w0
	add	sp, sp, 16
	ret
	.size	_ZNK7FAT_BPB22uni_getRootDirSecCountEv, .-_ZNK7FAT_BPB22uni_getRootDirSecCountEv
	.align	2
	.global	_ZNK7FAT_BPB10getFATTypeEv
	.type	_ZNK7FAT_BPB10getFATTypeEv, %function
_ZNK7FAT_BPB10getFATTypeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 3
	add	sp, sp, 16
	ret
	.size	_ZNK7FAT_BPB10getFATTypeEv, .-_ZNK7FAT_BPB10getFATTypeEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
