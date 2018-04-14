	.arch armv8.2-a+crc
	.file	"cpu_delay_with_nop.cpp"
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
	.global	_Z8delayCPUm
	.type	_Z8delayCPUm, %function
_Z8delayCPUm:
	sub	sp, sp, #16
	str	x0, [sp, 8]
.L3:
	ldr	x0, [sp, 8]
	sub	x1, x0, #1
	str	x1, [sp, 8]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	// Start of user assembly
// 147 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	nop 
	
// 0 "" 2
	// End of user assembly
	b	.L3
.L4:
	nop
	add	sp, sp, 16
	ret
	.size	_Z8delayCPUm, .-_Z8delayCPUm
	.align	2
	.global	_Z8delayCPUmm
	.type	_Z8delayCPUmm, %function
_Z8delayCPUmm:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
.L7:
	ldr	x0, [x29, 24]
	sub	x1, x0, #1
	str	x1, [x29, 24]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	ldr	x0, [x29, 16]
	bl	_Z8delayCPUm
	b	.L7
.L8:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_Z8delayCPUmm, .-_Z8delayCPUmm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
