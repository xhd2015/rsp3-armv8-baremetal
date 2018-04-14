	.arch armv8.2-a+crc
	.file	"GICRedistributor.cpp"
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
	.global	_ZN16GICRedistributor4initEh
	.type	_ZN16GICRedistributor4initEh, %function
_ZN16GICRedistributor4initEh:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldr	x0, [x29, 24]
	bl	_ZN16GICRedistributor5awakeEv
	mov	w0, -1
	str	w0, [x29, 96]
	add	x0, x29, 48
	ldr	w1, [x29, 96]
	str	w1, [x0]
	ldr	w0, [x29, 48]
	str	w0, [x29, 72]
	ldr	x0, [x29, 24]
	str	x0, [x29, 104]
	mov	w0, 128
	movk	w0, 0x1, lsl 16
	str	w0, [x29, 100]
	ldr	x0, [x29, 104]
	ldr	x1, [x0]
	ldr	w0, [x29, 100]
	add	x0, x1, x0
	str	x0, [x29, 112]
	ldr	w1, [x29, 72]
	ldr	x0, [x29, 112]
	str	w1, [x0]
	mov	w0, -1
	str	w0, [x29, 120]
	add	x0, x29, 40
	ldr	w1, [x29, 120]
	str	w1, [x0]
	ldr	w0, [x29, 40]
	str	w0, [x29, 64]
	ldr	x0, [x29, 24]
	str	x0, [x29, 128]
	mov	w0, 256
	movk	w0, 0x1, lsl 16
	str	w0, [x29, 124]
	ldr	x0, [x29, 128]
	ldr	x1, [x0]
	ldr	w0, [x29, 124]
	add	x0, x1, x0
	str	x0, [x29, 136]
	ldr	w1, [x29, 64]
	ldr	x0, [x29, 136]
	str	w1, [x0]
	str	wzr, [x29, 148]
	add	x0, x29, 32
	ldr	w1, [x29, 148]
	str	w1, [x0]
	ldr	w0, [x29, 32]
	str	w0, [x29, 56]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 56]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 57]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 58]
	ldrb	w0, [x29, 23]
	strb	w0, [x29, 59]
	str	xzr, [x29, 152]
.L9:
	ldr	x0, [x29, 152]
	cmp	x0, 8
	beq	.L7
	ldr	x1, [x29, 24]
	ldr	x2, [x29, 152]
	mov	x0, 16640
	add	x0, x2, x0
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
	b	.L9
.L7:
	mov	w0, 0
	ldp	x29, x30, [sp], 160
	ret
	.size	_ZN16GICRedistributor4initEh, .-_ZN16GICRedistributor4initEh
	.align	2
	.global	_ZN16GICRedistributor5awakeEv
	.type	_ZN16GICRedistributor5awakeEv, %function
_ZN16GICRedistributor5awakeEv:
	sub	sp, sp, #96
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 56]
	mov	w0, 20
	str	w0, [sp, 52]
	ldr	x0, [sp, 56]
	ldr	x1, [x0]
	ldr	w0, [sp, 52]
	add	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	ldr	w0, [x0]
	str	w0, [sp, 20]
	add	x0, sp, 20
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldrb	w0, [sp, 24]
	and	w0, w0, -3
	strb	w0, [sp, 24]
	ldr	x0, [sp, 8]
	str	x0, [sp, 80]
	mov	w0, 20
	str	w0, [sp, 76]
	ldr	x0, [sp, 80]
	ldr	x1, [x0]
	ldr	w0, [sp, 76]
	add	x0, x1, x0
	str	x0, [sp, 88]
	ldr	w1, [sp, 24]
	ldr	x0, [sp, 88]
	str	w1, [x0]
.L18:
	ldr	x0, [sp, 8]
	str	x0, [sp, 32]
	mov	w0, 20
	str	w0, [sp, 28]
	ldr	x0, [sp, 32]
	ldr	x1, [x0]
	ldr	w0, [sp, 28]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	add	x0, sp, 24
	ldrb	w0, [x0]
	and	w0, w0, 4
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	b	.L18
.L19:
	nop
	add	sp, sp, 96
	ret
	.size	_ZN16GICRedistributor5awakeEv, .-_ZN16GICRedistributor5awakeEv
	.align	2
	.global	_ZN16GICRedistributor16clearAllPendingsEv
	.type	_ZN16GICRedistributor16clearAllPendingsEv, %function
_ZN16GICRedistributor16clearAllPendingsEv:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	mov	w0, -1
	str	w0, [sp, 40]
	add	x0, sp, 24
	ldr	w1, [sp, 40]
	str	w1, [x0]
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	ldr	x0, [sp, 8]
	str	x0, [sp, 48]
	mov	w0, 640
	movk	w0, 0x1, lsl 16
	str	w0, [sp, 44]
	ldr	x0, [sp, 48]
	ldr	x1, [x0]
	ldr	w0, [sp, 44]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	w1, [sp, 32]
	ldr	x0, [sp, 56]
	str	w1, [x0]
	nop
	add	sp, sp, 64
	ret
	.size	_ZN16GICRedistributor16clearAllPendingsEv, .-_ZN16GICRedistributor16clearAllPendingsEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
