	.arch armv8.2-a+crc
	.file	"VirtioBlockConfig.cpp"
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
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.align	3
.LC0:
	.string	"VirtioBlockConfig: "
	.align	3
.LC1:
	.string	" capacity = "
	.align	3
.LC2:
	.string	","
	.align	3
.LC3:
	.string	" size_max = "
	.align	3
.LC4:
	.string	" seg_max = "
	.align	3
.LC5:
	.string	" cylinders = "
	.align	3
.LC6:
	.string	" heads = "
	.align	3
.LC7:
	.string	" sectors = "
	.align	3
.LC8:
	.string	" blk_size = "
	.align	3
.LC9:
	.string	" physical_block_exp = "
	.align	3
.LC10:
	.string	" alignment_offset = "
	.align	3
.LC11:
	.string	" min_io_size = "
	.align	3
.LC12:
	.string	" opt_io_size = "
	.align	3
.LC13:
	.string	" writeback = "
	.align	3
.LC14:
	.string	"\n"
	.text
	.align	2
	.global	_ZNK17VirtioBlockConfig4dumpEv
	.type	_ZNK17VirtioBlockConfig4dumpEv, %function
_ZNK17VirtioBlockConfig4dumpEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 8]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 12]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 16]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 18]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 19]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 20]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 24]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 25]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 26]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 28]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 32]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK17VirtioBlockConfig4dumpEv, .-_ZNK17VirtioBlockConfig4dumpEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
