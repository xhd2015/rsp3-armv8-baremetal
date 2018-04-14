	.arch armv8.2-a+crc
	.file	"VirtioQueueLayout.cpp"
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
	.text
	.align	2
	.global	_ZNK17VirtioQueueLayout7memSizeEv
	.type	_ZNK17VirtioQueueLayout7memSizeEv, %function
_ZNK17VirtioQueueLayout7memSizeEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	mov	x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, 6
	str	x0, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	_Z10alignAheadmm
	str	x0, [x29, 32]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	lsl	x1, x0, 3
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	add	x0, x0, 6
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNK17VirtioQueueLayout7memSizeEv, .-_ZNK17VirtioQueueLayout7memSizeEv
	.align	2
	.global	_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm
	.type	_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm, %function
_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm:
	sub	sp, sp, #80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	xzr, [sp, 72]
.L8:
	ldr	x0, [sp, 8]
	sub	x0, x0, #1
	ldr	x1, [sp, 72]
	cmp	x1, x0
	beq	.L4
	mov	x3, 1
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	add	x0, x0, 12
	ldrh	w2, [x0]
	and	w1, w3, 65535
	orr	w1, w2, w1
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	sub	x0, x1, x0
	asr	x0, x0, 4
	mov	x2, x0
	ldr	x0, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 64]
	ldr	x0, [sp, 64]
	add	x0, x0, 14
	and	w1, w2, 65535
	strh	w1, [x0]
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L8
.L4:
	mov	x3, -2
	ldr	x0, [sp, 8]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	add	x0, x0, 12
	ldrh	w2, [x0]
	and	w1, w3, 65535
	and	w1, w2, w1
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [sp, 8]
	lsl	x0, x0, 3
	sub	x0, x0, #8
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	add	x0, x0, 14
	strh	wzr, [x0]
	nop
	add	sp, sp, 80
	ret
	.size	_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm, .-_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm
	.align	2
	.global	_ZN17VirtioQueueLayout18allocateDescriptorEv
	.type	_ZN17VirtioQueueLayout18allocateDescriptorEv, %function
_ZN17VirtioQueueLayout18allocateDescriptorEv:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 24]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bne	.L13
	mov	x0, 0
	b	.L14
.L13:
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 32]
	str	x0, [sp, 40]
	str	xzr, [sp, 32]
.L21:
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	ldr	x1, [sp, 32]
	cmp	x1, x0
	beq	.L15
	ldr	x0, [sp, 40]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L16
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L17
.L16:
	mov	w0, 1
	b	.L18
.L17:
	mov	w0, 0
.L18:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L20
	ldr	x0, [sp, 40]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	mov	w1, 1
	str	w1, [x0, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	add	x1, x0, 1
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	ldr	x0, [sp, 40]
	b	.L14
.L20:
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 40]
	add	x0, x0, 16
	str	x0, [sp, 40]
	b	.L21
.L15:
	mov	x0, 0
.L14:
	add	sp, sp, 48
	ret
	.size	_ZN17VirtioQueueLayout18allocateDescriptorEv, .-_ZN17VirtioQueueLayout18allocateDescriptorEv
	.align	2
	.global	_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor
	.type	_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor, %function
_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	str	xzr, [x0]
	ldr	x0, [sp, 24]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 24]
	strh	wzr, [x0, 12]
	ldr	x0, [sp, 24]
	strh	wzr, [x0, 14]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 24]
	sub	x1, x0, #1
	ldr	x0, [sp, 8]
	str	x1, [x0, 24]
	nop
	add	sp, sp, 32
	ret
	.size	_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor, .-_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor
	.align	2
	.global	_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm
	.type	_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm, %function
_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm:
	sub	sp, sp, #80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	ldr	x1, [x0]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	ldr	x1, [sp, 8]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L25
	mov	w0, 0
	b	.L26
.L25:
	str	xzr, [sp, 72]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 32]
	str	x0, [sp, 64]
	str	xzr, [sp, 56]
.L33:
	ldr	x0, [sp, 24]
	ldr	x0, [x0]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	beq	.L27
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 8]
	cmp	x1, x0
	beq	.L27
	ldr	x0, [sp, 64]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L28
	ldr	x0, [sp, 40]
	ldr	w0, [x0, 8]
	cmp	w0, 0
	beq	.L29
.L28:
	mov	w0, 1
	b	.L30
.L29:
	mov	w0, 0
.L30:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L32
	ldr	x0, [sp, 64]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mov	w1, 1
	str	w1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 24]
	add	x1, x0, 1
	ldr	x0, [sp, 24]
	str	x1, [x0, 24]
	ldr	x0, [sp, 72]
	add	x1, x0, 1
	str	x1, [sp, 72]
	lsl	x0, x0, 3
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	x1, [sp, 64]
	str	x1, [x0]
.L32:
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 64]
	add	x0, x0, 16
	str	x0, [sp, 64]
	b	.L33
.L27:
	mov	w0, 1
.L26:
	add	sp, sp, 80
	ret
	.size	_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm, .-_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm
	.align	2
	.global	_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm
	.type	_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm, %function
_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	xzr, [x29, 56]
.L36:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	.L37
	ldr	x0, [x29, 56]
	lsl	x0, x0, 3
	ldr	x1, [x29, 32]
	add	x0, x1, x0
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	_ZN17VirtioQueueLayout20deallocateDescriptorEP21VirtioQueueDescriptor
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L36
.L37:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm, .-_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm
	.align	2
	.global	_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor
	.type	_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor, %function
_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 16]
	ldr	x0, [sp, 16]
	add	x0, x0, 40
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 8]
	add	x0, x0, 2
	ldrh	w0, [x0]
	strh	w0, [sp, 54]
	ldr	x0, [sp]
	ldr	x1, [sp, 8]
	ldr	x1, [x1, 32]
	sub	x0, x0, x1
	asr	x0, x0, 4
	mov	x2, x0
	ldr	x0, [sp, 56]
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	ldr	x0, [x0, 8]
	add	x1, x0, 4
	ldrh	w0, [sp, 54]
	lsl	x0, x0, 1
	add	x0, x1, x0
	and	w1, w2, 65535
	strh	w1, [x0]
	ldrh	w0, [sp, 54]
	add	w0, w0, 1
	sxtw	x0, w0
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x1, x0, x1
	ldr	x0, [sp, 56]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	add	x0, x0, 2
	and	w1, w1, 65535
	strh	w1, [x0]
	nop
	add	sp, sp, 64
	ret
	.size	_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor, .-_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
