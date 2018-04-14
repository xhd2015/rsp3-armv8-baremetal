	.arch armv8.2-a+crc
	.file	"VirtualProxyKernel.cpp"
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
	.section	.text._ZNSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNSt9_Any_data9_M_accessEv,comdat
	.align	2
	.weak	_ZNSt9_Any_data9_M_accessEv
	.type	_ZNSt9_Any_data9_M_accessEv, %function
_ZNSt9_Any_data9_M_accessEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZNSt9_Any_data9_M_accessEv, .-_ZNSt9_Any_data9_M_accessEv
	.section	.text._ZNKSt9_Any_data9_M_accessEv,"axG",@progbits,_ZNKSt9_Any_data9_M_accessEv,comdat
	.align	2
	.weak	_ZNKSt9_Any_data9_M_accessEv
	.type	_ZNKSt9_Any_data9_M_accessEv, %function
_ZNKSt9_Any_data9_M_accessEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZNKSt9_Any_data9_M_accessEv, .-_ZNKSt9_Any_data9_M_accessEv
	.section	.text._ZNSt14_Function_baseC2Ev,"axG",@progbits,_ZNSt14_Function_baseC5Ev,comdat
	.align	2
	.weak	_ZNSt14_Function_baseC2Ev
	.type	_ZNSt14_Function_baseC2Ev, %function
_ZNSt14_Function_baseC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZNSt14_Function_baseC2Ev, .-_ZNSt14_Function_baseC2Ev
	.weak	_ZNSt14_Function_baseC1Ev
	.set	_ZNSt14_Function_baseC1Ev,_ZNSt14_Function_baseC2Ev
	.section	.text._ZNSt14_Function_baseD2Ev,"axG",@progbits,_ZNSt14_Function_baseD5Ev,comdat
	.align	2
	.weak	_ZNSt14_Function_baseD2Ev
	.type	_ZNSt14_Function_baseD2Ev, %function
_ZNSt14_Function_baseD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	beq	.L12
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 24]
	mov	w2, 3
	blr	x3
.L12:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt14_Function_baseD2Ev, .-_ZNSt14_Function_baseD2Ev
	.weak	_ZNSt14_Function_baseD1Ev
	.set	_ZNSt14_Function_baseD1Ev,_ZNSt14_Function_baseD2Ev
	.section	.text._ZNKSt14_Function_base8_M_emptyEv,"axG",@progbits,_ZNKSt14_Function_base8_M_emptyEv,comdat
	.align	2
	.weak	_ZNKSt14_Function_base8_M_emptyEv
	.type	_ZNKSt14_Function_base8_M_emptyEv, %function
_ZNKSt14_Function_base8_M_emptyEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNKSt14_Function_base8_M_emptyEv, .-_ZNKSt14_Function_base8_M_emptyEv
	.section	.text._ZNSt8functionIFvP11VirtualFileEED2Ev,"axG",@progbits,_ZNSt8functionIFvP11VirtualFileEED5Ev,comdat
	.align	2
	.weak	_ZNSt8functionIFvP11VirtualFileEED2Ev
	.type	_ZNSt8functionIFvP11VirtualFileEED2Ev, %function
_ZNSt8functionIFvP11VirtualFileEED2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNSt14_Function_baseD2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt8functionIFvP11VirtualFileEED2Ev, .-_ZNSt8functionIFvP11VirtualFileEED2Ev
	.weak	_ZNSt8functionIFvP11VirtualFileEED1Ev
	.set	_ZNSt8functionIFvP11VirtualFileEED1Ev,_ZNSt8functionIFvP11VirtualFileEED2Ev
	.text
	.align	2
	.global	_ZN18VirtualProxyKernelC2Ev
	.type	_ZN18VirtualProxyKernelC2Ev, %function
_ZN18VirtualProxyKernelC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN18VirtualProxyKernelC2Ev, .-_ZN18VirtualProxyKernelC2Ev
	.global	_ZN18VirtualProxyKernelC1Ev
	.set	_ZN18VirtualProxyKernelC1Ev,_ZN18VirtualProxyKernelC2Ev
	.align	2
	.global	_ZN18VirtualProxyKernelD2Ev
	.type	_ZN18VirtualProxyKernelD2Ev, %function
_ZN18VirtualProxyKernelD2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN18VirtualProxyKernelD2Ev, .-_ZN18VirtualProxyKernelD2Ev
	.global	_ZN18VirtualProxyKernelD1Ev
	.set	_ZN18VirtualProxyKernelD1Ev,_ZN18VirtualProxyKernelD2Ev
	.align	2
	.global	_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_
	.type	_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_, %function
_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	add	x0, x29, 88
	bl	_ZN6VectorI9StringRefEC1Ev
	str	xzr, [x29, 120]
	str	xzr, [x29, 80]
.L23:
	add	x0, x29, 80
	ldr	x3, [x29, 48]
	mov	x2, x0
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 40]
	blr	x3
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	cmp	x0, 0
	bne	.L19
	ldr	x0, [x29, 104]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	b	.L29
.L19:
	add	x2, x29, 80
	add	x1, x29, 72
	add	x0, x29, 88
	bl	_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_
	ldr	x0, [x29, 120]
	add	x0, x0, 1
	str	x0, [x29, 120]
	b	.L23
.L21:
	mov	w19, 1
	b	.L24
.L29:
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L25
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x3, [x0]
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 80
	ldr	x2, [x0]
	add	x0, x29, 88
	mov	x1, x0
	mov	x0, x3
	blr	x2
	mov	x1, x0
	ldr	x0, [x29, 56]
	str	x1, [x0]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	cmp	x0, 0
	cset	w0, ne
	and	w19, w0, 255
	b	.L24
.L25:
	ldr	x0, [x29, 56]
	ldr	x3, [x0]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 80
	ldr	x2, [x0]
	add	x0, x29, 88
	mov	x1, x0
	mov	x0, x3
	blr	x2
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	cmp	x0, 0
	beq	.L27
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 112]
	str	x1, [x0]
	mov	w19, 1
	b	.L24
.L27:
	mov	w19, 0
.L24:
	add	x0, x29, 88
	bl	_ZN6VectorI9StringRefED1Ev
	mov	w0, w19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_, .-_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_
	.align	2
	.type	_ZZN18VirtualProxyKernel2lsEPFvPvPKcmES0_ENKUlP11VirtualFileE_clES6_, %function
_ZZN18VirtualProxyKernel2lsEPFvPvPKcmES0_ENKUlP11VirtualFileE_clES6_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x3, [x0]
	ldr	x0, [x29, 24]
	ldr	x4, [x0, 8]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	add	x0, x0, 8
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	add	x0, x0, 8
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	mov	x2, x0
	mov	x0, x4
	blr	x3
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x0]
	add	x1, x1, 1
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZZN18VirtualProxyKernel2lsEPFvPvPKcmES0_ENKUlP11VirtualFileE_clES6_, .-_ZZN18VirtualProxyKernel2lsEPFvPvPKcmES0_ENKUlP11VirtualFileE_clES6_
	.align	2
	.global	_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_
	.type	_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_, %function
_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_:
	stp	x29, x30, [sp, -240]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 88]
	str	x1, [x29, 80]
	str	x2, [x29, 72]
	str	xzr, [x29, 128]
	ldr	x0, [x29, 80]
	str	x0, [x29, 104]
	ldr	x0, [x29, 72]
	str	x0, [x29, 112]
	add	x0, x29, 128
	str	x0, [x29, 120]
	ldr	x0, [x29, 88]
	ldr	x0, [x0]
	cmp	x0, 0
	bne	.L36
	add	x2, x29, 32
	add	x3, x29, 104
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, x29, 32
	add	x0, x29, 136
	bl	_ZNSt8functionIFvP11VirtualFileEEC1IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_
	add	x0, x29, 136
	str	x0, [x29, 232]
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x20, [x0]
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 96
	ldr	x19, [x0]
	add	x0, x29, 200
	ldr	x1, [x29, 232]
	bl	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_
	add	x0, x29, 200
	mov	x1, x0
	mov	x0, x20
	blr	x19
	add	x0, x29, 200
	bl	_ZNSt8functionIFvP11VirtualFileEED1Ev
	add	x0, x29, 136
	bl	_ZNSt8functionIFvP11VirtualFileEED1Ev
	b	.L37
.L36:
	ldr	x0, [x29, 88]
	ldr	x20, [x0]
	ldr	x0, [x29, 88]
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 96
	ldr	x19, [x0]
	add	x2, x29, 32
	add	x3, x29, 104
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, x29, 32
	add	x0, x29, 168
	bl	_ZNSt8functionIFvP11VirtualFileEEC1IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_
	add	x0, x29, 168
	mov	x1, x0
	mov	x0, x20
	blr	x19
	add	x0, x29, 168
	bl	_ZNSt8functionIFvP11VirtualFileEED1Ev
.L37:
	ldr	x0, [x29, 128]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 240
	ret
	.size	_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_, .-_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_
	.align	2
	.global	_ZN18VirtualProxyKernel17handleVFSProxySVCEPm
	.type	_ZN18VirtualProxyKernel17handleVFSProxySVCEPm, %function
_ZN18VirtualProxyKernel17handleVFSProxySVCEPm:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 72]
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	ldr	x0, [x0]
	str	w0, [x29, 68]
	ldr	x0, [x29, 40]
	add	x0, x0, 16
	str	x0, [x29, 56]
	ldr	w0, [x29, 68]
	cmp	w0, 1
	beq	.L41
	cmp	w0, 1
	bgt	.L42
	cmp	w0, 0
	beq	.L43
	b	.L40
.L42:
	cmp	w0, 2
	beq	.L44
	cmp	w0, 3
	beq	.L45
	b	.L40
.L43:
	mov	x0, 8
	bl	_Znwm
	mov	x19, x0
	mov	x0, x19
	bl	_ZN18VirtualProxyKernelC1Ev
	mov	x0, x19
	b	.L46
.L45:
	ldr	x19, [x29, 72]
	cmp	x19, 0
	beq	.L48
	mov	x0, x19
	bl	_ZN18VirtualProxyKernelD1Ev
	mov	x1, 8
	mov	x0, x19
	bl	_ZdlPvm
	b	.L48
.L44:
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [x29, 56]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [x29, 72]
	bl	_ZN18VirtualProxyKernel2cdEPFPKcPvmRmES2_
	and	w0, w0, 255
	and	x0, x0, 255
	b	.L46
.L41:
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	x0, [x29, 56]
	add	x0, x0, 8
	ldr	x0, [x0]
	mov	x2, x0
	ldr	x0, [x29, 72]
	bl	_ZN18VirtualProxyKernel2lsEPFvPvPKcmES0_
	b	.L46
.L48:
	nop
.L40:
	mov	x0, 1
.L46:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN18VirtualProxyKernel17handleVFSProxySVCEPm, .-_ZN18VirtualProxyKernel17handleVFSProxySVCEPm
	.section	.text._ZNSt8functionIFvP11VirtualFileEEC2ERKS3_,"axG",@progbits,_ZNSt8functionIFvP11VirtualFileEEC5ERKS3_,comdat
	.align	2
	.weak	_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_
	.type	_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_, %function
_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZNSt14_Function_baseC2Ev
	ldr	x0, [x29, 16]
	bl	_ZNKSt8functionIFvP11VirtualFileEEcvbEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L51
	ldr	x0, [x29, 16]
	ldr	x3, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	mov	w2, 2
	blr	x3
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 24]
	ldr	x0, [x29, 24]
	str	x1, [x0, 24]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
.L51:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_, .-_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_
	.weak	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_
	.set	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_,_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_
	.section	.text._ZN6VectorI9StringRefEC2Ev,"axG",@progbits,_ZN6VectorI9StringRefEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorI9StringRefEC2Ev
	.type	_ZN6VectorI9StringRefEC2Ev, %function
_ZN6VectorI9StringRefEC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorI9StringRefEC2Ev, .-_ZN6VectorI9StringRefEC2Ev
	.weak	_ZN6VectorI9StringRefEC1Ev
	.set	_ZN6VectorI9StringRefEC1Ev,_ZN6VectorI9StringRefEC2Ev
	.section	.text._ZN6VectorI9StringRefED2Ev,"axG",@progbits,_ZN6VectorI9StringRefED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI9StringRefED2Ev
	.type	_ZN6VectorI9StringRefED2Ev, %function
_ZN6VectorI9StringRefED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L58
	str	xzr, [x29, 40]
.L56:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L55
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L56
.L55:
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	adrp	x0, mman
	add	x2, x0, :lo12:mman
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
.L58:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI9StringRefED2Ev, .-_ZN6VectorI9StringRefED2Ev
	.weak	_ZN6VectorI9StringRefED1Ev
	.set	_ZN6VectorI9StringRefED1Ev,_ZN6VectorI9StringRefED2Ev
	.section	.text._ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE, %function
_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE, %function
_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE
	.section	.text._ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_,"axG",@progbits,_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_,comdat
	.align	2
	.weak	_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_
	.type	_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_, %function
_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	bl	_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L67
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 56]
	str	x1, [x0, 16]
	ldr	x0, [x29, 48]
	bl	_ZSt7forwardIRPKcEOT_RNSt16remove_referenceIS3_E4typeE
	ldr	x19, [x0]
	ldr	x0, [x29, 40]
	bl	_ZSt7forwardIRmEOT_RNSt16remove_referenceIS1_E4typeE
	ldr	x20, [x0]
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	lsl	x0, x0, 4
	sub	x0, x0, #16
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L67
	mov	x2, x20
	mov	x1, x19
	bl	_ZN9StringRefC1EPKvm
.L67:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_, .-_ZN6VectorI9StringRefE11emplaceBackIJRPKcRmEEEvDpOT_
	.text
	.align	2
	.type	_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_, %function
_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_, .-_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_
	.align	2
	.type	_ZNSt8functionIFvP11VirtualFileEEC2IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_, %function
_ZNSt8functionIFvP11VirtualFileEEC2IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	mov	x20, x1
	ldr	x0, [x29, 40]
	bl	_ZNSt14_Function_baseC2Ev
	mov	x0, x20
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E21_M_not_empty_functionIS9_EEbRKT_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L72
	ldr	x19, [x29, 40]
	mov	x0, x20
	bl	_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_
	ldr	x0, [x29, 40]
	adrp	x1, _ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_
	add	x1, x1, :lo12:_ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_
	str	x1, [x0, 24]
	ldr	x0, [x29, 40]
	adrp	x1, _ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation
	add	x1, x1, :lo12:_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation
	str	x1, [x0, 16]
.L72:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNSt8functionIFvP11VirtualFileEEC2IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_, .-_ZNSt8functionIFvP11VirtualFileEEC2IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_
	.set	_ZNSt8functionIFvP11VirtualFileEEC1IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_,_ZNSt8functionIFvP11VirtualFileEEC2IZN18VirtualProxyKernel2lsEPFvPvPKcmES6_EUlS1_E_vvEET_
	.section	.text._ZNKSt8functionIFvP11VirtualFileEEcvbEv,"axG",@progbits,_ZNKSt8functionIFvP11VirtualFileEEcvbEv,comdat
	.align	2
	.weak	_ZNKSt8functionIFvP11VirtualFileEEcvbEv
	.type	_ZNKSt8functionIFvP11VirtualFileEEcvbEv, %function
_ZNKSt8functionIFvP11VirtualFileEEcvbEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNKSt14_Function_base8_M_emptyEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNKSt8functionIFvP11VirtualFileEEcvbEv, .-_ZNKSt8functionIFvP11VirtualFileEEcvbEv
	.section	.text._ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv, %function
_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L76
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L77
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L79
.L77:
	mov	x0, 8
.L79:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI9StringRefE14resizeCapacityEm
	and	w0, w0, 255
	b	.L80
.L76:
	mov	w0, 1
.L80:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv, .-_ZN6VectorI9StringRefE24adjustCapacityForOneMoreEv
	.text
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E21_M_not_empty_functionIS9_EEbRKT_, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E21_M_not_empty_functionIS9_EEbRKT_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 1
	add	sp, sp, 16
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E21_M_not_empty_functionIS9_EEbRKT_, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E21_M_not_empty_functionIS9_EEbRKT_
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 32]
	bl	_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_
	mov	w2, w19
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_St17integral_constantIbLb0EE
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_
	.section	.text._ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE
	.text
	.align	2
	.type	_ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_, %function
_ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data
	mov	x19, x0
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZZN18VirtualProxyKernel2lsEPFvPvPKcmES0_ENKUlP11VirtualFileE_clES6_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_, .-_ZNSt17_Function_handlerIFvP11VirtualFileEZN18VirtualProxyKernel2lsEPFvPvPKcmES4_EUlS1_E_E9_M_invokeERKSt9_Any_dataOS1_
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	w2, [x29, 44]
	ldr	w0, [x29, 44]
	cmp	w0, 2
	beq	.L89
	cmp	w0, 3
	beq	.L90
	cmp	w0, 1
	bne	.L88
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v
	mov	x19, x0
	ldr	x0, [x29, 48]
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data
	str	x0, [x19]
	b	.L88
.L89:
	mov	w2, w4
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E8_M_cloneERSt9_Any_dataRKSB_St17integral_constantIbLb0EE
	b	.L88
.L90:
	mov	w1, w3
	ldr	x0, [x29, 56]
	bl	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	nop
.L88:
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation
	.section	.text._ZN6VectorI9StringRefE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI9StringRefE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI9StringRefE14resizeCapacityEm
	.type	_ZN6VectorI9StringRefE14resizeCapacityEm, %function
_ZN6VectorI9StringRefE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L94
	mov	w0, 1
	b	.L95
.L94:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L96
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	lsl	x2, x0, 4
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L97
.L96:
	ldr	x0, [x29, 16]
	lsl	x1, x0, 4
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L97:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L98
	mov	w0, 0
	b	.L95
.L98:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L95:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI9StringRefE14resizeCapacityEm, .-_ZN6VectorI9StringRefE14resizeCapacityEm
	.text
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_St17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_St17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	strb	w2, [x29, 40]
	ldr	x0, [x29, 48]
	bl	_ZSt4moveIRZN18VirtualProxyKernel2lsEPFvPvPKcmES1_EUlP11VirtualFileE_EONSt16remove_referenceIT_E4typeEOSB_
	mov	x20, x0
	mov	x0, 24
	bl	_Znwm
	mov	x19, x0
	mov	x2, x19
	mov	x3, x20
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v
	str	x19, [x0]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E15_M_init_functorERSt9_Any_dataOS9_St17integral_constantIbLb0EE
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v
	ldr	x0, [x0]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E14_M_get_pointerERKSt9_Any_data
	.align	2
	.type	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v, %function
_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNSt9_Any_data9_M_accessEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v, .-_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E8_M_cloneERSt9_Any_dataRKSB_St17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E8_M_cloneERSt9_Any_dataRKSB_St17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	strb	w2, [x29, 40]
	ldr	x0, [x29, 48]
	bl	_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v
	ldr	x20, [x0]
	mov	x0, 24
	bl	_Znwm
	mov	x19, x0
	mov	x2, x19
	mov	x3, x20
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v
	str	x19, [x0]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E8_M_cloneERSt9_Any_dataRKSB_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E8_M_cloneERSt9_Any_dataRKSB_St17integral_constantIbLb0EE
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZNSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERT_v
	ldr	x0, [x0]
	mov	x1, 24
	bl	_ZdlPvm
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	.align	2
	.type	_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v, %function
_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNKSt9_Any_data9_M_accessEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v, .-_ZNKSt9_Any_data9_M_accessIPZN18VirtualProxyKernel2lsEPFvPvPKcmES2_EUlP11VirtualFileE_EERKT_v
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
