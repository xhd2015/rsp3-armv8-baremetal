	.arch armv8.2-a+crc
	.file	"InterruptHandler.cpp"
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
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
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
.LC0:
	.string	"_size>0"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.section	.text._ZN16InterruptHandler12currentStateEv,"axG",@progbits,_ZN16InterruptHandler12currentStateEv,comdat
	.align	2
	.weak	_ZN16InterruptHandler12currentStateEv
	.type	_ZN16InterruptHandler12currentStateEv, %function
_ZN16InterruptHandler12currentStateEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L4
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 61
	bl	_Z19report_assert_errorPKcmS0_S0_
.L4:
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, #48
	add	x0, x2, x0
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16InterruptHandler12currentStateEv, .-_ZN16InterruptHandler12currentStateEv
	.section	.rodata
	.align	1
	.type	_ZL11PID_INVALID, %object
	.size	_ZL11PID_INVALID, 2
_ZL11PID_INVALID:
	.zero	2
	.align	1
	.type	_ZL11PID_CURRENT, %object
	.size	_ZL11PID_CURRENT, 2
_ZL11PID_CURRENT:
	.hword	1
	.align	1
	.type	_ZL10PID_PARENT, %object
	.size	_ZL10PID_PARENT, 2
_ZL10PID_PARENT:
	.hword	2
	.text
	.align	2
	.type	_ZL20__gthread_key_deletei, %function
_ZL20__gthread_key_deletei:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	mov	w0, 0
	add	sp, sp, 16
	ret
	.size	_ZL20__gthread_key_deletei, .-_ZL20__gthread_key_deletei
	.section	.rodata
	.align	3
	.type	_ZStL13allocator_arg, %object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.align	3
	.type	_ZStL6ignore, %object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.text
	.align	2
	.global	_ZN16InterruptHandlerC2Ev
	.type	_ZN16InterruptHandlerC2Ev, %function
_ZN16InterruptHandlerC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	mov	w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	mov	w2, 1
	mov	x1, 0
	bl	_ZN6VectorI14ExceptionStateEC1Emb
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16InterruptHandlerC2Ev, .-_ZN16InterruptHandlerC2Ev
	.global	_ZN16InterruptHandlerC1Ev
	.set	_ZN16InterruptHandlerC1Ev,_ZN16InterruptHandlerC2Ev
	.section	.rodata
	.align	3
.LC2:
	.string	"[INFO] "
	.align	3
.LC3:
	.string	"Undefined instruction\n"
	.align	3
.LC4:
	.string	"not processing it\n"
	.text
	.align	2
	.global	_ZN16InterruptHandler26handleUndefinedInstructionEv
	.type	_ZN16InterruptHandler26handleUndefinedInstructionEv, %function
_ZN16InterruptHandler26handleUndefinedInstructionEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L11:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L11
	.size	_ZN16InterruptHandler26handleUndefinedInstructionEv, .-_ZN16InterruptHandler26handleUndefinedInstructionEv
	.section	.rodata
	.align	3
.LC5:
	.string	"Instruction Abort \n"
	.align	3
.LC6:
	.string	"farNotValid?"
	.align	3
.LC7:
	.string	"\n"
	.align	3
.LC8:
	.string	"FAR = "
	.text
	.align	2
	.global	_ZN16InterruptHandler22handleInstructionAbortEv
	.type	_ZN16InterruptHandler22handleInstructionAbortEv, %function
_ZN16InterruptHandler22handleInstructionAbortEv:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	// Start of user assembly
// 610 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,ESR_EL1
	
// 0 "" 2
	// End of user assembly
	str	w0, [x29, 40]
	ldr	w0, [x29, 40]
	str	w0, [x29, 56]
	ldr	w0, [x29, 56]
	ubfx	x0, x0, 0, 25
	uxtw	x0, w0
	str	x0, [x29, 80]
	strb	wzr, [x29, 79]
	mov	w0, 5
	strb	w0, [x29, 78]
	ldrb	w0, [x29, 79]
	ldr	x1, [x29, 80]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 78]
	ldrb	w0, [x29, 79]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 64]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	str	x0, [x29, 120]
	ldr	w0, [x29, 56]
	ubfx	x0, x0, 0, 25
	uxtw	x0, w0
	str	x0, [x29, 104]
	mov	w0, 10
	strb	w0, [x29, 103]
	mov	w0, 10
	strb	w0, [x29, 102]
	ldrb	w0, [x29, 103]
	ldr	x1, [x29, 104]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 102]
	ldrb	w0, [x29, 103]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 88]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	str	w0, [x29, 116]
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	ldr	w1, [x29, 116]
	bl	_ZN6OutputlsEi
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	ldr	w0, [x29, 116]
	cmp	w0, 0
	bne	.L18
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	// Start of user assembly
// 874 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,FAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L18:
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
.L20:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L20
	.size	_ZN16InterruptHandler22handleInstructionAbortEv, .-_ZN16InterruptHandler22handleInstructionAbortEv
	.section	.rodata
	.align	3
.LC9:
	.string	"Data Abort\n"
	.align	3
.LC10:
	.string	"not processing \n"
	.text
	.align	2
	.global	_ZN16InterruptHandler15handleDataAbortEv
	.type	_ZN16InterruptHandler15handleDataAbortEv, %function
_ZN16InterruptHandler15handleDataAbortEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L22:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L22
	.size	_ZN16InterruptHandler15handleDataAbortEv, .-_ZN16InterruptHandler15handleDataAbortEv
	.section	.rodata
	.align	3
.LC11:
	.string	"SP alignment fault\n"
	.align	3
.LC12:
	.string	"not processing it \n"
	.text
	.align	2
	.global	_ZN16InterruptHandler22handleSPAlignmentFaultEv
	.type	_ZN16InterruptHandler22handleSPAlignmentFaultEv, %function
_ZN16InterruptHandler22handleSPAlignmentFaultEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L24:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L24
	.size	_ZN16InterruptHandler22handleSPAlignmentFaultEv, .-_ZN16InterruptHandler22handleSPAlignmentFaultEv
	.section	.rodata
	.align	3
.LC13:
	.string	"PC alignment fault\n"
	.text
	.align	2
	.global	_ZN16InterruptHandler22handlePCAlignmentFaultEv
	.type	_ZN16InterruptHandler22handlePCAlignmentFaultEv, %function
_ZN16InterruptHandler22handlePCAlignmentFaultEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L26:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L26
	.size	_ZN16InterruptHandler22handlePCAlignmentFaultEv, .-_ZN16InterruptHandler22handlePCAlignmentFaultEv
	.section	.rodata
	.align	3
.LC14:
	.string	"killing Process \n"
	.align	3
.LC15:
	.string	"[FATAL] "
	.align	3
.LC16:
	.string	"unhandled svc : "
	.text
	.align	2
	.global	_ZN16InterruptHandler9handleSVCE7SvcFunc
	.type	_ZN16InterruptHandler9handleSVCE7SvcFunc, %function
_ZN16InterruptHandler9handleSVCE7SvcFunc:
	sub	sp, sp, #544
	stp	x29, x30, [sp]
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	w1, [x29, 36]
	ldr	x0, [x29, 40]
	bl	_ZN16InterruptHandler12currentStateEv
	ldr	x0, [x0, 16]
	str	x0, [x29, 528]
	ldr	w0, [x29, 36]
	cmp	w0, 3
	beq	.L29
	cmp	w0, 3
	bgt	.L30
	cmp	w0, 0
	beq	.L31
	cmp	w0, 1
	beq	.L32
	b	.L28
.L30:
	cmp	w0, 5
	beq	.L33
	cmp	w0, 5
	blt	.L34
	cmp	w0, 7
	beq	.L35
	b	.L28
.L31:
	ldr	x0, [x29, 528]
	ldr	x0, [x0]
	str	x0, [x29, 472]
	ldr	x0, [x29, 528]
	ldr	x0, [x0, 8]
	str	x0, [x29, 464]
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	ldr	x2, [x29, 464]
	ldr	x1, [x29, 472]
	bl	_ZN6Output5printEPKcm
	str	x0, [x29, 456]
	ldr	x0, [x29, 528]
	ldr	x1, [x29, 456]
	str	x1, [x0]
	b	.L36
.L32:
	ldr	x0, [x29, 528]
	ldr	x0, [x0]
	str	x0, [x29, 496]
	ldr	x0, [x29, 528]
	ldr	x0, [x0, 8]
	str	x0, [x29, 488]
	ldr	x0, [x29, 528]
	add	x0, x0, 16
	ldr	x0, [x0]
	str	x0, [x29, 328]
	strb	wzr, [x29, 327]
	ldr	x0, [x29, 328]
	str	x0, [x29, 312]
	ldrb	w0, [x29, 327]
	strb	w0, [x29, 311]
	ldrb	w0, [x29, 327]
	strb	w0, [x29, 310]
	ldrb	w0, [x29, 311]
	ldr	x1, [x29, 312]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 310]
	ldrb	w0, [x29, 311]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 296]
	ldr	x0, [x29, 296]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 296]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, ne
	strb	w0, [x29, 487]
	ldr	x0, [x29, 528]
	add	x0, x0, 16
	ldr	x0, [x0]
	str	x0, [x29, 368]
	mov	w0, 1
	strb	w0, [x29, 367]
	ldr	x0, [x29, 368]
	str	x0, [x29, 352]
	ldrb	w0, [x29, 367]
	strb	w0, [x29, 351]
	ldrb	w0, [x29, 367]
	strb	w0, [x29, 350]
	ldrb	w0, [x29, 351]
	ldr	x1, [x29, 352]
	lsr	x1, x1, x0
	ldrb	w2, [x29, 350]
	ldrb	w0, [x29, 351]
	sub	w0, w2, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 336]
	ldr	x0, [x29, 336]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	mov	x2, -1
	lsl	x2, x2, x0
	ldr	x0, [x29, 336]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	x0, x1, x0
	cmp	x0, 0
	cset	w0, ne
	strb	w0, [x29, 486]
	mov	w0, 33
	str	w0, [x29, 452]
	strb	wzr, [x29, 451]
	ldr	w0, [x29, 452]
	lsr	w0, w0, 5
	mov	w1, w0
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 440]
	str	w1, [x29, 436]
	ldr	w3, [x29, 436]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	ldr	x0, [x29, 440]
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	ldr	w0, [x29, 452]
	and	w0, w0, 255
	and	w0, w0, 31
	and	w0, w0, 255
	str	x1, [x29, 424]
	strb	w0, [x29, 423]
	ldrb	w0, [x29, 451]
	strb	w0, [x29, 422]
	ldr	x0, [x29, 424]
	str	x0, [x29, 408]
	ldrb	w0, [x29, 423]
	strb	w0, [x29, 407]
	ldrb	w0, [x29, 423]
	strb	w0, [x29, 406]
	ldrb	w0, [x29, 422]
	strb	w0, [x29, 405]
	ldr	x0, [x29, 408]
	ldr	w1, [x0]
	ldrb	w2, [x29, 407]
	ldrb	w0, [x29, 406]
	str	x2, [x29, 392]
	str	x0, [x29, 384]
	ldr	x0, [x29, 392]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 392]
	mov	w3, w0
	ldr	x0, [x29, 384]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 384]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [x29, 405]
	ldrb	w3, [x29, 406]
	ldrb	w1, [x29, 407]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 376]
	ldr	x1, [x29, 376]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 376]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [x29, 407]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [x29, 408]
	str	w1, [x0]
	str	xzr, [x29, 536]
.L60:
	ldr	x1, [x29, 536]
	ldr	x0, [x29, 488]
	cmp	x1, x0
	bcs	.L46
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	ldr	x0, [x0, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L48
	ldrb	w0, [x29, 486]
	cmp	w0, 0
	beq	.L69
	mov	w0, 33
	str	w0, [x29, 292]
	mov	w0, 1
	strb	w0, [x29, 291]
	ldr	w0, [x29, 292]
	lsr	w0, w0, 5
	mov	w1, w0
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 280]
	str	w1, [x29, 276]
	ldr	w3, [x29, 276]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	ldr	x0, [x29, 280]
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	ldr	w0, [x29, 292]
	and	w0, w0, 255
	and	w0, w0, 31
	and	w0, w0, 255
	str	x1, [x29, 264]
	strb	w0, [x29, 263]
	ldrb	w0, [x29, 291]
	strb	w0, [x29, 262]
	ldr	x0, [x29, 264]
	str	x0, [x29, 248]
	ldrb	w0, [x29, 263]
	strb	w0, [x29, 247]
	ldrb	w0, [x29, 263]
	strb	w0, [x29, 246]
	ldrb	w0, [x29, 262]
	strb	w0, [x29, 245]
	ldr	x0, [x29, 248]
	ldr	w1, [x0]
	ldrb	w2, [x29, 247]
	ldrb	w0, [x29, 246]
	str	x2, [x29, 232]
	str	x0, [x29, 224]
	ldr	x0, [x29, 232]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 232]
	mov	w3, w0
	ldr	x0, [x29, 224]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 224]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [x29, 245]
	ldrb	w3, [x29, 246]
	ldrb	w1, [x29, 247]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 216]
	ldr	x1, [x29, 216]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 216]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [x29, 247]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [x29, 248]
	str	w1, [x0]
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	mov	w1, 1
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb
.L55:
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	ldr	x0, [x0, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L54
	b	.L55
.L54:
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	mov	w1, 0
	bl	_ZN16InterruptManager12cpuIntEnableILNS_9CPUIntBitE7EEEvb
	mov	w0, 33
	str	w0, [x29, 212]
	strb	wzr, [x29, 211]
	ldr	w0, [x29, 212]
	lsr	w0, w0, 5
	mov	w1, w0
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 200]
	str	w1, [x29, 196]
	ldr	w3, [x29, 196]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	ldr	x0, [x29, 200]
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	ldr	w0, [x29, 212]
	and	w0, w0, 255
	and	w0, w0, 31
	and	w0, w0, 255
	str	x1, [x29, 184]
	strb	w0, [x29, 183]
	ldrb	w0, [x29, 211]
	strb	w0, [x29, 182]
	ldr	x0, [x29, 184]
	str	x0, [x29, 168]
	ldrb	w0, [x29, 183]
	strb	w0, [x29, 167]
	ldrb	w0, [x29, 183]
	strb	w0, [x29, 166]
	ldrb	w0, [x29, 182]
	strb	w0, [x29, 165]
	ldr	x0, [x29, 168]
	ldr	w1, [x0]
	ldrb	w2, [x29, 167]
	ldrb	w0, [x29, 166]
	str	x2, [x29, 152]
	str	x0, [x29, 144]
	ldr	x0, [x29, 152]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 152]
	mov	w3, w0
	ldr	x0, [x29, 144]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 144]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [x29, 165]
	ldrb	w3, [x29, 166]
	ldrb	w1, [x29, 167]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 136]
	ldr	x1, [x29, 136]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 136]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [x29, 167]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [x29, 168]
	str	w1, [x0]
.L48:
	ldr	x0, [x29, 536]
	add	x1, x0, 1
	str	x1, [x29, 536]
	lsl	x0, x0, 1
	ldr	x1, [x29, 496]
	add	x19, x1, x0
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	bl	_ZN5QueueItE6removeEv
	and	w0, w0, 65535
	strh	w0, [x19]
	ldrb	w0, [x29, 487]
	cmp	w0, 0
	beq	.L60
	ldr	x0, [x29, 536]
	lsl	x0, x0, 1
	sub	x0, x0, #2
	ldr	x1, [x29, 496]
	add	x0, x1, x0
	ldrh	w0, [x0]
	cmp	w0, 10
	beq	.L46
	ldr	x0, [x29, 536]
	lsl	x0, x0, 1
	sub	x0, x0, #2
	ldr	x1, [x29, 496]
	add	x0, x1, x0
	ldrh	w0, [x0]
	cmp	w0, 7
	beq	.L46
	b	.L60
.L69:
	nop
.L46:
	ldr	x0, [x29, 528]
	ldr	x1, [x29, 536]
	str	x1, [x0]
	mov	w0, 33
	str	w0, [x29, 132]
	mov	w0, 1
	strb	w0, [x29, 131]
	ldr	w0, [x29, 132]
	lsr	w0, w0, 5
	mov	w1, w0
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 120]
	str	w1, [x29, 116]
	ldr	w3, [x29, 116]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	ldr	x0, [x29, 120]
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	ldr	w0, [x29, 132]
	and	w0, w0, 255
	and	w0, w0, 31
	and	w0, w0, 255
	str	x1, [x29, 104]
	strb	w0, [x29, 103]
	ldrb	w0, [x29, 131]
	strb	w0, [x29, 102]
	ldr	x0, [x29, 104]
	str	x0, [x29, 88]
	ldrb	w0, [x29, 103]
	strb	w0, [x29, 87]
	ldrb	w0, [x29, 103]
	strb	w0, [x29, 86]
	ldrb	w0, [x29, 102]
	strb	w0, [x29, 85]
	ldr	x0, [x29, 88]
	ldr	w1, [x0]
	ldrb	w2, [x29, 87]
	ldrb	w0, [x29, 86]
	str	x2, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 72]
	mov	w3, w0
	ldr	x0, [x29, 64]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 64]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [x29, 85]
	ldrb	w3, [x29, 86]
	ldrb	w1, [x29, 87]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 56]
	ldr	x1, [x29, 56]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 56]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [x29, 87]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [x29, 88]
	str	w1, [x0]
	b	.L36
.L29:
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	ldr	x0, [x29, 528]
	ldr	x0, [x0]
	strh	w0, [x29, 510]
	ldr	x0, [x29, 528]
	ldr	w0, [x0, 8]
	str	w0, [x29, 504]
	ldrh	w0, [x29, 510]
	cmp	w0, 1
	bne	.L65
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManager21currentRunningProcessEv
	mov	x1, x0
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	ldr	x1, [x29, 528]
	bl	_ZN14ProcessManager19scheduleNextProcessEPm
.L65:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L65
.L33:
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManager21currentRunningProcessEv
	str	x0, [x29, 520]
	ldr	x0, [x29, 520]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	ldr	x1, [x29, 528]
	bl	_ZN7Process11saveContextEPKm
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	ldr	x1, [x29, 520]
	bl	_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE
	str	x0, [x29, 512]
	ldr	x0, [x29, 512]
	cmp	x0, 0
	beq	.L66
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	mov	w2, 2
	ldr	x1, [x29, 512]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
	ldr	x0, [x29, 512]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZN7Process9registersEv
	mov	x1, x0
	mov	x0, 1
	str	x0, [x1]
	ldr	x0, [x29, 512]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZNK7Process3pidEv
	and	w0, w0, 65535
	and	x1, x0, 65535
	ldr	x0, [x29, 528]
	str	x1, [x0]
	b	.L36
.L66:
	ldr	x0, [x29, 528]
	str	xzr, [x0]
	b	.L36
.L34:
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	ldr	x1, [x29, 528]
	bl	_ZN14ProcessManager19scheduleNextProcessEPm
	b	.L36
.L35:
	ldr	x0, [x29, 528]
	bl	_ZN18VirtualProxyKernel17handleVFSProxySVCEPm
	mov	x1, x0
	ldr	x0, [x29, 528]
	str	x1, [x0]
	b	.L36
.L28:
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrsw	x0, [x29, 36]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L68:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L68
.L36:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp]
	add	sp, sp, 544
	ret
	.size	_ZN16InterruptHandler9handleSVCE7SvcFunc, .-_ZN16InterruptHandler9handleSVCE7SvcFunc
	.section	.rodata
	.align	3
.LC17:
	.string	"[WARNING] "
	.align	3
.LC18:
	.string	"input buffer is full,extra inputs are discarded.\n"
	.text
	.align	2
	.global	_ZN16InterruptHandler9handleIRQEj
	.type	_ZN16InterruptHandler9handleIRQEj, %function
_ZN16InterruptHandler9handleIRQEj:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	str	wzr, [x29, 60]
	add	x0, x29, 48
	ldr	w1, [x29, 60]
	str	w1, [x0]
	ldr	w0, [x29, 48]
	str	w0, [x29, 56]
	ldr	w0, [x29, 20]
	and	w1, w0, 16777215
	ldr	w0, [x29, 56]
	bfi	w0, w1, 0, 24
	str	w0, [x29, 56]
	ldr	w0, [x29, 20]
	cmp	w0, 27
	bne	.L72
	str	wzr, [x29, 40]
	ldrb	w0, [x29, 40]
	and	w0, w0, -2
	strb	w0, [x29, 40]
	ldr	w0, [x29, 40]
	// Start of user assembly
// 763 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	msr CNTV_CTL_EL0,x0
	
// 0 "" 2
	// End of user assembly
	ldrb	w0, [x29, 40]
	orr	w0, w0, 1
	strb	w0, [x29, 40]
	ldrb	w0, [x29, 40]
	and	w0, w0, -3
	strb	w0, [x29, 40]
	ldr	w0, [x29, 40]
	// Start of user assembly
// 763 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/timer_registers.h" 1
	msr CNTV_CTL_EL0,x0
	
// 0 "" 2
	// End of user assembly
	ldr	w0, [x29, 56]
	// Start of user assembly
// 701 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_1,x0
	
// 0 "" 2
	// End of user assembly
	b	.L81
.L72:
	ldr	w0, [x29, 20]
	cmp	w0, 30
	bne	.L74
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	ldr	w1, [x0]
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	bl	_ZN12GenericTimer12timerValueMSEj
	ldr	w0, [x29, 56]
	// Start of user assembly
// 701 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	bl	_ZN16InterruptHandler12currentStateEv
	ldr	x1, [x0, 16]
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManager19scheduleNextProcessEPm
	b	.L81
.L74:
	ldr	w0, [x29, 20]
	cmp	w0, 33
	bne	.L75
.L80:
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	bl	_ZNK5PL01118readDataNonBlockedEv
	and	w0, w0, 65535
	strh	w0, [x29, 38]
	ldrh	w1, [x29, 38]
	mov	w0, 65535
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L76
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	ldr	x1, [x0, 16]
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	ldr	x0, [x0, 8]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L78
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	b	.L80
.L78:
	add	x1, x29, 38
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	bl	_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_
	b	.L80
.L76:
	ldr	w0, [x29, 56]
	// Start of user assembly
// 701 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_1,x0
	
// 0 "" 2
	// End of user assembly
	b	.L81
.L75:
	ldr	w0, [x29, 56]
	// Start of user assembly
// 701 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c12_1,x0
	
// 0 "" 2
	// End of user assembly
.L81:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16InterruptHandler9handleIRQEj, .-_ZN16InterruptHandler9handleIRQEj
	.section	.rodata
	.align	3
.LC19:
	.string	"processing FIQ_EL1 \n"
	.align	3
.LC20:
	.string	"RegICC_RPR_EL1: "
	.align	3
.LC21:
	.string	"Priortiy = "
	.align	3
.LC22:
	.string	", "
	.align	3
.LC23:
	.string	"RES0_0 = "
	.text
	.align	2
	.global	_ZN16InterruptHandler9handleFIQEj
	.type	_ZN16InterruptHandler9handleFIQEj, %function
_ZN16InterruptHandler9handleFIQEj:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	w1, [x29, 20]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	// Start of user assembly
// 1448 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	mrs x0,s3_0_c12_c11_3
	
// 0 "" 2
	// End of user assembly
	str	w0, [x29, 40]
	ldr	w0, [x29, 40]
	str	w0, [x29, 56]
	add	x0, x29, 56
	str	x0, [x29, 64]
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 64]
	ldrb	w0, [x0]
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 64]
	ldr	w0, [x0]
	lsr	w0, w0, 8
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	str	wzr, [x29, 76]
	add	x0, x29, 32
	ldr	w1, [x29, 76]
	str	w1, [x0]
	ldr	w0, [x29, 32]
	str	w0, [x29, 48]
	ldr	w0, [x29, 20]
	and	w1, w0, 16777215
	ldr	w0, [x29, 48]
	bfi	w0, w1, 0, 24
	str	w0, [x29, 48]
	ldr	w0, [x29, 48]
	// Start of user assembly
// 632 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	msr s3_0_c12_c8_1,x0
	
// 0 "" 2
	// End of user assembly
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16InterruptHandler9handleFIQEj, .-_ZN16InterruptHandler9handleFIQEj
	.section	.rodata
	.align	3
.LC24:
	.string	"processing SErrorEL1 \n"
	.text
	.align	2
	.global	_ZN16InterruptHandler12handleSErrorEv
	.type	_ZN16InterruptHandler12handleSErrorEv, %function
_ZN16InterruptHandler12handleSErrorEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16InterruptHandler12handleSErrorEv, .-_ZN16InterruptHandler12handleSErrorEv
	.section	.rodata
	.align	3
.LC25:
	.string	"Currently unhandled exception\n"
	.text
	.align	2
	.global	_ZN16InterruptHandler18unhandledExceptionEv
	.type	_ZN16InterruptHandler18unhandledExceptionEv, %function
_ZN16InterruptHandler18unhandledExceptionEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L87:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L87
	.size	_ZN16InterruptHandler18unhandledExceptionEv, .-_ZN16InterruptHandler18unhandledExceptionEv
	.section	.rodata
	.align	3
.LC26:
	.string	"_nestedExceps.size() > 0"
	.align	3
.LC27:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/interrupt/InterruptHandler.cpp"
	.text
	.align	2
	.global	_ZN16InterruptHandler11exitCurrentEv
	.type	_ZN16InterruptHandler11exitCurrentEv, %function
_ZN16InterruptHandler11exitCurrentEv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L90
	adrp	x0, .LC26
	add	x2, x0, :lo12:.LC26
	adrp	x0, _ZZN16InterruptHandler11exitCurrentEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN16InterruptHandler11exitCurrentEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	mov	x3, x2
	mov	x2, x1
	mov	x1, 224
	bl	_Z19report_assert_errorPKcmS0_S0_
.L90:
	ldr	x0, [x29, 24]
	strb	wzr, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	bne	.L91
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 61
	bl	_Z19report_assert_errorPKcmS0_S0_
.L91:
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, #48
	add	x0, x2, x0
	bl	_ZN14ExceptionState7restoreEv
	ldr	x0, [x29, 24]
	add	x2, x0, 8
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	sub	x0, x0, #1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6VectorI14ExceptionStateE6resizeEm
	ldr	x0, [x29, 24]
	mov	w1, 1
	strb	w1, [x0]
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16InterruptHandler11exitCurrentEv, .-_ZN16InterruptHandler11exitCurrentEv
	.section	.text._ZN6VectorI14ExceptionStateEC2Emb,"axG",@progbits,_ZN6VectorI14ExceptionStateEC5Emb,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateEC2Emb
	.type	_ZN6VectorI14ExceptionStateEC2Emb, %function
_ZN6VectorI14ExceptionStateEC2Emb:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	strb	w2, [x29, 31]
	ldr	x0, [x29, 40]
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 40]
	str	xzr, [x0, 16]
	ldrb	w0, [x29, 31]
	cmp	w0, 0
	beq	.L95
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 32]
	mov	x0, 8
	cmp	x2, 8
	csel	x1, x1, x0, cs
	ldr	x0, [x29, 40]
	str	x1, [x0, 8]
	b	.L96
.L95:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 8]
.L96:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L104
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L98
	str	xzr, [x29, 56]
.L102:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 32]
	cmp	x1, x0
	beq	.L99
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x1, [x29, 56]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x0, x2, x0
	mov	x1, x0
	mov	x0, 48
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L101
	bl	_ZN14ExceptionStateC1Ev
.L101:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L102
.L99:
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 16]
	b	.L104
.L98:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
.L104:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorI14ExceptionStateEC2Emb, .-_ZN6VectorI14ExceptionStateEC2Emb
	.weak	_ZN6VectorI14ExceptionStateEC1Emb
	.set	_ZN6VectorI14ExceptionStateEC1Emb,_ZN6VectorI14ExceptionStateEC2Emb
	.section	.rodata
	.align	3
.LC28:
	.string	"!empty()"
	.align	3
.LC29:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/templates_implementation/data_structures/Queue.h"
	.section	.text._ZN5QueueItE6removeEv,"axG",@progbits,_ZN5QueueItE6removeEv,comdat
	.align	2
	.weak	_ZN5QueueItE6removeEv
	.type	_ZN5QueueItE6removeEv, %function
_ZN5QueueItE6removeEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L107
	adrp	x0, .LC28
	add	x2, x0, :lo12:.LC28
	adrp	x0, _ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L107:
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 32]
	add	x3, x0, 1
	ldr	x2, [x29, 24]
	str	x3, [x2, 32]
	lsl	x0, x0, 1
	add	x0, x1, x0
	str	x0, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	sub	x1, x0, #1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 32]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bne	.L108
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
.L108:
	ldr	x0, [x29, 40]
	bl	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	ldrh	w0, [x0]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN5QueueItE6removeEv, .-_ZN5QueueItE6removeEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv, %function
_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv, .-_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	.section	.text._ZN6VectorI14ExceptionStateE6resizeEm,"axG",@progbits,_ZN6VectorI14ExceptionStateE6resizeEm,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateE6resizeEm
	.type	_ZN6VectorI14ExceptionStateE6resizeEm, %function
_ZN6VectorI14ExceptionStateE6resizeEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x2, [x29, 16]
	ldr	x1, [x29, 16]
	mov	x0, 8
	cmp	x2, 8
	csel	x0, x1, x0, cs
	str	x0, [x29, 40]
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI14ExceptionStateE14resizeCapacityEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L113
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
.L113:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L114
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bne	.L114
	mov	w0, 1
	b	.L115
.L114:
	mov	w0, 0
.L115:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI14ExceptionStateE6resizeEm, .-_ZN6VectorI14ExceptionStateE6resizeEm
	.section	.text._ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m
	.type	_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m, %function
_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m, .-_ZN13MemoryManager10allocateAsIP14ExceptionStateEET_m
	.section	.text._ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.align	2
	.weak	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_, %function
_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	.section	.rodata
	.align	3
.LC30:
	.string	"!full()"
	.section	.text._ZN5QueueItE10emplacePutIJRKtEEEvDpOT_,"axG",@progbits,_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_,comdat
	.align	2
	.weak	_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_
	.type	_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_, %function
_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	cset	w0, eq
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L123
	adrp	x0, .LC30
	add	x2, x0, :lo12:.LC30
	adrp	x0, _ZZN5QueueItE10emplacePutIJRKtEEEvDpOT_E19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN5QueueItE10emplacePutIJRKtEEEvDpOT_E19__PRETTY_FUNCTION__
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	mov	x3, x2
	mov	x2, x1
	mov	x1, 68
	bl	_Z19report_assert_errorPKcmS0_S0_
.L123:
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	ldrh	w19, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 24]
	add	x3, x0, 1
	ldr	x2, [x29, 40]
	str	x3, [x2, 24]
	lsl	x0, x0, 1
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 2
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L125
	mov	w1, w19
	strh	w1, [x0]
.L125:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 40]
	str	x1, [x0, 16]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bne	.L127
	ldr	x0, [x29, 40]
	str	xzr, [x0, 24]
.L127:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_, .-_ZN5QueueItE10emplacePutIJRKtEEEvDpOT_
	.section	.text._ZN6VectorI14ExceptionStateE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI14ExceptionStateE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateE14resizeCapacityEm
	.type	_ZN6VectorI14ExceptionStateE14resizeCapacityEm, %function
_ZN6VectorI14ExceptionStateE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L129
	mov	w0, 1
	b	.L130
.L129:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L131
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	mov	x2, x1
	mov	x1, x4
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L132
.L131:
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L132:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L133
	mov	w0, 0
	b	.L130
.L133:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L130:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI14ExceptionStateE14resizeCapacityEm, .-_ZN6VectorI14ExceptionStateE14resizeCapacityEm
	.section	.text._ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.rodata
	.align	3
	.type	_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__, 47
_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::last() [with T = ExceptionState]"
	.align	3
	.type	_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__, 51
_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__:
	.string	"T Queue<T>::remove() [with T = short unsigned int]"
	.align	3
	.type	_ZZN5QueueItE10emplacePutIJRKtEEEvDpOT_E19__PRETTY_FUNCTION__, %object
	.size	_ZZN5QueueItE10emplacePutIJRKtEEEvDpOT_E19__PRETTY_FUNCTION__, 104
_ZZN5QueueItE10emplacePutIJRKtEEEvDpOT_E19__PRETTY_FUNCTION__:
	.string	"void Queue<T>::emplacePut(Args&& ...) [with Args = {const short unsigned int&}; T = short unsigned int]"
	.align	3
	.type	_ZZN16InterruptHandler11exitCurrentEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN16InterruptHandler11exitCurrentEvE19__PRETTY_FUNCTION__, 37
_ZZN16InterruptHandler11exitCurrentEvE19__PRETTY_FUNCTION__:
	.string	"void InterruptHandler::exitCurrent()"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
