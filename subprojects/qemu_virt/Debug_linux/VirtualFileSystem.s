	.arch armv8.2-a+crc
	.file	"VirtualFileSystem.cpp"
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
.LC0:
	.string	""
	.align	3
.LC1:
	.string	"[FATAL] "
	.align	3
.LC2:
	.string	"VirtualFileSystem init failed\n"
	.text
	.align	2
	.global	_ZN17VirtualFileSystemC2Ev
	.type	_ZN17VirtualFileSystemC2Ev, %function
_ZN17VirtualFileSystemC2Ev:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 56
	bl	_ZN6StringC1EPKc
	add	x20, x29, 56
	mov	x0, 56
	bl	_Znwm
	mov	x19, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZN11VirtualFileC1ERK6String
	ldr	x0, [x29, 40]
	str	x19, [x0]
	add	x0, x29, 56
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L6:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L6
.L7:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN17VirtualFileSystemC2Ev, .-_ZN17VirtualFileSystemC2Ev
	.global	_ZN17VirtualFileSystemC1Ev
	.set	_ZN17VirtualFileSystemC1Ev,_ZN17VirtualFileSystemC2Ev
	.align	2
	.global	_ZN17VirtualFileSystemD2Ev
	.type	_ZN17VirtualFileSystemD2Ev, %function
_ZN17VirtualFileSystemD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L10
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L10
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 8
	ldr	x1, [x0]
	mov	x0, x2
	blr	x1
.L10:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN17VirtualFileSystemD2Ev, .-_ZN17VirtualFileSystemD2Ev
	.global	_ZN17VirtualFileSystemD1Ev
	.set	_ZN17VirtualFileSystemD1Ev,_ZN17VirtualFileSystemD2Ev
	.align	2
	.global	_ZN17VirtualFileSystem6rebaseEm
	.type	_ZN17VirtualFileSystem6rebaseEm, %function
_ZN17VirtualFileSystem6rebaseEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L13
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	add	x1, x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
.L13:
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17VirtualFileSystem6rebaseEm, .-_ZN17VirtualFileSystem6rebaseEm
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
	beq	.L19
	str	xzr, [x29, 40]
.L17:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L16
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L17
.L16:
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
.L19:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
