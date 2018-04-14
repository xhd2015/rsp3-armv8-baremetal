	.arch armv8.2-a+crc
	.file	"VirtioSectorReader.cpp"
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
	.section	.text._ZN12SectorReaderC2Ev,"axG",@progbits,_ZN12SectorReaderC5Ev,comdat
	.align	2
	.weak	_ZN12SectorReaderC2Ev
	.type	_ZN12SectorReaderC2Ev, %function
_ZN12SectorReaderC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	adrp	x0, _ZTV12SectorReader+16
	add	x1, x0, :lo12:_ZTV12SectorReader+16
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN12SectorReaderC2Ev, .-_ZN12SectorReaderC2Ev
	.weak	_ZN12SectorReaderC1Ev
	.set	_ZN12SectorReaderC1Ev,_ZN12SectorReaderC2Ev
	.section	.text._ZN12SectorReaderD2Ev,"axG",@progbits,_ZN12SectorReaderD5Ev,comdat
	.align	2
	.weak	_ZN12SectorReaderD2Ev
	.type	_ZN12SectorReaderD2Ev, %function
_ZN12SectorReaderD2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	adrp	x0, _ZTV12SectorReader+16
	add	x1, x0, :lo12:_ZTV12SectorReader+16
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN12SectorReaderD2Ev, .-_ZN12SectorReaderD2Ev
	.weak	_ZN12SectorReaderD1Ev
	.set	_ZN12SectorReaderD1Ev,_ZN12SectorReaderD2Ev
	.section	.text._ZN12SectorReaderD0Ev,"axG",@progbits,_ZN12SectorReaderD5Ev,comdat
	.align	2
	.weak	_ZN12SectorReaderD0Ev
	.type	_ZN12SectorReaderD0Ev, %function
_ZN12SectorReaderD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN12SectorReaderD1Ev
	mov	x1, 8
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN12SectorReaderD0Ev, .-_ZN12SectorReaderD0Ev
	.text
	.align	2
	.global	_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver
	.type	_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver, %function
_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN12SectorReaderC2Ev
	adrp	x0, _ZTV18VirtioSectorReader+16
	add	x1, x0, :lo12:_ZTV18VirtioSectorReader+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver, .-_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver
	.global	_ZN18VirtioSectorReaderC1ER17VirtioBlockDriver
	.set	_ZN18VirtioSectorReaderC1ER17VirtioBlockDriver,_ZN18VirtioSectorReaderC2ER17VirtioBlockDriver
	.align	2
	.global	_ZN18VirtioSectorReader4readEmPvm
	.type	_ZN18VirtioSectorReader4readEmPvm, %function
_ZN18VirtioSectorReader4readEmPvm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	bne	.L6
	mov	x0, 0
	b	.L7
.L6:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 32]
	bl	_ZN17VirtioBlockDriver10readSectorEmmPv
.L7:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN18VirtioSectorReader4readEmPvm, .-_ZN18VirtioSectorReader4readEmPvm
	.align	2
	.global	_ZN18VirtioSectorReader5writeEmPKvm
	.type	_ZN18VirtioSectorReader5writeEmPKvm, %function
_ZN18VirtioSectorReader5writeEmPKvm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	bne	.L9
	mov	x0, 0
	b	.L10
.L9:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 32]
	bl	_ZN17VirtioBlockDriver11writeSectorEmmPKv
.L10:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN18VirtioSectorReader5writeEmPKvm, .-_ZN18VirtioSectorReader5writeEmPKvm
	.weak	_ZTV18VirtioSectorReader
	.section	.rodata._ZTV18VirtioSectorReader,"aG",@progbits,_ZTV18VirtioSectorReader,comdat
	.align	3
	.type	_ZTV18VirtioSectorReader, %object
	.size	_ZTV18VirtioSectorReader, 48
_ZTV18VirtioSectorReader:
	.xword	0
	.xword	0
	.xword	_ZN18VirtioSectorReaderD1Ev
	.xword	_ZN18VirtioSectorReaderD0Ev
	.xword	_ZN18VirtioSectorReader4readEmPvm
	.xword	_ZN18VirtioSectorReader5writeEmPKvm
	.section	.text._ZN18VirtioSectorReaderD2Ev,"axG",@progbits,_ZN18VirtioSectorReaderD5Ev,comdat
	.align	2
	.weak	_ZN18VirtioSectorReaderD2Ev
	.type	_ZN18VirtioSectorReaderD2Ev, %function
_ZN18VirtioSectorReaderD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, _ZTV18VirtioSectorReader+16
	add	x1, x0, :lo12:_ZTV18VirtioSectorReader+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	bl	_ZN12SectorReaderD2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN18VirtioSectorReaderD2Ev, .-_ZN18VirtioSectorReaderD2Ev
	.weak	_ZN18VirtioSectorReaderD1Ev
	.set	_ZN18VirtioSectorReaderD1Ev,_ZN18VirtioSectorReaderD2Ev
	.section	.text._ZN18VirtioSectorReaderD0Ev,"axG",@progbits,_ZN18VirtioSectorReaderD5Ev,comdat
	.align	2
	.weak	_ZN18VirtioSectorReaderD0Ev
	.type	_ZN18VirtioSectorReaderD0Ev, %function
_ZN18VirtioSectorReaderD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN18VirtioSectorReaderD1Ev
	mov	x1, 16
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN18VirtioSectorReaderD0Ev, .-_ZN18VirtioSectorReaderD0Ev
	.weak	_ZTV12SectorReader
	.section	.rodata._ZTV12SectorReader,"aG",@progbits,_ZTV12SectorReader,comdat
	.align	3
	.type	_ZTV12SectorReader, %object
	.size	_ZTV12SectorReader, 48
_ZTV12SectorReader:
	.xword	0
	.xword	0
	.xword	0
	.xword	0
	.xword	__cxa_pure_virtual
	.xword	__cxa_pure_virtual
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
