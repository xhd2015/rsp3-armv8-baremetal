	.arch armv8.2-a+crc
	.file	"SystemFeatures.cpp"
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
	.global	_ZN14SystemFeatures19updatePreconfiguredEv
	.type	_ZN14SystemFeatures19updatePreconfiguredEv, %function
_ZN14SystemFeatures19updatePreconfiguredEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	// Start of user assembly
// 3136 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,ID_AA64MMFR0_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	str	x0, [sp, 56]
	ldrb	w0, [sp, 56]
	and	w0, w0, -16
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	and	w1, w1, -25
	strb	w1, [x0, 1]
	b	.L4
.L3:
	ldrb	w0, [sp, 56]
	and	w0, w0, -16
	and	w0, w0, 255
	cmp	w0, 16
	bne	.L5
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	mov	w2, 1
	bfi	w0, w2, 3, 2
	strb	w0, [x1, 1]
	b	.L4
.L5:
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	orr	w1, w1, 24
	strb	w1, [x0, 1]
.L4:
	ldrb	w0, [sp, 59]
	and	w0, w0, -16
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, eq
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	bfi	w0, w2, 5, 1
	strb	w0, [x1, 1]
	ldrb	w0, [sp, 58]
	and	w0, w0, -16
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, eq
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	bfi	w0, w2, 6, 1
	strb	w0, [x1, 1]
	ldrb	w0, [sp, 59]
	and	w0, w0, 15
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, eq
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	bfi	w0, w2, 7, 1
	strb	w0, [x1, 1]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldr	x2, [x1, 16]
	str	x2, [x0, 16]
	ldr	w1, [x1, 24]
	str	w1, [x0, 24]
	ldrb	w0, [sp, 56]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrh	w0, [x1]
	bfi	w0, w2, 5, 6
	strh	w0, [x1]
	nop
	add	sp, sp, 64
	ret
	.size	_ZN14SystemFeatures19updatePreconfiguredEv, .-_ZN14SystemFeatures19updatePreconfiguredEv
	.section	.rodata
	.align	3
.LC0:
	.word	32
	.word	36
	.word	40
	.word	42
	.word	44
	.word	48
	.word	52
	.text
	.align	2
	.global	_ZNK14SystemFeatures8addrBitsEv
	.type	_ZNK14SystemFeatures8addrBitsEv, %function
_ZNK14SystemFeatures8addrBitsEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0]
	ubfx	x0, x0, 5, 6
	and	w0, w0, 255
	and	x0, x0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures8addrBitsEv, .-_ZNK14SystemFeatures8addrBitsEv
	.align	2
	.global	_ZN14SystemFeatures8addrBitsEm
	.type	_ZN14SystemFeatures8addrBitsEm, %function
_ZN14SystemFeatures8addrBitsEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrh	w0, [x1]
	bfi	w0, w2, 5, 6
	strh	w0, [x1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures8addrBitsEm, .-_ZN14SystemFeatures8addrBitsEm
	.align	2
	.global	_ZNK14SystemFeatures12architectureEv
	.type	_ZNK14SystemFeatures12architectureEv, %function
_ZNK14SystemFeatures12architectureEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 5
	and	w0, w0, 255
	and	x0, x0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures12architectureEv, .-_ZNK14SystemFeatures12architectureEv
	.align	2
	.global	_ZN14SystemFeatures12architectureE12Architecture
	.type	_ZN14SystemFeatures12architectureE12Architecture, %function
_ZN14SystemFeatures12architectureE12Architecture:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	and	w0, w0, 31
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 5
	strb	w0, [x1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures12architectureE12Architecture, .-_ZN14SystemFeatures12architectureE12Architecture
	.align	2
	.global	_ZNK14SystemFeatures8asidBitsEv
	.type	_ZNK14SystemFeatures8asidBitsEv, %function
_ZNK14SystemFeatures8asidBitsEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 3, 2
	and	w0, w0, 255
	add	w0, w0, 1
	lsl	w0, w0, 3
	sxtw	x0, w0
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures8asidBitsEv, .-_ZNK14SystemFeatures8asidBitsEv
	.align	2
	.global	_ZN14SystemFeatures8asidBitsEm
	.type	_ZN14SystemFeatures8asidBitsEm, %function
_ZN14SystemFeatures8asidBitsEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	lsr	x0, x0, 3
	and	w0, w0, 255
	sub	w0, w0, #1
	and	w0, w0, 255
	and	w0, w0, 3
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	bfi	w0, w2, 3, 2
	strb	w0, [x1, 1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures8asidBitsEm, .-_ZN14SystemFeatures8asidBitsEm
	.align	2
	.global	_ZNK14SystemFeatures5coresEv
	.type	_ZNK14SystemFeatures5coresEv, %function
_ZNK14SystemFeatures5coresEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 2]
	and	x0, x0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures5coresEv, .-_ZNK14SystemFeatures5coresEv
	.align	2
	.global	_ZN14SystemFeatures5coresEm
	.type	_ZN14SystemFeatures5coresEm, %function
_ZN14SystemFeatures5coresEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	and	w1, w0, 255
	ldr	x0, [sp, 8]
	strb	w1, [x0, 2]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures5coresEm, .-_ZN14SystemFeatures5coresEm
	.align	2
	.global	_ZNK14SystemFeatures14support4KBPageEv
	.type	_ZNK14SystemFeatures14support4KBPageEv, %function
_ZNK14SystemFeatures14support4KBPageEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	and	w0, w0, 32
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures14support4KBPageEv, .-_ZNK14SystemFeatures14support4KBPageEv
	.align	2
	.global	_ZN14SystemFeatures14support4KBPageEb
	.type	_ZN14SystemFeatures14support4KBPageEb, %function
_ZN14SystemFeatures14support4KBPageEb:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	ldrb	w2, [sp, 7]
	bfi	w0, w2, 5, 1
	strb	w0, [x1, 1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures14support4KBPageEb, .-_ZN14SystemFeatures14support4KBPageEb
	.align	2
	.global	_ZNK14SystemFeatures15support16KBPageEv
	.type	_ZNK14SystemFeatures15support16KBPageEv, %function
_ZNK14SystemFeatures15support16KBPageEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	and	w0, w0, 64
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures15support16KBPageEv, .-_ZNK14SystemFeatures15support16KBPageEv
	.align	2
	.global	_ZN14SystemFeatures15support16KBPageEb
	.type	_ZN14SystemFeatures15support16KBPageEb, %function
_ZN14SystemFeatures15support16KBPageEb:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	ldrb	w2, [sp, 7]
	bfi	w0, w2, 6, 1
	strb	w0, [x1, 1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures15support16KBPageEb, .-_ZN14SystemFeatures15support16KBPageEb
	.align	2
	.global	_ZNK14SystemFeatures15support64KBPageEv
	.type	_ZNK14SystemFeatures15support64KBPageEv, %function
_ZNK14SystemFeatures15support64KBPageEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 1]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures15support64KBPageEv, .-_ZNK14SystemFeatures15support64KBPageEv
	.align	2
	.global	_ZN14SystemFeatures15support64KBPageEb
	.type	_ZN14SystemFeatures15support64KBPageEb, %function
_ZN14SystemFeatures15support64KBPageEb:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 1]
	ldrb	w2, [sp, 7]
	bfi	w0, w2, 7, 1
	strb	w0, [x1, 1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures15support64KBPageEb, .-_ZN14SystemFeatures15support64KBPageEb
	.align	2
	.global	_ZNK14SystemFeatures12asidSelectorEv
	.type	_ZNK14SystemFeatures12asidSelectorEv, %function
_ZNK14SystemFeatures12asidSelectorEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 0, 1
	and	w0, w0, 255
	and	x0, x0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK14SystemFeatures12asidSelectorEv, .-_ZNK14SystemFeatures12asidSelectorEv
	.align	2
	.global	_ZN14SystemFeatures12asidSelectorEm
	.type	_ZN14SystemFeatures12asidSelectorEm, %function
_ZN14SystemFeatures12asidSelectorEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	and	w0, w0, 1
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1, 3]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 3]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN14SystemFeatures12asidSelectorEm, .-_ZN14SystemFeatures12asidSelectorEm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
