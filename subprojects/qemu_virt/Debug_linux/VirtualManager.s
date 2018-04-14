	.arch armv8.2-a+crc
	.file	"VirtualManager.cpp"
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
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.align	2
	.weak	_ZnwmPv
	.type	_ZnwmPv, %function
_ZnwmPv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.rodata
	.align	3
.LC1:
	.string	"aa64.TGran4 == 0b0000"
	.align	3
.LC2:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualManager.cpp"
	.text
	.align	2
	.global	_ZN14VirtualManagerC2Ev
	.type	_ZN14VirtualManagerC2Ev, %function
_ZN14VirtualManagerC2Ev:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	// Start of user assembly
// 3136 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,ID_AA64MMFR0_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 128]
	ldrb	w0, [x29, 131]
	and	w0, w0, -16
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZN14VirtualManagerC4EvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN14VirtualManagerC4EvE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 19
	bl	_Z19report_assert_errorPKcmS0_S0_
.L5:
	str	xzr, [x29, 144]
	add	x0, x29, 96
	ldr	x1, [x29, 144]
	str	x1, [x0]
	ldr	x0, [x29, 96]
	str	x0, [x29, 120]
	mov	w0, -1
	strb	w0, [x29, 120]
	strb	wzr, [x29, 121]
	mov	w0, -1
	strb	w0, [x29, 122]
	ldr	x0, [x29, 120]
	// Start of user assembly
// 3768 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr MAIR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 32
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	ldrb	w0, [x29, 128]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	lsl	x0, x0, 3
	add	x1, x29, 32
	ldr	x0, [x1, x0]
	cmp	x0, 39
	bls	.L7
	ldr	x0, [x29, 152]
	lsl	x0, x0, 3
	add	x1, x29, 32
	ldr	x0, [x1, x0]
	cmp	x0, 48
	bls	.L8
.L7:
	mov	x0, 2
	str	x0, [x29, 152]
.L8:
	ldr	x0, [x29, 152]
	lsl	x0, x0, 3
	add	x1, x29, 32
	ldr	x1, [x1, x0]
	ldr	x0, [x29, 24]
	str	x1, [x0]
	// Start of user assembly
// 2509 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,TCR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	str	x0, [x29, 112]
	ldrb	w0, [x29, 116]
	and	w0, w0, -65
	strb	w0, [x29, 116]
	ldrb	w0, [x29, 116]
	ubfx	x0, x0, 6, 1
	and	w1, w0, 255
	ldrb	w0, [x29, 116]
	bfi	w0, w1, 5, 1
	strb	w0, [x29, 116]
	ldr	x0, [x29, 152]
	and	w0, w0, 7
	and	w1, w0, 255
	ldrb	w0, [x29, 116]
	bfi	w0, w1, 0, 3
	strb	w0, [x29, 116]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	and	w0, w0, 255
	mov	w1, 64
	sub	w0, w1, w0
	and	w0, w0, 255
	and	w0, w0, 63
	and	w1, w0, 255
	ldrb	w0, [x29, 114]
	bfi	w0, w1, 0, 6
	strb	w0, [x29, 114]
	ldrb	w0, [x29, 114]
	ubfx	x0, x0, 0, 6
	and	w1, w0, 255
	ldrb	w0, [x29, 112]
	bfi	w0, w1, 0, 6
	strb	w0, [x29, 112]
	ldrb	w0, [x29, 114]
	and	w0, w0, -65
	strb	w0, [x29, 114]
	ldrb	w0, [x29, 113]
	and	w0, w0, 63
	strb	w0, [x29, 113]
	ldrb	w0, [x29, 115]
	mov	w1, 2
	bfi	w0, w1, 6, 2
	strb	w0, [x29, 115]
	ldrb	w0, [x29, 115]
	mov	w1, 2
	bfi	w0, w1, 4, 2
	strb	w0, [x29, 115]
	ldrb	w0, [x29, 115]
	ubfx	x0, x0, 4, 2
	and	w1, w0, 255
	ldrb	w0, [x29, 113]
	bfi	w0, w1, 4, 2
	strb	w0, [x29, 113]
	ldrb	w0, [x29, 115]
	mov	w1, 1
	bfi	w0, w1, 0, 2
	strb	w0, [x29, 115]
	ldrb	w0, [x29, 115]
	ubfx	x0, x0, 0, 2
	and	w1, w0, 255
	ldrb	w0, [x29, 113]
	bfi	w0, w1, 0, 2
	strb	w0, [x29, 113]
	ldrb	w0, [x29, 115]
	mov	w1, 1
	bfi	w0, w1, 2, 2
	strb	w0, [x29, 115]
	ldrb	w0, [x29, 115]
	ubfx	x0, x0, 2, 2
	and	w1, w0, 255
	ldrb	w0, [x29, 113]
	bfi	w0, w1, 2, 2
	strb	w0, [x29, 113]
	ldrb	w0, [x29, 114]
	and	w0, w0, 127
	strb	w0, [x29, 114]
	ldrb	w0, [x29, 114]
	ubfx	x0, x0, 7, 1
	and	w1, w0, 255
	ldrb	w0, [x29, 112]
	bfi	w0, w1, 7, 1
	strb	w0, [x29, 112]
	ldr	x0, [x29, 112]
	// Start of user assembly
// 2519 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr TCR_EL1,x0
	
// 0 "" 2
// 151 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	isb 
	
// 0 "" 2
	// End of user assembly
	ldrb	w0, [x29, 114]
	ubfx	x0, x0, 0, 6
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	mov	w1, w0
	mov	w0, 64
	sub	w0, w0, w1
	mov	x1, -1
	lsr	x1, x1, x0
	ldr	x0, [x29, 136]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	lsl	x1, x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	nop
	ldp	x29, x30, [sp], 160
	ret
	.size	_ZN14VirtualManagerC2Ev, .-_ZN14VirtualManagerC2Ev
	.section	.rodata
	.align	3
.LC0:
	.xword	32
	.xword	36
	.xword	40
	.xword	42
	.xword	44
	.xword	48
	.xword	52
	.text
	.global	_ZN14VirtualManagerC1Ev
	.set	_ZN14VirtualManagerC1Ev,_ZN14VirtualManagerC2Ev
	.align	2
	.global	_ZN14VirtualManager9enableMMUEPFvvEPv
	.type	_ZN14VirtualManager9enableMMUEPFvvEPv, %function
_ZN14VirtualManager9enableMMUEPFvvEPv:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	// Start of user assembly
// 4142 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,SCTLR_EL1
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	str	w0, [sp, 56]
	ldrb	w0, [sp, 59]
	and	w0, w0, -3
	strb	w0, [sp, 59]
	ldrb	w0, [sp, 59]
	and	w0, w0, -2
	strb	w0, [sp, 59]
	ldrb	w0, [sp, 58]
	and	w0, w0, -9
	strb	w0, [sp, 58]
	ldrb	w0, [sp, 57]
	orr	w0, w0, 16
	strb	w0, [sp, 57]
	ldrb	w0, [sp, 56]
	and	w0, w0, -9
	strb	w0, [sp, 56]
	ldrb	w0, [sp, 56]
	and	w0, w0, -17
	strb	w0, [sp, 56]
	ldrb	w0, [sp, 56]
	orr	w0, w0, 4
	strb	w0, [sp, 56]
	ldrb	w0, [sp, 56]
	and	w0, w0, -3
	strb	w0, [sp, 56]
	ldrb	w0, [sp, 56]
	orr	w0, w0, 1
	strb	w0, [sp, 56]
	ldr	w0, [sp, 56]
	// Start of user assembly
// 4152 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr SCTLR_EL1,x0
	
// 0 "" 2
// 151 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	isb 
	
// 0 "" 2
// 268 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,VBAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	orr	x1, x1, x0
	ldr	x0, [sp, 48]
	bfi	x0, x1, 0, 64
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	// Start of user assembly
// 278 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr VBAR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [sp, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	orr	x0, x1, x0
	ldr	x1, [sp, 24]
	ldr	x2, [x1, 8]
	ldr	x1, [sp, 16]
	orr	x1, x2, x1
	// Start of user assembly
// 95 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualManager.cpp" 1
	mov sp,x0 
	br  x1 
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 64
	ret
	.size	_ZN14VirtualManager9enableMMUEPFvvEPv, .-_ZN14VirtualManager9enableMMUEPFvvEPv
	.align	2
	.global	_ZN14VirtualManager11enableTTBR0Eb
	.type	_ZN14VirtualManager11enableTTBR0Eb, %function
_ZN14VirtualManager11enableTTBR0Eb:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	// Start of user assembly
// 3430 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,TTBR0_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	lsr	x0, x0, 48
	and	w0, w0, 65535
	strh	w0, [sp, 46]
	ldrh	w0, [sp, 46]
	lsl	x0, x0, 48
	// Start of user assembly
// 182 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	tlbi aside1,x0 
	
// 0 "" 2
	// End of user assembly
.L15:
	// Start of user assembly
// 2509 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,TCR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldrb	w0, [sp, 7]
	eor	w0, w0, 1
	and	w1, w0, 255
	ldrb	w0, [sp, 32]
	bfi	w0, w1, 7, 1
	strb	w0, [sp, 32]
	ldr	x0, [sp, 32]
	// Start of user assembly
// 2519 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr TCR_EL1,x0
	
// 0 "" 2
// 151 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	isb 
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 48
	ret
	.size	_ZN14VirtualManager11enableTTBR0Eb, .-_ZN14VirtualManager11enableTTBR0Eb
	.align	2
	.global	_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0
	.type	_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0, %function
_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 56]
	add	x0, x29, 40
	ldr	x1, [x29, 56]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 48]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	lsr	x0, x0, 1
	and	x1, x0, 140737488355327
	ldr	x0, [x29, 48]
	bfi	x0, x1, 1, 47
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	// Start of user assembly
// 3440 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr TTBR0_EL1,x0
	
// 0 "" 2
// 151 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	isb 
	
// 0 "" 2
	// End of user assembly
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0, .-_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0
	.align	2
	.global	_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0
	.type	_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0, %function
_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 56]
	add	x0, x29, 40
	ldr	x1, [x29, 56]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 48]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	lsr	x0, x0, 1
	and	x1, x0, 140737488355327
	ldr	x0, [x29, 48]
	bfi	x0, x1, 1, 47
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	// Start of user assembly
// 3530 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr TTBR1_EL1,x0
	
// 0 "" 2
// 151 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	isb 
	
// 0 "" 2
	// End of user assembly
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0, .-_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0
	.align	2
	.global	_ZN14VirtualManager15translateVAToPAEPKv
	.type	_ZN14VirtualManager15translateVAToPAEPKv, %function
_ZN14VirtualManager15translateVAToPAEPKv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 24]
	ldrb	w0, [sp, 24]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	ldrb	w0, [sp, 30]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x1, x0, 48
	ldr	x0, [sp, 24]
	ubfx	x0, x0, 12, 36
	lsl	x0, x0, 12
	orr	x1, x1, x0
	ldr	x0, [sp]
	str	x0, [sp, 48]
	strb	wzr, [sp, 47]
	mov	w0, 11
	strb	w0, [sp, 46]
	ldrb	w0, [sp, 47]
	ldr	x2, [sp, 48]
	lsr	x2, x2, x0
	ldrb	w3, [sp, 46]
	ldrb	w0, [sp, 47]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 32]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x0, x2, x0
	orr	x0, x1, x0
	b	.L29
.L23:
	mov	x0, 0
.L29:
	add	sp, sp, 64
	ret
	.size	_ZN14VirtualManager15translateVAToPAEPKv, .-_ZN14VirtualManager15translateVAToPAEPKv
	.align	2
	.global	_ZN14VirtualManager15translateVAToPAEm
	.type	_ZN14VirtualManager15translateVAToPAEm, %function
_ZN14VirtualManager15translateVAToPAEm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN14VirtualManager15translateVAToPAEm, .-_ZN14VirtualManager15translateVAToPAEm
	.section	.text._ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.rodata
	.align	3
.LC3:
	.string	"i<_size"
	.align	3
.LC4:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE
	.type	_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE, %function
_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE:
	sub	sp, sp, #960
	stp	x29, x30, [sp]
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 896]
	ldr	x0, [x29, 896]
	ldr	x1, [x0, 16]
	add	x0, x29, 80
	mov	w2, 1
	bl	_ZN6VectorIiEC1Emb
	str	xzr, [x29, 952]
.L40:
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 952]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L37
	ldr	x0, [x29, 952]
	str	x0, [x29, 888]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 888]
	cmp	x1, x0
	bcc	.L38
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L38:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 888]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	x1, [x29, 952]
	str	w1, [x0]
	ldr	x0, [x29, 952]
	add	x0, x0, 1
	str	x0, [x29, 952]
	b	.L40
.L37:
	str	xzr, [x29, 944]
.L65:
	ldr	x0, [x29, 96]
	sub	x0, x0, #1
	ldr	x1, [x29, 944]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	str	xzr, [x29, 936]
.L64:
	ldr	x1, [x29, 96]
	ldr	x0, [x29, 944]
	sub	x0, x1, x0
	sub	x0, x0, #1
	ldr	x1, [x29, 936]
	cmp	x1, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	ldr	x0, [x29, 936]
	str	x0, [x29, 824]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 824]
	cmp	x1, x0
	bcc	.L45
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L45:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 824]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 840]
	str	x0, [x29, 832]
	ldr	x0, [x29, 840]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 832]
	cmp	x1, x0
	bcc	.L47
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L47:
	ldr	x0, [x29, 840]
	ldr	x2, [x0]
	ldr	x1, [x29, 832]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 848]
	ldr	x0, [x29, 848]
	ldr	x2, [x0, 8]
	ldr	x0, [x29, 936]
	add	x0, x0, 1
	str	x0, [x29, 856]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 856]
	cmp	x1, x0
	bcc	.L50
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L50:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 856]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 872]
	str	x0, [x29, 864]
	ldr	x0, [x29, 872]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 864]
	cmp	x1, x0
	bcc	.L52
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L52:
	ldr	x0, [x29, 872]
	ldr	x3, [x0]
	ldr	x1, [x29, 864]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	str	x0, [x29, 880]
	ldr	x0, [x29, 880]
	ldr	x0, [x0, 8]
	cmp	x2, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L55
	ldr	x0, [x29, 936]
	str	x0, [x29, 792]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 792]
	cmp	x1, x0
	bcc	.L56
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L56:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 792]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	str	x0, [x29, 904]
	ldr	x0, [x29, 936]
	add	x0, x0, 1
	str	x0, [x29, 800]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 800]
	cmp	x1, x0
	bcc	.L58
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L58:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 800]
	lsl	x0, x0, 2
	add	x1, x1, x0
	ldr	x0, [x29, 936]
	str	x0, [x29, 808]
	ldr	x0, [x29, 96]
	ldr	x2, [x29, 808]
	cmp	x2, x0
	bcc	.L60
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L60:
	ldr	x2, [x29, 80]
	ldr	x0, [x29, 808]
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [x29, 936]
	add	x0, x0, 1
	str	x0, [x29, 816]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 816]
	cmp	x1, x0
	bcc	.L62
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L62:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 816]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	x1, [x29, 904]
	str	w1, [x0]
.L55:
	ldr	x0, [x29, 936]
	add	x0, x0, 1
	str	x0, [x29, 936]
	b	.L64
.L44:
	ldr	x0, [x29, 944]
	add	x0, x0, 1
	str	x0, [x29, 944]
	b	.L65
.L42:
	ldr	x0, [x29, 40]
	str	x0, [x29, 784]
	ldr	x0, [x29, 784]
	ldr	x0, [x0, 16]
	lsl	x1, x0, 1
	add	x0, x29, 56
	mov	w2, 1
	bl	_ZN6VectorI22AddressSpaceDescriptorEC1Emb
	str	xzr, [x29, 928]
.L125:
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 928]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L68
	str	xzr, [x29, 920]
	ldr	x0, [x29, 928]
	cmp	x0, 0
	beq	.L69
	ldr	x0, [x29, 928]
	sub	x0, x0, #1
	str	x0, [x29, 720]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 720]
	cmp	x1, x0
	bcc	.L70
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L70:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 720]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 736]
	str	x0, [x29, 728]
	ldr	x0, [x29, 736]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 728]
	cmp	x1, x0
	bcc	.L72
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L72:
	ldr	x0, [x29, 736]
	ldr	x2, [x0]
	ldr	x1, [x29, 728]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 744]
	ldr	x0, [x29, 744]
	ldr	x0, [x0, 8]
	mov	x3, x0
	ldr	x0, [x29, 928]
	sub	x0, x0, #1
	str	x0, [x29, 752]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 752]
	cmp	x1, x0
	bcc	.L75
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L75:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 752]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 768]
	str	x0, [x29, 760]
	ldr	x0, [x29, 768]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 760]
	cmp	x1, x0
	bcc	.L77
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L77:
	ldr	x0, [x29, 768]
	ldr	x2, [x0]
	ldr	x1, [x29, 760]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 776]
	ldr	x0, [x29, 776]
	ldr	x0, [x0, 16]
	add	x0, x3, x0
	str	x0, [x29, 920]
.L69:
	ldr	x0, [x29, 928]
	str	x0, [x29, 688]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 688]
	cmp	x1, x0
	bcc	.L80
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L80:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 688]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 704]
	str	x0, [x29, 696]
	ldr	x0, [x29, 704]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 696]
	cmp	x1, x0
	bcc	.L82
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L82:
	ldr	x0, [x29, 704]
	ldr	x2, [x0]
	ldr	x1, [x29, 696]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 712]
	ldr	x0, [x29, 712]
	ldr	x0, [x0, 8]
	mov	x1, x0
	ldr	x0, [x29, 920]
	cmp	x0, x1
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L85
	add	x0, x29, 56
	bl	_ZN6VectorI22AddressSpaceDescriptorE5clearEv
	b	.L68
.L85:
	ldr	x0, [x29, 928]
	str	x0, [x29, 104]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	bcc	.L86
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L86:
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 104]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	sxtw	x0, w0
	ldr	x1, [x29, 40]
	str	x1, [x29, 120]
	str	x0, [x29, 112]
	ldr	x0, [x29, 120]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 112]
	cmp	x1, x0
	bcc	.L88
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L88:
	ldr	x0, [x29, 120]
	ldr	x2, [x0]
	ldr	x1, [x29, 112]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 912]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	str	x0, [x29, 128]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 128]
	cmp	x1, x0
	bcc	.L90
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L90:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 128]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [x29, 912]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0, 8]
	mov	x2, x0
	ldr	x0, [x29, 920]
	sub	x0, x2, x0
	str	x1, [x29, 152]
	str	x0, [x29, 144]
	ldr	x0, [x29, 152]
	ldr	x1, [x29, 144]
	str	x1, [x0, 16]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	str	x0, [x29, 160]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 160]
	cmp	x1, x0
	bcc	.L93
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L93:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 160]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 216]
	str	wzr, [x29, 212]
	ldr	x0, [x29, 216]
	str	x0, [x29, 200]
	strb	wzr, [x29, 199]
	mov	w0, 3
	strb	w0, [x29, 198]
	ldr	w0, [x29, 212]
	str	w0, [x29, 192]
	ldr	x0, [x29, 200]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 199]
	ldrb	w0, [x29, 198]
	str	x2, [x29, 184]
	str	x0, [x29, 176]
	ldr	x0, [x29, 184]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 184]
	mov	w3, w0
	ldr	x0, [x29, 176]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 176]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldr	w0, [x29, 192]
	sxtw	x2, w0
	ldrb	w3, [x29, 198]
	ldrb	w0, [x29, 199]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 168]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 199]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 200]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	str	x0, [x29, 224]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 224]
	cmp	x1, x0
	bcc	.L97
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L97:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 224]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 296]
	strb	wzr, [x29, 295]
	ldr	x0, [x29, 296]
	str	x0, [x29, 280]
	mov	w0, 4
	strb	w0, [x29, 279]
	ldrb	w0, [x29, 295]
	strb	w0, [x29, 278]
	ldr	x0, [x29, 280]
	str	x0, [x29, 264]
	ldrb	w0, [x29, 279]
	strb	w0, [x29, 263]
	ldrb	w0, [x29, 279]
	strb	w0, [x29, 262]
	ldrb	w0, [x29, 278]
	strb	w0, [x29, 261]
	ldr	x0, [x29, 264]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 263]
	ldrb	w0, [x29, 262]
	str	x2, [x29, 248]
	str	x0, [x29, 240]
	ldr	x0, [x29, 248]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 248]
	mov	w3, w0
	ldr	x0, [x29, 240]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 240]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 261]
	ldrb	w3, [x29, 262]
	ldrb	w0, [x29, 263]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 232]
	ldr	x0, [x29, 232]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 232]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 263]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 264]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	str	x0, [x29, 304]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 304]
	cmp	x1, x0
	bcc	.L101
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L101:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 304]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 376]
	mov	w0, 1
	strb	w0, [x29, 375]
	ldr	x0, [x29, 376]
	str	x0, [x29, 360]
	mov	w0, 5
	strb	w0, [x29, 359]
	ldrb	w0, [x29, 375]
	strb	w0, [x29, 358]
	ldr	x0, [x29, 360]
	str	x0, [x29, 344]
	ldrb	w0, [x29, 359]
	strb	w0, [x29, 343]
	ldrb	w0, [x29, 359]
	strb	w0, [x29, 342]
	ldrb	w0, [x29, 358]
	strb	w0, [x29, 341]
	ldr	x0, [x29, 344]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 343]
	ldrb	w0, [x29, 342]
	str	x2, [x29, 328]
	str	x0, [x29, 320]
	ldr	x0, [x29, 328]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 328]
	mov	w3, w0
	ldr	x0, [x29, 320]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 320]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 341]
	ldrb	w3, [x29, 342]
	ldrb	w0, [x29, 343]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 312]
	ldr	x0, [x29, 312]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 312]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 343]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 344]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	add	x0, x0, 1
	str	x0, [x29, 384]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 384]
	cmp	x1, x0
	bcc	.L105
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L105:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 384]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	ldr	x0, [x29, 912]
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	ldr	x0, [x0, 16]
	str	x1, [x29, 408]
	str	x0, [x29, 400]
	ldr	x0, [x29, 408]
	ldr	x1, [x29, 400]
	str	x1, [x0, 16]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	add	x0, x0, 1
	str	x0, [x29, 416]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 416]
	cmp	x1, x0
	bcc	.L108
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L108:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 416]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x29, 912]
	str	x1, [x29, 448]
	ldr	x1, [x29, 448]
	ldrb	w1, [x1]
	and	x1, x1, 255
	str	x1, [x29, 440]
	strb	wzr, [x29, 439]
	mov	w1, 3
	strb	w1, [x29, 438]
	ldrb	w1, [x29, 439]
	ldr	x2, [x29, 440]
	lsr	x2, x2, x1
	ldrb	w3, [x29, 438]
	ldrb	w1, [x29, 439]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 424]
	ldr	x1, [x29, 424]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 424]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x1, x2, x1
	str	x0, [x29, 504]
	str	w1, [x29, 500]
	ldr	x0, [x29, 504]
	str	x0, [x29, 488]
	strb	wzr, [x29, 487]
	mov	w0, 3
	strb	w0, [x29, 486]
	ldr	w0, [x29, 500]
	str	w0, [x29, 480]
	ldr	x0, [x29, 488]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 487]
	ldrb	w0, [x29, 486]
	str	x2, [x29, 472]
	str	x0, [x29, 464]
	ldr	x0, [x29, 472]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 472]
	mov	w3, w0
	ldr	x0, [x29, 464]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 464]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldr	w0, [x29, 480]
	sxtw	x2, w0
	ldrb	w3, [x29, 486]
	ldrb	w0, [x29, 487]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 456]
	ldr	x0, [x29, 456]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 456]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 487]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 488]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	add	x0, x0, 1
	str	x0, [x29, 512]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 512]
	cmp	x1, x0
	bcc	.L115
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L115:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 512]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x29, 912]
	str	x1, [x29, 520]
	ldr	x1, [x29, 520]
	ldrb	w1, [x1]
	and	w1, w1, 16
	cmp	w1, 0
	cset	w1, ne
	and	w1, w1, 255
	str	x0, [x29, 592]
	mov	w0, w1
	strb	w0, [x29, 591]
	ldr	x0, [x29, 592]
	str	x0, [x29, 576]
	mov	w0, 4
	strb	w0, [x29, 575]
	ldrb	w0, [x29, 591]
	strb	w0, [x29, 574]
	ldr	x0, [x29, 576]
	str	x0, [x29, 560]
	ldrb	w0, [x29, 575]
	strb	w0, [x29, 559]
	ldrb	w0, [x29, 575]
	strb	w0, [x29, 558]
	ldrb	w0, [x29, 574]
	strb	w0, [x29, 557]
	ldr	x0, [x29, 560]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 559]
	ldrb	w0, [x29, 558]
	str	x2, [x29, 544]
	str	x0, [x29, 536]
	ldr	x0, [x29, 544]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 544]
	mov	w3, w0
	ldr	x0, [x29, 536]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 536]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 557]
	ldrb	w3, [x29, 558]
	ldrb	w0, [x29, 559]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 528]
	ldr	x0, [x29, 528]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 528]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 559]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 560]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	lsl	x0, x0, 1
	add	x0, x0, 1
	str	x0, [x29, 600]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 600]
	cmp	x1, x0
	bcc	.L120
	adrp	x0, .LC3
	add	x2, x0, :lo12:.LC3
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L120:
	ldr	x2, [x29, 56]
	ldr	x1, [x29, 600]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	x1, [x29, 912]
	str	x1, [x29, 608]
	ldr	x1, [x29, 608]
	ldrb	w1, [x1]
	and	w1, w1, 32
	cmp	w1, 0
	cset	w1, ne
	and	w1, w1, 255
	str	x0, [x29, 680]
	mov	w0, w1
	strb	w0, [x29, 679]
	ldr	x0, [x29, 680]
	str	x0, [x29, 664]
	mov	w0, 5
	strb	w0, [x29, 663]
	ldrb	w0, [x29, 679]
	strb	w0, [x29, 662]
	ldr	x0, [x29, 664]
	str	x0, [x29, 648]
	ldrb	w0, [x29, 663]
	strb	w0, [x29, 647]
	ldrb	w0, [x29, 663]
	strb	w0, [x29, 646]
	ldrb	w0, [x29, 662]
	strb	w0, [x29, 645]
	ldr	x0, [x29, 648]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 647]
	ldrb	w0, [x29, 646]
	str	x2, [x29, 632]
	str	x0, [x29, 624]
	ldr	x0, [x29, 632]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 632]
	mov	w3, w0
	ldr	x0, [x29, 624]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 624]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 645]
	ldrb	w3, [x29, 646]
	ldrb	w0, [x29, 647]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 616]
	ldr	x0, [x29, 616]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 616]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 647]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 648]
	strb	w1, [x0]
	ldr	x0, [x29, 928]
	add	x0, x0, 1
	str	x0, [x29, 928]
	b	.L125
.L68:
	add	x0, x29, 56
	bl	_ZSt4moveIR6VectorI22AddressSpaceDescriptorEEONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorI22AddressSpaceDescriptorEC1EOS1_
	add	x0, x29, 56
	bl	_ZN6VectorI22AddressSpaceDescriptorED1Ev
	add	x0, x29, 80
	bl	_ZN6VectorIiED1Ev
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 960
	ret
	.size	_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE, .-_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE
	.section	.text._ZN6VectorIiEC2Emb,"axG",@progbits,_ZN6VectorIiEC5Emb,comdat
	.align	2
	.weak	_ZN6VectorIiEC2Emb
	.type	_ZN6VectorIiEC2Emb, %function
_ZN6VectorIiEC2Emb:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	strb	w2, [x29, 31]
	ldr	x0, [x29, 40]
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 16]
	ldrb	w0, [x29, 31]
	cmp	w0, 0
	beq	.L128
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 32]
	mov	x0, 8
	cmp	x2, 8
	csel	x1, x1, x0, cs
	ldr	x0, [x29, 40]
	str	x1, [x0, 8]
	b	.L129
.L128:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
.L129:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L137
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	lsl	x1, x0, 2
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIPiEET_m
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L131
	str	xzr, [x29, 56]
.L135:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L132
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L134
	str	wzr, [x0]
.L134:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L135
.L132:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 16]
	b	.L137
.L131:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
.L137:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorIiEC2Emb, .-_ZN6VectorIiEC2Emb
	.weak	_ZN6VectorIiEC1Emb
	.set	_ZN6VectorIiEC1Emb,_ZN6VectorIiEC2Emb
	.section	.text._ZN6VectorIiED2Ev,"axG",@progbits,_ZN6VectorIiED5Ev,comdat
	.align	2
	.weak	_ZN6VectorIiED2Ev
	.type	_ZN6VectorIiED2Ev, %function
_ZN6VectorIiED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L143
	str	xzr, [x29, 40]
.L141:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L140
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L141
.L140:
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
.L143:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIiED2Ev, .-_ZN6VectorIiED2Ev
	.weak	_ZN6VectorIiED1Ev
	.set	_ZN6VectorIiED1Ev,_ZN6VectorIiED2Ev
	.section	.text._ZN6VectorI22AddressSpaceDescriptorEC2Emb,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorEC5Emb,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC2Emb
	.type	_ZN6VectorI22AddressSpaceDescriptorEC2Emb, %function
_ZN6VectorI22AddressSpaceDescriptorEC2Emb:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	strb	w2, [x29, 31]
	ldr	x0, [x29, 40]
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 16]
	ldrb	w0, [x29, 31]
	cmp	w0, 0
	beq	.L145
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 32]
	mov	x0, 8
	cmp	x2, 8
	csel	x1, x1, x0, cs
	ldr	x0, [x29, 40]
	str	x1, [x0, 8]
	b	.L146
.L145:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
.L146:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L154
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L148
	str	xzr, [x29, 56]
.L152:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L149
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L151
	bl	_ZN22AddressSpaceDescriptorC1Ev
.L151:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L152
.L149:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 16]
	b	.L154
.L148:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
.L154:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorEC2Emb, .-_ZN6VectorI22AddressSpaceDescriptorEC2Emb
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC1Emb
	.set	_ZN6VectorI22AddressSpaceDescriptorEC1Emb,_ZN6VectorI22AddressSpaceDescriptorEC2Emb
	.section	.text._ZN6VectorI22AddressSpaceDescriptorED2Ev,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.type	_ZN6VectorI22AddressSpaceDescriptorED2Ev, %function
_ZN6VectorI22AddressSpaceDescriptorED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L160
	str	xzr, [x29, 40]
.L158:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L157
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L158
.L157:
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
.L160:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorED2Ev, .-_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.weak	_ZN6VectorI22AddressSpaceDescriptorED1Ev
	.set	_ZN6VectorI22AddressSpaceDescriptorED1Ev,_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.section	.text._ZN6VectorI22AddressSpaceDescriptorE5clearEv,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorE5clearEv,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorE5clearEv
	.type	_ZN6VectorI22AddressSpaceDescriptorE5clearEv, %function
_ZN6VectorI22AddressSpaceDescriptorE5clearEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	mov	x1, 8
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorE5clearEv, .-_ZN6VectorI22AddressSpaceDescriptorE5clearEv
	.section	.text._ZN6VectorI22AddressSpaceDescriptorEC2EOS1_,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorEC5EOS1_,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_
	.type	_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_, %function
_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	str	xzr, [x0]
	ldr	x0, [sp]
	str	xzr, [x0, 8]
	ldr	x0, [sp]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_, .-_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC1EOS1_
	.set	_ZN6VectorI22AddressSpaceDescriptorEC1EOS1_,_ZN6VectorI22AddressSpaceDescriptorEC2EOS1_
	.section	.text._ZN13MemoryManager10allocateAsIPiEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIPiEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIPiEET_m
	.type	_ZN13MemoryManager10allocateAsIPiEET_m, %function
_ZN13MemoryManager10allocateAsIPiEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIPiEET_m, .-_ZN13MemoryManager10allocateAsIPiEET_m
	.section	.text._ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m
	.type	_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m, %function
_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m, .-_ZN13MemoryManager10allocateAsIP22AddressSpaceDescriptorEET_m
	.section	.text._ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	.type	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm, %function
_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L168
	mov	w0, 1
	b	.L169
.L168:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L170
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	mov	x2, x1
	mov	x1, x4
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L171
.L170:
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L171:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L172
	mov	w0, 0
	b	.L169
.L172:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L169:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm, .-_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	.section	.rodata
	.align	3
	.type	_ZZN14VirtualManagerC4EvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN14VirtualManagerC4EvE19__PRETTY_FUNCTION__, 33
_ZZN14VirtualManagerC4EvE19__PRETTY_FUNCTION__:
	.string	"VirtualManager::VirtualManager()"
	.align	3
	.type	_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__, 76
_ZZN6VectorIiEixEmE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::operator[](size_t) [with T = int; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, 107
_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = AddressSpaceDescriptor; size_t = long unsigned int]"
	.align	3
	.type	_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, 95
_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::operator[](size_t) [with T = AddressSpaceDescriptor; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
