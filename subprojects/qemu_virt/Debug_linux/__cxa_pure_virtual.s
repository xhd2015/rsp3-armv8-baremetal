	.arch armv8.2-a+crc
	.file	"__cxa_pure_virtual.cpp"
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
	.string	"virtual function called during ctor/dtor\n"
	.text
	.align	2
	.global	__cxa_pure_virtual
	.type	__cxa_pure_virtual, %function
__cxa_pure_virtual:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
.L2:
	b	.L2
	.size	__cxa_pure_virtual, .-__cxa_pure_virtual
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
