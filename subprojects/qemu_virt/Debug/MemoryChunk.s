	.arch armv8.2-a+crc
	.file	"MemoryChunk.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
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
.LFB75:
	.file 1 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\new"
	.loc 1 169 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	.loc 1 169 0
	ldr	x0, [sp]
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE75:
	.size	_ZnwmPv, .-_ZnwmPv
	.text
	.align	2
	.global	_ZN11MemoryChunkC2Embmbm
	.type	_ZN11MemoryChunkC2Embmbm, %function
_ZN11MemoryChunkC2Embmbm:
.LFB80:
	.file 2 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp"
	.loc 2 12 0
	.cfi_startproc
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	strb	w2, [sp, 31]
	str	x3, [sp, 16]
	strb	w4, [sp, 30]
	str	x5, [sp, 8]
.LBB2:
	.loc 2 13 0
	ldr	x0, [sp, 16]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [sp, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 6
	strb	w0, [x1]
	ldrb	w0, [sp, 30]
	cmp	w0, 0
	beq	.L4
	.loc 2 13 0 is_stmt 0 discriminator 1
	mov	w2, 1
	b	.L5
.L4:
	.loc 2 13 0 discriminator 2
	mov	w2, 0
.L5:
	.loc 2 13 0 discriminator 4
	ldr	x1, [sp, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 6, 1
	strb	w0, [x1]
	ldrb	w0, [sp, 31]
	cmp	w0, 0
	beq	.L6
	.loc 2 13 0 discriminator 5
	mov	w2, 1
	b	.L7
.L6:
	.loc 2 13 0 discriminator 6
	mov	w2, 0
.L7:
	.loc 2 13 0 discriminator 8
	ldr	x1, [sp, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 7, 1
	strb	w0, [x1]
	ldr	x0, [sp, 32]
	and	x2, x0, 274877906943
	ldr	x1, [sp, 40]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	ldr	x0, [sp, 8]
	mov	w1, w0
	and	w1, w1, 262143
	ldr	x2, [sp, 40]
	ldr	w0, [x2, 4]
	bfi	w0, w1, 14, 18
	str	w0, [x2, 4]
.LBE2:
	nop
	add	sp, sp, 48
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE80:
	.size	_ZN11MemoryChunkC2Embmbm, .-_ZN11MemoryChunkC2Embmbm
	.global	_ZN11MemoryChunkC1Embmbm
	.set	_ZN11MemoryChunkC1Embmbm,_ZN11MemoryChunkC2Embmbm
	.align	2
	.global	_ZNK11MemoryChunk11isAllocatedEv
	.type	_ZNK11MemoryChunk11isAllocatedEv, %function
_ZNK11MemoryChunk11isAllocatedEv:
.LFB82:
	.loc 2 14 0 is_stmt 1
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 15 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	.loc 2 16 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE82:
	.size	_ZNK11MemoryChunk11isAllocatedEv, .-_ZNK11MemoryChunk11isAllocatedEv
	.align	2
	.global	_ZN11MemoryChunk12setAllocatedEb
	.type	_ZN11MemoryChunk12setAllocatedEb, %function
_ZN11MemoryChunk12setAllocatedEb:
.LFB83:
	.loc 2 19 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	.loc 2 20 0
	ldrb	w0, [sp, 7]
	cmp	w0, 0
	beq	.L11
	.loc 2 20 0 is_stmt 0 discriminator 1
	mov	w2, 1
	b	.L12
.L11:
	.loc 2 20 0 discriminator 2
	mov	w2, 0
.L12:
	.loc 2 20 0 discriminator 4
	ldr	x1, [sp, 8]
	ldrb	w0, [x1]
	bfi	w0, w2, 7, 1
	strb	w0, [x1]
	.loc 2 21 0 is_stmt 1 discriminator 4
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE83:
	.size	_ZN11MemoryChunk12setAllocatedEb, .-_ZN11MemoryChunk12setAllocatedEb
	.align	2
	.global	_ZNK11MemoryChunk5isEndEv
	.type	_ZNK11MemoryChunk5isEndEv, %function
_ZNK11MemoryChunk5isEndEv:
.LFB84:
	.loc 2 23 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 24 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	w0, w0, 64
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	.loc 2 25 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE84:
	.size	_ZNK11MemoryChunk5isEndEv, .-_ZNK11MemoryChunk5isEndEv
	.align	2
	.global	_ZN11MemoryChunk6setEndEb
	.type	_ZN11MemoryChunk6setEndEb, %function
_ZN11MemoryChunk6setEndEb:
.LFB85:
	.loc 2 27 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	strb	w1, [sp, 7]
	.loc 2 28 0
	ldrb	w0, [sp, 7]
	cmp	w0, 0
	beq	.L16
	.loc 2 28 0 is_stmt 0 discriminator 1
	mov	w2, 1
	b	.L17
.L16:
	.loc 2 28 0 discriminator 2
	mov	w2, 0
.L17:
	.loc 2 28 0 discriminator 4
	ldr	x1, [sp, 8]
	ldrb	w0, [x1]
	bfi	w0, w2, 6, 1
	strb	w0, [x1]
	.loc 2 29 0 is_stmt 1 discriminator 4
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE85:
	.size	_ZN11MemoryChunk6setEndEb, .-_ZN11MemoryChunk6setEndEb
	.align	2
	.global	_ZNK11MemoryChunk7getNextEv
	.type	_ZNK11MemoryChunk7getNextEv, %function
_ZNK11MemoryChunk7getNextEv:
.LFB86:
	.loc 2 31 0
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 32 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk5isEndEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L19
	.loc 2 33 0
	mov	x0, 0
	b	.L20
.L19:
	.loc 2 34 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk10getDataEndEv
	mov	x1, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 4]
	lsr	w0, w0, 14
	uxtw	x0, w0
	add	x0, x1, x0
	str	x0, [x29, 40]
.L24:
	.loc 2 35 0
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk5isEndEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	.loc 2 35 0 is_stmt 0 discriminator 1
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	and	w0, w0, 63
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L21
	.loc 2 35 0 discriminator 3
	mov	w0, 1
	b	.L22
.L21:
	.loc 2 35 0 discriminator 4
	mov	w0, 0
.L22:
	.loc 2 35 0 discriminator 6
	cmp	w0, 0
	beq	.L23
	.loc 2 36 0 is_stmt 1
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 6
	and	w0, w0, 255
	and	x0, x0, 255
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	str	x0, [x29, 40]
	.loc 2 35 0
	b	.L24
.L23:
	.loc 2 37 0
	ldr	x0, [x29, 40]
.L20:
	.loc 2 38 0
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE86:
	.size	_ZNK11MemoryChunk7getNextEv, .-_ZNK11MemoryChunk7getNextEv
	.align	2
	.global	_ZN11MemoryChunk7getNextEv
	.type	_ZN11MemoryChunk7getNextEv, %function
_ZN11MemoryChunk7getNextEv:
.LFB87:
	.loc 2 40 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 41 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk7getNextEv
	.loc 2 42 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE87:
	.size	_ZN11MemoryChunk7getNextEv, .-_ZN11MemoryChunk7getNextEv
	.align	2
	.global	_ZNK11MemoryChunk7getSizeEv
	.type	_ZNK11MemoryChunk7getSizeEv, %function
_ZNK11MemoryChunk7getSizeEv:
.LFB88:
	.loc 2 46 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 47 0
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	.loc 2 48 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE88:
	.size	_ZNK11MemoryChunk7getSizeEv, .-_ZNK11MemoryChunk7getSizeEv
	.align	2
	.global	_ZN11MemoryChunk7setSizeEm
	.type	_ZN11MemoryChunk7setSizeEm, %function
_ZN11MemoryChunk7setSizeEm:
.LFB89:
	.loc 2 51 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	.loc 2 52 0
	ldr	x0, [sp]
	and	x2, x0, 274877906943
	ldr	x1, [sp, 8]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	.loc 2 53 0
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE89:
	.size	_ZN11MemoryChunk7setSizeEm, .-_ZN11MemoryChunk7setSizeEm
	.align	2
	.global	_ZN11MemoryChunk10getDataPtrEv
	.type	_ZN11MemoryChunk10getDataPtrEv, %function
_ZN11MemoryChunk10getDataPtrEv:
.LFB90:
	.loc 2 55 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 56 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk10getDataPtrEv
	.loc 2 57 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE90:
	.size	_ZN11MemoryChunk10getDataPtrEv, .-_ZN11MemoryChunk10getDataPtrEv
	.align	2
	.global	_ZNK11MemoryChunk10getDataPtrEv
	.type	_ZNK11MemoryChunk10getDataPtrEv, %function
_ZNK11MemoryChunk10getDataPtrEv:
.LFB91:
	.loc 2 59 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 60 0
	ldr	x0, [sp, 8]
	add	x0, x0, 8
	.loc 2 61 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE91:
	.size	_ZNK11MemoryChunk10getDataPtrEv, .-_ZNK11MemoryChunk10getDataPtrEv
	.align	2
	.global	_ZN11MemoryChunk10getDataEndEv
	.type	_ZN11MemoryChunk10getDataEndEv, %function
_ZN11MemoryChunk10getDataEndEv:
.LFB92:
	.loc 2 63 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 64 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk10getDataEndEv
	.loc 2 65 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE92:
	.size	_ZN11MemoryChunk10getDataEndEv, .-_ZN11MemoryChunk10getDataEndEv
	.align	2
	.global	_ZNK11MemoryChunk10getDataEndEv
	.type	_ZNK11MemoryChunk10getDataEndEv, %function
_ZNK11MemoryChunk10getDataEndEv:
.LFB93:
	.loc 2 67 0
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 68 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk7getSizeEv
	add	x0, x0, 8
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	.loc 2 69 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE93:
	.size	_ZNK11MemoryChunk10getDataEndEv, .-_ZNK11MemoryChunk10getDataEndEv
	.align	2
	.global	_ZNK11MemoryChunk18getNextBaseFromEndEv
	.type	_ZNK11MemoryChunk18getNextBaseFromEndEv, %function
_ZNK11MemoryChunk18getNextBaseFromEndEv:
.LFB94:
	.loc 2 74 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 75 0
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	lsr	w0, w0, 14
	uxtw	x0, w0
	.loc 2 76 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE94:
	.size	_ZNK11MemoryChunk18getNextBaseFromEndEv, .-_ZNK11MemoryChunk18getNextBaseFromEndEv
	.align	2
	.global	_ZN11MemoryChunk18setNextBaseFromEndEm
	.type	_ZN11MemoryChunk18setNextBaseFromEndEm, %function
_ZN11MemoryChunk18setNextBaseFromEndEm:
.LFB95:
	.loc 2 78 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	.loc 2 79 0
	ldr	x0, [sp]
	mov	w1, w0
	and	w1, w1, 262143
	ldr	x2, [sp, 8]
	ldr	w0, [x2, 4]
	bfi	w0, w1, 14, 18
	str	w0, [x2, 4]
	.loc 2 80 0
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE95:
	.size	_ZN11MemoryChunk18setNextBaseFromEndEm, .-_ZN11MemoryChunk18setNextBaseFromEndEm
	.align	2
	.global	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
	.type	_ZNK11MemoryChunk23getNextValidChunkOffsetEv, %function
_ZNK11MemoryChunk23getNextValidChunkOffsetEv:
.LFB96:
	.loc 2 82 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	.loc 2 83 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 6
	and	w0, w0, 255
	and	x0, x0, 255
	.loc 2 84 0
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE96:
	.size	_ZNK11MemoryChunk23getNextValidChunkOffsetEv, .-_ZNK11MemoryChunk23getNextValidChunkOffsetEv
	.align	2
	.global	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.type	_ZN11MemoryChunk23setNextValidChunkOffsetEm, %function
_ZN11MemoryChunk23setNextValidChunkOffsetEm:
.LFB97:
	.loc 2 87 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, 8]
	str	x1, [sp]
	.loc 2 88 0
	ldr	x0, [sp]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 6
	strb	w0, [x1]
	.loc 2 89 0
	nop
	add	sp, sp, 16
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE97:
	.size	_ZN11MemoryChunk23setNextValidChunkOffsetEm, .-_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.align	2
	.global	_ZN11MemoryChunk9moveAheadEm
	.type	_ZN11MemoryChunk9moveAheadEm, %function
_ZN11MemoryChunk9moveAheadEm:
.LFB98:
	.loc 2 92 0
	.cfi_startproc
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]
	str	x1, [sp]
	.loc 2 93 0
	ldr	x0, [sp, 8]
	ldrb	w0, [x0]
	and	w0, w0, -128
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L45
	.loc 2 93 0 is_stmt 0 discriminator 1
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp]
	cmp	x0, x1
	bcc	.L46
.L45:
	.loc 2 94 0 is_stmt 1
	mov	x0, 0
	b	.L47
.L46:
	.loc 2 95 0
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L48
	.loc 2 96 0
	ldr	x0, [sp, 8]
	b	.L47
.L48:
	.loc 2 97 0
	ldr	x1, [sp, 8]
	ldr	x0, [sp]
	add	x0, x1, x0
	str	x0, [sp, 24]
.LBB3:
	.loc 2 99 0
	ldr	x0, [sp]
	cmp	x0, 7
	bls	.L49
	.loc 2 100 0
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	ldr	x1, [x1]
	str	x1, [x0]
	b	.L50
.L49:
.LBB4:
	.loc 2 102 0
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	.loc 2 103 0
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
.L50:
.LBE4:
.LBE3:
	.loc 2 105 0
	ldr	x0, [sp, 24]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [sp]
	sub	x0, x1, x0
	and	x2, x0, 274877906943
	ldr	x1, [sp, 24]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	.loc 2 108 0
	ldr	x0, [sp]
	cmp	x0, 8
	bls	.L51
	.loc 2 111 0
	ldr	x0, [sp, 8]
	ldrb	w1, [x0, 5]
	and	w1, w1, 63
	strb	w1, [x0, 5]
	ldrb	w1, [x0, 6]
	mov	w2, 0
	and	w1, w1, w2
	strb	w1, [x0, 6]
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	strb	w1, [x0, 7]
	.loc 2 112 0
	ldr	x0, [sp]
	sub	x0, x0, #8
	and	x2, x0, 274877906943
	ldr	x1, [sp, 8]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	b	.L52
.L51:
	.loc 2 114 0
	ldr	x0, [sp]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [sp, 8]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 6
	strb	w0, [x1]
.L52:
	.loc 2 116 0
	ldr	x0, [sp, 24]
.L47:
	.loc 2 117 0
	add	sp, sp, 32
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE98:
	.size	_ZN11MemoryChunk9moveAheadEm, .-_ZN11MemoryChunk9moveAheadEm
	.align	2
	.global	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.type	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm, %function
_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm:
.LFB99:
	.loc 2 119 0
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	.loc 2 120 0
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 32]
	cmp	x0, x1
	bls	.L54
	.loc 2 121 0
	mov	x0, -1
	b	.L55
.L54:
	.loc 2 122 0
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk10getDataPtrEv
	ldr	x1, [x29, 24]
	udiv	x2, x0, x1
	ldr	x1, [x29, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [x29, 56]
	.loc 2 123 0
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L56
	.loc 2 125 0
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	sub	x1, x1, x0
	ldr	x0, [x29, 32]
	add	x1, x1, x0
	ldr	x0, [x29, 40]
	ldrb	w2, [x0, 1]
	ldrb	w3, [x0, 2]
	lsl	x3, x3, 8
	orr	x2, x3, x2
	ldrb	w3, [x0, 3]
	lsl	x3, x3, 16
	orr	x2, x3, x2
	ldrb	w3, [x0, 4]
	lsl	x3, x3, 24
	orr	x2, x3, x2
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x2
	cmp	x1, x0
	bls	.L57
	.loc 2 126 0
	mov	x0, -1
	b	.L55
.L57:
	.loc 2 128 0
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	sub	x0, x1, x0
	b	.L55
.L56:
	.loc 2 130 0
	mov	x0, 0
.L55:
	.loc 2 131 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE99:
	.size	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm, .-_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.align	2
	.global	_ZN11MemoryChunk5splitEm
	.type	_ZN11MemoryChunk5splitEm, %function
_ZN11MemoryChunk5splitEm:
.LFB100:
	.loc 2 133 0
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	.loc 2 134 0
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk5isEndEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L59
	.loc 2 134 0 is_stmt 0 discriminator 2
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk11isAllocatedEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L59
	.loc 2 134 0 discriminator 4
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk7getSizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	cmp	x0, x1
	bhi	.L59
	.loc 2 134 0 discriminator 6
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L60
.L59:
	.loc 2 134 0 discriminator 7
	mov	w0, 1
	b	.L61
.L60:
	.loc 2 134 0 discriminator 8
	mov	w0, 0
.L61:
	.loc 2 134 0 discriminator 10
	cmp	w0, 0
	beq	.L62
	.loc 2 135 0 is_stmt 1
	mov	w0, 0
	b	.L63
.L62:
	.loc 2 136 0
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk7getSizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	sub	x0, x1, x0
	str	x0, [x29, 56]
	.loc 2 137 0
	ldr	x0, [x29, 40]
	bl	_ZN11MemoryChunk10getDataPtrEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	str	x0, [x29, 48]
	.loc 2 138 0
	ldr	x0, [x29, 56]
	cmp	x0, 8
	bls	.L64
	.loc 2 140 0
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk11isAllocatedEv
	and	w19, w0, 255
	ldr	x0, [x29, 40]
	bl	_ZNK11MemoryChunk18getNextBaseFromEndEv
	mov	x20, x0
	ldr	x0, [x29, 48]
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	mov	x6, x0
	cmp	x6, 0
	beq	.L66
	.loc 2 140 0 is_stmt 0 discriminator 1
	ldr	x0, [x29, 56]
	sub	x0, x0, #8
	mov	x5, x20
	mov	w4, 0
	mov	x3, 0
	mov	w2, w19
	mov	x1, x0
	mov	x0, x6
	bl	_ZN11MemoryChunkC1Embmbm
.L66:
	.loc 2 142 0 is_stmt 1
	ldr	x0, [x29, 32]
	and	x2, x0, 274877906943
	ldr	x1, [x29, 40]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	.loc 2 143 0
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 5]
	and	w1, w1, 63
	strb	w1, [x0, 5]
	ldrb	w1, [x0, 6]
	mov	w2, 0
	and	w1, w1, w2
	strb	w1, [x0, 6]
	ldrb	w1, [x0, 7]
	mov	w2, 0
	and	w1, w1, w2
	strb	w1, [x0, 7]
	b	.L67
.L64:
	.loc 2 145 0
	ldr	x0, [x29, 56]
	and	w0, w0, 63
	and	w2, w0, 255
	ldr	x1, [x29, 40]
	ldrb	w0, [x1]
	bfi	w0, w2, 0, 6
	strb	w0, [x1]
.L67:
	.loc 2 147 0
	mov	w0, 1
.L63:
	.loc 2 148 0
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE100:
	.size	_ZN11MemoryChunk5splitEm, .-_ZN11MemoryChunk5splitEm
	.align	2
	.global	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.type	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv, %function
_ZN11MemoryChunk25mergeTrailingsUnallocatedEv:
.LFB101:
	.loc 2 151 0
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29, 24]
	.loc 2 152 0
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk11isAllocatedEv
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L69
	.loc 2 152 0 is_stmt 0 discriminator 2
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 4]
	lsr	w0, w0, 14
	cmp	w0, 0
	bne	.L69
	.loc 2 152 0 discriminator 4
	ldr	x0, [x29, 24]
	bl	_ZNK11MemoryChunk5isEndEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L70
.L69:
	.loc 2 152 0 discriminator 5
	mov	w0, 1
	b	.L71
.L70:
	.loc 2 152 0 discriminator 6
	mov	w0, 0
.L71:
	.loc 2 152 0 discriminator 8
	cmp	w0, 0
	bne	.L80
	.loc 2 154 0 is_stmt 1
	str	xzr, [x29, 56]
	.loc 2 155 0
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	add	x0, x0, 8
	ldr	x1, [x29, 24]
	add	x0, x1, x0
	str	x0, [x29, 48]
	.loc 2 156 0
	str	xzr, [x29, 40]
.L79:
.LBB5:
	.loc 2 159 0
	ldr	x0, [x29, 48]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 6
	and	w0, w0, 255
	and	x0, x0, 255
	str	x0, [x29, 32]
	.loc 2 160 0
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L74
	.loc 2 162 0
	ldr	x0, [x29, 48]
	bl	_ZNK11MemoryChunk5isEndEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L75
	.loc 2 162 0 is_stmt 0 discriminator 1
	ldr	x0, [x29, 48]
	bl	_ZNK11MemoryChunk11isAllocatedEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L75
	.loc 2 162 0 discriminator 3
	ldr	x0, [x29, 48]
	ldr	w0, [x0, 4]
	lsr	w0, w0, 14
	cmp	w0, 0
	bne	.L75
	.loc 2 162 0 discriminator 5
	mov	w0, 1
	b	.L76
.L75:
	.loc 2 162 0 discriminator 6
	mov	w0, 0
.L76:
	.loc 2 162 0 discriminator 8
	cmp	w0, 0
	beq	.L81
	.loc 2 163 0 is_stmt 1
	ldr	x0, [x29, 48]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	add	x0, x0, 8
	str	x0, [x29, 32]
.L74:
	.loc 2 167 0
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	str	x0, [x29, 56]
	.loc 2 168 0
	ldr	x0, [x29, 48]
	str	x0, [x29, 40]
	.loc 2 169 0
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	str	x0, [x29, 48]
.LBE5:
	.loc 2 170 0
	b	.L79
.L81:
.LBB6:
	.loc 2 165 0
	nop
.LBE6:
	.loc 2 172 0
	ldr	x0, [x29, 24]
	ldrb	w1, [x0, 1]
	ldrb	w2, [x0, 2]
	lsl	x2, x2, 8
	orr	x1, x2, x1
	ldrb	w2, [x0, 3]
	lsl	x2, x2, 16
	orr	x1, x2, x1
	ldrb	w2, [x0, 4]
	lsl	x2, x2, 24
	orr	x1, x2, x1
	ldrb	w0, [x0, 5]
	and	x0, x0, 63
	lsl	x0, x0, 32
	orr	x0, x0, x1
	mov	x1, x0
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	and	x2, x0, 274877906943
	ldr	x1, [x29, 24]
	ldr	x0, [x1]
	bfi	x0, x2, 8, 38
	str	x0, [x1]
	.loc 2 173 0
	ldr	x0, [x29, 40]
	ldrb	w0, [x0]
	and	w0, w0, 63
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L68
	.loc 2 174 0
	ldr	x0, [x29, 40]
	ldr	w0, [x0, 4]
	lsr	w2, w0, 14
	ldr	x1, [x29, 24]
	ldr	w0, [x1, 4]
	bfi	w0, w2, 14, 18
	str	w0, [x1, 4]
	b	.L68
.L80:
	.loc 2 153 0
	nop
.L68:
	.loc 2 175 0
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE101:
	.size	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv, .-_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
.Letext0:
	.file 3 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstddef"
	.file 4 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstdint"
	.file 5 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\exception_ptr.h"
	.file 6 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\c++config.h"
	.file 7 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\type_traits"
	.file 8 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stddef.h"
	.file 9 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint-gcc.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf0f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF969
	.byte	0x4
	.4byte	.LASF970
	.4byte	.LASF971
	.4byte	.Ldebug_ranges0+0x30
	.8byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.string	"std"
	.byte	0xd
	.byte	0
	.4byte	0x35e
	.uleb128 0x3
	.4byte	.LASF858
	.byte	0x6
	.byte	0xfd
	.uleb128 0x4
	.byte	0x6
	.byte	0xfd
	.4byte	0x38
	.uleb128 0x5
	.byte	0x3
	.byte	0x38
	.4byte	0x3cc
	.uleb128 0x5
	.byte	0x4
	.byte	0x30
	.4byte	0x3de
	.uleb128 0x5
	.byte	0x4
	.byte	0x31
	.4byte	0x3f0
	.uleb128 0x5
	.byte	0x4
	.byte	0x32
	.4byte	0x402
	.uleb128 0x5
	.byte	0x4
	.byte	0x33
	.4byte	0x419
	.uleb128 0x5
	.byte	0x4
	.byte	0x35
	.4byte	0x4bd
	.uleb128 0x5
	.byte	0x4
	.byte	0x36
	.4byte	0x4c8
	.uleb128 0x5
	.byte	0x4
	.byte	0x37
	.4byte	0x4d3
	.uleb128 0x5
	.byte	0x4
	.byte	0x38
	.4byte	0x4de
	.uleb128 0x5
	.byte	0x4
	.byte	0x3a
	.4byte	0x465
	.uleb128 0x5
	.byte	0x4
	.byte	0x3b
	.4byte	0x470
	.uleb128 0x5
	.byte	0x4
	.byte	0x3c
	.4byte	0x47b
	.uleb128 0x5
	.byte	0x4
	.byte	0x3d
	.4byte	0x486
	.uleb128 0x5
	.byte	0x4
	.byte	0x3f
	.4byte	0x52b
	.uleb128 0x5
	.byte	0x4
	.byte	0x40
	.4byte	0x515
	.uleb128 0x5
	.byte	0x4
	.byte	0x42
	.4byte	0x424
	.uleb128 0x5
	.byte	0x4
	.byte	0x43
	.4byte	0x436
	.uleb128 0x5
	.byte	0x4
	.byte	0x44
	.4byte	0x448
	.uleb128 0x5
	.byte	0x4
	.byte	0x45
	.4byte	0x45a
	.uleb128 0x5
	.byte	0x4
	.byte	0x47
	.4byte	0x4e9
	.uleb128 0x5
	.byte	0x4
	.byte	0x48
	.4byte	0x4f4
	.uleb128 0x5
	.byte	0x4
	.byte	0x49
	.4byte	0x4ff
	.uleb128 0x5
	.byte	0x4
	.byte	0x4a
	.4byte	0x50a
	.uleb128 0x5
	.byte	0x4
	.byte	0x4c
	.4byte	0x491
	.uleb128 0x5
	.byte	0x4
	.byte	0x4d
	.4byte	0x49c
	.uleb128 0x5
	.byte	0x4
	.byte	0x4e
	.4byte	0x4a7
	.uleb128 0x5
	.byte	0x4
	.byte	0x4f
	.4byte	0x4b2
	.uleb128 0x5
	.byte	0x4
	.byte	0x51
	.4byte	0x536
	.uleb128 0x5
	.byte	0x4
	.byte	0x52
	.4byte	0x520
	.uleb128 0x6
	.4byte	.LASF834
	.byte	0x5
	.byte	0x34
	.4byte	0x2e2
	.uleb128 0x7
	.4byte	.LASF839
	.byte	0x8
	.byte	0x5
	.byte	0x4f
	.4byte	0x2d5
	.uleb128 0x8
	.4byte	.LASF972
	.byte	0x5
	.byte	0x51
	.4byte	0x8ed
	.byte	0
	.uleb128 0x9
	.4byte	.LASF839
	.byte	0x5
	.byte	0x53
	.4byte	.LASF841
	.4byte	0x147
	.4byte	0x152
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x8ed
	.byte	0
	.uleb128 0xc
	.4byte	.LASF835
	.byte	0x5
	.byte	0x55
	.4byte	.LASF837
	.4byte	0x165
	.4byte	0x16b
	.uleb128 0xa
	.4byte	0x8f6
	.byte	0
	.uleb128 0xc
	.4byte	.LASF836
	.byte	0x5
	.byte	0x56
	.4byte	.LASF838
	.4byte	0x17e
	.4byte	0x184
	.uleb128 0xa
	.4byte	0x8f6
	.byte	0
	.uleb128 0xd
	.4byte	.LASF840
	.byte	0x5
	.byte	0x58
	.4byte	.LASF842
	.4byte	0x8ed
	.4byte	0x19b
	.4byte	0x1a1
	.uleb128 0xa
	.4byte	0x8fc
	.byte	0
	.uleb128 0xe
	.4byte	.LASF839
	.byte	0x5
	.byte	0x60
	.4byte	.LASF843
	.byte	0x1
	.4byte	0x1b5
	.4byte	0x1bb
	.uleb128 0xa
	.4byte	0x8f6
	.byte	0
	.uleb128 0xe
	.4byte	.LASF839
	.byte	0x5
	.byte	0x62
	.4byte	.LASF844
	.byte	0x1
	.4byte	0x1cf
	.4byte	0x1da
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x902
	.byte	0
	.uleb128 0xe
	.4byte	.LASF839
	.byte	0x5
	.byte	0x65
	.4byte	.LASF845
	.byte	0x1
	.4byte	0x1ee
	.4byte	0x1f9
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x2fe
	.byte	0
	.uleb128 0xe
	.4byte	.LASF839
	.byte	0x5
	.byte	0x69
	.4byte	.LASF846
	.byte	0x1
	.4byte	0x20d
	.4byte	0x218
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x908
	.byte	0
	.uleb128 0xf
	.4byte	.LASF847
	.byte	0x5
	.byte	0x76
	.4byte	.LASF848
	.4byte	0x90e
	.byte	0x1
	.4byte	0x230
	.4byte	0x23b
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x902
	.byte	0
	.uleb128 0xf
	.4byte	.LASF847
	.byte	0x5
	.byte	0x7a
	.4byte	.LASF849
	.4byte	0x90e
	.byte	0x1
	.4byte	0x253
	.4byte	0x25e
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x908
	.byte	0
	.uleb128 0xe
	.4byte	.LASF850
	.byte	0x5
	.byte	0x81
	.4byte	.LASF851
	.byte	0x1
	.4byte	0x272
	.4byte	0x27d
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xa
	.4byte	0x40d
	.byte	0
	.uleb128 0xe
	.4byte	.LASF852
	.byte	0x5
	.byte	0x84
	.4byte	.LASF853
	.byte	0x1
	.4byte	0x291
	.4byte	0x29c
	.uleb128 0xa
	.4byte	0x8f6
	.uleb128 0xb
	.4byte	0x90e
	.byte	0
	.uleb128 0x10
	.4byte	.LASF973
	.byte	0x5
	.byte	0x90
	.4byte	.LASF974
	.4byte	0x8db
	.byte	0x1
	.4byte	0x2b4
	.4byte	0x2ba
	.uleb128 0xa
	.4byte	0x8fc
	.byte	0
	.uleb128 0x11
	.4byte	.LASF854
	.byte	0x5
	.byte	0x99
	.4byte	.LASF855
	.4byte	0x914
	.byte	0x1
	.4byte	0x2ce
	.uleb128 0xa
	.4byte	0x8fc
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x11c
	.uleb128 0x5
	.byte	0x5
	.byte	0x49
	.4byte	0x2e9
	.byte	0
	.uleb128 0x5
	.byte	0x5
	.byte	0x39
	.4byte	0x11c
	.uleb128 0x13
	.4byte	.LASF856
	.byte	0x5
	.byte	0x45
	.4byte	.LASF857
	.4byte	0x2fe
	.uleb128 0xb
	.4byte	0x11c
	.byte	0
	.uleb128 0x14
	.4byte	.LASF862
	.byte	0x6
	.byte	0xeb
	.4byte	0x3d9
	.uleb128 0x15
	.4byte	.LASF975
	.uleb128 0x12
	.4byte	0x309
	.uleb128 0x16
	.4byte	.LASF859
	.byte	0x7
	.2byte	0xa1e
	.uleb128 0x17
	.4byte	.LASF860
	.byte	0x1
	.byte	0x1
	.byte	0x56
	.4byte	0x33e
	.uleb128 0x18
	.4byte	.LASF860
	.byte	0x1
	.byte	0x59
	.4byte	.LASF861
	.byte	0x1
	.4byte	0x337
	.uleb128 0xa
	.4byte	0x921
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x31b
	.uleb128 0x19
	.4byte	.LASF976
	.byte	0x1
	.byte	0x5d
	.4byte	.LASF977
	.4byte	0x33e
	.uleb128 0x14
	.4byte	.LASF863
	.byte	0x6
	.byte	0xe7
	.4byte	0x38c
	.byte	0
	.uleb128 0x6
	.4byte	.LASF864
	.byte	0x6
	.byte	0xff
	.4byte	0x37a
	.uleb128 0x16
	.4byte	.LASF858
	.byte	0x6
	.2byte	0x101
	.uleb128 0x1a
	.byte	0x6
	.2byte	0x101
	.4byte	0x369
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.4byte	.LASF865
	.uleb128 0x14
	.4byte	.LASF863
	.byte	0x8
	.byte	0xd8
	.4byte	0x38c
	.uleb128 0x1b
	.byte	0x8
	.byte	0x7
	.4byte	.LASF866
	.uleb128 0x1c
	.byte	0x20
	.byte	0x10
	.byte	0x8
	.2byte	0x1aa
	.4byte	.LASF978
	.4byte	0x3be
	.uleb128 0x1d
	.4byte	.LASF867
	.byte	0x8
	.2byte	0x1ab
	.4byte	0x3be
	.byte	0x8
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF868
	.byte	0x8
	.2byte	0x1ac
	.4byte	0x3c5
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.byte	0x5
	.4byte	.LASF869
	.uleb128 0x1b
	.byte	0x10
	.byte	0x4
	.4byte	.LASF870
	.uleb128 0x1e
	.4byte	.LASF979
	.byte	0x8
	.2byte	0x1b5
	.4byte	0x393
	.byte	0x10
	.uleb128 0x1f
	.4byte	.LASF980
	.uleb128 0x14
	.4byte	.LASF871
	.byte	0x9
	.byte	0x22
	.4byte	0x3e9
	.uleb128 0x1b
	.byte	0x1
	.byte	0x6
	.4byte	.LASF872
	.uleb128 0x14
	.4byte	.LASF873
	.byte	0x9
	.byte	0x25
	.4byte	0x3fb
	.uleb128 0x1b
	.byte	0x2
	.byte	0x5
	.4byte	.LASF874
	.uleb128 0x14
	.4byte	.LASF875
	.byte	0x9
	.byte	0x28
	.4byte	0x40d
	.uleb128 0x20
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x12
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LASF876
	.byte	0x9
	.byte	0x2b
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF877
	.byte	0x9
	.byte	0x2e
	.4byte	0x42f
	.uleb128 0x1b
	.byte	0x1
	.byte	0x8
	.4byte	.LASF878
	.uleb128 0x14
	.4byte	.LASF879
	.byte	0x9
	.byte	0x31
	.4byte	0x441
	.uleb128 0x1b
	.byte	0x2
	.byte	0x7
	.4byte	.LASF880
	.uleb128 0x14
	.4byte	.LASF881
	.byte	0x9
	.byte	0x34
	.4byte	0x453
	.uleb128 0x1b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF882
	.uleb128 0x14
	.4byte	.LASF883
	.byte	0x9
	.byte	0x37
	.4byte	0x38c
	.uleb128 0x14
	.4byte	.LASF884
	.byte	0x9
	.byte	0x3c
	.4byte	0x3e9
	.uleb128 0x14
	.4byte	.LASF885
	.byte	0x9
	.byte	0x3d
	.4byte	0x3fb
	.uleb128 0x14
	.4byte	.LASF886
	.byte	0x9
	.byte	0x3e
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LASF887
	.byte	0x9
	.byte	0x3f
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF888
	.byte	0x9
	.byte	0x40
	.4byte	0x42f
	.uleb128 0x14
	.4byte	.LASF889
	.byte	0x9
	.byte	0x41
	.4byte	0x441
	.uleb128 0x14
	.4byte	.LASF890
	.byte	0x9
	.byte	0x42
	.4byte	0x453
	.uleb128 0x14
	.4byte	.LASF891
	.byte	0x9
	.byte	0x43
	.4byte	0x38c
	.uleb128 0x14
	.4byte	.LASF892
	.byte	0x9
	.byte	0x47
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LASF893
	.byte	0x9
	.byte	0x48
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LASF894
	.byte	0x9
	.byte	0x49
	.4byte	0x40d
	.uleb128 0x14
	.4byte	.LASF895
	.byte	0x9
	.byte	0x4a
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF896
	.byte	0x9
	.byte	0x4b
	.4byte	0x453
	.uleb128 0x14
	.4byte	.LASF897
	.byte	0x9
	.byte	0x4c
	.4byte	0x453
	.uleb128 0x14
	.4byte	.LASF898
	.byte	0x9
	.byte	0x4d
	.4byte	0x453
	.uleb128 0x14
	.4byte	.LASF899
	.byte	0x9
	.byte	0x4e
	.4byte	0x38c
	.uleb128 0x14
	.4byte	.LASF900
	.byte	0x9
	.byte	0x53
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF901
	.byte	0x9
	.byte	0x56
	.4byte	0x38c
	.uleb128 0x14
	.4byte	.LASF902
	.byte	0x9
	.byte	0x5b
	.4byte	0x37a
	.uleb128 0x14
	.4byte	.LASF903
	.byte	0x9
	.byte	0x5c
	.4byte	0x38c
	.uleb128 0x21
	.4byte	0x55d
	.4byte	0x551
	.uleb128 0x22
	.4byte	0x38c
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x541
	.uleb128 0x1b
	.byte	0x1
	.byte	0x6
	.4byte	.LASF904
	.uleb128 0x12
	.4byte	0x556
	.uleb128 0x23
	.4byte	.LASF905
	.byte	0xa
	.byte	0x16
	.4byte	0x551
	.uleb128 0x24
	.4byte	.LASF906
	.byte	0xa
	.byte	0x1a
	.4byte	0x414
	.uleb128 0x9
	.byte	0x3
	.8byte	_ZL6UNIT_K
	.uleb128 0x25
	.string	"KiB"
	.byte	0xa
	.byte	0x1b
	.4byte	0x414
	.uleb128 0x9
	.byte	0x3
	.8byte	_ZL3KiB
	.uleb128 0x25
	.string	"MiB"
	.byte	0xa
	.byte	0x1c
	.4byte	0x414
	.uleb128 0x9
	.byte	0x3
	.8byte	_ZL3MiB
	.uleb128 0x25
	.string	"GiB"
	.byte	0xa
	.byte	0x1d
	.4byte	0x414
	.uleb128 0x9
	.byte	0x3
	.8byte	_ZL3GiB
	.uleb128 0x21
	.4byte	0x55d
	.4byte	0x5cc
	.uleb128 0x26
	.byte	0
	.uleb128 0x23
	.4byte	.LASF907
	.byte	0xb
	.byte	0x16
	.4byte	0x5c1
	.uleb128 0x7
	.4byte	.LASF908
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.4byte	0x8cb
	.uleb128 0x27
	.4byte	.LASF909
	.byte	0xc
	.byte	0x42
	.4byte	0x45a
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x27
	.4byte	.LASF910
	.byte	0xc
	.byte	0x43
	.4byte	0x45a
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x27
	.4byte	.LASF911
	.byte	0xc
	.byte	0x44
	.4byte	0x45a
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x27
	.4byte	.LASF912
	.byte	0xc
	.byte	0x45
	.4byte	0x45a
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x27
	.4byte	.LASF913
	.byte	0xc
	.byte	0x46
	.4byte	0x45a
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	.LASF908
	.byte	0xc
	.byte	0x1b
	.4byte	.LASF914
	.byte	0x1
	.4byte	0x642
	.4byte	0x661
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x381
	.uleb128 0xb
	.4byte	0x8db
	.uleb128 0xb
	.4byte	0x381
	.uleb128 0xb
	.4byte	0x8db
	.uleb128 0xb
	.4byte	0x381
	.byte	0
	.uleb128 0xf
	.4byte	.LASF915
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF916
	.4byte	0x8db
	.byte	0x1
	.4byte	0x679
	.4byte	0x67f
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF917
	.byte	0xc
	.byte	0x1d
	.4byte	.LASF918
	.byte	0x1
	.4byte	0x693
	.4byte	0x69e
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x8db
	.byte	0
	.uleb128 0xf
	.4byte	.LASF919
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF920
	.4byte	0x8db
	.byte	0x1
	.4byte	0x6b6
	.4byte	0x6bc
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF921
	.byte	0xc
	.byte	0x1f
	.4byte	.LASF922
	.byte	0x1
	.4byte	0x6d0
	.4byte	0x6db
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x8db
	.byte	0
	.uleb128 0xf
	.4byte	.LASF923
	.byte	0xc
	.byte	0x20
	.4byte	.LASF924
	.4byte	0x8e2
	.byte	0x1
	.4byte	0x6f3
	.4byte	0x6f9
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF923
	.byte	0xc
	.byte	0x21
	.4byte	.LASF925
	.4byte	0x8d0
	.byte	0x1
	.4byte	0x711
	.4byte	0x717
	.uleb128 0xa
	.4byte	0x8d0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF926
	.byte	0xc
	.byte	0x22
	.4byte	.LASF927
	.4byte	0x381
	.byte	0x1
	.4byte	0x72f
	.4byte	0x735
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF928
	.byte	0xc
	.byte	0x23
	.4byte	.LASF929
	.byte	0x1
	.4byte	0x749
	.4byte	0x754
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x381
	.byte	0
	.uleb128 0xf
	.4byte	.LASF930
	.byte	0xc
	.byte	0x24
	.4byte	.LASF931
	.4byte	0x8ed
	.byte	0x1
	.4byte	0x76c
	.4byte	0x772
	.uleb128 0xa
	.4byte	0x8d0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF930
	.byte	0xc
	.byte	0x25
	.4byte	.LASF932
	.4byte	0x8ef
	.byte	0x1
	.4byte	0x78a
	.4byte	0x790
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF933
	.byte	0xc
	.byte	0x26
	.4byte	.LASF934
	.4byte	0x8ed
	.byte	0x1
	.4byte	0x7a8
	.4byte	0x7ae
	.uleb128 0xa
	.4byte	0x8d0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF933
	.byte	0xc
	.byte	0x27
	.4byte	.LASF935
	.4byte	0x8ef
	.byte	0x1
	.4byte	0x7c6
	.4byte	0x7cc
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xf
	.4byte	.LASF936
	.byte	0xc
	.byte	0x28
	.4byte	.LASF937
	.4byte	0x45a
	.byte	0x1
	.4byte	0x7e4
	.4byte	0x7ea
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF938
	.byte	0xc
	.byte	0x29
	.4byte	.LASF939
	.byte	0x1
	.4byte	0x7fe
	.4byte	0x809
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x45a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF940
	.byte	0xc
	.byte	0x2a
	.4byte	.LASF941
	.4byte	0x45a
	.byte	0x1
	.4byte	0x821
	.4byte	0x827
	.uleb128 0xa
	.4byte	0x8e2
	.byte	0
	.uleb128 0xe
	.4byte	.LASF942
	.byte	0xc
	.byte	0x2b
	.4byte	.LASF943
	.byte	0x1
	.4byte	0x83b
	.4byte	0x846
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x45a
	.byte	0
	.uleb128 0xf
	.4byte	.LASF944
	.byte	0xc
	.byte	0x36
	.4byte	.LASF945
	.4byte	0x8d0
	.byte	0x1
	.4byte	0x85e
	.4byte	0x869
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x381
	.byte	0
	.uleb128 0xf
	.4byte	.LASF946
	.byte	0xc
	.byte	0x38
	.4byte	.LASF947
	.4byte	0x381
	.byte	0x1
	.4byte	0x881
	.4byte	0x891
	.uleb128 0xa
	.4byte	0x8e2
	.uleb128 0xb
	.4byte	0x381
	.uleb128 0xb
	.4byte	0x381
	.byte	0
	.uleb128 0xf
	.4byte	.LASF948
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF949
	.4byte	0x8db
	.byte	0x1
	.4byte	0x8a9
	.4byte	0x8b4
	.uleb128 0xa
	.4byte	0x8d0
	.uleb128 0xb
	.4byte	0x381
	.byte	0
	.uleb128 0x28
	.4byte	.LASF950
	.byte	0xc
	.byte	0x3e
	.4byte	.LASF951
	.byte	0x1
	.4byte	0x8c4
	.uleb128 0xa
	.4byte	0x8d0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x5d7
	.uleb128 0x29
	.byte	0x8
	.4byte	0x5d7
	.uleb128 0x12
	.4byte	0x8d0
	.uleb128 0x1b
	.byte	0x1
	.byte	0x2
	.4byte	.LASF952
	.uleb128 0x29
	.byte	0x8
	.4byte	0x8cb
	.uleb128 0x12
	.4byte	0x8e2
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0x29
	.byte	0x8
	.4byte	0x8f5
	.uleb128 0x2b
	.uleb128 0x29
	.byte	0x8
	.4byte	0x11c
	.uleb128 0x29
	.byte	0x8
	.4byte	0x2d5
	.uleb128 0x2c
	.byte	0x8
	.4byte	0x2d5
	.uleb128 0x2d
	.byte	0x8
	.4byte	0x11c
	.uleb128 0x2c
	.byte	0x8
	.4byte	0x11c
	.uleb128 0x29
	.byte	0x8
	.4byte	0x30e
	.uleb128 0x1b
	.byte	0x8
	.byte	0x7
	.4byte	.LASF953
	.uleb128 0x29
	.byte	0x8
	.4byte	0x31b
	.uleb128 0x2e
	.4byte	0x8b4
	.byte	0x2
	.byte	0x96
	.4byte	0x94c
	.8byte	.LFB101
	.8byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.4byte	0x997
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.4byte	.LASF954
	.byte	0x2
	.byte	0x9a
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x30
	.4byte	.LASF955
	.byte	0x2
	.byte	0x9b
	.4byte	0x8d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LASF956
	.byte	0x2
	.byte	0x9c
	.4byte	0x8d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x30
	.4byte	.LASF957
	.byte	0x2
	.byte	0x9f
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x891
	.byte	0x2
	.byte	0x84
	.4byte	0x9bc
	.8byte	.LFB100
	.8byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bc
	.4byte	0x9f3
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.4byte	.LASF961
	.byte	0x2
	.byte	0x84
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.4byte	.LASF959
	.byte	0x2
	.byte	0x88
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x30
	.4byte	.LASF960
	.byte	0x2
	.byte	0x89
	.4byte	0x8d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2e
	.4byte	0x869
	.byte	0x2
	.byte	0x76
	.4byte	0xa18
	.8byte	.LFB99
	.8byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa18
	.4byte	0xa4f
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.4byte	.LASF962
	.byte	0x2
	.byte	0x76
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.4byte	.LASF963
	.byte	0x2
	.byte	0x76
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.string	"mod"
	.byte	0x2
	.byte	0x7a
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x846
	.byte	0x2
	.byte	0x5b
	.4byte	0xa74
	.8byte	.LFB98
	.8byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa74
	.4byte	0xabd
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x32
	.4byte	.LASF964
	.byte	0x2
	.byte	0x5b
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x30
	.4byte	.LASF960
	.byte	0x2
	.byte	0x61
	.4byte	0x8d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x35
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.uleb128 0x30
	.4byte	.LASF965
	.byte	0x2
	.byte	0x66
	.4byte	0x5d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0x827
	.byte	0x2
	.byte	0x56
	.4byte	0xae2
	.8byte	.LFB97
	.8byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae2
	.4byte	0xafd
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x32
	.4byte	.LASF909
	.byte	0x2
	.byte	0x56
	.4byte	0x45a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x34
	.4byte	0x809
	.byte	0x2
	.byte	0x52
	.4byte	0xb22
	.8byte	.LFB96
	.8byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb22
	.4byte	0xb2f
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x7ea
	.byte	0x2
	.byte	0x4d
	.4byte	0xb54
	.8byte	.LFB95
	.8byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb54
	.4byte	0xb6f
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x32
	.4byte	.LASF913
	.byte	0x2
	.byte	0x4d
	.4byte	0x45a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x34
	.4byte	0x7cc
	.byte	0x2
	.byte	0x49
	.4byte	0xb94
	.8byte	.LFB94
	.8byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb94
	.4byte	0xba1
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2e
	.4byte	0x7ae
	.byte	0x2
	.byte	0x42
	.4byte	0xbc6
	.8byte	.LFB93
	.8byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbc6
	.4byte	0xbd3
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2e
	.4byte	0x790
	.byte	0x2
	.byte	0x3e
	.4byte	0xbf8
	.8byte	.LFB92
	.8byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbf8
	.4byte	0xc05
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x772
	.byte	0x2
	.byte	0x3a
	.4byte	0xc2a
	.8byte	.LFB91
	.8byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2a
	.4byte	0xc37
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2e
	.4byte	0x754
	.byte	0x2
	.byte	0x36
	.4byte	0xc5c
	.8byte	.LFB90
	.8byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc5c
	.4byte	0xc69
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x735
	.byte	0x2
	.byte	0x32
	.4byte	0xc8e
	.8byte	.LFB89
	.8byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8e
	.4byte	0xca9
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x32
	.4byte	.LASF912
	.byte	0x2
	.byte	0x32
	.4byte	0x381
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x34
	.4byte	0x717
	.byte	0x2
	.byte	0x2d
	.4byte	0xcce
	.8byte	.LFB88
	.8byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcce
	.4byte	0xcdb
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2e
	.4byte	0x6f9
	.byte	0x2
	.byte	0x27
	.4byte	0xd00
	.8byte	.LFB87
	.8byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd00
	.4byte	0xd0d
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2e
	.4byte	0x6db
	.byte	0x2
	.byte	0x1e
	.4byte	0xd32
	.8byte	.LFB86
	.8byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd32
	.4byte	0xd4d
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x30
	.4byte	.LASF966
	.byte	0x2
	.byte	0x22
	.4byte	0x8e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x6bc
	.byte	0x2
	.byte	0x1a
	.4byte	0xd72
	.8byte	.LFB85
	.8byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd72
	.4byte	0xd8d
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x36
	.string	"end"
	.byte	0x2
	.byte	0x1a
	.4byte	0x8db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x34
	.4byte	0x69e
	.byte	0x2
	.byte	0x16
	.4byte	0xdb2
	.8byte	.LFB84
	.8byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdb2
	.4byte	0xdbf
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x34
	.4byte	0x67f
	.byte	0x2
	.byte	0x12
	.4byte	0xde4
	.8byte	.LFB83
	.8byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde4
	.4byte	0xdff
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x32
	.4byte	.LASF911
	.byte	0x2
	.byte	0x12
	.4byte	0x8db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x34
	.4byte	0x661
	.byte	0x2
	.byte	0xe
	.4byte	0xe24
	.8byte	.LFB82
	.8byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe24
	.4byte	0xe31
	.uleb128 0x2f
	.4byte	.LASF958
	.4byte	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x37
	.4byte	0x62e
	.byte	0x2
	.byte	0xc
	.byte	0
	.4byte	0xe41
	.4byte	0xe82
	.uleb128 0x38
	.4byte	.LASF958
	.4byte	0x8d6
	.uleb128 0x39
	.4byte	.LASF912
	.byte	0x2
	.byte	0xc
	.4byte	0x381
	.uleb128 0x39
	.4byte	.LASF911
	.byte	0x2
	.byte	0xc
	.4byte	0x8db
	.uleb128 0x39
	.4byte	.LASF909
	.byte	0x2
	.byte	0xc
	.4byte	0x381
	.uleb128 0x39
	.4byte	.LASF910
	.byte	0x2
	.byte	0xc
	.4byte	0x8db
	.uleb128 0x39
	.4byte	.LASF913
	.byte	0x2
	.byte	0xc
	.4byte	0x381
	.byte	0
	.uleb128 0x3a
	.4byte	0xe31
	.4byte	.LASF981
	.4byte	0xea9
	.8byte	.LFB80
	.8byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea9
	.4byte	0xeda
	.uleb128 0x3b
	.4byte	0xe41
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x3b
	.4byte	0xe4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x3b
	.4byte	0xe55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3b
	.4byte	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3b
	.4byte	0xe6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x3b
	.4byte	0xe76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF967
	.byte	0x1
	.byte	0xa8
	.4byte	.LASF968
	.4byte	0x8ed
	.8byte	.LFB75
	.8byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	0x352
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x36
	.string	"__p"
	.byte	0x1
	.byte	0xa8
	.4byte	0x8ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x8b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	.LFB75
	.8byte	.LFE75-.LFB75
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LBB5
	.8byte	.LBE5
	.8byte	.LBB6
	.8byte	.LBE6
	.8byte	0
	.8byte	0
	.8byte	.Ltext0
	.8byte	.Letext0
	.8byte	.LFB75
	.8byte	.LFE75
	.8byte	0
	.8byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF372
	.byte	0x6
	.uleb128 0x176
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF375
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF376
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF382
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF383
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF387
	.byte	0x6
	.uleb128 0x4
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF392
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF394
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF180
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF399
	.file 14 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF410
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 15 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\os_defines.h"
	.byte	0x3
	.uleb128 0x215
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF470
	.byte	0x4
	.file 16 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\cpu_defines.h"
	.byte	0x3
	.uleb128 0x218
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF471
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF662
	.file 17 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x11
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF786
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF801
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF802
	.file 18 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\exception"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF803
	.file 19 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\exception.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF804
	.byte	0x4
	.byte	0x3
	.uleb128 0x8e
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF805
	.file 20 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\exception_defines.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x14
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.file 21 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\cxxabi_init_exception.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF810
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.file 22 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\typeinfo"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF813
	.file 23 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\hash_bytes.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF814
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro10
	.byte	0x4
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x4
	.byte	0x4
	.file 24 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\nested_exception.h"
	.byte	0x3
	.uleb128 0x8f
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF817
	.file 25 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\move.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF818
	.file 26 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\bits\\concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1a
	.byte	0x7
	.4byte	.Ldebug_macro11
	.byte	0x4
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro12
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cxx_macros.h.3.4a922712cbeaaf772b737cbe13a2d62a,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF407
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF408
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cstddef.40.7f59894b65c26f8fc669473914a0ef3e,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF416
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.31.e68a8d620d96aaccde842e0fab34b412,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF456
	.byte	0x6
	.uleb128 0x1a6
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x203
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF469
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.541.196d063ba1197a346d0a259d6af90630,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21d
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x239
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x23a
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x253
	.4byte	.LASF478
	.byte	0x2
	.uleb128 0x256
	.string	"min"
	.byte	0x2
	.uleb128 0x257
	.string	"max"
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x263
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x266
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x282
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x28b
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x291
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x29a
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x2a6
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x2c7
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x2e8
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x2eb
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x2f1
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x303
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x327
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x333
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x339
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x33c
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x33f
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x348
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x34b
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x34e
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x351
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x357
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x36c
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x36f
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x372
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x37b
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x37e
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x381
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x387
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x38d
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x390
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x396
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x39c
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x39f
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x3a2
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x3a5
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x3a8
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x3db
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x3de
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x3e7
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x3ea
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x3f3
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x3f6
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x3f9
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x3ff
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x405
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x408
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x427
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x42a
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x436
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x43c
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x43f
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x448
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x44b
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x44e
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x457
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x460
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x463
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x466
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x46c
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x46f
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x472
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x475
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x478
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x548
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x54e
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x551
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x554
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x557
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x55a
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x55d
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x56f
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x57b
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x57f
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x583
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x587
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x590
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x594
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x598
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x59c
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x59f
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x5a6
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x5ac
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5b1
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5c0
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x5c3
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x5c6
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x5e6
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x5ee
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x5f2
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x5fa
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x60b
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x60e
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x614
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x61a
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x620
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x639
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x648
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x64f
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x652
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x658
	.4byte	.LASF611
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.096871ec3ca5abfedfa76e8d05f4a8d6,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF623
	.byte	0x6
	.uleb128 0xa1
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF640
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF655
	.byte	0x6
	.uleb128 0x126
	.4byte	.LASF656
	.byte	0x6
	.uleb128 0x15b
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0x191
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF658
	.byte	0x6
	.uleb128 0x19c
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF661
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF663
	.byte	0x6
	.uleb128 0x64
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF665
	.byte	0x6
	.uleb128 0x66
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF667
	.byte	0x6
	.uleb128 0x6a
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF669
	.byte	0x6
	.uleb128 0x6e
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF671
	.byte	0x6
	.uleb128 0x70
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF673
	.byte	0x6
	.uleb128 0x74
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF675
	.byte	0x6
	.uleb128 0x78
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF677
	.byte	0x6
	.uleb128 0x7a
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF679
	.byte	0x6
	.uleb128 0x7e
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF681
	.byte	0x6
	.uleb128 0x82
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF683
	.byte	0x6
	.uleb128 0x84
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF685
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF687
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF689
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF691
	.byte	0x6
	.uleb128 0x90
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF693
	.byte	0x6
	.uleb128 0x92
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF695
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF697
	.byte	0x6
	.uleb128 0x96
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF699
	.byte	0x6
	.uleb128 0x98
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF701
	.byte	0x6
	.uleb128 0x9a
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF703
	.byte	0x6
	.uleb128 0x9c
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF705
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF707
	.byte	0x6
	.uleb128 0xa0
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF709
	.byte	0x6
	.uleb128 0xa2
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF711
	.byte	0x6
	.uleb128 0xa5
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF713
	.byte	0x6
	.uleb128 0xa7
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF715
	.byte	0x6
	.uleb128 0xa9
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF717
	.byte	0x6
	.uleb128 0xab
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF719
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF721
	.byte	0x6
	.uleb128 0xaf
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF723
	.byte	0x6
	.uleb128 0xb1
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF725
	.byte	0x6
	.uleb128 0xb3
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF727
	.byte	0x6
	.uleb128 0xb5
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF729
	.byte	0x6
	.uleb128 0xb7
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF731
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF733
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF735
	.byte	0x6
	.uleb128 0xbf
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF737
	.byte	0x6
	.uleb128 0xc1
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF739
	.byte	0x6
	.uleb128 0xc5
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF741
	.byte	0x6
	.uleb128 0xc9
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF743
	.byte	0x6
	.uleb128 0xcb
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF745
	.byte	0x6
	.uleb128 0xcd
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF747
	.byte	0x6
	.uleb128 0xd2
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF749
	.byte	0x6
	.uleb128 0xd4
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF751
	.byte	0x6
	.uleb128 0xd7
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF753
	.byte	0x6
	.uleb128 0xd9
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF755
	.byte	0x6
	.uleb128 0xdc
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF757
	.byte	0x6
	.uleb128 0xdf
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF759
	.byte	0x6
	.uleb128 0xe1
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF761
	.byte	0x6
	.uleb128 0xe4
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF763
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF765
	.byte	0x6
	.uleb128 0xef
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF767
	.byte	0x6
	.uleb128 0xf1
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF769
	.byte	0x6
	.uleb128 0xf3
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF771
	.byte	0x6
	.uleb128 0xf5
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF773
	.byte	0x6
	.uleb128 0xf7
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF775
	.byte	0x6
	.uleb128 0xf9
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF777
	.byte	0x6
	.uleb128 0xfb
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF779
	.byte	0x6
	.uleb128 0xfd
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF781
	.byte	0x6
	.uleb128 0xff
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF783
	.byte	0x6
	.uleb128 0x101
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF785
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.def.h.11.16c29793d9edd3df16b327cc5422ae5c,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF800
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.exception_defines.h.31.b944334bb23842f2d39bb0d8b467613a,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF809
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cxxabi_init_exception.h.42.029852b0f286014c9c193b74ad22df55,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF812
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.typeinfo.68.6ec148cf14bf09f308fe21939809dfe8,comdat
.Ldebug_macro10:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF816
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.concept_check.h.31.f19605d278e56917c68a56d378be308c,comdat
.Ldebug_macro11:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF824
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.type_traits.30.aabce70e463dddb0304dbf18c520cca3,comdat
.Ldebug_macro12:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x22d
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x2ce
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x640
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x8de
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x9ed
	.4byte	.LASF831
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.move.h.159.368bac456bc1dfb8448d51bb65764956,comdat
.Ldebug_macro13:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF833
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF101:
	.string	"__cpp_aggregate_nsdmi 201304"
.LASF810:
	.string	"_CXXABI_INIT_EXCEPTION_H 1"
.LASF850:
	.string	"~exception_ptr"
.LASF883:
	.string	"uint64_t"
.LASF564:
	.string	"_GLIBCXX_HAVE_TANHF 1"
.LASF871:
	.string	"int8_t"
.LASF274:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF332:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF52:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF348:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF141:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF863:
	.string	"size_t"
.LASF408:
	.string	"PERIPHBASE 0x08000000"
.LASF367:
	.string	"__ARM_ARCH_PROFILE 65"
.LASF675:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF526:
	.string	"_GLIBCXX_HAVE_INTTYPES_H 1"
.LASF126:
	.string	"__SIZE_WIDTH__ 64"
.LASF331:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF920:
	.string	"_ZNK11MemoryChunk5isEndEv"
.LASF19:
	.string	"__LP64__ 1"
.LASF426:
	.string	"_GLIBCXX_DEPRECATED __attribute__ ((__deprecated__))"
.LASF385:
	.string	"__ARM_FEATURE_NUMERIC_MAXMIN 1"
.LASF842:
	.string	"_ZNKSt15__exception_ptr13exception_ptr6_M_getEv"
.LASF802:
	.string	"_NEW "
.LASF548:
	.string	"_GLIBCXX_HAVE_SQRTF 1"
.LASF765:
	.string	"WINT_MIN __WINT_MIN__"
.LASF730:
	.string	"INT_FAST64_MAX"
.LASF589:
	.string	"_GLIBCXX98_USE_C99_STDLIB 1"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF541:
	.string	"_GLIBCXX_HAVE_MEMALIGN 1"
.LASF472:
	.string	"_GLIBCXX_PSEUDO_VISIBILITY(V) "
.LASF300:
	.string	"__FLT64X_DIG__ 33"
.LASF686:
	.string	"UINT64_MAX"
.LASF308:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF651:
	.string	"_WCHAR_T_H "
.LASF798:
	.string	"HEX64(a,b,c,d) 0x ##a ##b ##c ##d"
.LASF899:
	.string	"uint_fast64_t"
.LASF875:
	.string	"int32_t"
.LASF963:
	.string	"alignment"
.LASF683:
	.string	"INT64_MAX __INT64_MAX__"
.LASF744:
	.string	"INTMAX_MIN"
.LASF22:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF204:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF447:
	.string	"_GLIBCXX_DEFAULT_ABI_TAG _GLIBCXX_ABI_TAG_CXX11"
.LASF409:
	.string	"INCLUDE_MEMORYCHUNK_H_ "
.LASF827:
	.string	"__cpp_lib_is_null_pointer 201309"
.LASF807:
	.string	"__try if (true)"
.LASF585:
	.string	"_GLIBCXX11_USE_C99_STDLIB 1"
.LASF316:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF169:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF208:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF938:
	.string	"setNextBaseFromEnd"
.LASF761:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF322:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF475:
	.string	"_GLIBCXX_TXN_SAFE "
.LASF213:
	.string	"__FP_FAST_FMA 1"
.LASF195:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF46:
	.string	"__INT8_TYPE__ signed char"
.LASF932:
	.string	"_ZNK11MemoryChunk10getDataPtrEv"
.LASF207:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF249:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF532:
	.string	"_GLIBCXX_HAVE_LIMIT_FSIZE 0"
.LASF741:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF840:
	.string	"_M_get"
.LASF685:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF402:
	.string	"USER_SPACE_SIZE 20480"
.LASF95:
	.string	"__cpp_alias_templates 200704"
.LASF156:
	.string	"__UINT8_C(c) c"
.LASF47:
	.string	"__INT16_TYPE__ short int"
.LASF658:
	.string	"NULL __null"
.LASF570:
	.string	"_GLIBCXX_HAVE_VSWSCANF 1"
.LASF78:
	.string	"__cpp_unicode_characters 200704"
.LASF102:
	.string	"__cpp_variable_templates 201304"
.LASF306:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF363:
	.string	"__ARM_ARCH_ISA_A64 1"
.LASF731:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF340:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF220:
	.string	"__DECIMAL_DIG__ 36"
.LASF4:
	.string	"__STDC_HOSTED__ 0"
.LASF386:
	.string	"__ARM_NEON 1"
.LASF835:
	.string	"_M_addref"
.LASF588:
	.string	"_GLIBCXX98_USE_C99_STDIO 1"
.LASF889:
	.string	"uint_least16_t"
.LASF251:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF679:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF248:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF138:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF826:
	.string	"__cpp_lib_integral_constant_callable 201304"
.LASF892:
	.string	"int_fast8_t"
.LASF610:
	.string	"_GLIBCXX_VERBOSE 1"
.LASF971:
	.string	"D:\\\\Pool\\\\eclipse-workspace_aarch64\\\\newspace\\\\raspiOS\\\\subprojects\\\\qemu_virt\\\\Debug"
.LASF412:
	.string	"__need_wchar_t"
.LASF245:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF540:
	.string	"_GLIBCXX_HAVE_MBSTATE_T 1"
.LASF681:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF620:
	.string	"_BSD_PTRDIFF_T_ "
.LASF908:
	.string	"MemoryChunk"
.LASF241:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF260:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF640:
	.string	"__size_t "
.LASF170:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF263:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF707:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF504:
	.string	"_GLIBCXX_HAVE_EOVERFLOW 1"
.LASF494:
	.string	"_GLIBCXX_HAVE_ECANCELED 1"
.LASF397:
	.string	"__FLT_EVAL_METHOD_C99__"
.LASF202:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF779:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF31:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF841:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EPv"
.LASF330:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF337:
	.string	"__NO_INLINE__ 1"
.LASF703:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF37:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF284:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF76:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF642:
	.string	"__WCHAR_T__ "
.LASF259:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF898:
	.string	"uint_fast32_t"
.LASF458:
	.string	"_GLIBCXX_NAMESPACE_LDBL "
.LASF171:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF918:
	.string	"_ZN11MemoryChunk12setAllocatedEb"
.LASF318:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF800:
	.string	"BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h"
.LASF657:
	.string	"NULL"
.LASF304:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF166:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF782:
	.string	"INTMAX_C"
.LASF975:
	.string	"type_info"
.LASF712:
	.string	"INT_FAST8_MAX"
.LASF406:
	.string	"CONFIG_RAM_SIZE 0x40000000"
.LASF391:
	.string	"__AARCH64_CMODEL_SMALL__ 1"
.LASF789:
	.string	"NULL_CHAR '\\0'"
.LASF41:
	.string	"__INTMAX_TYPE__ long int"
.LASF492:
	.string	"_GLIBCXX_HAVE_COSHF 1"
.LASF590:
	.string	"_GLIBCXX98_USE_C99_WCHAR 1"
.LASF823:
	.string	"__glibcxx_class_requires3(_a,_b,_c,_d) "
.LASF645:
	.string	"_T_WCHAR "
.LASF811:
	.string	"_GLIBCXX_CDTOR_CALLABI "
.LASF759:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF297:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF723:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF627:
	.string	"_SYS_SIZE_T_H "
.LASF58:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF726:
	.string	"INT_FAST32_MIN"
.LASF865:
	.string	"long int"
.LASF531:
	.string	"_GLIBCXX_HAVE_LIMIT_DATA 0"
.LASF757:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF848:
	.string	"_ZNSt15__exception_ptr13exception_ptraSERKS0_"
.LASF507:
	.string	"_GLIBCXX_HAVE_EPROTO 1"
.LASF291:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF777:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF298:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF860:
	.string	"nothrow_t"
.LASF328:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF62:
	.string	"__INT_FAST8_TYPE__ int"
.LASF624:
	.string	"__size_t__ "
.LASF273:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF69:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF413:
	.string	"__need_ptrdiff_t"
.LASF775:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF54:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF440:
	.string	"_GLIBCXX_NOEXCEPT_QUAL "
.LASF923:
	.string	"getNext"
.LASF344:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF450:
	.string	"_GLIBCXX_END_NAMESPACE_VERSION "
.LASF310:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF946:
	.string	"moveOffsetOfAllocSuchAlignedSpace"
.LASF247:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF693:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF749:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF483:
	.string	"_GLIBCXX_USE_C99_WCHAR _GLIBCXX11_USE_C99_WCHAR"
.LASF225:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF509:
	.string	"_GLIBCXX_HAVE_ETIMEDOUT 1"
.LASF591:
	.string	"_GLIBCXX_ATOMIC_BUILTINS 1"
.LASF717:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF288:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF636:
	.string	"_SIZE_T_DECLARED "
.LASF933:
	.string	"getDataEnd"
.LASF754:
	.string	"SIG_ATOMIC_MIN"
.LASF384:
	.string	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC"
.LASF430:
	.string	"_GLIBCXX14_CONSTEXPR constexpr"
.LASF174:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF457:
	.string	"_GLIBCXX_LONG_DOUBLE_COMPAT"
.LASF433:
	.string	"_GLIBCXX_NOEXCEPT noexcept"
.LASF188:
	.string	"__FLT_MAX_EXP__ 128"
.LASF21:
	.string	"__SIZEOF_LONG__ 8"
.LASF569:
	.string	"_GLIBCXX_HAVE_VFWSCANF 1"
.LASF488:
	.string	"_GLIBCXX_HAVE_ATANF 1"
.LASF25:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF82:
	.string	"__cpp_lambdas 200907"
.LASF219:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF862:
	.string	"nullptr_t"
.LASF935:
	.string	"_ZNK11MemoryChunk10getDataEndEv"
.LASF694:
	.string	"INT_LEAST16_MAX"
.LASF9:
	.string	"__LINARO_RELEASE__ 201711"
.LASF503:
	.string	"_GLIBCXX_HAVE_ENOTSUP 1"
.LASF267:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF324:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF662:
	.string	"_GLIBCXX_CSTDINT 1"
.LASF560:
	.string	"_GLIBCXX_HAVE_SYS_TIME_H 1"
.LASF915:
	.string	"isAllocated"
.LASF187:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF891:
	.string	"uint_least64_t"
.LASF422:
	.string	"_GLIBCXX_NORETURN __attribute__ ((__noreturn__))"
.LASF190:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF462:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_BEGIN_NAMESPACE_CXX11"
.LASF445:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CXX11 namespace __cxx11 {"
.LASF593:
	.string	"_GLIBCXX_HOSTED 1"
.LASF872:
	.string	"signed char"
.LASF833:
	.string	"_GLIBCXX_FORWARD(_Tp,__val) std::forward<_Tp>(__val)"
.LASF877:
	.string	"uint8_t"
.LASF664:
	.string	"INT8_MAX"
.LASF745:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF771:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF253:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF336:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF792:
	.string	"FATAL \"[FATAL] \""
.LASF382:
	.string	"__ARM_FP16_ARGS 1"
.LASF500:
	.string	"_GLIBCXX_HAVE_ENOSR 1"
.LASF584:
	.string	"_GLIBCXX11_USE_C99_STDIO 1"
.LASF99:
	.string	"__cpp_constexpr 201304"
.LASF750:
	.string	"PTRDIFF_MIN"
.LASF847:
	.string	"operator="
.LASF157:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF448:
	.string	"_GLIBCXX_INLINE_VERSION 0"
.LASF98:
	.string	"__cpp_generic_lambdas 201304"
.LASF544:
	.string	"_GLIBCXX_HAVE_POWF 1"
.LASF676:
	.string	"INT32_MAX"
.LASF512:
	.string	"_GLIBCXX_HAVE_EXPF 1"
.LASF405:
	.string	"CONFIG_RAM_START 0x40000000"
.LASF262:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF510:
	.string	"_GLIBCXX_HAVE_ETXTBSY 1"
.LASF431:
	.string	"_GLIBCXX17_CONSTEXPR "
.LASF103:
	.string	"__cpp_digit_separators 201309"
.LASF635:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF815:
	.string	"__GXX_MERGED_TYPEINFO_NAMES 0"
.LASF68:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF878:
	.string	"unsigned char"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF419:
	.string	"__GLIBCXX__ 20171011"
.LASF252:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF516:
	.string	"_GLIBCXX_HAVE_FLOORF 1"
.LASF345:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF329:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF701:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF843:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4Ev"
.LASF178:
	.string	"__GCC_IEC_559 2"
.LASF167:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF579:
	.string	"_GLIBCXX_PACKAGE_TARNAME \"libstdc++\""
.LASF416:
	.string	"__need_wint_t"
.LASF125:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF955:
	.string	"freeChunk"
.LASF140:
	.string	"__UINT16_MAX__ 0xffff"
.LASF108:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF160:
	.string	"__UINT32_C(c) c ## U"
.LASF720:
	.string	"INT_FAST16_MIN"
.LASF128:
	.string	"__INTMAX_C(c) c ## L"
.LASF218:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF23:
	.string	"__SIZEOF_SHORT__ 2"
.LASF837:
	.string	"_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv"
.LASF543:
	.string	"_GLIBCXX_HAVE_MODFF 1"
.LASF856:
	.string	"rethrow_exception"
.LASF65:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF153:
	.string	"__INT64_C(c) c ## L"
.LASF727:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF755:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF338:
	.string	"__STRICT_ANSI__ 1"
.LASF608:
	.string	"_GLIBCXX_USE_TMPNAM 1"
.LASF790:
	.string	"INFO \"[INFO] \""
.LASF398:
	.string	"__FLT_EVAL_METHOD_C99__ 0"
.LASF130:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF112:
	.string	"__WCHAR_MAX__ 0xffffffffU"
.LASF279:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF356:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF39:
	.string	"__WCHAR_TYPE__ unsigned int"
.LASF763:
	.string	"WINT_MAX __WINT_MAX__"
.LASF904:
	.string	"char"
.LASF535:
	.string	"_GLIBCXX_HAVE_LOCALE_H 1"
.LASF341:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF89:
	.string	"__cpp_variadic_templates 200704"
.LASF724:
	.string	"INT_FAST32_MAX"
.LASF981:
	.string	"_ZN11MemoryChunkC2Embmbm"
.LASF482:
	.string	"_GLIBCXX_USE_C99_STDLIB _GLIBCXX11_USE_C99_STDLIB"
.LASF476:
	.string	"_GLIBCXX_TXN_SAFE_DYN "
.LASF530:
	.string	"_GLIBCXX_HAVE_LIMIT_AS 0"
.LASF799:
	.string	"BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d"
.LASF791:
	.string	"WARNING \"[WARNING] \""
.LASF890:
	.string	"uint_least32_t"
.LASF549:
	.string	"_GLIBCXX_HAVE_STDALIGN_H 1"
.LASF420:
	.string	"_GLIBCXX_PURE __attribute__ ((__pure__))"
.LASF234:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF732:
	.string	"INT_FAST64_MIN"
.LASF669:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF786:
	.string	"_GCC_WRAP_STDINT_H "
.LASF511:
	.string	"_GLIBCXX_HAVE_EWOULDBLOCK 1"
.LASF139:
	.string	"__UINT8_MAX__ 0xff"
.LASF193:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF905:
	.string	"EMPTY_STR"
.LASF913:
	.string	"nextBaseFromEnd"
.LASF424:
	.string	"_GLIBCXX_VISIBILITY(V) __attribute__ ((__visibility__ (#V)))"
.LASF769:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF296:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF210:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF240:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF956:
	.string	"lastChunk"
.LASF106:
	.string	"__GXX_ABI_VERSION 1011"
.LASF498:
	.string	"_GLIBCXX_HAVE_ENOLINK 1"
.LASF816:
	.string	"__GXX_TYPEINFO_EQUALITY_INLINE 1"
.LASF980:
	.string	"decltype(nullptr)"
.LASF146:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF275:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF390:
	.string	"__AARCH64_CMODEL_LARGE__"
.LASF885:
	.string	"int_least16_t"
.LASF400:
	.string	"CXX_MACROS_H__ "
.LASF349:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF73:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF832:
	.string	"_GLIBCXX_MOVE(__val) std::move(__val)"
.LASF486:
	.string	"_GLIBCXX_HAVE_AS_SYMVER_DIRECTIVE 1"
.LASF446:
	.string	"_GLIBCXX_END_NAMESPACE_CXX11 }"
.LASF460:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL "
.LASF480:
	.string	"_GLIBCXX_USE_C99_COMPLEX _GLIBCXX11_USE_C99_COMPLEX"
.LASF554:
	.string	"_GLIBCXX_HAVE_STRINGS_H 1"
.LASF595:
	.string	"_GLIBCXX_STDIO_EOF -1"
.LASF456:
	.string	"_GLIBCXX_END_NAMESPACE_ALGO _GLIBCXX_END_NAMESPACE_VERSION"
.LASF970:
	.string	"D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp"
.LASF459:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL "
.LASF481:
	.string	"_GLIBCXX_USE_C99_STDIO _GLIBCXX11_USE_C99_STDIO"
.LASF353:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF643:
	.string	"_WCHAR_T "
.LASF581:
	.string	"_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\""
.LASF572:
	.string	"_GLIBCXX_HAVE_WCHAR_H 1"
.LASF964:
	.string	"moveSize"
.LASF148:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF256:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF639:
	.string	"_SIZET_ "
.LASF227:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF317:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF523:
	.string	"_GLIBCXX_HAVE_IEEEFP_H 1"
.LASF290:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF537:
	.string	"_GLIBCXX_HAVE_LOGF 1"
.LASF473:
	.string	"_GLIBCXX_WEAK_DEFINITION "
.LASF477:
	.string	"_GLIBCXX_FAST_MATH 0"
.LASF944:
	.string	"moveAhead"
.LASF668:
	.string	"UINT8_MAX"
.LASF973:
	.string	"operator bool"
.LASF463:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_END_NAMESPACE_CXX11"
.LASF747:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF133:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF571:
	.string	"_GLIBCXX_HAVE_VWSCANF 1"
.LASF155:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF85:
	.string	"__cpp_decltype 200707"
.LASF520:
	.string	"_GLIBCXX_HAVE_GETS 1"
.LASF311:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF198:
	.string	"__FP_FAST_FMAF 1"
.LASF853:
	.string	"_ZNSt15__exception_ptr13exception_ptr4swapERS0_"
.LASF764:
	.string	"WINT_MIN"
.LASF680:
	.string	"UINT32_MAX"
.LASF576:
	.string	"_GLIBCXX_PACKAGE_BUGREPORT \"\""
.LASF914:
	.string	"_ZN11MemoryChunkC4Embmbm"
.LASF182:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF924:
	.string	"_ZNK11MemoryChunk7getNextEv"
.LASF468:
	.string	"_GLIBCXX_END_EXTERN_C }"
.LASF326:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF551:
	.string	"_GLIBCXX_HAVE_STDINT_H 1"
.LASF854:
	.string	"__cxa_exception_type"
.LASF415:
	.string	"__need_NULL"
.LASF429:
	.string	"_GLIBCXX_USE_CONSTEXPR constexpr"
.LASF428:
	.string	"_GLIBCXX_CONSTEXPR constexpr"
.LASF818:
	.string	"_MOVE_H 1"
.LASF335:
	.string	"__USER_LABEL_PREFIX__ "
.LASF714:
	.string	"INT_FAST8_MIN"
.LASF713:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF149:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF57:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF851:
	.string	"_ZNSt15__exception_ptr13exception_ptrD4Ev"
.LASF773:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF143:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF354:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF368:
	.string	"__ARM_FEATURE_CLZ 1"
.LASF379:
	.string	"__ARM_FEATURE_FMA 1"
.LASF410:
	.string	"DEF_H__ "
.LASF377:
	.string	"__ARM_BIG_ENDIAN"
.LASF803:
	.string	"__EXCEPTION__ "
.LASF793:
	.string	"TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))"
.LASF372:
	.string	"__ARM_SIZEOF_WCHAR_T 4"
.LASF289:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF485:
	.string	"_GLIBCXX_HAVE_ASINF 1"
.LASF594:
	.string	"_GLIBCXX_MANGLE_SIZE_T m"
.LASF574:
	.string	"_GLIBCXX_HAVE_WCTYPE_H 1"
.LASF631:
	.string	"_SIZE_T_ "
.LASF499:
	.string	"_GLIBCXX_HAVE_ENOSPC 1"
.LASF715:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF788:
	.string	"arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))"
.LASF154:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF196:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF35:
	.string	"__SIZEOF_POINTER__ 8"
.LASF135:
	.string	"__INT8_MAX__ 0x7f"
.LASF441:
	.string	"_GLIBCXX_EXTERN_TEMPLATE 1"
.LASF734:
	.string	"UINT_FAST64_MAX"
.LASF63:
	.string	"__INT_FAST16_TYPE__ int"
.LASF355:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF470:
	.string	"_GLIBCXX_OS_DEFINES 1"
.LASF866:
	.string	"long unsigned int"
.LASF200:
	.string	"__DBL_DIG__ 15"
.LASF550:
	.string	"_GLIBCXX_HAVE_STDBOOL_H 1"
.LASF179:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF5:
	.string	"__GNUC__ 7"
.LASF51:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF221:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF836:
	.string	"_M_release"
.LASF302:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF79:
	.string	"__cpp_raw_strings 200710"
.LASF976:
	.string	"nothrow"
.LASF315:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF934:
	.string	"_ZN11MemoryChunk10getDataEndEv"
.LASF628:
	.string	"_T_SIZE_ "
.LASF181:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF361:
	.string	"__aarch64__ 1"
.LASF118:
	.string	"__SCHAR_WIDTH__ 8"
.LASF436:
	.string	"_GLIBCXX_THROW(_EXC) "
.LASF722:
	.string	"UINT_FAST16_MAX"
.LASF756:
	.string	"SIZE_MAX"
.LASF66:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF83:
	.string	"__cpp_range_based_for 200907"
.LASF92:
	.string	"__cpp_nsdmi 200809"
.LASF575:
	.string	"LT_OBJDIR \".libs/\""
.LASF84:
	.string	"__cpp_static_assert 200410"
.LASF490:
	.string	"_GLIBCXX_HAVE_COMPLEX_H 1"
.LASF887:
	.string	"int_least64_t"
.LASF18:
	.string	"_LP64 1"
.LASF746:
	.string	"UINTMAX_MAX"
.LASF305:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF958:
	.string	"this"
.LASF425:
	.string	"_GLIBCXX_USE_DEPRECATED 1"
.LASF243:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF688:
	.string	"INT_LEAST8_MAX"
.LASF911:
	.string	"allocated"
.LASF659:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF814:
	.string	"_HASH_BYTES_H 1"
.LASF665:
	.string	"INT8_MAX __INT8_MAX__"
.LASF299:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF206:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF346:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF502:
	.string	"_GLIBCXX_HAVE_ENOTRECOVERABLE 1"
.LASF901:
	.string	"uintptr_t"
.LASF203:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF364:
	.string	"__ARM_ALIGN_MAX_PWR 28"
.LASF184:
	.string	"__FLT_MANT_DIG__ 24"
.LASF605:
	.string	"_GLIBCXX_USE_INT128 1"
.LASF64:
	.string	"__INT_FAST32_TYPE__ int"
.LASF86:
	.string	"__cpp_attributes 200809"
.LASF621:
	.string	"___int_ptrdiff_t_h "
.LASF350:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF536:
	.string	"_GLIBCXX_HAVE_LOG10F 1"
.LASF127:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF927:
	.string	"_ZNK11MemoryChunk7getSizeEv"
.LASF265:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF17:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF616:
	.string	"_T_PTRDIFF_ "
.LASF661:
	.string	"_GXX_NULLPTR_T "
.LASF1:
	.string	"__cplusplus 201402L"
.LASF129:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF232:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF951:
	.string	"_ZN11MemoryChunk25mergeTrailingsUnallocatedEv"
.LASF115:
	.string	"__WINT_MIN__ 0U"
.LASF614:
	.string	"_ANSI_STDDEF_H "
.LASF131:
	.string	"__INTMAX_WIDTH__ 64"
.LASF417:
	.string	"_GLIBCXX_CXX_CONFIG_H 1"
.LASF804:
	.string	"__EXCEPTION_H 1"
.LASF928:
	.string	"setSize"
.LASF529:
	.string	"_GLIBCXX_HAVE_LDEXPF 1"
.LASF343:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF794:
	.string	"__stringify_1(x) #x"
.LASF758:
	.string	"WCHAR_MAX"
.LASF644:
	.string	"_T_WCHAR_ "
.LASF677:
	.string	"INT32_MAX __INT32_MAX__"
.LASF521:
	.string	"_GLIBCXX_HAVE_HYPOT 1"
.LASF113:
	.string	"__WCHAR_MIN__ 0U"
.LASF235:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF351:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF414:
	.string	"__need_size_t"
.LASF374:
	.string	"__ARM_ARCH 8"
.LASF806:
	.string	"_EXCEPTION_DEFINES_H 1"
.LASF599:
	.string	"_GLIBCXX_USE_C99_INTTYPES_TR1 1"
.LASF922:
	.string	"_ZN11MemoryChunk6setEndEb"
.LASF183:
	.string	"__FLT_RADIX__ 2"
.LASF255:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF945:
	.string	"_ZN11MemoryChunk9moveAheadEm"
.LASF805:
	.string	"_EXCEPTION_PTR_H "
.LASF607:
	.string	"_GLIBCXX_USE_SC_NPROCESSORS_ONLN 1"
.LASF670:
	.string	"INT16_MAX"
.LASF736:
	.string	"INTPTR_MAX"
.LASF44:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF641:
	.string	"__wchar_t__ "
.LASF228:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF10:
	.string	"__LINARO_SPIN__ 0"
.LASF122:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF615:
	.string	"_PTRDIFF_T "
.LASF561:
	.string	"_GLIBCXX_HAVE_SYS_TYPES_H 1"
.LASF601:
	.string	"_GLIBCXX_USE_C99_STDINT_TR1 1"
.LASF105:
	.string	"__cpp_threadsafe_static_init 200806"
.LASF949:
	.string	"_ZN11MemoryChunk5splitEm"
.LASF444:
	.string	"_GLIBCXX_NAMESPACE_CXX11 __cxx11::"
.LASF352:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF451:
	.string	"_GLIBCXX_STD_C std"
.LASF743:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF261:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF646:
	.string	"__WCHAR_T "
.LASF886:
	.string	"int_least32_t"
.LASF120:
	.string	"__INT_WIDTH__ 32"
.LASF222:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF42:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF124:
	.string	"__WINT_WIDTH__ 32"
.LASF820:
	.string	"__glibcxx_function_requires(...) "
.LASF28:
	.string	"__CHAR_BIT__ 8"
.LASF358:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF478:
	.string	"__N(msgid) (msgid)"
.LASF484:
	.string	"_GLIBCXX_HAVE_ACOSF 1"
.LASF903:
	.string	"uintmax_t"
.LASF404:
	.string	"UART_BASE 0x09000000"
.LASF682:
	.string	"INT64_MAX"
.LASF233:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF91:
	.string	"__cpp_delegating_constructors 200604"
.LASF936:
	.string	"getNextBaseFromEnd"
.LASF455:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_ALGO _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF609:
	.string	"_GLIBCXX_USE_WCHAR_T 1"
.LASF33:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF678:
	.string	"INT32_MIN"
.LASF150:
	.string	"__INT32_C(c) c"
.LASF910:
	.string	"endMark"
.LASF735:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF71:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF388:
	.string	"__AARCH64_CMODEL_TINY__"
.LASF515:
	.string	"_GLIBCXX_HAVE_FLOAT_H 1"
.LASF839:
	.string	"exception_ptr"
.LASF40:
	.string	"__WINT_TYPE__ unsigned int"
.LASF770:
	.string	"INT32_C"
.LASF673:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF926:
	.string	"getSize"
.LASF960:
	.string	"nextChunk"
.LASF389:
	.string	"__AARCH64_CMODEL_SMALL__"
.LASF60:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF882:
	.string	"unsigned int"
.LASF633:
	.string	"_SIZE_T_DEFINED_ "
.LASF979:
	.string	"max_align_t"
.LASF943:
	.string	"_ZN11MemoryChunk23setNextValidChunkOffsetEm"
.LASF186:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF270:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF824:
	.string	"__glibcxx_class_requires4(_a,_b,_c,_d,_e) "
.LASF583:
	.string	"_GLIBCXX11_USE_C99_MATH 1"
.LASF967:
	.string	"operator new"
.LASF514:
	.string	"_GLIBCXX_HAVE_FCNTL_H 1"
.LASF438:
	.string	"_GLIBCXX_THROW_OR_ABORT(_EXC) (__builtin_abort())"
.LASF442:
	.string	"_GLIBCXX_USE_DUAL_ABI 1"
.LASF900:
	.string	"intptr_t"
.LASF292:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF268:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF185:
	.string	"__FLT_DIG__ 6"
.LASF59:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF434:
	.string	"_GLIBCXX_NOEXCEPT_IF(_COND) noexcept(_COND)"
.LASF931:
	.string	"_ZN11MemoryChunk10getDataPtrEv"
.LASF689:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF180:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF489:
	.string	"_GLIBCXX_HAVE_CEILF 1"
.LASF191:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF107:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF702:
	.string	"INT_LEAST32_MIN"
.LASF164:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF90:
	.string	"__cpp_initializer_lists 200806"
.LASF280:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF449:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_VERSION "
.LASF487:
	.string	"_GLIBCXX_HAVE_ATAN2F 1"
.LASF617:
	.string	"_T_PTRDIFF "
.LASF121:
	.string	"__LONG_WIDTH__ 64"
.LASF768:
	.string	"INT16_C"
.LASF321:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF231:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF435:
	.string	"_GLIBCXX_USE_NOEXCEPT noexcept"
.LASF117:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF691:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF695:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF600:
	.string	"_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF360:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF369:
	.string	"__ARM_FEATURE_IDIV 1"
.LASF34:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF50:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF893:
	.string	"int_fast16_t"
.LASF909:
	.string	"nextValidChunkOffset"
.LASF45:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF930:
	.string	"getDataPtr"
.LASF687:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF87:
	.string	"__cpp_rvalue_reference 200610"
.LASF119:
	.string	"__SHRT_WIDTH__ 16"
.LASF32:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF327:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF411:
	.string	"_GLIBCXX_CSTDDEF 1"
.LASF623:
	.string	"_PTRDIFF_T_DECLARED "
.LASF785:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF276:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF524:
	.string	"_GLIBCXX_HAVE_INT64_T 1"
.LASF766:
	.string	"INT8_C"
.LASF287:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF697:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF197:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF868:
	.string	"__max_align_ld"
.LASF906:
	.string	"UNIT_K"
.LASF403:
	.string	"KERNEL_ADDRESS 0"
.LASF867:
	.string	"__max_align_ll"
.LASF137:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF375:
	.string	"__ARM_SIZEOF_MINIMAL_ENUM 4"
.LASF969:
	.string	"GNU C++14 7.2.1 20171011 -march=armv8.2-a -mlittle-endian -mabi=lp64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti"
.LASF557:
	.string	"_GLIBCXX_HAVE_SYS_PARAM_H 1"
.LASF246:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF637:
	.string	"___int_size_t_h "
.LASF466:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) "
.LASF93:
	.string	"__cpp_inheriting_constructors 201511"
.LASF864:
	.string	"__gnu_cxx"
.LASF812:
	.string	"_GLIBCXX_HAVE_CDTOR_CALLABI 0"
.LASF787:
	.string	"AS_MACRO __attribute__((always_inline)) inline"
.LASF828:
	.string	"__cpp_lib_is_final 201402L"
.LASF194:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF313:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF738:
	.string	"INTPTR_MIN"
.LASF563:
	.string	"_GLIBCXX_HAVE_TANF 1"
.LASF671:
	.string	"INT16_MAX __INT16_MAX__"
.LASF952:
	.string	"bool"
.LASF767:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF888:
	.string	"uint_least8_t"
.LASF214:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF921:
	.string	"setEnd"
.LASF597:
	.string	"_GLIBCXX_STDIO_SEEK_END 2"
.LASF884:
	.string	"int_least8_t"
.LASF104:
	.string	"__cpp_sized_deallocation 201309"
.LASF968:
	.string	"_ZnwmPv"
.LASF626:
	.string	"_SIZE_T "
.LASF917:
	.string	"setAllocated"
.LASF556:
	.string	"_GLIBCXX_HAVE_STRTOF 1"
.LASF479:
	.string	"_GLIBCXX_USE_C99_MATH _GLIBCXX11_USE_C99_MATH"
.LASF443:
	.string	"_GLIBCXX_USE_CXX11_ABI 1"
.LASF229:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF870:
	.string	"long double"
.LASF808:
	.string	"__catch(X) if (false)"
.LASF753:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF517:
	.string	"_GLIBCXX_HAVE_FMODF 1"
.LASF698:
	.string	"UINT_LEAST16_MAX"
.LASF395:
	.string	"__ARM_FEATURE_QRDMX 1"
.LASF312:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF272:
	.string	"__FLT128_DIG__ 33"
.LASF144:
	.string	"__INT8_C(c) c"
.LASF250:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF613:
	.string	"_STDDEF_H_ "
.LASF709:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF309:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF201:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF630:
	.string	"__SIZE_T "
.LASF48:
	.string	"__INT32_TYPE__ int"
.LASF667:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF821:
	.string	"__glibcxx_class_requires(_a,_b) "
.LASF347:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF301:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF244:
	.string	"__FLT32_DIG__ 6"
.LASF894:
	.string	"int_fast32_t"
.LASF437:
	.string	"_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT"
.LASF776:
	.string	"UINT16_C"
.LASF452:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CONTAINER _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF100:
	.string	"__cpp_decltype_auto 201304"
.LASF423:
	.string	"_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 1"
.LASF797:
	.string	"HEX32(a,b) 0x ##a ##b"
.LASF226:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF342:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF925:
	.string	"_ZN11MemoryChunk7getNextEv"
.LASF293:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF439:
	.string	"_GLIBCXX_NOEXCEPT_PARM "
.LASF432:
	.string	"_GLIBCXX17_INLINE "
.LASF461:
	.string	"_GLIBCXX_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_NAMESPACE_CXX11"
.LASF394:
	.string	"__ARM_FEATURE_CRYPTO"
.LASF496:
	.string	"_GLIBCXX_HAVE_EIDRM 1"
.LASF592:
	.string	"_GLIBCXX_FULLY_DYNAMIC_STRING 0"
.LASF582:
	.string	"STDC_HEADERS 1"
.LASF94:
	.string	"__cpp_ref_qualifiers 200710"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF710:
	.string	"UINT_LEAST64_MAX"
.LASF49:
	.string	"__INT64_TYPE__ long int"
.LASF339:
	.string	"__WCHAR_UNSIGNED__ 1"
.LASF795:
	.string	"__stringify(x) __stringify_1(x)"
.LASF471:
	.string	"_GLIBCXX_CPU_DEFINES 1"
.LASF912:
	.string	"size"
.LASF546:
	.string	"_GLIBCXX_HAVE_SINHF 1"
.LASF849:
	.string	"_ZNSt15__exception_ptr13exception_ptraSEOS0_"
.LASF320:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF953:
	.string	"long long unsigned int"
.LASF817:
	.string	"_GLIBCXX_NESTED_EXCEPTION_H 1"
.LASF977:
	.string	"_ZSt7nothrow"
.LASF813:
	.string	"_TYPEINFO "
.LASF852:
	.string	"swap"
.LASF634:
	.string	"_SIZE_T_DEFINED "
.LASF114:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF954:
	.string	"collectedSize"
.LASF706:
	.string	"INT_LEAST64_MAX"
.LASF879:
	.string	"uint16_t"
.LASF602:
	.string	"_GLIBCXX_USE_FCHMOD 1"
.LASF70:
	.string	"__INTPTR_TYPE__ long int"
.LASF239:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF77:
	.string	"__cpp_binary_literals 201304"
.LASF772:
	.string	"INT64_C"
.LASF845:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EDn"
.LASF857:
	.string	"_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE"
.LASF629:
	.string	"_T_SIZE "
.LASF43:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF286:
	.string	"__FLT32X_DIG__ 15"
.LASF825:
	.string	"_GLIBCXX_TYPE_TRAITS 1"
.LASF175:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF376:
	.string	"__AARCH64EB__"
.LASF165:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF961:
	.string	"splitSize"
.LASF558:
	.string	"_GLIBCXX_HAVE_SYS_RESOURCE_H 1"
.LASF505:
	.string	"_GLIBCXX_HAVE_EOWNERDEAD 1"
.LASF396:
	.string	"__FLT_EVAL_METHOD__"
.LASF495:
	.string	"_GLIBCXX_HAVE_ECHILD 1"
.LASF666:
	.string	"INT8_MIN"
.LASF75:
	.string	"__DEPRECATED 1"
.LASF809:
	.string	"__throw_exception_again "
.LASF277:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF366:
	.string	"__ARM_ARCH_8A 1"
.LASF830:
	.string	"__cpp_lib_result_of_sfinae 201210"
.LASF357:
	.string	"__SIZEOF_INT128__ 16"
.LASF729:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF663:
	.string	"_GCC_STDINT_H "
.LASF116:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF578:
	.string	"_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\""
.LASF319:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF132:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF152:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF858:
	.string	"__cxx11"
.LASF209:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF632:
	.string	"_BSD_SIZE_T_ "
.LASF760:
	.string	"WCHAR_MIN"
.LASF647:
	.string	"_WCHAR_T_ "
.LASF699:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF453:
	.string	"_GLIBCXX_END_NAMESPACE_CONTAINER _GLIBCXX_END_NAMESPACE_VERSION"
.LASF380:
	.string	"__ARM_FP 14"
.LASF896:
	.string	"uint_fast8_t"
.LASF725:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF162:
	.string	"__UINT64_C(c) c ## UL"
.LASF947:
	.string	"_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm"
.LASF547:
	.string	"_GLIBCXX_HAVE_SLEEP 1"
.LASF401:
	.string	"USER_SPACE_START 524288"
.LASF399:
	.string	"__ELF__ 1"
.LASF612:
	.string	"_STDDEF_H "
.LASF80:
	.string	"__cpp_unicode_literals 200710"
.LASF654:
	.string	"_GCC_WCHAR_T "
.LASF61:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF648:
	.string	"_BSD_WCHAR_T_ "
.LASF307:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF392:
	.string	"_ILP32"
.LASF56:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF739:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF189:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF362:
	.string	"__ARM_64BIT_STATE 1"
.LASF625:
	.string	"__SIZE_T__ "
.LASF217:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF545:
	.string	"_GLIBCXX_HAVE_SINF 1"
.LASF740:
	.string	"UINTPTR_MAX"
.LASF855:
	.string	"_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv"
.LASF562:
	.string	"_GLIBCXX_HAVE_S_ISREG 1"
.LASF716:
	.string	"UINT_FAST8_MAX"
.LASF283:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF294:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF173:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF742:
	.string	"INTMAX_MAX"
.LASF660:
	.string	"_GCC_MAX_ALIGN_T "
.LASF383:
	.string	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC"
.LASF212:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF393:
	.string	"__ILP32__"
.LASF269:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF859:
	.string	"__swappable_details"
.LASF534:
	.string	"_GLIBCXX_HAVE_LIMIT_VMEM 0"
.LASF587:
	.string	"_GLIBCXX98_USE_C99_MATH 1"
.LASF370:
	.string	"__ARM_FEATURE_UNALIGNED 1"
.LASF281:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF684:
	.string	"INT64_MIN"
.LASF831:
	.string	"_GLIBCXX_HAS_NESTED_TYPE(_NTYPE) template<typename _Tp, typename = __void_t<>> struct __has_ ##_NTYPE : false_type { }; template<typename _Tp> struct __has_ ##_NTYPE<_Tp, __void_t<typename _Tp::_NTYPE>> : true_type { };"
.LASF774:
	.string	"UINT8_C"
.LASF861:
	.string	"_ZNSt9nothrow_tC4Ev"
.LASF733:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF672:
	.string	"INT16_MIN"
.LASF334:
	.string	"__REGISTER_PREFIX__ "
.LASF333:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF88:
	.string	"__cpp_rvalue_references 200610"
.LASF36:
	.string	"__GNUG__ 7"
.LASF27:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF506:
	.string	"_GLIBCXX_HAVE_EPERM 1"
.LASF378:
	.string	"__AARCH64EL__ 1"
.LASF266:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF142:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF464:
	.string	"__glibcxx_assert(_Condition) "
.LASF801:
	.string	"INCLUDE_GENERIC_UTIL_H_ "
.LASF539:
	.string	"_GLIBCXX_HAVE_MACHINE_PARAM_H 1"
.LASF874:
	.string	"short int"
.LASF469:
	.string	"_GLIBCXX_USE_ALLOCATOR_NEW 1"
.LASF728:
	.string	"UINT_FAST32_MAX"
.LASF972:
	.string	"_M_exception_object"
.LASF295:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF158:
	.string	"__UINT16_C(c) c"
.LASF237:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF238:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF172:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF454:
	.string	"_GLIBCXX_STD_A std"
.LASF704:
	.string	"UINT_LEAST32_MAX"
.LASF941:
	.string	"_ZNK11MemoryChunk23getNextValidChunkOffsetEv"
.LASF427:
	.string	"_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))"
.LASF303:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF542:
	.string	"_GLIBCXX_HAVE_MEMORY_H 1"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF622:
	.string	"_GCC_PTRDIFF_T "
.LASF603:
	.string	"_GLIBCXX_USE_FCHMODAT 1"
.LASF211:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF711:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF873:
	.string	"int16_t"
.LASF705:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF508:
	.string	"_GLIBCXX_HAVE_ETIME 1"
.LASF580:
	.string	"_GLIBCXX_PACKAGE_URL \"\""
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF974:
	.string	"_ZNKSt15__exception_ptr13exception_ptrcvbEv"
.LASF700:
	.string	"INT_LEAST32_MAX"
.LASF24:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF323:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF96:
	.string	"__cpp_return_type_deduction 201304"
.LASF577:
	.string	"_GLIBCXX_PACKAGE_NAME \"package-unused\""
.LASF205:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF604:
	.string	"_GLIBCXX_USE_GETTIMEOFDAY 1"
.LASF81:
	.string	"__cpp_user_defined_literals 200809"
.LASF619:
	.string	"_PTRDIFF_T_ "
.LASF962:
	.string	"allocSize"
.LASF573:
	.string	"_GLIBCXX_HAVE_WCSTOF 1"
.LASF650:
	.string	"_WCHAR_T_DEFINED "
.LASF373:
	.string	"__ARM_FP_FAST"
.LASF493:
	.string	"_GLIBCXX_HAVE_EBADMSG 1"
.LASF136:
	.string	"__INT16_MAX__ 0x7fff"
.LASF371:
	.string	"__ARM_PCS_AAPCS64 1"
.LASF565:
	.string	"_GLIBCXX_HAVE_TGMATH_H 1"
.LASF465:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) "
.LASF467:
	.string	"_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {"
.LASF690:
	.string	"INT_LEAST8_MIN"
.LASF271:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF74:
	.string	"__GXX_WEAK__ 1"
.LASF692:
	.string	"UINT_LEAST8_MAX"
.LASF134:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF752:
	.string	"SIG_ATOMIC_MAX"
.LASF942:
	.string	"setNextValidChunkOffset"
.LASF566:
	.string	"_GLIBCXX_HAVE_UNISTD_H 1"
.LASF501:
	.string	"_GLIBCXX_HAVE_ENOSTR 1"
.LASF8:
	.string	"__VERSION__ \"7.2.1 20171011\""
.LASF939:
	.string	"_ZN11MemoryChunk18setNextBaseFromEndEm"
.LASF907:
	.string	"digitsMap"
.LASF559:
	.string	"_GLIBCXX_HAVE_SYS_STAT_H 1"
.LASF359:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF30:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF940:
	.string	"getNextValidChunkOffset"
.LASF606:
	.string	"_GLIBCXX_USE_LONG_LONG 1"
.LASF72:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF649:
	.string	"_WCHAR_T_DEFINED_ "
.LASF163:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF254:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF950:
	.string	"mergeTrailingsUnallocated"
.LASF407:
	.string	"TARGET_ARCH_IS_qemu_virt "
.LASF314:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF53:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF168:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF652:
	.string	"___int_wchar_t_h "
.LASF598:
	.string	"_GLIBCXX_USE_C99_CTYPE_TR1 1"
.LASF553:
	.string	"_GLIBCXX_HAVE_STRERROR_R 1"
.LASF26:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF97:
	.string	"__cpp_init_captures 201304"
.LASF937:
	.string	"_ZNK11MemoryChunk18getNextBaseFromEndEv"
.LASF38:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF278:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF959:
	.string	"leftSize"
.LASF737:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF596:
	.string	"_GLIBCXX_STDIO_SEEK_CUR 1"
.LASF264:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF282:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF381:
	.string	"__ARM_FP16_FORMAT_IEEE 1"
.LASF844:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4ERKS0_"
.LASF236:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF822:
	.string	"__glibcxx_class_requires2(_a,_b,_c) "
.LASF110:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF491:
	.string	"_GLIBCXX_HAVE_COSF 1"
.LASF20:
	.string	"__SIZEOF_INT__ 4"
.LASF656:
	.string	"_BSD_WCHAR_T_"
.LASF674:
	.string	"UINT16_MAX"
.LASF869:
	.string	"long long int"
.LASF528:
	.string	"_GLIBCXX_HAVE_LC_MESSAGES 1"
.LASF881:
	.string	"uint32_t"
.LASF513:
	.string	"_GLIBCXX_HAVE_FABSF 1"
.LASF568:
	.string	"_GLIBCXX_HAVE_UTIME_H 1"
.LASF230:
	.string	"__FLT16_DIG__ 3"
.LASF177:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF519:
	.string	"_GLIBCXX_HAVE_GETIPINFO 1"
.LASF223:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF897:
	.string	"uint_fast16_t"
.LASF67:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF552:
	.string	"_GLIBCXX_HAVE_STDLIB_H 1"
.LASF653:
	.string	"__INT_WCHAR_T_H "
.LASF948:
	.string	"split"
.LASF957:
	.string	"addingSize"
.LASF780:
	.string	"UINT64_C"
.LASF838:
	.string	"_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv"
.LASF111:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF418:
	.string	"_GLIBCXX_RELEASE 7"
.LASF696:
	.string	"INT_LEAST16_MIN"
.LASF978:
	.string	"11max_align_t"
.LASF258:
	.string	"__FLT64_DIG__ 15"
.LASF325:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF192:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF145:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF55:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF846:
	.string	"_ZNSt15__exception_ptr13exception_ptrC4EOS0_"
.LASF880:
	.string	"short unsigned int"
.LASF533:
	.string	"_GLIBCXX_HAVE_LIMIT_RSS 0"
.LASF784:
	.string	"UINTMAX_C"
.LASF719:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF257:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF216:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF151:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF895:
	.string	"int_fast64_t"
.LASF929:
	.string	"_ZN11MemoryChunk7setSizeEm"
.LASF655:
	.string	"_WCHAR_T_DECLARED "
.LASF538:
	.string	"_GLIBCXX_HAVE_MACHINE_ENDIAN_H 1"
.LASF159:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF555:
	.string	"_GLIBCXX_HAVE_STRING_H 1"
.LASF522:
	.string	"_GLIBCXX_HAVE_ICONV 1"
.LASF783:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF224:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF834:
	.string	"__exception_ptr"
.LASF518:
	.string	"_GLIBCXX_HAVE_FREXPF 1"
.LASF876:
	.string	"int64_t"
.LASF919:
	.string	"isEnd"
.LASF29:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF708:
	.string	"INT_LEAST64_MIN"
.LASF748:
	.string	"PTRDIFF_MAX"
.LASF618:
	.string	"__PTRDIFF_T "
.LASF567:
	.string	"_GLIBCXX_HAVE_USLEEP 1"
.LASF611:
	.string	"_GTHREAD_USE_MUTEX_TIMEDLOCK 1"
.LASF285:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF123:
	.string	"__WCHAR_WIDTH__ 32"
.LASF965:
	.string	"temp"
.LASF916:
	.string	"_ZNK11MemoryChunk11isAllocatedEv"
.LASF762:
	.string	"WINT_MAX"
.LASF147:
	.string	"__INT16_C(c) c"
.LASF721:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF586:
	.string	"_GLIBCXX11_USE_C99_WCHAR 1"
.LASF242:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF819:
	.string	"_CONCEPT_CHECK_H 1"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF176:
	.string	"__INTPTR_WIDTH__ 64"
.LASF829:
	.string	"__cpp_lib_transformation_trait_aliases 201304"
.LASF966:
	.string	"next"
.LASF796:
	.string	"CALL_CONST_EQUIV(var,method) const_cast<std::remove_const<decltype(((var)->method))>>(reinterpret_cast<const decltype(var) *>(var)->method)"
.LASF474:
	.string	"_GLIBCXX_USE_WEAK_REF __GXX_WEAK__"
.LASF525:
	.string	"_GLIBCXX_HAVE_INT64_T_LONG 1"
.LASF215:
	.string	"__LDBL_DIG__ 33"
.LASF527:
	.string	"_GLIBCXX_HAVE_ISWBLANK 1"
.LASF497:
	.string	"_GLIBCXX_HAVE_ENODATA 1"
.LASF781:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF751:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF902:
	.string	"intmax_t"
.LASF199:
	.string	"__DBL_MANT_DIG__ 53"
.LASF387:
	.string	"__ARM_FEATURE_CRC32 1"
.LASF718:
	.string	"INT_FAST16_MAX"
.LASF638:
	.string	"_GCC_SIZE_T "
.LASF109:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF161:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF365:
	.string	"__ARM_ALIGN_MAX_STACK_PWR 16"
.LASF421:
	.string	"_GLIBCXX_CONST __attribute__ ((__const__))"
.LASF778:
	.string	"UINT32_C"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
