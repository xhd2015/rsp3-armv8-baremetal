	.arch armv8.2-a+crc
	.file	"GICDistributor.cpp"
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
	.global	_ZN14GICDistributor4initEh
	.type	_ZN14GICDistributor4initEh, %function
_ZN14GICDistributor4initEh:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	mov	w0, -1
	str	w0, [x29, 148]
	add	x0, x29, 32
	ldr	w1, [x29, 148]
	str	w1, [x0]
	ldr	w0, [x29, 32]
	str	w0, [x29, 72]
	str	xzr, [x29, 168]
.L5:
	ldr	x0, [x29, 168]
	cmp	x0, 32
	beq	.L3
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 168]
	add	x0, x0, 32
	lsl	w0, w0, 2
	str	x1, [x29, 128]
	str	w0, [x29, 124]
	ldr	x0, [x29, 128]
	ldr	x1, [x0]
	ldr	w0, [x29, 124]
	add	x0, x1, x0
	str	x0, [x29, 136]
	ldr	w1, [x29, 72]
	ldr	x0, [x29, 136]
	str	w1, [x0]
	ldr	x0, [x29, 168]
	add	x0, x0, 1
	str	x0, [x29, 168]
	b	.L5
.L3:
	str	wzr, [x29, 120]
	add	x0, x29, 40
	ldr	w1, [x29, 120]
	str	w1, [x0]
	ldr	w0, [x29, 40]
	str	w0, [x29, 64]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 64]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 65]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 66]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 67]
	str	xzr, [x29, 160]
.L9:
	ldr	x0, [x29, 160]
	cmp	x0, 255
	beq	.L7
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 160]
	add	x0, x0, 256
	lsl	w0, w0, 2
	str	x1, [x29, 104]
	str	w0, [x29, 100]
	ldr	x0, [x29, 104]
	ldr	x1, [x0]
	ldr	w0, [x29, 100]
	add	x0, x1, x0
	str	x0, [x29, 112]
	ldr	w1, [x29, 64]
	ldr	x0, [x29, 112]
	str	w1, [x0]
	ldr	x0, [x29, 160]
	add	x0, x0, 1
	str	x0, [x29, 160]
	b	.L9
.L7:
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor11enableGroupILi0EEEvb
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor11enableGroupILi1EEEvb
	mov	w0, -1
	str	w0, [x29, 96]
	add	x0, x29, 48
	ldr	w1, [x29, 96]
	str	w1, [x0]
	ldr	w0, [x29, 48]
	str	w0, [x29, 56]
	str	xzr, [x29, 152]
.L13:
	ldr	x0, [x29, 152]
	cmp	x0, 32
	beq	.L11
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 152]
	add	x0, x0, 64
	lsl	w0, w0, 2
	str	x1, [x29, 80]
	str	w0, [x29, 76]
	ldr	x0, [x29, 80]
	ldr	x1, [x0]
	ldr	w0, [x29, 76]
	add	x0, x1, x0
	str	x0, [x29, 88]
	ldr	w1, [x29, 56]
	ldr	x0, [x29, 88]
	str	w1, [x0]
	ldr	x0, [x29, 152]
	add	x0, x0, 1
	str	x0, [x29, 152]
	b	.L13
.L11:
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor11enableGroupILi0EEEvb
	mov	w1, 1
	ldr	x0, [x29, 24]
	bl	_ZN14GICDistributor11enableGroupILi1EEEvb
	mov	w0, 0
	ldp	x29, x30, [sp], 176
	ret
	.size	_ZN14GICDistributor4initEh, .-_ZN14GICDistributor4initEh
	.align	2
	.global	_ZN14GICDistributor11intPriorityEjh
	.type	_ZN14GICDistributor11intPriorityEjh, %function
_ZN14GICDistributor11intPriorityEjh:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	strb	w2, [sp, 3]
	ldr	w0, [sp, 4]
	and	w0, w0, 3
	lsl	w0, w0, 2
	str	w0, [sp, 92]
	ldr	x1, [sp, 8]
	ldr	w0, [sp, 4]
	and	w0, w0, -4
	add	w0, w0, 1024
	str	x1, [sp, 40]
	str	w0, [sp, 36]
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	w0, [sp, 36]
	str	w0, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	x1, [x0]
	ldr	w0, [sp, 20]
	add	x0, x1, x0
	ldr	w1, [sp, 92]
	and	w2, w1, 255
	ldr	w1, [sp, 92]
	and	w1, w1, 255
	add	w1, w1, 7
	and	w1, w1, 255
	str	x0, [sp, 80]
	mov	w0, w2
	strb	w0, [sp, 79]
	mov	w0, w1
	strb	w0, [sp, 78]
	ldrb	w0, [sp, 3]
	strb	w0, [sp, 77]
	ldr	x0, [sp, 80]
	ldr	w1, [x0]
	ldrb	w2, [sp, 79]
	ldrb	w0, [sp, 78]
	str	x2, [sp, 64]
	str	x0, [sp, 56]
	ldr	x0, [sp, 64]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 64]
	mov	w3, w0
	ldr	x0, [sp, 56]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 56]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [sp, 77]
	ldrb	w3, [sp, 78]
	ldrb	w1, [sp, 79]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [sp, 48]
	ldr	x1, [sp, 48]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [sp, 48]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [sp, 79]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [sp, 80]
	str	w1, [x0]
	nop
	add	sp, sp, 96
	ret
	.size	_ZN14GICDistributor11intPriorityEjh, .-_ZN14GICDistributor11intPriorityEjh
	.align	2
	.global	_ZN14GICDistributor16clearAllPendingsEv
	.type	_ZN14GICDistributor16clearAllPendingsEv, %function
_ZN14GICDistributor16clearAllPendingsEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	mov	w0, -1
	str	w0, [sp, 52]
	add	x0, sp, 16
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	str	xzr, [sp, 56]
.L24:
	ldr	x0, [sp, 56]
	cmp	x0, 32
	beq	.L25
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 160
	lsl	w0, w0, 2
	str	x1, [sp, 32]
	str	w0, [sp, 28]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	w0, [sp, 28]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	b	.L24
.L25:
	nop
	add	sp, sp, 64
	ret
	.size	_ZN14GICDistributor16clearAllPendingsEv, .-_ZN14GICDistributor16clearAllPendingsEv
	.align	2
	.global	_ZN14GICDistributor20disableAllInterruptsEv
	.type	_ZN14GICDistributor20disableAllInterruptsEv, %function
_ZN14GICDistributor20disableAllInterruptsEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	mov	w0, -1
	str	w0, [sp, 52]
	add	x0, sp, 16
	ldr	w1, [sp, 52]
	str	w1, [x0]
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	str	xzr, [sp, 56]
.L30:
	ldr	x0, [sp, 56]
	cmp	x0, 32
	beq	.L31
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 56]
	add	x0, x0, 96
	lsl	w0, w0, 2
	str	x1, [sp, 32]
	str	w0, [sp, 28]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	w0, [sp, 28]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	x0, [sp, 40]
	str	w1, [x0]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	b	.L30
.L31:
	nop
	add	sp, sp, 64
	ret
	.size	_ZN14GICDistributor20disableAllInterruptsEv, .-_ZN14GICDistributor20disableAllInterruptsEv
	.section	.text._ZN14GICDistributor11enableGroupILi0EEEvb,"axG",@progbits,_ZN14GICDistributor11enableGroupILi0EEEvb,comdat
	.align	2
	.weak	_ZN14GICDistributor11enableGroupILi0EEEvb
	.type	_ZN14GICDistributor11enableGroupILi0EEEvb, %function
_ZN14GICDistributor11enableGroupILi0EEEvb:
	sub	sp, sp, #80
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	str	x0, [sp, 64]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 64]
	ldr	x1, [x0]
	ldr	w0, [sp, 60]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	add	x0, sp, 28
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldrb	w0, [sp, 32]
	ldrb	w1, [sp, 7]
	bfi	w0, w1, 0, 1
	strb	w0, [sp, 32]
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	w0, [sp, 36]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w1, [sp, 32]
	ldr	x0, [sp, 48]
	str	w1, [x0]
	nop
	add	sp, sp, 80
	ret
	.size	_ZN14GICDistributor11enableGroupILi0EEEvb, .-_ZN14GICDistributor11enableGroupILi0EEEvb
	.section	.text._ZN14GICDistributor11enableGroupILi1EEEvb,"axG",@progbits,_ZN14GICDistributor11enableGroupILi1EEEvb,comdat
	.align	2
	.weak	_ZN14GICDistributor11enableGroupILi1EEEvb
	.type	_ZN14GICDistributor11enableGroupILi1EEEvb, %function
_ZN14GICDistributor11enableGroupILi1EEEvb:
	sub	sp, sp, #80
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x0, [sp, 8]
	str	x0, [sp, 64]
	str	wzr, [sp, 60]
	ldr	x0, [sp, 64]
	ldr	x1, [x0]
	ldr	w0, [sp, 60]
	add	x0, x1, x0
	str	x0, [sp, 72]
	ldr	x0, [sp, 72]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	add	x0, sp, 28
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldrb	w0, [sp, 32]
	ldrb	w1, [sp, 7]
	bfi	w0, w1, 1, 1
	strb	w0, [sp, 32]
	ldr	x0, [sp, 8]
	str	x0, [sp, 40]
	str	wzr, [sp, 36]
	ldr	x0, [sp, 40]
	ldr	x1, [x0]
	ldr	w0, [sp, 36]
	add	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w1, [sp, 32]
	ldr	x0, [sp, 48]
	str	w1, [x0]
	nop
	add	sp, sp, 80
	ret
	.size	_ZN14GICDistributor11enableGroupILi1EEEvb, .-_ZN14GICDistributor11enableGroupILi1EEEvb
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
