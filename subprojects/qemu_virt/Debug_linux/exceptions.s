	.arch armv8.2-a+crc
	.file	"exceptions.cpp"
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
	bne	.L6
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
.L6:
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
	// Start of user assembly
	.text 
	.align 11 
	.global ExceptionVectorEL1 
	ExceptionVectorEL1:  
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,0
	mov x2,0
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x080 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,1
	mov x2,0
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x100 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,2
	mov x2,0
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x180 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,3
	mov x2,0
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x200 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,0
	mov x2,1
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x280 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,1
	mov x2,1
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x300 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,2
	mov x2,1
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x380 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,3
	mov x2,1
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x400 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,0
	mov x2,2
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x480 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,1
	mov x2,2
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x500 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,2
	mov x2,2
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x580 
	stp x29,x30,[sp,#-16]! 
	stp x27,x28,[sp,#-16]! 
	stp x25,x26,[sp,#-16]! 
	stp x23,x24,[sp,#-16]! 
	stp x21,x22,[sp,#-16]! 
	stp x19,x20,[sp,#-16]! 
	stp x17,x18,[sp,#-16]! 
	stp x15,x16,[sp,#-16]! 
	stp x13,x14,[sp,#-16]! 
	stp x11,x12,[sp,#-16]! 
	stp x9,x10,[sp,#-16]! 
	stp x7,x8,[sp,#-16]! 
	stp x5,x6,[sp,#-16]! 
	stp x3,x4,[sp,#-16]! 
	stp x1,x2,[sp,#-16]! 
	str x0,[sp,#-8]! 
	mov x0,sp 
	mov x1,3
	mov x2,2
	bl  exceptionCHandler
	. = ExceptionVectorEL1 + 0x780 + 0x80
	
	.section	.rodata
	.align	3
.LC2:
	.string	"[FATAL] "
	.align	3
.LC3:
	.string	"synchronous exception happened while the handler indicates that synchronous exception is not allowed.\n"
	// End of user assembly
	.text
	.align	2
	.global	exceptionCHandler
	.type	exceptionCHandler, %function
exceptionCHandler:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	str	x0, [x29, 80]
	ldr	x0, [x29, 32]
	str	x0, [x29, 88]
	ldr	x0, [x29, 24]
	str	x0, [x29, 96]
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	ldrb	w0, [x0]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L10
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
.L11:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L11
.L10:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	strb	wzr, [x0]
	adrp	x0, intHandler+8
	add	x0, x0, :lo12:intHandler+8
	add	x3, x29, 96
	add	x2, x29, 88
	add	x1, x29, 80
	bl	_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	mov	w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 88]
	cmp	x0, 1
	beq	.L13
	cmp	x0, 1
	bcc	.L14
	cmp	x0, 2
	beq	.L15
	cmp	x0, 3
	beq	.L16
	b	.L12
.L13:
	// Start of user assembly
// 1007 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	mrs x0,s3_0_c12_c12_0
	
// 0 "" 2
	// End of user assembly
	str	w0, [x29, 64]
	ldr	w0, [x29, 64]
	str	w0, [x29, 112]
	ldr	w0, [x29, 112]
	ubfx	x0, x0, 0, 24
	mov	w1, w0
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler9handleIRQEj
	b	.L12
.L15:
	// Start of user assembly
// 964 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/gicv3_registers.h" 1
	mrs x0,s3_0_c12_c8_0
	
// 0 "" 2
	// End of user assembly
	str	w0, [x29, 72]
	ldr	w0, [x29, 72]
	str	w0, [x29, 104]
	ldr	w0, [x29, 104]
	ubfx	x0, x0, 0, 24
	mov	w1, w0
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler9handleFIQEj
	b	.L12
.L16:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler12handleSErrorEv
	b	.L12
.L14:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler12currentStateEv
	ldr	w0, [x0, 36]
	str	w0, [x29, 56]
	ldrb	w0, [x29, 59]
	ubfx	x0, x0, 2, 6
	and	w0, w0, 255
	cmp	w0, 34
	beq	.L20
	cmp	w0, 34
	bgt	.L21
	cmp	w0, 21
	beq	.L22
	cmp	w0, 21
	bgt	.L23
	cmp	w0, 0
	beq	.L24
	b	.L19
.L23:
	cmp	w0, 32
	blt	.L19
	b	.L32
.L21:
	cmp	w0, 38
	beq	.L26
	cmp	w0, 38
	bgt	.L27
	cmp	w0, 36
	blt	.L19
	b	.L33
.L27:
	cmp	w0, 47
	beq	.L29
	b	.L19
.L24:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler26handleUndefinedInstructionEv
	b	.L12
.L22:
	mov	x0, 16
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	mov	w1, w0
	mov	w0, 64
	sub	w0, w0, w1
	mov	x1, -1
	lsl	x1, x1, x0
	ldr	x0, [x29, 120]
	mov	w2, w0
	mov	w0, 64
	sub	w0, w0, w2
	lsr	x0, x1, x0
	mov	w1, w0
	ldr	w0, [x29, 56]
	ubfx	x0, x0, 0, 25
	and	w0, w1, w0
	mov	w1, w0
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler9handleSVCE7SvcFunc
	b	.L12
.L33:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler15handleDataAbortEv
	b	.L12
.L32:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler22handleInstructionAbortEv
	b	.L12
.L26:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler22handleSPAlignmentFaultEv
	b	.L12
.L20:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler22handlePCAlignmentFaultEv
	b	.L12
.L29:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler12handleSErrorEv
	b	.L12
.L19:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler18unhandledExceptionEv
.L12:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler11exitCurrentEv
	ldr	x0, [x29, 40]
	// Start of user assembly
// 79 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/interrupt/exceptions.cpp" 1
	mov sp,x0 
	ldr x0,[sp],#8 
	ldp x1,x2,[sp],#16 
	ldp x3,x4,[sp],#16 
	ldp x5,x6,[sp],#16 
	ldp x7,x8,[sp],#16 
	ldp x9,x10,[sp],#16 
	ldp x11,x12,[sp],#16 
	ldp x13,x14,[sp],#16 
	ldp x15,x16,[sp],#16 
	ldp x17,x18,[sp],#16 
	ldp x19,x20,[sp],#16 
	ldp x21,x22,[sp],#16 
	ldp x23,x24,[sp],#16 
	ldp x25,x26,[sp],#16 
	ldp x27,x28,[sp],#16 
	ldp x29,x30,[sp],#16 
	eret 
	
// 0 "" 2
	// End of user assembly
	nop
	ldp	x29, x30, [sp], 128
	ret
	.size	exceptionCHandler, .-exceptionCHandler
	.section	.text._ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_,"axG",@progbits,_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_
	.type	_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_, %function
_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	x3, [x29, 48]
	ldr	x0, [x29, 72]
	bl	_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L44
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 72]
	str	x1, [x0, 16]
	ldr	x0, [x29, 64]
	bl	_ZSt7forwardIRPmEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x19, [x0]
	ldr	x0, [x29, 56]
	bl	_ZSt7forwardIR13ExceptionTypeEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x20, [x0]
	ldr	x0, [x29, 48]
	bl	_ZSt7forwardIR15ExceptionOriginEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x21, [x0]
	ldr	x0, [x29, 72]
	ldr	x2, [x0]
	ldr	x0, [x29, 72]
	ldr	x1, [x0, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, #48
	add	x0, x2, x0
	mov	x1, x0
	mov	x0, 48
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L44
	mov	x3, x21
	mov	x2, x20
	mov	x1, x19
	bl	_ZN14ExceptionStateC1EPm13ExceptionType15ExceptionOrigin
.L44:
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_, .-_ZN6VectorI14ExceptionStateE11emplaceBackIJRPmR13ExceptionTypeR15ExceptionOriginEEEvDpOT_
	.section	.text._ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv, %function
_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L46
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L47
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L49
.L47:
	mov	x0, 8
.L49:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI14ExceptionStateE14resizeCapacityEm
	and	w0, w0, 255
	b	.L50
.L46:
	mov	w0, 1
.L50:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv, .-_ZN6VectorI14ExceptionStateE24adjustCapacityForOneMoreEv
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
	bne	.L52
	mov	w0, 1
	b	.L53
.L52:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L54
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
	b	.L55
.L54:
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
.L55:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L56
	mov	w0, 0
	b	.L53
.L56:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L53:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI14ExceptionStateE14resizeCapacityEm, .-_ZN6VectorI14ExceptionStateE14resizeCapacityEm
	.section	.rodata
	.align	3
	.type	_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__, 47
_ZZN6VectorI14ExceptionStateE4lastEvE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::last() [with T = ExceptionState]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
