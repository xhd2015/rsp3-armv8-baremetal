	.arch armv8.2-a+crc
	.file	"operator_delete.cpp"
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
	.global	_ZdlPv
	.type	_ZdlPv, %function
_ZdlPv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager10deallocateEPv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZdlPv, .-_ZdlPv
	.align	2
	.global	_ZdlPvm
	.type	_ZdlPvm, %function
_ZdlPvm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager10deallocateEPv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZdlPvm, .-_ZdlPvm
	.align	2
	.global	_ZdaPv
	.type	_ZdaPv, %function
_ZdaPv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager10deallocateEPv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZdaPv, .-_ZdaPv
	.align	2
	.global	_ZdaPvm
	.type	_ZdaPvm, %function
_ZdaPvm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager10deallocateEPv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZdaPvm, .-_ZdaPvm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
