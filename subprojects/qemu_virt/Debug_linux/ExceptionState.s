	.arch armv8.2-a+crc
	.file	"ExceptionState.cpp"
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
	.string	"should never be called"
	.text
	.align	2
	.global	_ZN14ExceptionStateC2Ev
	.type	_ZN14ExceptionStateC2Ev, %function
_ZN14ExceptionStateC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 24]
	str	wzr, [x0, 24]
	ldr	x0, [x29, 24]
	ldr	w1, [x0, 28]
	mov	w2, 0
	and	w1, w1, w2
	str	w1, [x0, 28]
	ldr	w1, [x0, 32]
	mov	w2, 0
	and	w1, w1, w2
	str	w1, [x0, 32]
	ldr	x0, [x29, 24]
	ldr	w1, [x0, 36]
	and	w1, w1, -33554432
	str	w1, [x0, 36]
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 39]
	and	w1, w1, -3
	strb	w1, [x0, 39]
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 39]
	and	w1, w1, 3
	strb	w1, [x0, 39]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 40]
	mov	x2, 0
	and	x1, x1, x2
	str	x1, [x0, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	_Z11reportErrorPKc
	.size	_ZN14ExceptionStateC2Ev, .-_ZN14ExceptionStateC2Ev
	.global	_ZN14ExceptionStateC1Ev
	.set	_ZN14ExceptionStateC1Ev,_ZN14ExceptionStateC2Ev
	.align	2
	.global	_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin
	.type	_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin, %function
_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	x3, [sp]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 24]
	ldr	x0, [sp, 24]
	ldr	w1, [x0, 28]
	mov	w2, 0
	and	w1, w1, w2
	str	w1, [x0, 28]
	ldr	w1, [x0, 32]
	mov	w2, 0
	and	w1, w1, w2
	str	w1, [x0, 32]
	ldr	x0, [sp, 24]
	ldr	w1, [x0, 36]
	and	w1, w1, -33554432
	str	w1, [x0, 36]
	ldr	x0, [sp, 24]
	ldrb	w1, [x0, 39]
	and	w1, w1, -3
	strb	w1, [x0, 39]
	ldr	x0, [sp, 24]
	ldrb	w1, [x0, 39]
	and	w1, w1, 3
	strb	w1, [x0, 39]
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 40]
	mov	x2, 0
	and	x1, x1, x2
	str	x1, [x0, 40]
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	str	x0, [sp, 32]
	// Start of user assembly
// 1185 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,SPSR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 32]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 28
	str	x0, [sp, 40]
	// Start of user assembly
// 357 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,ELR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 40]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 36
	str	x0, [sp, 48]
	// Start of user assembly
// 615 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,ESR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 48]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	add	x0, x0, 40
	str	x0, [sp, 56]
	// Start of user assembly
// 879 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,FAR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 56]
	str	x1, [x0]
	nop
	add	sp, sp, 64
	ret
	.size	_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin, .-_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin
	.global	_ZN14ExceptionStateC1EPm13ExceptionType15ExceptionOrigin
	.set	_ZN14ExceptionStateC1EPm13ExceptionType15ExceptionOrigin,_ZN14ExceptionStateC2EPm13ExceptionType15ExceptionOrigin
	.align	2
	.global	_ZN14ExceptionState7restoreEv
	.type	_ZN14ExceptionState7restoreEv, %function
_ZN14ExceptionState7restoreEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 24
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	w0, [x0]
	// Start of user assembly
// 1190 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr SPSR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 8]
	add	x0, x0, 28
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	// Start of user assembly
// 362 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr ELR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN14ExceptionState7restoreEv, .-_ZN14ExceptionState7restoreEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
