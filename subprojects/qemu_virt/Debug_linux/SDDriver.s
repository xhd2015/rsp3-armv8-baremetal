	.arch armv8.2-a+crc
	.file	"SDDriver.cpp"
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
	.section	.text._ZN12SDCardStatusC2Ej,"axG",@progbits,_ZN12SDCardStatusC5Ej,comdat
	.align	2
	.weak	_ZN12SDCardStatusC2Ej
	.type	_ZN12SDCardStatusC2Ej, %function
_ZN12SDCardStatusC2Ej:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 4]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN12SDCardStatusC2Ej, .-_ZN12SDCardStatusC2Ej
	.weak	_ZN12SDCardStatusC1Ej
	.set	_ZN12SDCardStatusC1Ej,_ZN12SDCardStatusC2Ej
	.section	.rodata
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZN8SDDriver13CommandStatusC2Ei,"axG",@progbits,_ZN8SDDriver13CommandStatusC5Ei,comdat
	.align	2
	.weak	_ZN8SDDriver13CommandStatusC2Ei
	.type	_ZN8SDDriver13CommandStatusC2Ei, %function
_ZN8SDDriver13CommandStatusC2Ei:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 4]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN8SDDriver13CommandStatusC2Ei, .-_ZN8SDDriver13CommandStatusC2Ei
	.weak	_ZN8SDDriver13CommandStatusC1Ei
	.set	_ZN8SDDriver13CommandStatusC1Ei,_ZN8SDDriver13CommandStatusC2Ei
	.section	.text._ZN8SDDriver13CommandStatusC2Ej,"axG",@progbits,_ZN8SDDriver13CommandStatusC5Ej,comdat
	.align	2
	.weak	_ZN8SDDriver13CommandStatusC2Ej
	.type	_ZN8SDDriver13CommandStatusC2Ej, %function
_ZN8SDDriver13CommandStatusC2Ej:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w1, [sp, 4]
	ldr	x0, [sp, 8]
	str	w1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN8SDDriver13CommandStatusC2Ej, .-_ZN8SDDriver13CommandStatusC2Ej
	.weak	_ZN8SDDriver13CommandStatusC1Ej
	.set	_ZN8SDDriver13CommandStatusC1Ej,_ZN8SDDriver13CommandStatusC2Ej
	.section	.text._ZN8SDDriver13CommandStatusC2Eb,"axG",@progbits,_ZN8SDDriver13CommandStatusC5Eb,comdat
	.align	2
	.weak	_ZN8SDDriver13CommandStatusC2Eb
	.type	_ZN8SDDriver13CommandStatusC2Eb, %function
_ZN8SDDriver13CommandStatusC2Eb:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	ldrb	w0, [sp, 7]
	cmp	w0, 0
	beq	.L5
	mov	w0, 0
	b	.L6
.L5:
	mov	w0, 1
.L6:
	ldr	x1, [sp, 8]
	str	w0, [x1]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN8SDDriver13CommandStatusC2Eb, .-_ZN8SDDriver13CommandStatusC2Eb
	.weak	_ZN8SDDriver13CommandStatusC1Eb
	.set	_ZN8SDDriver13CommandStatusC1Eb,_ZN8SDDriver13CommandStatusC2Eb
	.section	.rodata
	.align	3
.LC0:
	.string	"[FATAL] "
	.align	3
.LC1:
	.string	"designed for version 2 \n"
	.align	3
.LC2:
	.string	"not handle csdVersion!=0\n"
	.align	3
.LC3:
	.string	"init for HC_VER_3 currently not supported\n"
	.text
	.align	2
	.global	_ZN8SDDriver4initEv
	.type	_ZN8SDDriver4initEv, %function
_ZN8SDDriver4initEv:
	sub	sp, sp, #624
	stp	x29, x30, [sp]
	add	x29, sp, 0
	str	x0, [x29, 24]
	mov	x0, 19
	and	w1, w0, 65535
	ldr	x0, [x29, 24]
	strh	w1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x0, [x29, 528]
	ldr	x0, [x29, 528]
	str	x0, [x29, 520]
	ldr	x0, [x29, 520]
	ldr	x0, [x0]
	add	x0, x0, 64
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	str	x0, [x29, 552]
	mov	w0, 8
	strb	w0, [x29, 551]
	mov	w0, 15
	strb	w0, [x29, 550]
	ldrb	w0, [x29, 551]
	ldr	x1, [x29, 552]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 550]
	ldrb	w0, [x29, 551]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 536]
	ldr	x0, [x29, 536]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 536]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	mov	w1, w0
	mov	w0, 16960
	movk	w0, 0xf, lsl 16
	mul	w1, w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 568]
	ldr	x0, [x29, 568]
	str	x0, [x29, 560]
	ldr	x0, [x29, 560]
	ldr	x0, [x0]
	add	x0, x0, 36
	ldr	w0, [x0]
	str	w0, [x29, 580]
	ldr	w0, [x29, 580]
	str	w0, [x29, 576]
	mov	x0, 65536
	mov	w1, w0
	ldr	w0, [x29, 576]
	and	w0, w1, w0
	cmp	w0, 0
	cset	w0, ne
	and	w1, w0, 255
	ldr	x0, [x29, 24]
	strb	w1, [x0, 11]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 11]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L18
	mov	w0, 0
	b	.L19
.L18:
	ldr	x0, [x29, 24]
	str	x0, [x29, 488]
	ldr	x0, [x29, 488]
	str	x0, [x29, 480]
	ldr	x0, [x29, 480]
	ldr	x0, [x0]
	add	x0, x0, 254
	ldrh	w0, [x0]
	and	w0, w0, 65535
	and	x0, x0, 65535
	str	x0, [x29, 512]
	strb	wzr, [x29, 511]
	mov	w0, 7
	strb	w0, [x29, 510]
	ldrb	w0, [x29, 511]
	ldr	x1, [x29, 512]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 510]
	ldrb	w0, [x29, 511]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 496]
	ldr	x0, [x29, 496]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 496]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	and	w1, w0, 255
	ldr	x0, [x29, 24]
	strb	w1, [x0, 10]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 10]
	cmp	w0, 2
	bne	.L24
	ldr	x0, [x29, 24]
	str	x0, [x29, 472]
	ldr	x0, [x29, 472]
	str	x0, [x29, 464]
	ldr	x0, [x29, 464]
	ldr	x0, [x0]
	add	x0, x0, 41
	mov	w1, 16
	strb	w1, [x0]
	b	.L27
.L24:
	ldr	x0, [x29, 24]
	str	x0, [x29, 456]
	ldr	x0, [x29, 456]
	str	x0, [x29, 448]
	ldr	x0, [x29, 448]
	ldr	x0, [x0]
	add	x0, x0, 41
	strb	wzr, [x0]
.L27:
	mov	x0, 16960
	movk	x0, 0xf, lsl 16
	str	x0, [x29, 608]
	mov	x0, 16960
	movk	x0, 0xf, lsl 16
	bl	_Z8delayCPUm
	ldr	x0, [x29, 24]
	str	x0, [x29, 440]
	ldr	x0, [x29, 440]
	str	x0, [x29, 432]
	ldr	x0, [x29, 432]
	ldr	x0, [x0]
	add	x0, x0, 47
	mov	w1, 1
	strb	w1, [x0]
.L38:
	ldr	x0, [x29, 24]
	str	x0, [x29, 416]
	ldr	x0, [x29, 416]
	str	x0, [x29, 408]
	ldr	x0, [x29, 408]
	ldr	x0, [x0]
	add	x0, x0, 47
	ldrb	w0, [x0]
	and	w0, w0, 255
	strb	w0, [x29, 431]
	ldrb	w0, [x29, 431]
	strb	w0, [x29, 430]
	mov	x0, 1
	and	w1, w0, 255
	ldrb	w0, [x29, 430]
	and	w0, w1, w0
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L37
	b	.L38
.L37:
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 10]
	cmp	w0, 2
	beq	.L39
	ldr	x0, [x29, 24]
	str	x0, [x29, 400]
	ldr	x0, [x29, 400]
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	ldr	x0, [x0]
	add	x0, x0, 41
	mov	w1, 15
	strb	w1, [x0]
	mov	w1, 6784
	movk	w1, 0x6, lsl 16
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver9clockFreqEj
	str	w0, [x29, 32]
	ldr	w0, [x29, 32]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	b	.L109
.L39:
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
	mov	w0, 0
	b	.L19
.L109:
	mov	w0, 0
	b	.L19
.L44:
	ldr	x0, [x29, 24]
	str	x0, [x29, 304]
	ldr	x0, [x29, 304]
	str	x0, [x29, 296]
	ldr	x0, [x29, 296]
	ldr	x0, [x0]
	add	x0, x0, 40
	mov	w1, 24
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 320]
	ldr	x0, [x29, 320]
	str	x0, [x29, 312]
	ldr	x0, [x29, 312]
	ldr	x0, [x0]
	add	x0, x0, 52
	mov	w1, -257
	strh	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 336]
	ldr	x0, [x29, 336]
	str	x0, [x29, 328]
	ldr	x0, [x29, 328]
	ldr	x0, [x0]
	add	x0, x0, 54
	mov	w1, -3073
	strh	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 352]
	ldr	x0, [x29, 352]
	str	x0, [x29, 344]
	ldr	x0, [x29, 344]
	ldr	x0, [x0]
	add	x0, x0, 56
	strh	wzr, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 368]
	ldr	x0, [x29, 368]
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	ldr	x0, [x0]
	add	x0, x0, 58
	strh	wzr, [x0]
	ldr	x0, [x29, 24]
	mov	w1, 512
	str	w1, [x0, 32]
	ldr	x0, [x29, 24]
	ldr	w1, [x0, 32]
	ldr	x0, [x29, 24]
	str	x0, [x29, 384]
	ldr	x0, [x29, 384]
	str	x0, [x29, 376]
	ldr	x0, [x29, 376]
	ldr	x0, [x0]
	add	x0, x0, 4
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 10]
	cmp	w0, 2
	beq	.L57
	mov	x0, 16960
	movk	x0, 0xf, lsl 16
	bl	_Z8delayCPUm
	mov	w3, 0
	mov	w2, 0
	mov	w1, 0
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 40]
	ldr	w0, [x29, 40]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L59
	mov	w0, 0
	b	.L19
.L59:
	mov	w3, 0
	mov	w2, 426
	mov	w1, 2048
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 48]
	ldr	w0, [x29, 48]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L61
	mov	w0, 0
	b	.L19
.L61:
	ldr	x0, [x29, 24]
	str	x0, [x29, 288]
	ldr	x0, [x29, 288]
	str	x0, [x29, 280]
	ldr	x0, [x29, 280]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	w0, [x0]
	str	w0, [x29, 620]
	ldr	w0, [x29, 620]
	cmp	w0, 426
	bne	.L64
	mov	w0, 2
	b	.L65
.L64:
	mov	w0, 1
.L65:
	ldr	x1, [x29, 24]
	strb	w0, [x1, 37]
	str	wzr, [x29, 620]
.L77:
	ldr	w0, [x29, 620]
	str	w0, [x29, 276]
	ldr	w0, [x29, 276]
	str	w0, [x29, 272]
	ldr	w0, [x29, 272]
	str	w0, [x29, 268]
	mov	x0, 2147483648
	mov	w1, w0
	ldr	w0, [x29, 268]
	and	w0, w1, w0
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L70
	mov	w3, 0
	mov	w2, 0
	mov	w1, 14080
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 56]
	ldr	w0, [x29, 56]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L72
	mov	w0, 0
	b	.L19
.L72:
	mov	w3, 0
	mov	w2, 32768
	movk	w2, 0x40ff, lsl 16
	mov	w1, 43264
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 64]
	ldr	w0, [x29, 64]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L74
	mov	w0, 0
	b	.L19
.L74:
	ldr	x0, [x29, 24]
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	str	x0, [x29, 248]
	ldr	x0, [x29, 248]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	w0, [x0]
	str	w0, [x29, 620]
	b	.L77
.L70:
	mov	w3, 0
	mov	w2, 0
	mov	w1, 512
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 72]
	ldr	w0, [x29, 72]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L79
	mov	w0, 0
	b	.L19
.L79:
	ldr	x0, [x29, 24]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0, 40]
	ldr	x0, [x29, 24]
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	str	x0, [x29, 200]
	ldr	x0, [x29, 200]
	ldr	x0, [x0]
	add	x0, x0, 20
	ldr	x0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0, 44]
	ldr	x0, [x29, 24]
	str	x0, [x29, 224]
	ldr	x0, [x29, 224]
	str	x0, [x29, 216]
	ldr	x0, [x29, 216]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldr	x0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0, 48]
	ldr	x0, [x29, 24]
	str	x0, [x29, 240]
	ldr	x0, [x29, 240]
	str	x0, [x29, 232]
	ldr	x0, [x29, 232]
	ldr	x0, [x0]
	add	x0, x0, 28
	ldr	x0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	str	w1, [x0, 52]
.L93:
	mov	w3, 0
	mov	w2, 0
	mov	w1, 768
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 80]
	ldr	w0, [x29, 80]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L89
	mov	w0, 0
	b	.L19
.L89:
	ldr	x0, [x29, 24]
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	w0, [x0]
	and	w1, w0, -65536
	ldr	x0, [x29, 24]
	str	w1, [x0, 56]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 56]
	cmp	w0, 0
	bne	.L92
	b	.L93
.L92:
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 56]
	mov	w3, 0
	mov	w2, w0
	mov	w1, 2304
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 88]
	ldr	w0, [x29, 88]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L95
	mov	w0, 0
	b	.L19
.L95:
	ldr	x0, [x29, 24]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 60]
	ldr	x0, [x29, 24]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 20
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 64]
	ldr	x0, [x29, 24]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 24
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 68]
	ldr	x0, [x29, 24]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	ldr	x0, [x0]
	add	x0, x0, 28
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 72]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 74]
	and	w0, w0, -64
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L104
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 64]
	ubfx	x0, x0, 7, 3
	and	w0, w0, 255
	add	w0, w0, 2
	mov	w1, 1
	lsl	w0, w1, w0
	sxtw	x0, w0
	str	x0, [x29, 600]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 64]
	ubfx	x0, x0, 22, 12
	and	w0, w0, 65535
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [x29, 600]
	mul	x0, x1, x0
	str	x0, [x29, 592]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 69]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	mov	w1, w0
	mov	w0, 1
	lsl	w0, w0, w1
	sxtw	x0, w0
	str	x0, [x29, 584]
	ldr	x1, [x29, 584]
	ldr	x0, [x29, 592]
	mul	x0, x1, x0
	lsr	x1, x0, 9
	ldr	x0, [x29, 24]
	str	x1, [x0, 80]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 56]
	mov	w3, 0
	mov	w2, w0
	mov	w1, 1792
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 96]
	ldr	w0, [x29, 96]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L108
	b	.L110
.L104:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	w0, 0
	b	.L19
.L110:
	mov	w0, 0
	b	.L19
.L57:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	w0, 0
	b	.L19
.L108:
	mov	w0, 1
.L19:
	ldp	x29, x30, [sp]
	add	sp, sp, 624
	ret
	.size	_ZN8SDDriver4initEv, .-_ZN8SDDriver4initEv
	.align	2
	.global	_ZN8SDDriver15resetControllerEv
	.type	_ZN8SDDriver15resetControllerEv, %function
_ZN8SDDriver15resetControllerEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	ldr	x0, [x0]
	add	x0, x0, 47
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	and	w0, w0, 255
	and	w0, w0, 1
	and	w1, w0, 255
	ldr	x0, [sp, 24]
	strb	w1, [x0]
.L114:
	ldr	x0, [sp, 24]
	ldrb	w0, [x0]
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L115
	b	.L114
.L115:
	nop
	add	sp, sp, 32
	ret
	.size	_ZN8SDDriver15resetControllerEv, .-_ZN8SDDriver15resetControllerEv
	.align	2
	.global	_ZN8SDDriver9clockFreqEj
	.type	_ZN8SDDriver9clockFreqEj, %function
_ZN8SDDriver9clockFreqEj:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	ldr	x0, [x29, 24]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w0, [x0]
	strh	w0, [x29, 170]
	ldrh	w1, [x29, 170]
	mov	w0, -6
	and	w0, w1, w0
	strh	w0, [x29, 170]
	ldr	x0, [x29, 24]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w1, [x29, 170]
	strh	w1, [x0]
	strh	wzr, [x29, 172]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 10]
	cmp	w0, 2
	beq	.L121
	mov	w0, 1
	strh	w0, [x29, 174]
.L124:
	ldrh	w0, [x29, 174]
	cmp	w0, 256
	bhi	.L122
	ldr	x0, [x29, 24]
	ldr	w1, [x0, 24]
	ldrh	w0, [x29, 174]
	udiv	w0, w1, w0
	ldr	w1, [x29, 20]
	cmp	w1, w0
	bcc	.L123
	ldrh	w0, [x29, 174]
	lsr	w0, w0, 1
	strh	w0, [x29, 172]
	b	.L122
.L123:
	ldrh	w0, [x29, 174]
	ubfiz	w0, w0, 1, 15
	strh	w0, [x29, 174]
	b	.L124
.L122:
	ldrh	w0, [x29, 174]
	cmp	w0, 256
	bls	.L121
	add	x0, x29, 40
	mov	w1, 0
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 40]
	b	.L125
.L121:
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 10]
	cmp	w0, 2
	beq	.L134
	ldr	x0, [x29, 24]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w0, [x0]
	strh	w0, [x29, 170]
	ldrh	w0, [x29, 170]
	and	w0, w0, 255
	strh	w0, [x29, 170]
	ldrh	w0, [x29, 172]
	ubfiz	w0, w0, 8, 8
	strh	w0, [x29, 172]
	ldrh	w0, [x29, 172]
	and	w0, w0, -256
	strh	w0, [x29, 172]
	ldrh	w1, [x29, 172]
	ldrh	w0, [x29, 170]
	orr	w0, w1, w0
	and	w0, w0, 65535
	orr	w0, w0, 1
	strh	w0, [x29, 170]
	ldr	x0, [x29, 24]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w1, [x29, 170]
	strh	w1, [x0]
.L134:
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w0, [x0]
	and	w0, w0, 65535
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L133
	b	.L134
.L133:
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w0, [x0]
	strh	w0, [x29, 170]
	ldr	x0, [x29, 24]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	add	x0, x0, 44
	ldrh	w1, [x29, 170]
	orr	w1, w1, 4
	and	w1, w1, 65535
	strh	w1, [x0]
	add	x0, x29, 48
	mov	w1, 1
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 48]
.L125:
	ldp	x29, x30, [sp], 176
	ret
	.size	_ZN8SDDriver9clockFreqEj, .-_ZN8SDDriver9clockFreqEj
	.align	2
	.global	_ZNK8SDDriver12frameCommandEj
	.type	_ZNK8SDDriver12frameCommandEj, %function
_ZNK8SDDriver12frameCommandEj:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	w0, [sp, 4]
	str	w0, [sp, 28]
	ldr	w0, [sp, 4]
	mov	w1, 4352
	cmp	w0, w1
	beq	.L141
	mov	w1, 4352
	cmp	w0, w1
	bhi	.L142
	cmp	w0, 1792
	beq	.L143
	cmp	w0, 1792
	bhi	.L144
	cmp	w0, 768
	beq	.L145
	cmp	w0, 768
	bhi	.L146
	cmp	w0, 256
	beq	.L147
	cmp	w0, 512
	beq	.L148
	cmp	w0, 0
	beq	.L173
	b	.L140
.L146:
	cmp	w0, 1280
	beq	.L150
	cmp	w0, 1536
	beq	.L151
	cmp	w0, 1024
	beq	.L174
	b	.L140
.L144:
	cmp	w0, 2816
	beq	.L153
	cmp	w0, 2816
	bhi	.L154
	cmp	w0, 2304
	beq	.L155
	cmp	w0, 2560
	beq	.L153
	cmp	w0, 2048
	beq	.L156
	b	.L140
.L154:
	cmp	w0, 3328
	beq	.L153
	cmp	w0, 4096
	beq	.L153
	cmp	w0, 3072
	beq	.L153
	b	.L140
.L142:
	mov	w1, 14080
	cmp	w0, w1
	beq	.L157
	mov	w1, 14080
	cmp	w0, w1
	bhi	.L158
	mov	w1, 5888
	cmp	w0, w1
	beq	.L159
	mov	w1, 5888
	cmp	w0, w1
	bhi	.L160
	mov	w1, 4864
	cmp	w0, w1
	beq	.L141
	mov	w1, 5376
	cmp	w0, w1
	beq	.L141
	mov	w1, 4608
	cmp	w0, w1
	beq	.L141
	b	.L140
.L160:
	mov	w1, 6400
	cmp	w0, w1
	beq	.L159
	mov	w1, 13312
	cmp	w0, w1
	beq	.L157
	mov	w1, 6144
	cmp	w0, w1
	beq	.L159
	b	.L140
.L158:
	mov	w1, 38656
	cmp	w0, w1
	beq	.L159
	mov	w1, 38656
	cmp	w0, w1
	bhi	.L161
	mov	w1, 34304
	cmp	w0, w1
	beq	.L162
	mov	w1, 36096
	cmp	w0, w1
	beq	.L153
	mov	w1, 14848
	cmp	w0, w1
	beq	.L175
	b	.L140
.L161:
	mov	w1, 43520
	cmp	w0, w1
	beq	.L164
	mov	w1, 45824
	cmp	w0, w1
	beq	.L165
	mov	w1, 43264
	cmp	w0, w1
	beq	.L166
	b	.L140
.L147:
	ldr	w0, [sp, 28]
	orr	w0, w0, 2
	str	w0, [sp, 28]
	b	.L167
.L148:
	ldr	w1, [sp, 28]
	mov	w0, 9
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L145:
	ldr	w1, [sp, 28]
	mov	w0, 27
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L150:
	ldr	w1, [sp, 28]
	mov	w0, 27
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L151:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 36]
	cmp	w0, 1
	bne	.L168
	ldr	w1, [sp, 28]
	mov	w0, 58
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L168:
	ldr	w1, [sp, 28]
	mov	w0, 27
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L162:
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L143:
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L156:
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 36]
	cmp	w0, 1
	bne	.L170
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L170:
	ldr	w1, [sp, 28]
	mov	w0, 58
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L155:
	ldr	w1, [sp, 28]
	mov	w0, 9
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L153:
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L141:
	ldr	w1, [sp, 28]
	mov	w0, 58
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L159:
	ldr	w1, [sp, 28]
	mov	w0, 58
	orr	w0, w1, w0
	str	w0, [sp, 28]
.L166:
	ldr	w0, [sp, 28]
	orr	w0, w0, 2
	str	w0, [sp, 28]
	b	.L167
.L164:
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L165:
	ldr	w1, [sp, 28]
	mov	w0, 58
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L157:
	ldr	w1, [sp, 28]
	mov	w0, 26
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L140:
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	orr	w0, w1, w0
	str	w0, [sp, 28]
	b	.L167
.L173:
	nop
	b	.L167
.L174:
	nop
	b	.L167
.L175:
	nop
.L167:
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
	.size	_ZNK8SDDriver12frameCommandEj, .-_ZNK8SDDriver12frameCommandEj
	.align	2
	.global	_ZN8SDDriver15transferCommandEjjj
	.type	_ZN8SDDriver15transferCommandEjjj, %function
_ZN8SDDriver15transferCommandEjjj:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	str	w2, [x29, 32]
	str	w3, [x29, 28]
	ldr	x0, [x29, 40]
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 36
	str	x0, [x29, 200]
	add	x0, x29, 48
	mov	w1, 0
	bl	_ZN8SDDriver13CommandStatusC1Ei
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	and	w0, w0, 1
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L178
	add	x0, x29, 56
	mov	w1, 0
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 56]
	str	w0, [x29, 48]
	add	x0, x29, 48
	ldr	w0, [x0]
	b	.L198
.L178:
	ldr	w0, [x29, 28]
	and	w1, w0, 65535
	ldr	x0, [x29, 40]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0]
	add	x0, x0, 6
	str	w1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 46
	mov	w1, 14
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	ldr	x0, [x0]
	add	x0, x0, 8
	ldr	w1, [x29, 32]
	str	w1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, -1
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0]
	add	x0, x0, 50
	mov	w1, -3073
	strh	w1, [x0]
	ldr	w1, [x29, 36]
	ldr	x0, [x29, 40]
	bl	_ZNK8SDDriver12frameCommandEj
	and	w0, w0, 16383
	str	w0, [x29, 196]
	ldr	w1, [x29, 36]
	mov	w0, 5376
	cmp	w1, w0
	beq	.L185
	ldr	w1, [x29, 36]
	mov	w0, 4864
	cmp	w1, w0
	beq	.L185
	ldr	x0, [x29, 200]
	ldr	w0, [x0]
	str	w0, [x29, 192]
	ldr	w0, [x29, 192]
	and	w0, w0, 2
	cmp	w0, 0
	beq	.L185
	ldr	w0, [x29, 196]
	and	w0, w0, 32
	cmp	w0, 0
	beq	.L185
	add	x0, x29, 64
	mov	w1, 0
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 64]
	b	.L198
.L185:
	ldr	w0, [x29, 196]
	lsl	w1, w0, 16
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 8]
	mov	w2, w0
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0]
	add	x0, x0, 12
	orr	w1, w1, w2
	str	w1, [x0]
	ldr	x0, [x29, 40]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 48
	str	x0, [x29, 184]
	strh	wzr, [x29, 182]
.L196:
	ldr	x0, [x29, 184]
	ldrh	w0, [x0]
	strh	w0, [x29, 182]
	ldr	w1, [x29, 36]
	mov	w0, 5376
	cmp	w1, w0
	beq	.L189
	ldr	w1, [x29, 36]
	mov	w0, 4864
	cmp	w1, w0
	bne	.L190
.L189:
	ldr	x0, [x29, 184]
	ldrh	w0, [x0]
	and	w0, w0, 65535
	and	w0, w0, 32
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L199
	ldr	x0, [x29, 184]
	mov	w1, 32
	strh	w1, [x0]
	b	.L199
.L190:
	ldrh	w0, [x29, 182]
	and	w0, w0, 32
	cmp	w0, 0
	beq	.L193
	ldr	x0, [x29, 184]
	ldrh	w0, [x0]
	and	w0, w0, 65535
	mov	w1, w0
	add	x0, x29, 72
	bl	_ZN8SDDriver13CommandStatusC1Ei
	ldr	w0, [x29, 72]
	str	w0, [x29, 48]
	ldr	w0, [x29, 48]
	and	w0, w0, -2
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L195
	add	x0, x29, 80
	mov	w1, 2
	bl	_ZN8SDDriver13CommandStatusC1Ej
	ldr	w0, [x29, 80]
	str	w0, [x29, 48]
.L195:
	ldr	x0, [x29, 184]
	mov	w1, -3073
	strh	w1, [x0]
	add	x0, x29, 88
	mov	w1, 1
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 88]
	str	w0, [x29, 48]
	add	x0, x29, 48
	ldr	w0, [x0]
	b	.L198
.L193:
	ldrh	w0, [x29, 182]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L192
	b	.L196
.L199:
	nop
.L192:
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, 1
	strh	w1, [x0]
	add	x0, x29, 96
	mov	w1, 1
	bl	_ZN8SDDriver13CommandStatusC1Eb
	ldr	w0, [x29, 96]
	str	w0, [x29, 48]
	add	x0, x29, 48
	ldr	w0, [x0]
.L198:
	ldp	x29, x30, [sp], 208
	ret
	.size	_ZN8SDDriver15transferCommandEjjj, .-_ZN8SDDriver15transferCommandEjjj
	.align	2
	.global	_ZN8SDDriver20readSingleBlockNoDMAEmPv
	.type	_ZN8SDDriver20readSingleBlockNoDMAEmPv, %function
_ZN8SDDriver20readSingleBlockNoDMAEmPv:
	stp	x29, x30, [sp, -192]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, -1
	strh	w1, [x0]
	ldr	x0, [x29, 144]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0]
	add	x0, x0, 50
	mov	w1, -3073
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 8]
	strh	w0, [x29, 182]
	mov	x0, 16
	and	w1, w0, 65535
	ldr	x0, [x29, 40]
	strh	w1, [x0, 8]
	ldr	x0, [x29, 32]
	mov	w3, 1
	mov	w2, w0
	mov	w1, 4352
	ldr	x0, [x29, 40]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 48]
	ldr	w0, [x29, 48]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L205
	ldr	x0, [x29, 40]
	ldrh	w1, [x29, 182]
	strh	w1, [x0, 8]
	mov	x0, 0
	b	.L206
.L205:
	mov	x1, 32
	ldr	x0, [x29, 40]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	mov	x0, 4
	str	x0, [x29, 168]
	ldr	x0, [x29, 24]
	str	x0, [x29, 160]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	uxtw	x1, w0
	ldr	x0, [x29, 168]
	udiv	x0, x1, x0
	str	x0, [x29, 152]
	str	xzr, [x29, 184]
.L213:
	ldr	x1, [x29, 184]
	ldr	x0, [x29, 152]
	cmp	x1, x0
	bcs	.L210
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0]
	add	x1, x0, 32
	ldr	x0, [x29, 184]
	lsl	x0, x0, 2
	ldr	x2, [x29, 160]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [x29, 184]
	add	x0, x0, 1
	str	x0, [x29, 184]
	b	.L213
.L210:
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 94]
	ldrh	w0, [x29, 94]
	strh	w0, [x29, 92]
	ldrh	w0, [x29, 92]
	strh	w0, [x29, 90]
	mov	x0, 2
	and	w1, w0, 65535
	ldrh	w0, [x29, 90]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L220
	b	.L210
.L220:
	mov	x1, 2
	ldr	x0, [x29, 40]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	mov	x0, 1
.L206:
	ldp	x29, x30, [sp], 192
	ret
	.size	_ZN8SDDriver20readSingleBlockNoDMAEmPv, .-_ZN8SDDriver20readSingleBlockNoDMAEmPv
	.align	2
	.global	_ZN8SDDriver15readBlocksNoDMAEmmPv
	.type	_ZN8SDDriver15readBlocksNoDMAEmmPv, %function
_ZN8SDDriver15readBlocksNoDMAEmmPv:
	stp	x29, x30, [sp, -240]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, -1
	strh	w1, [x0]
	ldr	x0, [x29, 176]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0]
	add	x0, x0, 50
	mov	w1, -3073
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 8]
	strh	w0, [x29, 214]
	mov	x0, 50
	and	w1, w0, 65535
	ldr	x0, [x29, 40]
	strh	w1, [x0, 8]
	ldr	x0, [x29, 32]
	mov	w1, w0
	ldr	x0, [x29, 24]
	mov	w3, w0
	mov	w2, w1
	mov	w1, 4608
	ldr	x0, [x29, 40]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 56]
	ldr	w0, [x29, 56]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L229
	ldr	x0, [x29, 40]
	ldrh	w1, [x29, 214]
	strh	w1, [x0, 8]
	mov	x0, 0
	b	.L230
.L229:
	mov	x0, 4
	str	x0, [x29, 200]
	ldr	x0, [x29, 16]
	str	x0, [x29, 192]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	uxtw	x1, w0
	ldr	x0, [x29, 200]
	udiv	x0, x1, x0
	str	x0, [x29, 184]
	ldr	x0, [x29, 192]
	str	x0, [x29, 232]
	str	xzr, [x29, 224]
.L247:
	ldr	x1, [x29, 224]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	.L231
	ldr	x0, [x29, 224]
	cmp	x0, 0
	beq	.L232
.L239:
	ldr	x0, [x29, 40]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 158]
	ldrh	w0, [x29, 158]
	strh	w0, [x29, 156]
	ldrh	w0, [x29, 156]
	strh	w0, [x29, 154]
	mov	x0, 32
	and	w1, w0, 65535
	ldrh	w0, [x29, 154]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L232
	b	.L239
.L232:
	mov	x1, 32
	ldr	x0, [x29, 40]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	str	xzr, [x29, 216]
.L246:
	ldr	x1, [x29, 216]
	ldr	x0, [x29, 184]
	cmp	x1, x0
	bcs	.L243
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	w1, [x0]
	ldr	x0, [x29, 232]
	str	w1, [x0]
	ldr	x0, [x29, 216]
	add	x0, x0, 1
	str	x0, [x29, 216]
	ldr	x0, [x29, 232]
	add	x0, x0, 4
	str	x0, [x29, 232]
	b	.L246
.L243:
	ldr	x0, [x29, 224]
	add	x0, x0, 1
	str	x0, [x29, 224]
	b	.L247
.L231:
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 102]
	ldrh	w0, [x29, 102]
	strh	w0, [x29, 100]
	ldrh	w0, [x29, 100]
	strh	w0, [x29, 98]
	mov	x0, 2
	and	w1, w0, 65535
	ldrh	w0, [x29, 98]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L254
	b	.L231
.L254:
	mov	x1, 2
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [x29, 24]
.L230:
	ldp	x29, x30, [sp], 240
	ret
	.size	_ZN8SDDriver15readBlocksNoDMAEmmPv, .-_ZN8SDDriver15readBlocksNoDMAEmmPv
	.align	2
	.global	_ZN8SDDriver21writeSingleBlockNoDMAEmPKv
	.type	_ZN8SDDriver21writeSingleBlockNoDMAEmPKv, %function
_ZN8SDDriver21writeSingleBlockNoDMAEmPKv:
	stp	x29, x30, [sp, -224]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, -1
	strh	w1, [x0]
	ldr	x0, [x29, 176]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0]
	add	x0, x0, 50
	mov	w1, -3073
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 8]
	strh	w0, [x29, 214]
	ldr	x0, [x29, 40]
	strh	wzr, [x0, 8]
	ldr	x0, [x29, 32]
	mov	w3, 1
	mov	w2, w0
	mov	w1, 6144
	ldr	x0, [x29, 40]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 56]
	ldr	w0, [x29, 56]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L262
	ldr	x0, [x29, 40]
	ldrh	w1, [x29, 214]
	strh	w1, [x0, 8]
	mov	x0, 0
	b	.L263
.L262:
	ldr	x0, [x29, 40]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 158]
	ldrh	w0, [x29, 158]
	strh	w0, [x29, 156]
	ldrh	w0, [x29, 156]
	strh	w0, [x29, 154]
	mov	x0, 16
	and	w1, w0, 65535
	ldrh	w0, [x29, 154]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L270
	b	.L262
.L270:
	mov	x1, 16
	ldr	x0, [x29, 40]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	mov	x0, 4
	str	x0, [x29, 200]
	ldr	x0, [x29, 24]
	str	x0, [x29, 192]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	uxtw	x1, w0
	ldr	x0, [x29, 200]
	udiv	x0, x1, x0
	str	x0, [x29, 184]
	str	xzr, [x29, 216]
.L277:
	ldr	x1, [x29, 216]
	ldr	x0, [x29, 184]
	cmp	x1, x0
	bcs	.L274
	ldr	x0, [x29, 216]
	lsl	x0, x0, 2
	ldr	x1, [x29, 192]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [x29, 216]
	add	x0, x0, 1
	str	x0, [x29, 216]
	b	.L277
.L274:
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 102]
	ldrh	w0, [x29, 102]
	strh	w0, [x29, 100]
	ldrh	w0, [x29, 100]
	strh	w0, [x29, 98]
	mov	x0, 2
	and	w1, w0, 65535
	ldrh	w0, [x29, 98]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L284
	b	.L274
.L284:
	mov	x1, 2
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	mov	x0, 1
.L263:
	ldp	x29, x30, [sp], 224
	ret
	.size	_ZN8SDDriver21writeSingleBlockNoDMAEmPKv, .-_ZN8SDDriver21writeSingleBlockNoDMAEmPKv
	.align	2
	.global	_ZN8SDDriver16writeBlocksNoDMAEmmPKv
	.type	_ZN8SDDriver16writeBlocksNoDMAEmmPKv, %function
_ZN8SDDriver16writeBlocksNoDMAEmmPKv:
	stp	x29, x30, [sp, -240]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 48
	mov	w1, -1
	strh	w1, [x0]
	ldr	x0, [x29, 176]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0]
	add	x0, x0, 50
	mov	w1, -3073
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	ldrh	w0, [x0, 8]
	strh	w0, [x29, 214]
	mov	x0, 38
	and	w1, w0, 65535
	ldr	x0, [x29, 40]
	strh	w1, [x0, 8]
	ldr	x0, [x29, 32]
	mov	w1, w0
	ldr	x0, [x29, 24]
	mov	w3, w0
	mov	w2, w1
	mov	w1, 6400
	ldr	x0, [x29, 40]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 56]
	ldr	w0, [x29, 56]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L293
	ldr	x0, [x29, 40]
	ldrh	w1, [x29, 214]
	strh	w1, [x0, 8]
	mov	x0, 0
	b	.L294
.L293:
	mov	x0, 4
	str	x0, [x29, 200]
	ldr	x0, [x29, 16]
	str	x0, [x29, 192]
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 32]
	uxtw	x1, w0
	ldr	x0, [x29, 200]
	udiv	x0, x1, x0
	str	x0, [x29, 184]
	ldr	x0, [x29, 192]
	str	x0, [x29, 232]
	str	xzr, [x29, 224]
.L311:
	ldr	x1, [x29, 224]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	bcs	.L295
.L303:
	ldr	x0, [x29, 40]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 158]
	ldrh	w0, [x29, 158]
	strh	w0, [x29, 156]
	ldrh	w0, [x29, 156]
	strh	w0, [x29, 154]
	mov	x0, 16
	and	w1, w0, 65535
	ldrh	w0, [x29, 154]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L302
	b	.L303
.L302:
	mov	x1, 16
	ldr	x0, [x29, 40]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	str	xzr, [x29, 216]
.L310:
	ldr	x1, [x29, 216]
	ldr	x0, [x29, 184]
	cmp	x1, x0
	bcs	.L307
	ldr	x0, [x29, 40]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x1, [x29, 232]
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [x29, 216]
	add	x0, x0, 1
	str	x0, [x29, 216]
	ldr	x0, [x29, 232]
	add	x0, x0, 4
	str	x0, [x29, 232]
	b	.L310
.L307:
	ldr	x0, [x29, 224]
	add	x0, x0, 1
	str	x0, [x29, 224]
	b	.L311
.L295:
	ldr	x0, [x29, 40]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldrh	w0, [x0]
	and	w0, w0, 65535
	strh	w0, [x29, 102]
	ldrh	w0, [x29, 102]
	strh	w0, [x29, 100]
	ldrh	w0, [x29, 100]
	strh	w0, [x29, 98]
	mov	x0, 2
	and	w1, w0, 65535
	ldrh	w0, [x29, 98]
	and	w0, w1, w0
	and	w0, w0, 65535
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L318
	b	.L295
.L318:
	mov	x1, 2
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	add	x0, x0, 48
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [x29, 24]
.L294:
	ldp	x29, x30, [sp], 240
	ret
	.size	_ZN8SDDriver16writeBlocksNoDMAEmmPKv, .-_ZN8SDDriver16writeBlocksNoDMAEmmPKv
	.align	2
	.global	_ZN8SDDriver10cardStatusEv
	.type	_ZN8SDDriver10cardStatusEv, %function
_ZN8SDDriver10cardStatusEv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 56]
	mov	w3, 0
	mov	w2, w0
	mov	w1, 3328
	ldr	x0, [x29, 24]
	bl	_ZN8SDDriver15transferCommandEjjj
	str	w0, [x29, 40]
	ldr	w0, [x29, 40]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L324
	add	x0, x29, 48
	mov	w1, 0
	bl	_ZN12SDCardStatusC1Ej
	ldr	w0, [x29, 48]
	b	.L325
.L324:
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	w1, [x0]
	add	x0, x29, 56
	bl	_ZN12SDCardStatusC1Ej
	ldr	w0, [x29, 56]
.L325:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN8SDDriver10cardStatusEv, .-_ZN8SDDriver10cardStatusEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
