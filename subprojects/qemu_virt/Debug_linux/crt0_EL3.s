	.arch armv8.2-a+crc
	.file	"crt0_EL3.cpp"
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
	// Start of user assembly
	.section .text.boot 
	.global asm_start 
	asm_start: 
	mrs     x0, mpidr_el1 
	and     x0, x0, #0b11 
	cmp     x0,#0 
	b.eq      2f 
	1:  	wfe	
	b       1b	
	2: 
	b    1b 
	mrs x0, sctlr_el1 
	mrs x0,ID_AA64MMFR0_EL1 
	mrs x0, CurrentEL 
	mov x1,#4 
	udiv x0,x0,x1 
	cmp  x0,#1 
	b.eq  2f 
	cmp  x0,#2 
	b.eq  1f 
	ldr  x0,=0x0430 
	msr  scr_el3,x0 
	mrs  x0,hcr_el2 
	orr  x0,x0,#(1<<31)  
	msr  hcr_el2,x0 
	ldr  x0,=0x3c5 
	msr  spsr_el3,x0 
	adr  x0,2f 
	msr  elr_el3, x0 
	eret 
	1: 
	mrs  x0,hcr_el2 
	orr  x0,x0,#(1<<31)  
	msr  hcr_el2,x0 
	ldr x0,=0x3c5 
	msr spsr_el2,x0 
	adr x0, 2f 
	msr elr_el2, x0 
	eret 
	2: 
	mov x0,#1
	and x0,x0,#1 
	msr SPSel, x0 
	ldr x0, =__stack_top 
	mov sp, x0 
	 b init 
	
	// End of user assembly
	.text
	.align	2
	.global	init
	.type	init, %function
init:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	adrp	x0, __bss_start
	add	x0, x0, :lo12:__bss_start
	str	x0, [x29, 24]
.L3:
	ldr	x1, [x29, 24]
	adrp	x0, __bss_end
	add	x0, x0, :lo12:__bss_end
	cmp	x1, x0
	beq	.L2
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 24]
	b	.L3
.L2:
	bl	main
	str	w0, [x29, 20]
.L4:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L4
	.size	init, .-init
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
