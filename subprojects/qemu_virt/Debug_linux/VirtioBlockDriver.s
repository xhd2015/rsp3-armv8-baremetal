	.arch armv8.2-a+crc
	.file	"VirtioBlockDriver.cpp"
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
	.section	.text._ZN23VirtioQueueAvailableRefC2EPvmttt,"axG",@progbits,_ZN23VirtioQueueAvailableRefC5EPvmttt,comdat
	.align	2
	.weak	_ZN23VirtioQueueAvailableRefC2EPvmttt
	.type	_ZN23VirtioQueueAvailableRefC2EPvmttt, %function
_ZN23VirtioQueueAvailableRefC2EPvmttt:
	sub	sp, sp, #64
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strh	w3, [sp, 6]
	strh	w4, [sp, 4]
	strh	w5, [sp, 2]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldrh	w1, [sp, 6]
	strh	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 48]
	ldr	x0, [sp, 48]
	ldr	x0, [x0, 8]
	add	x0, x0, 2
	ldrh	w1, [sp, 4]
	strh	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 56]
	ldr	x0, [x0]
	add	x0, x0, 2
	lsl	x0, x0, 1
	add	x0, x1, x0
	ldrh	w1, [sp, 2]
	strh	w1, [x0]
	nop
	add	sp, sp, 64
	ret
	.size	_ZN23VirtioQueueAvailableRefC2EPvmttt, .-_ZN23VirtioQueueAvailableRefC2EPvmttt
	.weak	_ZN23VirtioQueueAvailableRefC1EPvmttt
	.set	_ZN23VirtioQueueAvailableRefC1EPvmttt,_ZN23VirtioQueueAvailableRefC2EPvmttt
	.section	.text._ZN18VirtioQueueUsedRefC2EPvmttt,"axG",@progbits,_ZN18VirtioQueueUsedRefC5EPvmttt,comdat
	.align	2
	.weak	_ZN18VirtioQueueUsedRefC2EPvmttt
	.type	_ZN18VirtioQueueUsedRefC2EPvmttt, %function
_ZN18VirtioQueueUsedRefC2EPvmttt:
	sub	sp, sp, #80
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	strh	w3, [sp, 6]
	strh	w4, [sp, 4]
	strh	w5, [sp, 2]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp, 40]
	ldrh	w0, [sp, 6]
	strh	w0, [sp, 38]
	ldr	x0, [sp, 40]
	ldr	x0, [x0, 8]
	ldrh	w1, [sp, 38]
	strh	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 56]
	ldrh	w0, [sp, 4]
	strh	w0, [sp, 54]
	ldr	x0, [sp, 56]
	ldr	x0, [x0, 8]
	add	x0, x0, 2
	ldrh	w1, [sp, 54]
	strh	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldrh	w0, [sp, 2]
	strh	w0, [sp, 70]
	ldr	x0, [sp, 72]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 72]
	ldr	x0, [x0]
	lsl	x0, x0, 3
	add	x0, x0, 4
	add	x0, x1, x0
	ldrh	w1, [sp, 70]
	strh	w1, [x0]
	nop
	add	sp, sp, 80
	ret
	.size	_ZN18VirtioQueueUsedRefC2EPvmttt, .-_ZN18VirtioQueueUsedRefC2EPvmttt
	.weak	_ZN18VirtioQueueUsedRefC1EPvmttt
	.set	_ZN18VirtioQueueUsedRefC1EPvmttt,_ZN18VirtioQueueUsedRefC2EPvmttt
	.section	.text._ZN17VirtioQueueLayoutC2EPvmmb,"axG",@progbits,_ZN17VirtioQueueLayoutC5EPvmmb,comdat
	.align	2
	.weak	_ZN17VirtioQueueLayoutC2EPvmmb
	.type	_ZN17VirtioQueueLayoutC2EPvmmb, %function
_ZN17VirtioQueueLayoutC2EPvmmb:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	x3, [x29, 48]
	strb	w4, [x29, 47]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 56]
	str	x1, [x0]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 48]
	str	x1, [x0, 8]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	str	x1, [x0, 16]
	ldr	x0, [x29, 72]
	str	xzr, [x0, 24]
	ldr	x1, [x29, 64]
	ldr	x0, [x29, 72]
	str	x1, [x0, 32]
	ldr	x0, [x29, 72]
	add	x6, x0, 40
	ldr	x0, [x29, 72]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	w5, 0
	mov	w4, 0
	mov	w3, 0
	ldr	x2, [x29, 56]
	mov	x1, x0
	mov	x0, x6
	bl	_ZN23VirtioQueueAvailableRefC1EPvmttt
	ldr	x0, [x29, 72]
	add	x19, x0, 56
	ldr	x0, [x29, 72]
	add	x0, x0, 40
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 48]
	bl	_Z10alignAheadmm
	mov	w5, 0
	mov	w4, 0
	mov	w3, 0
	ldr	x2, [x29, 56]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN18VirtioQueueUsedRefC1EPvmttt
	ldrb	w0, [x29, 47]
	cmp	w0, 0
	beq	.L9
	ldr	x19, [x29, 64]
	ldr	x0, [x29, 72]
	bl	_ZNK17VirtioQueueLayout7memSizeEv
	mov	x2, x0
	mov	w1, 0
	mov	x0, x19
	bl	memset
.L9:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN17VirtioQueueLayoutC2EPvmmb, .-_ZN17VirtioQueueLayoutC2EPvmmb
	.weak	_ZN17VirtioQueueLayoutC1EPvmmb
	.set	_ZN17VirtioQueueLayoutC1EPvmmb,_ZN17VirtioQueueLayoutC2EPvmmb
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
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.text
	.align	2
	.global	_ZN17VirtioBlockDriverD2Ev
	.type	_ZN17VirtioBlockDriverD2Ev, %function
_ZN17VirtioBlockDriverD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 88]
	cmp	x0, 0
	beq	.L14
	ldr	x0, [x29, 24]
	add	x3, x0, 16
	ldr	x0, [x29, 24]
	add	x0, x0, 88
	mov	x2, 3
	mov	x1, x0
	mov	x0, x3
	bl	_ZN17VirtioQueueLayout21deallocateDescriptorsEPP21VirtioQueueDescriptorm
.L14:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN17VirtioBlockDriverD2Ev, .-_ZN17VirtioBlockDriverD2Ev
	.global	_ZN17VirtioBlockDriverD1Ev
	.set	_ZN17VirtioBlockDriverD1Ev,_ZN17VirtioBlockDriverD2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"pfn64 <= UINT32_MAX"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/io/virtio/VirtioBlockDriver.cpp"
	.text
	.align	2
	.global	_ZN17VirtioBlockDriver4initEPvmmmb
	.type	_ZN17VirtioBlockDriver4initEPvmmmb, %function
_ZN17VirtioBlockDriver4initEPvmmmb:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	str	x4, [x29, 24]
	strb	w5, [x29, 23]
	ldr	x0, [x29, 56]
	bl	_ZN12VirtioDriver4initEv
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x29, 48]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	str	x0, [x29, 152]
	ldr	x1, [x29, 152]
	ldr	x0, [x29, 32]
	udiv	x0, x1, x0
	str	x0, [x29, 144]
	ldr	x1, [x29, 144]
	mov	x0, 4294967295
	cmp	x1, x0
	bls	.L16
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZN17VirtioBlockDriver4initEPvmmmbE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN17VirtioBlockDriver4initEPvmmmbE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 28
	bl	_Z19report_assert_errorPKcmS0_S0_
.L16:
	ldr	x0, [x29, 40]
	cmp	x0, 2
	bhi	.L17
	mov	x0, 3
	str	x0, [x29, 40]
.L17:
	ldr	x0, [x29, 56]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldr	x0, [x0]
	add	x0, x0, 48
	str	wzr, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0]
	add	x0, x0, 56
	ldr	x1, [x29, 40]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0]
	add	x0, x0, 40
	ldr	x1, [x29, 32]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0]
	add	x0, x0, 60
	ldr	x1, [x29, 24]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0]
	add	x0, x0, 64
	ldr	x1, [x29, 144]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x0, 16
	mov	x1, x0
	mov	x0, 72
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L30
	ldrb	w4, [x29, 23]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 40]
	ldr	x1, [x29, 48]
	bl	_ZN17VirtioQueueLayoutC1EPvmmb
.L30:
	nop
	ldp	x29, x30, [sp], 160
	ret
	.size	_ZN17VirtioBlockDriver4initEPvmmmb, .-_ZN17VirtioBlockDriver4initEPvmmmb
	.align	2
	.global	_ZN17VirtioBlockDriver10readSectorEmmPv
	.type	_ZN17VirtioBlockDriver10readSectorEmmPv, %function
_ZN17VirtioBlockDriver10readSectorEmmPv:
	stp	x29, x30, [sp, -224]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	ldr	x0, [x29, 56]
	bl	_ZN17VirtioBlockDriver16setupDescriptorsEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L32
	mov	x0, 0
	b	.L33
.L32:
	ldr	x0, [x29, 56]
	str	wzr, [x0, 112]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 48]
	str	x1, [x0, 120]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 96]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	add	x0, x0, 12
	mov	w1, 3
	strh	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	x19, [x0, 96]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x29, 32]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	str	x19, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x1, [x29, 72]
	str	x1, [x0]
	ldr	x0, [x29, 56]
	ldr	x1, [x0, 96]
	ldr	x0, [x29, 40]
	lsl	w0, w0, 9
	str	x1, [x29, 96]
	str	w0, [x29, 92]
	ldr	x0, [x29, 96]
	ldr	w1, [x29, 92]
	str	w1, [x0, 8]
	ldr	x0, [x29, 56]
	add	x2, x0, 16
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 88]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor
	ldr	x0, [x29, 56]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	add	x0, x0, 16
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	add	x0, x0, 56
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 8]
	ldrh	w0, [x0, 2]
	strh	w0, [x29, 222]
	ldr	x0, [x29, 56]
	str	x0, [x29, 160]
	str	wzr, [x29, 156]
	ldr	x0, [x29, 160]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 80
	ldr	w1, [x29, 156]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 208]
	ldrh	w0, [x29, 222]
	strh	w0, [x29, 206]
.L45:
	ldr	x0, [x29, 208]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	add	x0, x0, 16
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	add	x0, x0, 56
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0, 8]
	ldrh	w0, [x0, 2]
	ldrh	w1, [x29, 206]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L45
	ldr	x0, [x29, 40]
.L33:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	.size	_ZN17VirtioBlockDriver10readSectorEmmPv, .-_ZN17VirtioBlockDriver10readSectorEmmPv
	.align	2
	.global	_ZN17VirtioBlockDriver11writeSectorEmmPKv
	.type	_ZN17VirtioBlockDriver11writeSectorEmmPKv, %function
_ZN17VirtioBlockDriver11writeSectorEmmPKv:
	stp	x29, x30, [sp, -224]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	ldr	x0, [x29, 56]
	bl	_ZN17VirtioBlockDriver16setupDescriptorsEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L47
	mov	x0, 0
	b	.L48
.L47:
	ldr	x0, [x29, 56]
	mov	w1, 1
	str	w1, [x0, 112]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 48]
	str	x1, [x0, 120]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 96]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	add	x0, x0, 12
	mov	w1, 1
	strh	w1, [x0]
	ldr	x0, [x29, 56]
	ldr	x19, [x0, 96]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x29, 32]
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	str	x19, [x29, 80]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x1, [x29, 72]
	str	x1, [x0]
	ldr	x0, [x29, 56]
	ldr	x1, [x0, 96]
	ldr	x0, [x29, 40]
	lsl	w0, w0, 9
	str	x1, [x29, 96]
	str	w0, [x29, 92]
	ldr	x0, [x29, 96]
	ldr	w1, [x29, 92]
	str	w1, [x0, 8]
	ldr	x0, [x29, 56]
	add	x2, x0, 16
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 88]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN17VirtioQueueLayout7pushAvlEP21VirtioQueueDescriptor
	ldr	x0, [x29, 56]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	add	x0, x0, 16
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	add	x0, x0, 56
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 8]
	ldrh	w0, [x0, 2]
	strh	w0, [x29, 222]
	ldr	x0, [x29, 56]
	str	x0, [x29, 160]
	str	wzr, [x29, 156]
	ldr	x0, [x29, 160]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	ldr	x0, [x0]
	add	x0, x0, 80
	ldr	w1, [x29, 156]
	str	w1, [x0]
	ldr	x0, [x29, 56]
	str	x0, [x29, 208]
	ldrh	w0, [x29, 222]
	strh	w0, [x29, 206]
.L60:
	ldr	x0, [x29, 208]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	add	x0, x0, 16
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	add	x0, x0, 56
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	ldr	x0, [x0, 8]
	ldrh	w0, [x0, 2]
	ldrh	w1, [x29, 206]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L60
	ldr	x0, [x29, 40]
.L48:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 224
	ret
	.size	_ZN17VirtioBlockDriver11writeSectorEmmPKv, .-_ZN17VirtioBlockDriver11writeSectorEmmPKv
	.align	2
	.global	_ZN17VirtioBlockDriver16setupDescriptorsEv
	.type	_ZN17VirtioBlockDriver16setupDescriptorsEv, %function
_ZN17VirtioBlockDriver16setupDescriptorsEv:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 88]
	cmp	x0, 0
	bne	.L62
	ldr	x0, [x29, 40]
	add	x0, x0, 16
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x1, [x0]
	ldr	x0, [x29, 120]
	ldr	x0, [x0, 24]
	sub	x0, x1, x0
	cmp	x0, 2
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L64
	mov	w0, 0
	b	.L65
.L64:
	ldr	x0, [x29, 40]
	add	x3, x0, 16
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	mov	x2, 3
	mov	x1, x0
	mov	x0, x3
	bl	_ZN17VirtioQueueLayout19allocateDescriptrosEPP21VirtioQueueDescriptorm
	ldr	x0, [x29, 40]
	add	x3, x0, 16
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	mov	x2, 3
	mov	x1, x0
	mov	x0, x3
	bl	_ZN17VirtioQueueLayout16chainDescriptorsEPP21VirtioQueueDescriptorm
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 88]
	ldr	x0, [x29, 40]
	add	x1, x0, 112
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	str	x19, [x29, 56]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 48]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 88]
	str	x0, [x29, 72]
	mov	w0, 16
	str	w0, [x29, 68]
	ldr	x0, [x29, 72]
	ldr	w1, [x29, 68]
	str	w1, [x0, 8]
	ldr	x0, [x29, 40]
	str	wzr, [x0, 116]
	mov	x1, 2
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 104]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	add	x0, x0, 12
	ldrh	w2, [x0]
	and	w1, w1, 65535
	orr	w1, w2, w1
	and	w1, w1, 65535
	strh	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 104]
	ldr	x0, [x29, 40]
	add	x0, x0, 112
	add	x1, x0, 16
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager15translateVAToPAEPKv
	str	x19, [x29, 96]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 88]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 104]
	str	x0, [x29, 112]
	mov	w0, 1
	str	w0, [x29, 108]
	ldr	x0, [x29, 112]
	ldr	w1, [x29, 108]
	str	w1, [x0, 8]
.L62:
	mov	w0, 1
.L65:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN17VirtioBlockDriver16setupDescriptorsEv, .-_ZN17VirtioBlockDriver16setupDescriptorsEv
	.align	2
	.global	_ZN17VirtioBlockDriver20maximumDescriptorNumEm
	.type	_ZN17VirtioBlockDriver20maximumDescriptorNumEm, %function
_ZN17VirtioBlockDriver20maximumDescriptorNumEm:
	sub	sp, sp, #64
	str	x0, [sp, 8]
	mov	x1, 16
	mov	x0, 2
	add	x0, x1, x0
	str	x0, [sp, 56]
	mov	x0, 6
	str	x0, [sp, 48]
	ldr	x1, [sp, 8]
	ldr	x0, [sp, 48]
	sub	x1, x1, x0
	ldr	x0, [sp, 56]
	udiv	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	sub	x0, x0, #6
	lsr	x0, x0, 3
	str	x0, [sp, 32]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 32]
	cmp	x1, x0
	bls	.L73
	ldr	x0, [sp, 32]
	b	.L75
.L73:
	ldr	x0, [sp, 40]
.L75:
	add	sp, sp, 64
	ret
	.size	_ZN17VirtioBlockDriver20maximumDescriptorNumEm, .-_ZN17VirtioBlockDriver20maximumDescriptorNumEm
	.section	.rodata
	.align	3
	.type	_ZZN17VirtioBlockDriver4initEPvmmmbE19__PRETTY_FUNCTION__, %object
	.size	_ZZN17VirtioBlockDriver4initEPvmmmbE19__PRETTY_FUNCTION__, 66
_ZZN17VirtioBlockDriver4initEPvmmmbE19__PRETTY_FUNCTION__:
	.string	"void VirtioBlockDriver::init(void*, size_t, size_t, size_t, bool)"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
