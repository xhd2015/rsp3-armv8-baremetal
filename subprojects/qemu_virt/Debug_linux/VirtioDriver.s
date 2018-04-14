	.arch armv8.2-a+crc
	.file	"VirtioDriver.cpp"
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
	.align	3
.LC0:
	.string	"[FATAL] "
	.align	3
.LC1:
	.string	"currently not supporting virtio of no VERION_LEGACY\n"
	.text
	.align	2
	.global	_ZN12VirtioDriver4initEv
	.type	_ZN12VirtioDriver4initEv, %function
_ZN12VirtioDriver4initEv:
	stp	x29, x30, [sp, -368]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 344]
	ldr	x0, [x29, 344]
	str	x0, [x29, 336]
	ldr	x0, [x29, 336]
	ldr	x0, [x0]
	add	x0, x0, 4
	ldr	w0, [x0]
	and	w1, w0, 255
	ldr	x0, [x29, 24]
	strb	w1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	str	x0, [x29, 352]
	ldr	x0, [x29, 352]
	ldr	x0, [x0]
	add	x0, x0, 8
	ldr	w1, [x0]
	ldr	x0, [x29, 24]
	str	w1, [x0, 12]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 12]
	cmp	w0, 0
	beq	.L31
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 8]
	cmp	w0, 1
	beq	.L8
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
	b	.L1
.L8:
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 112
	strb	wzr, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x0, x0, 112
	str	x0, [x29, 120]
	strb	wzr, [x29, 119]
	mov	w0, 1
	str	w0, [x29, 112]
	ldr	x0, [x29, 120]
	str	x0, [x29, 104]
	ldrb	w0, [x29, 119]
	strb	w0, [x29, 103]
	ldrb	w0, [x29, 119]
	strb	w0, [x29, 102]
	ldr	w0, [x29, 112]
	str	w0, [x29, 96]
	ldr	x0, [x29, 104]
	ldrb	w0, [x0]
	and	w1, w0, 255
	ldrb	w2, [x29, 103]
	ldrb	w0, [x29, 102]
	str	x2, [x29, 88]
	str	x0, [x29, 80]
	ldr	x0, [x29, 88]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 88]
	mov	w3, w0
	ldr	x0, [x29, 80]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 80]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [x29, 96]
	ldrb	w3, [x29, 102]
	ldrb	w0, [x29, 103]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 72]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 103]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 104]
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0]
	add	x0, x0, 112
	str	x0, [x29, 192]
	mov	w0, 1
	strb	w0, [x29, 191]
	mov	w0, 1
	str	w0, [x29, 184]
	ldr	x0, [x29, 192]
	str	x0, [x29, 176]
	ldrb	w0, [x29, 191]
	strb	w0, [x29, 175]
	ldrb	w0, [x29, 191]
	strb	w0, [x29, 174]
	ldr	w0, [x29, 184]
	str	w0, [x29, 168]
	ldr	x0, [x29, 176]
	ldrb	w0, [x0]
	and	w1, w0, 255
	ldrb	w2, [x29, 175]
	ldrb	w0, [x29, 174]
	str	x2, [x29, 160]
	str	x0, [x29, 152]
	ldr	x0, [x29, 160]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 160]
	mov	w3, w0
	ldr	x0, [x29, 152]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 152]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [x29, 168]
	ldrb	w3, [x29, 174]
	ldrb	w0, [x29, 175]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 144]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 175]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 176]
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	str	x0, [x29, 200]
	ldr	x0, [x29, 200]
	ldr	x0, [x0]
	add	x0, x0, 20
	str	wzr, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 224]
	ldr	x0, [x29, 224]
	str	x0, [x29, 216]
	ldr	x0, [x29, 216]
	ldr	x0, [x0]
	add	x1, x0, 16
	ldr	x0, [x29, 24]
	str	x0, [x29, 240]
	ldr	x0, [x29, 240]
	str	x0, [x29, 232]
	ldr	x0, [x29, 232]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	w1, [x1]
	str	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	str	x0, [x29, 248]
	ldr	x0, [x29, 248]
	ldr	x0, [x0]
	add	x0, x0, 112
	str	x0, [x29, 312]
	mov	w0, 2
	strb	w0, [x29, 311]
	mov	w0, 1
	str	w0, [x29, 304]
	ldr	x0, [x29, 312]
	str	x0, [x29, 296]
	ldrb	w0, [x29, 311]
	strb	w0, [x29, 295]
	ldrb	w0, [x29, 311]
	strb	w0, [x29, 294]
	ldr	w0, [x29, 304]
	str	w0, [x29, 288]
	ldr	x0, [x29, 296]
	ldrb	w0, [x0]
	and	w1, w0, 255
	ldrb	w2, [x29, 295]
	ldrb	w0, [x29, 294]
	str	x2, [x29, 280]
	str	x0, [x29, 272]
	ldr	x0, [x29, 280]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 280]
	mov	w3, w0
	ldr	x0, [x29, 272]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 272]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrsw	x2, [x29, 288]
	ldrb	w3, [x29, 294]
	ldrb	w0, [x29, 295]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 264]
	ldr	x0, [x29, 264]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 264]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 295]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 296]
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 328]
	ldr	x0, [x29, 328]
	str	x0, [x29, 320]
	ldr	x0, [x29, 320]
	ldr	x0, [x0]
	add	x0, x0, 64
	str	wzr, [x0]
	b	.L1
.L31:
	nop
.L1:
	ldp	x29, x30, [sp], 368
	ret
	.size	_ZN12VirtioDriver4initEv, .-_ZN12VirtioDriver4initEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
