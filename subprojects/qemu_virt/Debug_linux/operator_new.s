	.arch armv8.2-a+crc
	.file	"operator_new.cpp"
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
	.global	_Znwm
	.type	_Znwm, %function
_Znwm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_Znwm, .-_Znwm
	.align	2
	.global	_Znam
	.type	_Znam, %function
_Znam:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_Znam, .-_Znam
	.section	.rodata
	.align	3
.LC0:
	.string	"new failed."
	.text
	.align	2
	.global	_Znwm8MemAbort
	.type	_Znwm8MemAbort, %function
_Znwm8MemAbort:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 16]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L6
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_Z11reportErrorPKc
.L6:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_Znwm8MemAbort, .-_Znwm8MemAbort
	.section	.rodata
	.align	3
.LC1:
	.string	"new[] failed."
	.text
	.align	2
	.global	_Znam8MemAbort
	.type	_Znam8MemAbort, %function
_Znam8MemAbort:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 16]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L9
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	_Z11reportErrorPKc
.L9:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_Znam8MemAbort, .-_Znam8MemAbort
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
