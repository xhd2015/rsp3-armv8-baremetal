	.arch armv8.2-a+crc
	.file	"InterruptManager.cpp"
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
	.global	_ZN16InterruptManager4initEPvb7EOIModehh
	.type	_ZN16InterruptManager4initEPvb7EOIModehh, %function
_ZN16InterruptManager4initEPvb7EOIModehh:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	strb	w2, [x29, 31]
	str	w3, [x29, 24]
	strb	w4, [x29, 30]
	strb	w5, [x29, 29]
	str	wzr, [x29, 92]
	mov	w1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb
	mov	w1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb
	mov	w1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb
	mov	w1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	// Start of user assembly
// 2920 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,ID_AA64PFR0_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	lsr	w0, w0, 24
	and	w0, w0, 255
	and	w0, w0, 15
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	b	.L10
.L4:
	ldr	x0, [x29, 32]
	str	x0, [x29, 72]
	add	x0, x29, 56
	ldr	x1, [x29, 72]
	str	x1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	// Start of user assembly
// 278 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr VBAR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 40]
	ldrb	w1, [x29, 29]
	bl	_ZN14GICDistributor4initEh
	str	w0, [x29, 92]
	ldr	w0, [x29, 92]
	cmp	w0, 0
	beq	.L7
	ldr	w0, [x29, 92]
	b	.L10
.L7:
	ldr	x0, [x29, 40]
	add	x0, x0, 16
	ldr	w3, [x29, 24]
	ldrb	w2, [x29, 31]
	ldrb	w1, [x29, 30]
	bl	_ZN15GICCPUInterface4initEhb7EOIMode
	str	w0, [x29, 92]
	ldr	w0, [x29, 92]
	cmp	w0, 0
	beq	.L8
	ldr	w0, [x29, 92]
	b	.L10
.L8:
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldrb	w1, [x29, 29]
	bl	_ZN16GICRedistributor4initEh
	str	w0, [x29, 92]
	ldr	w0, [x29, 92]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [x29, 92]
	b	.L10
.L9:
	ldr	w0, [x29, 92]
.L10:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN16InterruptManager4initEPvb7EOIModehh, .-_ZN16InterruptManager4initEPvb7EOIModehh
	.align	2
	.global	_ZN16InterruptManager16clearAllPendingsEv
	.type	_ZN16InterruptManager16clearAllPendingsEv, %function
_ZN16InterruptManager16clearAllPendingsEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor16clearAllPendingsEv
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	_ZN16GICRedistributor16clearAllPendingsEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16InterruptManager16clearAllPendingsEv, .-_ZN16InterruptManager16clearAllPendingsEv
	.align	2
	.global	_ZN16InterruptManager20disableAllInterruptsEv
	.type	_ZN16InterruptManager20disableAllInterruptsEv, %function
_ZN16InterruptManager20disableAllInterruptsEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor20disableAllInterruptsEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16InterruptManager20disableAllInterruptsEv, .-_ZN16InterruptManager20disableAllInterruptsEv
	.align	2
	.global	_ZN16InterruptManager13readWriteWordEmmi
	.type	_ZN16InterruptManager13readWriteWordEmmi, %function
_ZN16InterruptManager13readWriteWordEmmi:
	sub	sp, sp, #96
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	w3, [sp, 4]
	ldr	w0, [sp, 4]
	cmp	w0, 0
	bne	.L14
	ldr	x0, [sp, 24]
	add	x0, x0, 8
	ldr	x1, [sp, 16]
	str	x0, [sp, 88]
	str	w1, [sp, 84]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldr	w0, [sp, 84]
	str	w0, [sp, 68]
	ldr	x0, [sp, 72]
	ldr	x1, [x0]
	ldr	w0, [sp, 68]
	add	x0, x1, x0
	b	.L17
.L14:
	ldr	x1, [sp, 24]
	ldr	w0, [sp, 4]
	lsl	w0, w0, 2
	mov	w2, w0
	ldr	x0, [sp, 8]
	add	w0, w2, w0
	str	x1, [sp, 56]
	str	w0, [sp, 52]
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	ldr	w0, [sp, 52]
	str	w0, [sp, 36]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	w0, [sp, 36]
	add	x0, x1, x0
	nop
.L17:
	add	sp, sp, 96
	ret
	.size	_ZN16InterruptManager13readWriteWordEmmi, .-_ZN16InterruptManager13readWriteWordEmmi
	.section	.text._ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb,"axG",@progbits,_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb,comdat
	.align	2
	.weak	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb
	.type	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb, %function
_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 184 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,DAIF
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	add	x0, sp, 32
	ldrb	w1, [sp, 7]
	eor	w1, w1, 1
	and	w1, w1, 255
	str	x0, [sp, 88]
	mov	w0, 7
	strb	w0, [sp, 87]
	mov	w0, w1
	strb	w0, [sp, 86]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 71]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 70]
	ldrb	w0, [sp, 86]
	strb	w0, [sp, 69]
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldrb	w2, [sp, 71]
	ldrb	w0, [sp, 70]
	str	x2, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 56]
	mov	w3, w0
	ldr	x0, [sp, 48]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 48]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [sp, 69]
	ldrb	w3, [sp, 70]
	ldrb	w1, [sp, 71]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [sp, 40]
	ldr	x1, [sp, 40]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [sp, 40]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [sp, 71]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	w0, [sp, 32]
	// Start of user assembly
// 194 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr DAIF,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 96
	ret
	.size	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb, .-_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb
	.section	.text._ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb,"axG",@progbits,_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb,comdat
	.align	2
	.weak	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb
	.type	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb, %function
_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 184 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,DAIF
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	add	x0, sp, 32
	ldrb	w1, [sp, 7]
	eor	w1, w1, 1
	and	w1, w1, 255
	str	x0, [sp, 88]
	mov	w0, 6
	strb	w0, [sp, 87]
	mov	w0, w1
	strb	w0, [sp, 86]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 71]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 70]
	ldrb	w0, [sp, 86]
	strb	w0, [sp, 69]
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldrb	w2, [sp, 71]
	ldrb	w0, [sp, 70]
	str	x2, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 56]
	mov	w3, w0
	ldr	x0, [sp, 48]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 48]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [sp, 69]
	ldrb	w3, [sp, 70]
	ldrb	w1, [sp, 71]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [sp, 40]
	ldr	x1, [sp, 40]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [sp, 40]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [sp, 71]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	w0, [sp, 32]
	// Start of user assembly
// 194 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr DAIF,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 96
	ret
	.size	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb, .-_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE6EEEvb
	.section	.text._ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb,"axG",@progbits,_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb,comdat
	.align	2
	.weak	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb
	.type	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb, %function
_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 184 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,DAIF
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	add	x0, sp, 32
	ldrb	w1, [sp, 7]
	eor	w1, w1, 1
	and	w1, w1, 255
	str	x0, [sp, 88]
	mov	w0, 8
	strb	w0, [sp, 87]
	mov	w0, w1
	strb	w0, [sp, 86]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 71]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 70]
	ldrb	w0, [sp, 86]
	strb	w0, [sp, 69]
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldrb	w2, [sp, 71]
	ldrb	w0, [sp, 70]
	str	x2, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 56]
	mov	w3, w0
	ldr	x0, [sp, 48]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 48]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [sp, 69]
	ldrb	w3, [sp, 70]
	ldrb	w1, [sp, 71]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [sp, 40]
	ldr	x1, [sp, 40]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [sp, 40]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [sp, 71]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	w0, [sp, 32]
	// Start of user assembly
// 194 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr DAIF,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 96
	ret
	.size	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb, .-_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE8EEEvb
	.section	.text._ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb,"axG",@progbits,_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb,comdat
	.align	2
	.weak	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb
	.type	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb, %function
_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	// Start of user assembly
// 184 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,DAIF
	
// 0 "" 2
	// End of user assembly
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	add	x0, sp, 32
	ldrb	w1, [sp, 7]
	eor	w1, w1, 1
	and	w1, w1, 255
	str	x0, [sp, 88]
	mov	w0, 9
	strb	w0, [sp, 87]
	mov	w0, w1
	strb	w0, [sp, 86]
	ldr	x0, [sp, 88]
	str	x0, [sp, 72]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 71]
	ldrb	w0, [sp, 87]
	strb	w0, [sp, 70]
	ldrb	w0, [sp, 86]
	strb	w0, [sp, 69]
	ldr	x0, [sp, 72]
	ldr	w1, [x0]
	ldrb	w2, [sp, 71]
	ldrb	w0, [sp, 70]
	str	x2, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 56]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 56]
	mov	w3, w0
	ldr	x0, [sp, 48]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 48]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [sp, 69]
	ldrb	w3, [sp, 70]
	ldrb	w1, [sp, 71]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [sp, 40]
	ldr	x1, [sp, 40]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [sp, 40]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [sp, 71]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [sp, 72]
	str	w1, [x0]
	ldr	w0, [sp, 32]
	// Start of user assembly
// 194 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr DAIF,x0
	
// 0 "" 2
	// End of user assembly
	nop
	add	sp, sp, 96
	ret
	.size	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb, .-_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE9EEEvb
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
