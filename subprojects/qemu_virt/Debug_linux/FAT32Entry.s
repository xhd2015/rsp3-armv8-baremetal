	.arch armv8.2-a+crc
	.file	"FAT32Entry.cpp"
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
	.global	_ZN10FAT32EntryC2Ej
	.type	_ZN10FAT32EntryC2Ej, %function
_ZN10FAT32EntryC2Ej:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	and	w2, w0, 268435455
	ldr	x1, [sp, 8]
	ldr	w0, [x1]
	bfi	w0, w2, 0, 28
	str	w0, [x1]
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 3]
	and	w1, w1, 15
	strb	w1, [x0, 3]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN10FAT32EntryC2Ej, .-_ZN10FAT32EntryC2Ej
	.global	_ZN10FAT32EntryC1Ej
	.set	_ZN10FAT32EntryC1Ej,_ZN10FAT32EntryC2Ej
	.align	2
	.global	_ZNK10FAT32Entry9isAllocedEv
	.type	_ZNK10FAT32Entry9isAllocedEv, %function
_ZNK10FAT32Entry9isAllocedEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x0, x0, 0, 28
	cmp	w0, 1
	bls	.L5
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x1, x0, 0, 28
	mov	w0, 65525
	movk	w0, 0xfff, lsl 16
	cmp	w1, w0
	bls	.L6
.L5:
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x0, x0, 0, 28
	cmp	w0, 0
	bne	.L7
.L6:
	mov	w0, 1
	b	.L8
.L7:
	mov	w0, 0
.L8:
	add	sp, sp, 16
	ret
	.size	_ZNK10FAT32Entry9isAllocedEv, .-_ZNK10FAT32Entry9isAllocedEv
	.align	2
	.global	_ZNK10FAT32Entry5isBadEv
	.type	_ZNK10FAT32Entry5isBadEv, %function
_ZNK10FAT32Entry5isBadEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x1, x0, 0, 28
	mov	w0, 65527
	movk	w0, 0xfff, lsl 16
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK10FAT32Entry5isBadEv, .-_ZNK10FAT32Entry5isBadEv
	.align	2
	.global	_ZNK10FAT32Entry6isLastEv
	.type	_ZNK10FAT32Entry6isLastEv, %function
_ZNK10FAT32Entry6isLastEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x1, x0, 0, 28
	mov	w0, 268435455
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK10FAT32Entry6isLastEv, .-_ZNK10FAT32Entry6isLastEv
	.align	2
	.global	_ZNK10FAT32Entry6isFreeEv
	.type	_ZNK10FAT32Entry6isFreeEv, %function
_ZNK10FAT32Entry6isFreeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x0, x0, 0, 28
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK10FAT32Entry6isFreeEv, .-_ZNK10FAT32Entry6isFreeEv
	.align	2
	.global	_ZNK10FAT32Entry8getAsIntEv
	.type	_ZNK10FAT32Entry8getAsIntEv, %function
_ZNK10FAT32Entry8getAsIntEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	ubfx	x0, x0, 0, 28
	add	sp, sp, 16
	ret
	.size	_ZNK10FAT32Entry8getAsIntEv, .-_ZNK10FAT32Entry8getAsIntEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
