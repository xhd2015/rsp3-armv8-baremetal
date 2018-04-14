	.arch armv8.2-a+crc
	.file	"GenericTimer.cpp"
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
	.text
	.align	2
	.global	_ZN12GenericTimer15enableTimerWorkEb
	.type	_ZN12GenericTimer15enableTimerWorkEb, %function
_ZN12GenericTimer15enableTimerWorkEb:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 376 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	mrs x0,CNTP_CTL_EL0
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 24]
	ldrb	w1, [sp, 7]
	bfi	w0, w1, 0, 1
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 386 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	msr CNTP_CTL_EL0,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN12GenericTimer15enableTimerWorkEb, .-_ZN12GenericTimer15enableTimerWorkEb
	.align	2
	.global	_ZN12GenericTimer14enableTimerIntEb
	.type	_ZN12GenericTimer14enableTimerIntEb, %function
_ZN12GenericTimer14enableTimerIntEb:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 376 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	mrs x0,CNTP_CTL_EL0
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 7]
	eor	w0, w0, 1
	and	w1, w0, 255
	ldrb	w0, [sp, 24]
	bfi	w0, w1, 1, 1
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 386 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	msr CNTP_CTL_EL0,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN12GenericTimer14enableTimerIntEb, .-_ZN12GenericTimer14enableTimerIntEb
	.align	2
	.global	_ZN12GenericTimer12timerValueMSEj
	.type	_ZN12GenericTimer12timerValueMSEj, %function
_ZN12GenericTimer12timerValueMSEj:
	sub	sp, sp, #80
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	ldr	w0, [sp, 4]
	str	w0, [sp, 52]
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	// Start of user assembly
// 79 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	mrs x0,CNTFRQ_EL0
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	uxtw	x1, w0
	ldr	w0, [sp, 52]
	mul	x0, x1, x0
	lsr	x1, x0, 3
	mov	x0, 63439
	movk	x0, 0xe353, lsl 16
	movk	x0, 0x9ba5, lsl 32
	movk	x0, 0x20c4, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 4
	mov	w1, w0
	ldr	x0, [sp, 8]
	str	x0, [sp, 72]
	str	w1, [sp, 68]
	ldr	w0, [sp, 68]
	str	w0, [sp, 64]
	add	x0, sp, 16
	ldr	w1, [sp, 64]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	// Start of user assembly
// 554 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	msr CNTP_TVAL_EL0,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 80
	ret
	.size	_ZN12GenericTimer12timerValueMSEj, .-_ZN12GenericTimer12timerValueMSEj
	.align	2
	.global	_ZNK12GenericTimer7delayMSEj
	.type	_ZNK12GenericTimer7delayMSEj, %function
_ZNK12GenericTimer7delayMSEj:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	str	x0, [sp, 64]
	ldr	w0, [sp, 4]
	str	w0, [sp, 60]
	ldr	x0, [sp, 64]
	str	x0, [sp, 48]
	// Start of user assembly
// 79 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	mrs x0,CNTFRQ_EL0
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	uxtw	x1, w0
	ldr	w0, [sp, 60]
	mul	x0, x1, x0
	lsr	x1, x0, 3
	mov	x0, 63439
	movk	x0, 0xe353, lsl 16
	movk	x0, 0x9ba5, lsl 32
	movk	x0, 0x20c4, lsl 48
	umulh	x0, x1, x0
	lsr	x0, x0, 4
	str	x0, [sp, 88]
	ldr	x0, [sp, 8]
	str	x0, [sp, 72]
	// Start of user assembly
// 606 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	isb; mrs x0,CNTPCT_EL0
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 80]
.L19:
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	// Start of user assembly
// 606 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	isb; mrs x0,CNTPCT_EL0
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mov	x1, x0
	ldr	x0, [sp, 80]
	sub	x0, x1, x0
	ldr	x1, [sp, 88]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	b	.L19
.L20:
	nop
	add	sp, sp, 96
	ret
	.size	_ZNK12GenericTimer7delayMSEj, .-_ZNK12GenericTimer7delayMSEj
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
