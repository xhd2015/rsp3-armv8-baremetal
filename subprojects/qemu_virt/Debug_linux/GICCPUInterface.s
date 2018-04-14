	.arch armv8.2-a+crc
	.file	"GICCPUInterface.cpp"
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
	.align	2
	.type	_ZL18INT_IS_SECURE_GRP1, %object
	.size	_ZL18INT_IS_SECURE_GRP1, 4
_ZL18INT_IS_SECURE_GRP1:
	.word	1020
	.align	2
	.type	_ZL22INT_IS_NON_SECURE_GRP1, %object
	.size	_ZL22INT_IS_NON_SECURE_GRP1, 4
_ZL22INT_IS_NON_SECURE_GRP1:
	.word	1021
	.align	2
	.type	_ZL10INT_LEGACY, %object
	.size	_ZL10INT_LEGACY, 4
_ZL10INT_LEGACY:
	.word	1022
	.align	2
	.type	_ZL21INT_VIRTUAL_MAINTENCE, %object
	.size	_ZL21INT_VIRTUAL_MAINTENCE, 4
_ZL21INT_VIRTUAL_MAINTENCE:
	.word	5
	.align	2
	.type	_ZL13INT_HYP_TIMER, %object
	.size	_ZL13INT_HYP_TIMER, 4
_ZL13INT_HYP_TIMER:
	.word	26
	.align	2
	.type	_ZL17INT_VIRTUAL_TIMER, %object
	.size	_ZL17INT_VIRTUAL_TIMER, 4
_ZL17INT_VIRTUAL_TIMER:
	.word	27
	.align	2
	.type	_ZL15INT_S_PHY_TIMER, %object
	.size	_ZL15INT_S_PHY_TIMER, 4
_ZL15INT_S_PHY_TIMER:
	.word	29
	.align	2
	.type	_ZL16INT_NS_PHY_TIMER, %object
	.size	_ZL16INT_NS_PHY_TIMER, 4
_ZL16INT_NS_PHY_TIMER:
	.word	30
	.align	2
	.type	_ZL12INT_SPURIOUS, %object
	.size	_ZL12INT_SPURIOUS, 4
_ZL12INT_SPURIOUS:
	.word	1023
	.align	2
	.type	_ZL9INT_INPUT, %object
	.size	_ZL9INT_INPUT, 4
_ZL9INT_INPUT:
	.word	33
	.type	_ZL17INT_IDLE_PRIORITY, %object
	.size	_ZL17INT_IDLE_PRIORITY, 1
_ZL17INT_IDLE_PRIORITY:
	.byte	-1
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.align	2
	.global	_ZN15GICCPUInterface4initEhb7EOIMode
	.type	_ZN15GICCPUInterface4initEhb7EOIMode, %function
_ZN15GICCPUInterface4initEhb7EOIMode:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	strb	w2, [x29, 22]
	str	w3, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	// Start of user assembly
// 428 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	mrs x1,s3_0_c12_c12_4
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 32]
	str	w1, [x0]
	ldr	x0, [x29, 24]
	bl	_ZN15GICCPUInterface20enableSystemRegisterEv
	ldrb	w1, [x29, 23]
	ldr	x0, [x29, 24]
	bl	_ZN15GICCPUInterface21lowestAllowedPriorityEh
	ldr	x1, [x29, 24]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 22]
	bfi	w0, w2, 7, 1
	strb	w0, [x1, 1]
	ldr	w0, [x29, 16]
	and	w0, w0, 1
	and	w2, w0, 255
	ldr	x1, [x29, 24]
	ldrb	w0, [x1]
	bfi	w0, w2, 1, 1
	strb	w0, [x1]
	ldr	x0, [x29, 24]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	w0, [x0]
	// Start of user assembly
// 433 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_4,x0
	
// 0 "" 2
	// End of user assembly
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN15GICCPUInterface11enableGroupILi0EEEvb
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN15GICCPUInterface11enableGroupILi1EEEvb
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN15GICCPUInterface4initEhb7EOIMode, .-_ZN15GICCPUInterface4initEhb7EOIMode
	.align	2
	.global	_ZN15GICCPUInterface21lowestAllowedPriorityEh
	.type	_ZN15GICCPUInterface21lowestAllowedPriorityEh, %function
_ZN15GICCPUInterface21lowestAllowedPriorityEh:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	str	wzr, [sp, 28]
	add	x0, sp, 16
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 7]
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 1371 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c4_c6_0,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN15GICCPUInterface21lowestAllowedPriorityEh, .-_ZN15GICCPUInterface21lowestAllowedPriorityEh
	.align	2
	.global	_ZN15GICCPUInterface20enableSystemRegisterEv
	.type	_ZN15GICCPUInterface20enableSystemRegisterEv, %function
_ZN15GICCPUInterface20enableSystemRegisterEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	// Start of user assembly
// 1685 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	mrs x0,s3_0_c12_c12_5
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 24]
	orr	w0, w0, 1
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 1695 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_5,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN15GICCPUInterface20enableSystemRegisterEv, .-_ZN15GICCPUInterface20enableSystemRegisterEv
	.section	.text._ZN15GICCPUInterface11enableGroupILi0EEEvb,"axG",@progbits,_ZN15GICCPUInterface11enableGroupILi0EEEvb,comdat
	.align	2
	.weak	_ZN15GICCPUInterface11enableGroupILi0EEEvb
	.type	_ZN15GICCPUInterface11enableGroupILi0EEEvb, %function
_ZN15GICCPUInterface11enableGroupILi0EEEvb:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	str	wzr, [sp, 28]
	add	x0, sp, 16
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 24]
	ldrb	w1, [sp, 7]
	bfi	w0, w1, 0, 1
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 1125 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_6,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN15GICCPUInterface11enableGroupILi0EEEvb, .-_ZN15GICCPUInterface11enableGroupILi0EEEvb
	.section	.text._ZN15GICCPUInterface11enableGroupILi1EEEvb,"axG",@progbits,_ZN15GICCPUInterface11enableGroupILi1EEEvb,comdat
	.align	2
	.weak	_ZN15GICCPUInterface11enableGroupILi1EEEvb
	.type	_ZN15GICCPUInterface11enableGroupILi1EEEvb, %function
_ZN15GICCPUInterface11enableGroupILi1EEEvb:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	str	wzr, [sp, 28]
	add	x0, sp, 16
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 24]
	ldrb	w1, [sp, 7]
	bfi	w0, w1, 0, 1
	strb	w0, [sp, 24]
	ldr	w0, [sp, 24]
	// Start of user assembly
// 1194 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_7,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 32
	ret
	.size	_ZN15GICCPUInterface11enableGroupILi1EEEvb, .-_ZN15GICCPUInterface11enableGroupILi1EEEvb
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
