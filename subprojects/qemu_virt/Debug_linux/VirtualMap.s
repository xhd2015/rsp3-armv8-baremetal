	.arch armv8.2-a+crc
	.file	"VirtualMap.cpp"
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
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.text
	.align	2
	.global	_ZN10VirtualMapC2Ev
	.type	_ZN10VirtualMapC2Ev, %function
_ZN10VirtualMapC2Ev:
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
	str	xzr, [x0, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 64
	mov	w1, 48
	bl	_ZN14VirtualAddressC1Eh
	ldr	x0, [x29, 24]
	str	xzr, [x0, 80]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 88]
	ldr	x0, [x29, 24]
	strb	wzr, [x0, 96]
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10VirtualMapC2Ev, .-_ZN10VirtualMapC2Ev
	.global	_ZN10VirtualMapC1Ev
	.set	_ZN10VirtualMapC1Ev,_ZN10VirtualMapC2Ev
	.align	2
	.global	_ZN10VirtualMapC2EmmbPKvm
	.type	_ZN10VirtualMapC2EmmbPKvm, %function
_ZN10VirtualMapC2EmmbPKvm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	strb	w3, [x29, 39]
	str	x4, [x29, 24]
	str	x5, [x29, 16]
	ldr	x0, [x29, 56]
	str	xzr, [x0]
	ldr	x0, [x29, 56]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 56]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 56]
	str	xzr, [x0, 24]
	ldr	x0, [x29, 56]
	add	x0, x0, 64
	ldr	x1, [x29, 24]
	ldr	x2, [x29, 16]
	and	w2, w2, 255
	bl	_ZN14VirtualAddressC1Emh
	ldr	x0, [x29, 48]
	lsl	x0, x0, 12
	mov	x1, x0
	ldr	x0, [x29, 56]
	str	x1, [x0, 80]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 40]
	str	x1, [x0, 88]
	ldr	x0, [x29, 56]
	ldrb	w1, [x29, 39]
	strb	w1, [x0, 96]
	ldr	x0, [x29, 56]
	bl	_ZN10VirtualMap14allocateTablesEv
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN10VirtualMapC2EmmbPKvm, .-_ZN10VirtualMapC2EmmbPKvm
	.global	_ZN10VirtualMapC1EmmbPKvm
	.set	_ZN10VirtualMapC1EmmbPKvm,_ZN10VirtualMapC2EmmbPKvm
	.align	2
	.global	_ZN10VirtualMapD2Ev
	.type	_ZN10VirtualMapD2Ev, %function
_ZN10VirtualMapD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN10VirtualMapD2Ev, .-_ZN10VirtualMapD2Ev
	.global	_ZN10VirtualMapD1Ev
	.set	_ZN10VirtualMapD1Ev,_ZN10VirtualMapD2Ev
	.align	2
	.global	_ZN10VirtualMap5mapL0Ev
	.type	_ZN10VirtualMap5mapL0Ev, %function
_ZN10VirtualMap5mapL0Ev:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	lsr	x0, x0, 12
	str	x0, [x29, 80]
	ldr	x0, [x29, 24]
	add	x0, x0, 64
	mov	w1, 0
	bl	_ZNK14VirtualAddress5indexEh
	uxtw	x0, w0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 88]
.L8:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 32]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	beq	.L9
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [x29, 64]
	str	xzr, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 88]
	add	x1, x1, x0
	ldr	x0, [x29, 72]
	sub	x0, x1, x0
	ldr	x1, [x29, 24]
	ldr	x2, [x1]
	ldr	x1, [x29, 88]
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L8
.L9:
	nop
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN10VirtualMap5mapL0Ev, .-_ZN10VirtualMap5mapL0Ev
	.align	2
	.global	_ZN10VirtualMap5mapL1Ev
	.type	_ZN10VirtualMap5mapL1Ev, %function
_ZN10VirtualMap5mapL1Ev:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	lsr	x0, x0, 12
	str	x0, [x29, 80]
	ldr	x0, [x29, 24]
	add	x0, x0, 64
	mov	w1, 1
	bl	_ZNK14VirtualAddress5indexEh
	uxtw	x0, w0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 88]
.L14:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 40]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	beq	.L15
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [x29, 64]
	str	xzr, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 88]
	add	x1, x1, x0
	ldr	x0, [x29, 72]
	sub	x0, x1, x0
	ldr	x1, [x29, 24]
	ldr	x2, [x1, 8]
	ldr	x1, [x29, 88]
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L14
.L15:
	nop
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN10VirtualMap5mapL1Ev, .-_ZN10VirtualMap5mapL1Ev
	.align	2
	.global	_ZN10VirtualMap5mapL2Ev
	.type	_ZN10VirtualMap5mapL2Ev, %function
_ZN10VirtualMap5mapL2Ev:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	lsr	x0, x0, 12
	str	x0, [x29, 80]
	ldr	x0, [x29, 24]
	add	x0, x0, 64
	mov	w1, 2
	bl	_ZNK14VirtualAddress5indexEh
	uxtw	x0, w0
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 88]
.L20:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	beq	.L21
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [x29, 64]
	str	xzr, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x1, [x29, 80]
	ldr	x0, [x29, 88]
	add	x1, x1, x0
	ldr	x0, [x29, 72]
	sub	x0, x1, x0
	ldr	x1, [x29, 24]
	ldr	x2, [x1, 16]
	ldr	x1, [x29, 88]
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L20
.L21:
	nop
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN10VirtualMap5mapL2Ev, .-_ZN10VirtualMap5mapL2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.align	3
.LC2:
	.string	"descr[i].size() % _D::PAGE_SIZE == 0"
	.align	3
.LC3:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/VirtualMap.cpp"
	.text
	.align	2
	.global	_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE
	.type	_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE, %function
_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE:
	stp	x29, x30, [sp, -416]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 408]
.L29:
	ldr	x0, [x29, 16]
	str	x0, [x29, 344]
	ldr	x0, [x29, 344]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 408]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L24
	ldr	x0, [x29, 16]
	str	x0, [x29, 328]
	ldr	x0, [x29, 408]
	str	x0, [x29, 320]
	ldr	x0, [x29, 328]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 320]
	cmp	x1, x0
	bcc	.L25
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L25:
	ldr	x0, [x29, 328]
	ldr	x2, [x0]
	ldr	x1, [x29, 320]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 336]
	ldr	x0, [x29, 336]
	ldr	x0, [x0, 16]
	and	x0, x0, 4095
	cmp	x0, 0
	beq	.L28
	adrp	x0, .LC2
	add	x2, x0, :lo12:.LC2
	adrp	x0, _ZZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorEE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorEE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 81
	bl	_Z19report_assert_errorPKcmS0_S0_
.L28:
	ldr	x0, [x29, 408]
	add	x0, x0, 1
	str	x0, [x29, 408]
	b	.L29
.L24:
	str	xzr, [x29, 400]
.L37:
	ldr	x0, [x29, 16]
	str	x0, [x29, 312]
	ldr	x0, [x29, 312]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 400]
	cmp	x1, x0
	bcs	.L31
	ldr	x0, [x29, 16]
	str	x0, [x29, 296]
	ldr	x0, [x29, 400]
	str	x0, [x29, 288]
	ldr	x0, [x29, 296]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 288]
	cmp	x1, x0
	bcc	.L32
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L32:
	ldr	x0, [x29, 296]
	ldr	x2, [x0]
	ldr	x1, [x29, 288]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 304]
	ldr	x0, [x29, 304]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L31
	mov	w0, 1
	b	.L35
.L31:
	mov	w0, 0
.L35:
	cmp	w0, 0
	beq	.L36
	ldr	x0, [x29, 400]
	add	x0, x0, 1
	str	x0, [x29, 400]
	b	.L37
.L36:
	ldr	x0, [x29, 16]
	str	x0, [x29, 280]
	ldr	x0, [x29, 280]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 400]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L82
	ldr	x0, [x29, 16]
	str	x0, [x29, 264]
	ldr	x0, [x29, 400]
	str	x0, [x29, 256]
	ldr	x0, [x29, 264]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 256]
	cmp	x1, x0
	bcc	.L41
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L41:
	ldr	x0, [x29, 264]
	ldr	x2, [x0]
	ldr	x1, [x29, 256]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 272]
	ldr	x0, [x29, 272]
	ldr	x0, [x0, 16]
	str	x0, [x29, 392]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 80]
	lsr	x0, x0, 12
	str	x0, [x29, 368]
	ldr	x0, [x29, 24]
	add	x0, x0, 64
	mov	w1, 3
	bl	_ZNK14VirtualAddress5indexEh
	uxtw	x0, w0
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	str	x0, [x29, 384]
.L81:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 56]
	ldr	x1, [x29, 384]
	cmp	x1, x0
	beq	.L22
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	x0, [x29, 200]
	str	xzr, [x29, 192]
	ldr	x0, [x29, 200]
	str	x0, [x29, 184]
	ldr	x0, [x29, 192]
	str	x0, [x29, 176]
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 176]
	str	x1, [x0]
	ldr	x0, [x29, 16]
	str	x0, [x29, 216]
	ldr	x0, [x29, 400]
	str	x0, [x29, 208]
	ldr	x0, [x29, 216]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 208]
	cmp	x1, x0
	bcc	.L46
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L46:
	ldr	x0, [x29, 216]
	ldr	x2, [x0]
	ldr	x1, [x29, 208]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 248]
	ldr	x0, [x29, 248]
	ldrb	w0, [x0]
	and	x0, x0, 255
	str	x0, [x29, 240]
	strb	wzr, [x29, 239]
	mov	w0, 3
	strb	w0, [x29, 238]
	ldrb	w0, [x29, 239]
	ldr	x1, [x29, 240]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 238]
	ldrb	w0, [x29, 239]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 224]
	ldr	x0, [x29, 224]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 224]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	str	w0, [x29, 356]
	ldr	w0, [x29, 356]
	cmp	w0, 3
	beq	.L51
	ldr	w0, [x29, 356]
	cmp	w0, 2
	beq	.L51
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 32
	strb	w1, [x0]
	ldr	x1, [x29, 368]
	ldr	x0, [x29, 384]
	add	x1, x1, x0
	ldr	x0, [x29, 360]
	sub	x0, x1, x0
	ldr	x1, [x29, 24]
	ldr	x2, [x1, 24]
	ldr	x1, [x29, 384]
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 4
	strb	w1, [x0, 1]
	ldr	w0, [x29, 356]
	cmp	w0, 0
	bne	.L52
	ldr	x0, [x29, 16]
	str	x0, [x29, 160]
	ldr	x0, [x29, 400]
	str	x0, [x29, 152]
	ldr	x0, [x29, 160]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 152]
	cmp	x1, x0
	bcc	.L53
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L53:
	ldr	x0, [x29, 160]
	ldr	x2, [x0]
	ldr	x1, [x29, 152]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldrb	w0, [x0]
	and	w0, w0, 32
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L56
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	and	w1, w1, -29
	strb	w1, [x0]
	b	.L58
.L56:
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x1]
	mov	w2, 2
	bfi	w0, w2, 2, 3
	strb	w0, [x1]
	b	.L58
.L52:
	ldr	w0, [x29, 356]
	cmp	w0, 1
	bne	.L58
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x1]
	mov	w2, 1
	bfi	w0, w2, 2, 3
	strb	w0, [x1]
.L58:
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	and	w1, w1, -33
	strb	w1, [x0, 6]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	and	w1, w1, -65
	strb	w1, [x0, 6]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	orr	w1, w1, 16
	strb	w1, [x0, 6]
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 96]
	ldr	x1, [x29, 24]
	ldr	x2, [x1, 24]
	ldr	x1, [x29, 384]
	lsl	x1, x1, 3
	add	x1, x2, x1
	eor	w0, w0, 1
	and	w2, w0, 255
	ldrb	w0, [x1, 1]
	bfi	w0, w2, 3, 1
	strb	w0, [x1, 1]
	strb	wzr, [x29, 383]
	ldr	x0, [x29, 16]
	str	x0, [x29, 136]
	ldr	x0, [x29, 400]
	str	x0, [x29, 128]
	ldr	x0, [x29, 136]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 128]
	cmp	x1, x0
	bcc	.L59
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L59:
	ldr	x0, [x29, 136]
	ldr	x2, [x0]
	ldr	x1, [x29, 128]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	ldrb	w0, [x0]
	and	w0, w0, 16
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L62
	ldrb	w0, [x29, 383]
	orr	w0, w0, 2
	strb	w0, [x29, 383]
.L62:
	ldr	x0, [x29, 16]
	str	x0, [x29, 112]
	ldr	x0, [x29, 400]
	str	x0, [x29, 104]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	bcc	.L63
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L63:
	ldr	x0, [x29, 112]
	ldr	x2, [x0]
	ldr	x1, [x29, 104]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldrb	w0, [x0]
	and	w0, w0, 64
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L66
	ldrb	w0, [x29, 383]
	orr	w0, w0, 1
	strb	w0, [x29, 383]
.L66:
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x29, 383]
	and	w0, w0, 3
	and	w2, w0, 255
	ldrb	w0, [x1]
	bfi	w0, w2, 6, 2
	strb	w0, [x1]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 32
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 384]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x1, 1]
	mov	w2, 2
	bfi	w0, w2, 0, 2
	strb	w0, [x1, 1]
.L51:
	ldr	x0, [x29, 392]
	sub	x0, x0, #4096
	str	x0, [x29, 392]
	ldr	x0, [x29, 392]
	cmp	x0, 0
	bne	.L67
.L75:
	ldr	x0, [x29, 16]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 400]
	cmp	x1, x0
	bcs	.L69
	ldr	x0, [x29, 16]
	str	x0, [x29, 80]
	ldr	x0, [x29, 400]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L70
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L70:
	ldr	x0, [x29, 80]
	ldr	x2, [x0]
	ldr	x1, [x29, 72]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L69
	mov	w0, 1
	b	.L73
.L69:
	mov	w0, 0
.L73:
	cmp	w0, 0
	beq	.L74
	ldr	x0, [x29, 400]
	add	x0, x0, 1
	str	x0, [x29, 400]
	b	.L75
.L74:
	ldr	x0, [x29, 16]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 400]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L83
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 400]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bcc	.L78
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L78:
	ldr	x0, [x29, 48]
	ldr	x2, [x0]
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	str	x0, [x29, 392]
.L67:
	ldr	x0, [x29, 384]
	add	x0, x0, 1
	str	x0, [x29, 384]
	b	.L81
.L82:
	nop
	b	.L22
.L83:
	nop
.L22:
	ldp	x29, x30, [sp], 416
	ret
	.size	_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE, .-_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE
	.section	.rodata
	.align	3
.LC4:
	.string	"p"
	.text
	.align	2
	.global	_ZN10VirtualMap14allocateTablesEv
	.type	_ZN10VirtualMap14allocateTablesEv, %function
_ZN10VirtualMap14allocateTablesEv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 88]
	lsl	x0, x0, 12
	str	x0, [x29, 56]
	str	xzr, [x29, 72]
	str	xzr, [x29, 64]
.L86:
	ldr	x0, [x29, 64]
	cmp	x0, 4
	beq	.L85
	adrp	x0, _ZN23VirtualMemoryDefinition8MAP_SIZEE
	add	x0, x0, :lo12:_ZN23VirtualMemoryDefinition8MAP_SIZEE
	ldr	x1, [x29, 64]
	ldr	x0, [x0, x1, lsl 3]
	mov	x1, x0
	ldr	x0, [x29, 56]
	bl	_Z10alignAheadmm
	mov	x2, x0
	adrp	x0, _ZN23VirtualMemoryDefinition8MAP_SIZEE
	add	x0, x0, :lo12:_ZN23VirtualMemoryDefinition8MAP_SIZEE
	ldr	x1, [x29, 64]
	ldr	x0, [x0, x1, lsl 3]
	udiv	x0, x2, x0
	lsl	x0, x0, 3
	mov	x1, 4096
	bl	_Z10alignAheadmm
	lsr	x0, x0, 12
	str	x0, [x29, 48]
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 48]
	add	x0, x1, x0
	str	x0, [x29, 72]
	ldr	x0, [x29, 48]
	lsl	x0, x0, 12
	lsr	x2, x0, 3
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 64]
	add	x1, x1, 4
	str	x2, [x0, x1, lsl 3]
	ldr	x0, [x29, 64]
	add	x0, x0, 1
	str	x0, [x29, 64]
	b	.L86
.L85:
	ldr	x0, [x29, 72]
	lsl	x1, x0, 12
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	bl	_ZN13MemoryManager10allocateAsIPcEET_mm
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L87
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	adrp	x0, _ZZN10VirtualMap14allocateTablesEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN10VirtualMap14allocateTablesEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 155
	bl	_Z19report_assert_errorPKcmS0_S0_
.L87:
	ldr	x3, [x29, 40]
	ldr	x0, [x29, 72]
	lsl	x0, x0, 12
	mov	x2, x0
	mov	w1, 0
	mov	x0, x3
	bl	memset
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 32]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 40]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0, 24]
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN10VirtualMap14allocateTablesEv, .-_ZN10VirtualMap14allocateTablesEv
	.section	.text._ZN13MemoryManager10allocateAsIPcEET_mm,"axG",@progbits,_ZN13MemoryManager10allocateAsIPcEET_mm,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIPcEET_mm
	.type	_ZN13MemoryManager10allocateAsIPcEET_mm, %function
_ZN13MemoryManager10allocateAsIPcEET_mm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN13MemoryManager8allocateEmm
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN13MemoryManager10allocateAsIPcEET_mm, .-_ZN13MemoryManager10allocateAsIPcEET_mm
	.section	.rodata
	.align	3
	.type	_ZZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorEE19__PRETTY_FUNCTION__, %object
	.size	_ZZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorEE19__PRETTY_FUNCTION__, 62
_ZZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorEE19__PRETTY_FUNCTION__:
	.string	"void VirtualMap::mapL3(const Vector<AddressSpaceDescriptor>&)"
	.align	3
	.type	_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, 107
_ZZNK6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = AddressSpaceDescriptor; size_t = long unsigned int]"
	.align	3
	.type	_ZZN10VirtualMap14allocateTablesEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN10VirtualMap14allocateTablesEvE19__PRETTY_FUNCTION__, 34
_ZZN10VirtualMap14allocateTablesEvE19__PRETTY_FUNCTION__:
	.string	"void VirtualMap::allocateTables()"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
