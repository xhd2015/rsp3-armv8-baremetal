	.arch armv8.2-a+crc
	.file	"MemoryManager_aarch64.cpp"
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
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.text
	.align	2
	.global	_ZN13MemoryManagerC2EPvmb
	.type	_ZN13MemoryManagerC2EPvmb, %function
_ZN13MemoryManagerC2EPvmb:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	strb	w3, [x29, 23]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 24]
	str	x1, [x0, 16]
	ldrb	w0, [x29, 23]
	cmp	w0, 0
	beq	.L9
	ldr	x0, [x29, 24]
	cmp	x0, 8
	bhi	.L5
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 72]
	mov	w0, 1
	strb	w0, [x29, 71]
	ldr	x1, [x29, 72]
	ldrb	w0, [x1]
	ldrb	w2, [x29, 71]
	bfi	w0, w2, 7, 1
	strb	w0, [x1]
	b	.L9
.L5:
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	mov	x5, x0
	cmp	x5, 0
	beq	.L8
	ldr	x0, [x29, 24]
	sub	x0, x0, #9
	mov	x4, x0
	mov	w3, 0
	mov	w2, 0
	mov	x1, 0
	mov	x0, x5
	bl	_ZN11MemoryChunkC1Embbm
.L8:
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	bl	_ZN11MemoryChunk6endPtrEv
	str	x0, [x29, 56]
	mov	w0, 1
	strb	w0, [x29, 55]
	ldr	x1, [x29, 56]
	ldrb	w0, [x1]
	ldrb	w2, [x29, 55]
	bfi	w0, w2, 7, 1
	strb	w0, [x1]
.L9:
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN13MemoryManagerC2EPvmb, .-_ZN13MemoryManagerC2EPvmb
	.global	_ZN13MemoryManagerC1EPvmb
	.set	_ZN13MemoryManagerC1EPvmb,_ZN13MemoryManagerC2EPvmb
	.align	2
	.global	_ZN13MemoryManager18normalizeAllocSizeEm
	.type	_ZN13MemoryManager18normalizeAllocSizeEm, %function
_ZN13MemoryManager18normalizeAllocSizeEm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 7
	bhi	.L11
	mov	x0, 8
	str	x0, [sp]
.L11:
	ldr	x0, [sp]
	and	x0, x0, 7
	cmp	x0, 0
	beq	.L12
	ldr	x0, [sp]
	and	x0, x0, -8
	add	x0, x0, 8
	str	x0, [sp]
.L12:
	ldr	x0, [sp]
	add	sp, sp, 16
	ret
	.size	_ZN13MemoryManager18normalizeAllocSizeEm, .-_ZN13MemoryManager18normalizeAllocSizeEm
	.align	2
	.global	_ZN13MemoryManager8allocateEm
	.type	_ZN13MemoryManager8allocateEm, %function
_ZN13MemoryManager8allocateEm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	mov	x2, 8
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEmm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager8allocateEm, .-_ZN13MemoryManager8allocateEm
	.align	2
	.global	_ZN13MemoryManager8allocateEmm
	.type	_ZN13MemoryManager8allocateEmm, %function
_ZN13MemoryManager8allocateEmm:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L17
	mov	x0, 0
	b	.L20
.L17:
	mov	x0, -1
	str	x0, [x29, 56]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x1, x29, 56
	mov	x3, x1
	ldr	x2, [x29, 24]
	ldr	x1, [x29, 32]
	bl	_ZN11MemoryChunk13findAllocableEmmRm
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	cmp	x0, 0
	bne	.L19
	mov	x0, 0
	b	.L20
.L19:
	ldr	x0, [x29, 56]
	mov	x1, x0
	ldr	x0, [x29, 88]
	bl	_ZN11MemoryChunk9moveAheadEm
	str	x0, [x29, 80]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 80]
	bl	_ZN11MemoryChunk5splitEm
	ldr	x0, [x29, 80]
	str	x0, [x29, 72]
	mov	w0, 1
	strb	w0, [x29, 71]
	ldr	x1, [x29, 72]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 71]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [x29, 80]
	bl	_ZN11MemoryChunk7dataPtrEv
.L20:
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN13MemoryManager8allocateEmm, .-_ZN13MemoryManager8allocateEmm
	.align	2
	.global	_ZN13MemoryManager10deallocateEPv
	.type	_ZN13MemoryManager10deallocateEPv, %function
_ZN13MemoryManager10deallocateEPv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	cmp	x0, 0
	beq	.L22
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	ldr	x0, [x29, 64]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L23
	mov	w0, 1
	b	.L24
.L23:
	mov	w0, 0
.L24:
	cmp	w0, 0
	beq	.L22
	ldr	x0, [x29, 72]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	mov	w0, 1
	b	.L27
.L22:
	mov	w0, 0
.L27:
	cmp	w0, 0
	beq	.L29
	ldr	x0, [x29, 72]
	str	x0, [x29, 48]
	strb	wzr, [x29, 47]
	ldr	x1, [x29, 48]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 47]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [x29, 72]
	bl	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
.L29:
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN13MemoryManager10deallocateEPv, .-_ZN13MemoryManager10deallocateEPv
	.align	2
	.global	_ZN13MemoryManager11tryIncreaseEPvm
	.type	_ZN13MemoryManager11tryIncreaseEPvm, %function
_ZN13MemoryManager11tryIncreaseEPvm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	w0, 0
	add	sp, sp, 32
	ret
	.size	_ZN13MemoryManager11tryIncreaseEPvm, .-_ZN13MemoryManager11tryIncreaseEPvm
	.align	2
	.global	_ZN13MemoryManager11tryDecreaseEPvm
	.type	_ZN13MemoryManager11tryDecreaseEPvm, %function
_ZN13MemoryManager11tryDecreaseEPvm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	w0, 0
	add	sp, sp, 32
	ret
	.size	_ZN13MemoryManager11tryDecreaseEPvm, .-_ZN13MemoryManager11tryDecreaseEPvm
	.align	2
	.global	_ZN13MemoryManager10reallocateEPvmm
	.type	_ZN13MemoryManager10reallocateEPvmm, %function
_ZN13MemoryManager10reallocateEPvmm:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L35
	mov	x0, 0
	b	.L36
.L35:
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bne	.L37
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN13MemoryManager10deallocateEPv
	mov	x0, 0
	b	.L36
.L37:
	ldr	x0, [x29, 16]
	cmn	x0, #1
	bne	.L38
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZNK13MemoryManager18getAllocatedLengthEPv
	str	x0, [x29, 16]
.L38:
	ldr	x0, [x29, 16]
	cmn	x0, #1
	bne	.L39
	mov	x0, 0
	b	.L36
.L39:
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	bne	.L40
	ldr	x0, [x29, 32]
	b	.L36
.L40:
	ldr	x0, [x29, 32]
	bl	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	str	x0, [x29, 112]
	strb	wzr, [x29, 111]
	ldr	x1, [x29, 112]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 111]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [x29, 136]
	bl	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	ldr	x0, [x29, 136]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 24]
	cmp	x0, x1
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 136]
	bl	_ZN11MemoryChunk5splitEm
	ldr	x0, [x29, 136]
	str	x0, [x29, 96]
	mov	w0, 1
	strb	w0, [x29, 95]
	ldr	x1, [x29, 96]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 95]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [x29, 32]
	b	.L36
.L42:
	ldr	x0, [x29, 136]
	str	x0, [x29, 80]
	mov	w0, 1
	strb	w0, [x29, 79]
	ldr	x1, [x29, 80]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 79]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 40]
	bl	_ZN13MemoryManager10allocateAsIPcEET_m
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	cmp	x0, 0
	bne	.L43
	mov	x0, 0
	b	.L36
.L43:
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 128]
	bl	memcpy
	ldr	x0, [x29, 136]
	str	x0, [x29, 64]
	strb	wzr, [x29, 63]
	ldr	x1, [x29, 64]
	ldrb	w0, [x1, 1]
	ldrb	w2, [x29, 63]
	bfi	w0, w2, 0, 1
	strb	w0, [x1, 1]
	ldr	x0, [x29, 128]
.L36:
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZN13MemoryManager10reallocateEPvmm, .-_ZN13MemoryManager10reallocateEPvmm
	.align	2
	.global	_ZNK13MemoryManager18getAllocatedLengthEPv
	.type	_ZNK13MemoryManager18getAllocatedLengthEPv, %function
_ZNK13MemoryManager18getAllocatedLengthEPv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_ZN11MemoryChunk17chunkPtrOfDataPtrEPv
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L45
	ldr	x0, [x29, 56]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L46
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	and	w0, w0, 127
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L46
	mov	w0, 1
	b	.L47
.L46:
	mov	w0, 0
.L47:
	cmp	w0, 0
	beq	.L45
	ldr	x0, [x29, 56]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldrb	w0, [x0, 1]
	and	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L45
	mov	w0, 1
	b	.L50
.L45:
	mov	w0, 0
.L50:
	cmp	w0, 0
	beq	.L51
	ldr	x0, [x29, 56]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldrb	w1, [x0, 1]
	lsr	w1, w1, 1
	and	x1, x1, 255
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 7
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 15
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 23
	orr	x1, x2, x1
	ldrb	w2, [x0, 5]
	lsl	x2, x2, 31
	orr	x1, x2, x1
	ldrb	w2, [x0, 6]
	lsl	x2, x2, 39
	orr	x1, x2, x1
	ldrb	w0, [x0, 7]
	lsl	x0, x0, 47
	orr	x0, x0, x1
	b	.L53
.L51:
	mov	x0, -1
.L53:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK13MemoryManager18getAllocatedLengthEPv, .-_ZNK13MemoryManager18getAllocatedLengthEPv
	.section	.text._ZN13MemoryManager10allocateAsIPcEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIPcEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIPcEET_m
	.type	_ZN13MemoryManager10allocateAsIPcEET_m, %function
_ZN13MemoryManager10allocateAsIPcEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIPcEET_m, .-_ZN13MemoryManager10allocateAsIPcEET_m
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
