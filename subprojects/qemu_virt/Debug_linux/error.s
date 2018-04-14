	.arch armv8.2-a+crc
	.file	"error.cpp"
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
	.string	"[FATAL] "
	.align	3
.LC1:
	.string	"-- ABORT -- \n"
	.text
	.align	2
	.global	abort
	.type	abort, %function
abort:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6Output5flushEv
.L2:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L2
	.size	abort, .-abort
	.align	2
	.global	_Z6resumev
	.type	_Z6resumev, %function
_Z6resumev:
	nop
	ret
	.size	_Z6resumev, .-_Z6resumev
	.section	.rodata
	.align	3
.LC2:
	.string	"\n"
	.text
	.align	2
	.global	_Z11reportErrorPKc
	.type	_Z11reportErrorPKc, %function
_Z11reportErrorPKc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 24]
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	bl	abort
	.size	_Z11reportErrorPKc, .-_Z11reportErrorPKc
	.section	.rodata
	.align	3
.LC3:
	.string	"at line "
	.align	3
.LC4:
	.string	", file \""
	.align	3
.LC5:
	.string	"\", function \""
	.align	3
.LC6:
	.string	"\", fails\n\t \""
	.align	3
.LC7:
	.string	"\"\n"
	.text
	.align	2
	.global	_Z19report_assert_errorPKcmS0_S0_
	.type	_Z19report_assert_errorPKcmS0_S0_, %function
_Z19report_assert_errorPKcmS0_S0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 32]
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 40]
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 24]
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	ldr	x1, [x29, 16]
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	bl	abort
	.size	_Z19report_assert_errorPKcmS0_S0_, .-_Z19report_assert_errorPKcmS0_S0_
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
