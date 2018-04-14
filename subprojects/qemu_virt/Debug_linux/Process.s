	.arch armv8.2-a+crc
	.file	"Process.cpp"
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
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.text
	.align	2
	.global	_ZN7ProcessC2Ev
	.type	_ZN7ProcessC2Ev, %function
_ZN7ProcessC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	strh	wzr, [x0]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 4]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 24]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 32]
	mov	x2, 0
	and	x1, x1, x2
	str	x1, [x0, 32]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 40]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 48]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 56]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 64]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 72]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 80]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 88]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 96]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 104]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 112]
	ldr	x0, [sp, 8]
	ldr	x1, [x0, 368]
	mov	x2, 0
	and	x1, x1, x2
	str	x1, [x0, 368]
	ldr	x0, [sp, 8]
	str	wzr, [x0, 376]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN7ProcessC2Ev, .-_ZN7ProcessC2Ev
	.global	_ZN7ProcessC1Ev
	.set	_ZN7ProcessC1Ev,_ZN7ProcessC2Ev
	.align	2
	.global	_ZN7ProcessD2Ev
	.type	_ZN7ProcessD2Ev, %function
_ZN7ProcessD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN7Process7destroyEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN7ProcessD2Ev, .-_ZN7ProcessD2Ev
	.global	_ZN7ProcessD1Ev
	.set	_ZN7ProcessD1Ev,_ZN7ProcessD2Ev
	.align	2
	.global	_ZN7ProcessC2ERKS_
	.type	_ZN7ProcessC2ERKS_, %function
_ZN7ProcessC2ERKS_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, pidManager
	add	x0, x0, :lo12:pidManager
	bl	_ZN10PidManager8allocateEv
	and	w1, w0, 65535
	ldr	x0, [x29, 24]
	strh	w1, [x0]
	ldr	x0, [x29, 16]
	ldr	w1, [x0, 4]
	ldr	x0, [x29, 24]
	str	w1, [x0, 4]
	ldr	x0, [x29, 24]
	str	wzr, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 24]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 48]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 56]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 64]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 72]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 80]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 88]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 96]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 104]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 112]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	ldr	x1, [x1, 368]
	str	x1, [x0, 368]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	ldr	w1, [x1, 376]
	str	w1, [x0, 376]
	ldr	x0, [x29, 24]
	ldrh	w0, [x0]
	cmp	w0, 0
	beq	.L8
	ldr	x0, [x29, 24]
	add	x3, x0, 120
	ldr	x0, [x29, 16]
	add	x0, x0, 120
	mov	x2, 248
	mov	x1, x0
	mov	x0, x3
	bl	memcpy
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 80]
	ldr	x0, [x29, 16]
	ldr	x2, [x0, 96]
	ldr	x0, [x29, 16]
	ldr	x0, [x0, 112]
	mov	x3, x0
	ldr	x0, [x29, 24]
	bl	_ZN7Process11setupTablesEmmm
	str	w0, [x29, 44]
	ldr	w0, [x29, 44]
	cmp	w0, 0
	bne	.L5
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 72]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 72]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 80]
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 88]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 88]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 96]
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 104]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 104]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 112]
	mov	x2, x0
	mov	x0, x3
	bl	memcpy
	ldr	x0, [x29, 24]
	mov	w1, 1
	str	w1, [x0, 8]
	b	.L5
.L8:
	nop
.L5:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN7ProcessC2ERKS_, .-_ZN7ProcessC2ERKS_
	.global	_ZN7ProcessC1ERKS_
	.set	_ZN7ProcessC1ERKS_,_ZN7ProcessC2ERKS_
	.align	2
	.global	_ZN7Process4initEmPS_jmmm
	.type	_ZN7Process4initEmPS_jmmm, %function
_ZN7Process4initEmPS_jmmm:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	w3, [x29, 52]
	str	x4, [x29, 40]
	str	x5, [x29, 32]
	str	x6, [x29, 24]
	adrp	x0, pidManager
	add	x0, x0, :lo12:pidManager
	bl	_ZN10PidManager8allocateEv
	and	w1, w0, 65535
	ldr	x0, [x29, 72]
	strh	w1, [x0]
	ldr	x0, [x29, 72]
	ldrh	w0, [x0]
	cmp	w0, 0
	bne	.L10
	mov	w0, 1
	b	.L14
.L10:
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 56]
	str	x1, [x0, 16]
	ldr	x0, [x29, 72]
	ldr	w1, [x29, 52]
	str	w1, [x0, 4]
	ldr	x0, [x29, 64]
	and	w1, w0, 255
	add	x0, x29, 104
	mov	w2, w1
	mov	x1, 0
	bl	_ZN14VirtualAddressC1Emh
	add	x0, x29, 104
	mov	w1, 0
	bl	_ZN14VirtualAddress7ttbrSelEi
	add	x0, x29, 104
	mov	w2, 1
	mov	w1, 3
	bl	_ZN14VirtualAddress5indexEhj
	ldr	x0, [x29, 64]
	and	w1, w0, 255
	add	x0, x29, 88
	mov	w2, w1
	mov	x1, 0
	bl	_ZN14VirtualAddressC1Emh
	add	x0, x29, 88
	mov	w1, 0
	bl	_ZN14VirtualAddress7ttbrSelEi
	add	x0, x29, 88
	mov	w2, 0
	mov	w1, 0
	bl	_ZN14VirtualAddress5indexEhj
	add	x0, x29, 88
	mov	w2, 0
	mov	w1, 1
	bl	_ZN14VirtualAddress5indexEhj
	add	x0, x29, 88
	mov	w2, 0
	mov	w1, 2
	bl	_ZN14VirtualAddress5indexEhj
	add	x0, x29, 88
	mov	w2, 510
	mov	w1, 3
	bl	_ZN14VirtualAddress5indexEhj
	add	x0, x29, 88
	bl	_ZNK14VirtualAddress4addrEv
	mov	x2, x0
	ldr	x1, [x29, 72]
	ldr	x0, [x1, 32]
	bfi	x0, x2, 0, 64
	str	x0, [x1, 32]
	add	x0, x29, 104
	bl	_ZNK14VirtualAddress4addrEv
	mov	x2, x0
	ldr	x1, [x29, 72]
	ldr	x0, [x1, 368]
	bfi	x0, x2, 0, 64
	str	x0, [x1, 368]
	str	wzr, [x29, 120]
	add	x0, x29, 80
	ldr	w1, [x29, 120]
	str	w1, [x0]
	ldr	w0, [x29, 80]
	mov	w1, w0
	ldr	x0, [x29, 72]
	str	w1, [x0, 376]
	ldr	x3, [x29, 24]
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 72]
	bl	_ZN7Process11setupTablesEmmm
	str	w0, [x29, 124]
	ldr	w0, [x29, 124]
	cmp	w0, 0
	bne	.L13
	ldr	x0, [x29, 72]
	mov	w1, 1
	str	w1, [x0, 8]
.L13:
	ldr	w0, [x29, 124]
.L14:
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN7Process4initEmPS_jmmm, .-_ZN7Process4initEmPS_jmmm
	.section	.rodata
	.align	3
.LC0:
	.string	"[FATAL] "
	.align	3
.LC1:
	.string	"a level of page table,heap or stack can not be allocated\n"
	.text
	.align	2
	.global	_ZN7Process11setupTablesEmmm
	.type	_ZN7Process11setupTablesEmmm, %function
_ZN7Process11setupTablesEmmm:
	stp	x29, x30, [sp, -256]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 80]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	ldr	x1, [x29, 32]
	bl	_ZN13MemoryManager8allocateEmm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 72]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 16]
	str	x1, [x0, 112]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEmm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 104]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 24]
	str	x1, [x0, 96]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	ldr	x1, [x29, 24]
	bl	_ZN13MemoryManager8allocateEmm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 88]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	mov	x1, 4096
	bl	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 40]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	mov	x1, 4096
	bl	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 48]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	mov	x1, 4096
	bl	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 56]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	mov	x1, 4096
	bl	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm
	mov	x1, x0
	ldr	x0, [x29, 40]
	str	x1, [x0, 64]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 72]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 88]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 104]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 48]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 56]
	cmp	x0, 0
	beq	.L16
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 64]
	cmp	x0, 0
	bne	.L17
.L16:
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	w0, 2
	b	.L43
.L17:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	str	x0, [x29, 216]
	ldr	x0, [x29, 216]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	str	x0, [x29, 128]
	ldr	x0, [x29, 40]
	ldrh	w2, [x0]
	ldr	x1, [x29, 40]
	ldrh	w0, [x1, 30]
	bfi	w0, w2, 0, 16
	strh	w0, [x1, 30]
	ldrb	w0, [x29, 134]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x1, x0, 48
	ldr	x0, [x29, 128]
	ubfx	x0, x0, 12, 36
	lsl	x0, x0, 12
	orr	x0, x1, x0
	lsr	x0, x0, 1
	and	x2, x0, 140737488355327
	ldr	x1, [x29, 40]
	ldr	x0, [x1, 24]
	bfi	x0, x2, 1, 47
	str	x0, [x1, 24]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 24]
	and	w1, w1, -2
	strb	w1, [x0, 24]
	str	xzr, [x29, 248]
.L22:
	ldr	x0, [x29, 248]
	cmp	x0, 512
	beq	.L21
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 40]
	ldr	x0, [x29, 248]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	and	w1, w1, -2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 48]
	ldr	x0, [x29, 248]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	and	w1, w1, -2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 56]
	ldr	x0, [x29, 248]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	and	w1, w1, -2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 248]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	and	w1, w1, -2
	strb	w1, [x0]
	ldr	x0, [x29, 248]
	add	x0, x0, 1
	str	x0, [x29, 248]
	b	.L22
.L21:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	str	x0, [x29, 176]
	str	xzr, [x29, 168]
	ldr	x0, [x29, 176]
	str	x0, [x29, 160]
	ldr	x0, [x29, 168]
	str	x0, [x29, 152]
	ldr	x0, [x29, 160]
	ldr	x1, [x29, 152]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 48]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	str	x0, [x29, 128]
	ldrb	w0, [x29, 134]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 128]
	ubfx	x1, x1, 12, 36
	orr	x0, x0, x1
	ldr	x1, [x29, 40]
	ldr	x1, [x1, 40]
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 48]
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 48]
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 56]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	str	x0, [x29, 128]
	ldrb	w0, [x29, 134]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 128]
	ubfx	x1, x1, 12, 36
	orr	x0, x0, x1
	ldr	x1, [x29, 40]
	ldr	x1, [x1, 48]
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 56]
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 56]
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 64]
	str	x0, [x29, 200]
	ldr	x0, [x29, 200]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 128]
	ldrb	w0, [x29, 134]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 128]
	ubfx	x1, x1, 12, 36
	orr	x0, x0, x1
	ldr	x1, [x29, 40]
	ldr	x1, [x1, 56]
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 72]
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	str	x0, [x29, 128]
	str	xzr, [x29, 240]
.L34:
	ldr	x0, [x29, 240]
	cmp	x0, 7
	beq	.L33
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 4
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 8
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 32
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	orr	w1, w1, 16
	strb	w1, [x0, 6]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, -64
	strb	w1, [x0]
	ldrb	w0, [x29, 134]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 128]
	ubfx	x1, x1, 12, 36
	orr	x1, x0, x1
	ldr	x0, [x29, 240]
	add	x0, x1, x0
	ldr	x1, [x29, 40]
	ldr	x2, [x1, 64]
	ldr	x1, [x29, 240]
	add	x1, x1, 1
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 240]
	add	x0, x0, 1
	str	x0, [x29, 240]
	b	.L34
.L33:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 104]
	str	x0, [x29, 144]
	ldr	x0, [x29, 144]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	str	x0, [x29, 120]
	str	xzr, [x29, 232]
.L38:
	ldr	x0, [x29, 232]
	cmp	x0, 1
	bhi	.L37
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 4
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 8
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 32
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	and	w1, w1, -17
	strb	w1, [x0, 6]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 232]
	add	x0, x0, 508
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x1]
	mov	w2, 1
	bfi	w0, w2, 6, 2
	strb	w0, [x1]
	ldrb	w0, [x29, 126]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 120]
	ubfx	x1, x1, 12, 36
	orr	x1, x0, x1
	ldr	x0, [x29, 232]
	add	x0, x1, x0
	ldr	x1, [x29, 40]
	ldr	x2, [x1, 64]
	ldr	x1, [x29, 232]
	add	x1, x1, 508
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 232]
	add	x0, x0, 1
	str	x0, [x29, 232]
	b	.L38
.L37:
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 88]
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	// Start of user assembly
// 159 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	at S1E1R,x0 
	
// 0 "" 2
// 3653 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,PAR_EL1
	
// 0 "" 2
	// End of user assembly
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	str	x0, [x29, 112]
	str	xzr, [x29, 224]
.L42:
	ldr	x0, [x29, 224]
	cmp	x0, 2
	beq	.L41
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	str	xzr, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 2
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 4
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 1
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 1]
	orr	w1, w1, 8
	strb	w1, [x0, 1]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0]
	orr	w1, w1, 32
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldrb	w1, [x0, 6]
	and	w1, w1, -17
	strb	w1, [x0, 6]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 64]
	ldr	x0, [x29, 224]
	add	x0, x0, 510
	lsl	x0, x0, 3
	add	x1, x1, x0
	ldrb	w0, [x1]
	mov	w2, 1
	bfi	w0, w2, 6, 2
	strb	w0, [x1]
	ldrb	w0, [x29, 118]
	ubfx	x0, x0, 0, 4
	and	w0, w0, 255
	and	x0, x0, 255
	lsl	x0, x0, 36
	ldr	x1, [x29, 112]
	ubfx	x1, x1, 12, 36
	orr	x1, x0, x1
	ldr	x0, [x29, 224]
	add	x0, x1, x0
	ldr	x1, [x29, 40]
	ldr	x2, [x1, 64]
	ldr	x1, [x29, 224]
	add	x1, x1, 510
	lsl	x1, x1, 3
	add	x1, x2, x1
	and	x2, x0, 68719476735
	ldr	x0, [x1]
	bfi	x0, x2, 12, 36
	str	x0, [x1]
	ldr	x0, [x29, 224]
	add	x0, x0, 1
	str	x0, [x29, 224]
	b	.L42
.L41:
	mov	w0, 0
.L43:
	ldp	x29, x30, [sp], 256
	ret
	.size	_ZN7Process11setupTablesEmmm, .-_ZN7Process11setupTablesEmmm
	.align	2
	.global	_ZN7Process7destroyEv
	.type	_ZN7Process7destroyEv, %function
_ZN7Process7destroyEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 8]
	cmp	w0, 6
	beq	.L48
	ldr	x0, [x29, 24]
	ldrh	w0, [x0]
	cmp	w0, 0
	beq	.L47
	ldr	x0, [x29, 24]
	ldrh	w1, [x0]
	adrp	x0, pidManager
	add	x0, x0, :lo12:pidManager
	bl	_ZN10PidManager10deallocateEt
	ldr	x0, [x29, 24]
	strh	wzr, [x0]
.L47:
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 104]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 88]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 72]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 40]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 48]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 56]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 64]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 30]
	strh	w0, [x29, 46]
	ldrh	w0, [x29, 46]
	lsl	x0, x0, 48
	// Start of user assembly
// 182 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	tlbi aside1,x0 
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	mov	w1, 6
	str	w1, [x0, 8]
	b	.L44
.L48:
	nop
.L44:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN7Process7destroyEv, .-_ZN7Process7destroyEv
	.align	2
	.global	_ZN7Process11saveContextEPKm
	.type	_ZN7Process11saveContextEPKm, %function
_ZN7Process11saveContextEPKm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	cmp	x0, 0
	beq	.L50
	ldr	x0, [x29, 24]
	add	x0, x0, 120
	mov	x2, 248
	ldr	x1, [x29, 16]
	bl	memcpy
.L50:
	ldr	x0, [x29, 24]
	add	x0, x0, 24
	str	x0, [x29, 32]
	// Start of user assembly
// 3435 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,TTBR0_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 32]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 368
	str	x0, [x29, 40]
	// Start of user assembly
// 357 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,ELR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 376
	str	x0, [x29, 48]
	// Start of user assembly
// 1185 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,SPSR_EL1
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 48]
	str	w1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 32
	str	x0, [x29, 56]
	// Start of user assembly
// 1629 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x1,SP_EL0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 56]
	str	x1, [x0]
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN7Process11saveContextEPKm, .-_ZN7Process11saveContextEPKm
	.align	2
	.global	_ZN7Process24restoreContextAndExecuteEPv
	.type	_ZN7Process24restoreContextAndExecuteEPv, %function
_ZN7Process24restoreContextAndExecuteEPv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	add	x0, x0, 24
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0]
	// Start of user assembly
// 3440 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr TTBR0_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	add	x0, x0, 368
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	// Start of user assembly
// 362 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr ELR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	add	x0, x0, 376
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	w0, [x0]
	// Start of user assembly
// 1190 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr SPSR_EL1,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	add	x0, x0, 32
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	// Start of user assembly
// 1634 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	msr SP_EL0,x0
	
// 0 "" 2
	// End of user assembly
	ldr	x0, [x29, 24]
	add	x0, x0, 120
	ldr	x1, [x29, 16]
	// Start of user assembly
// 242 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/Process.cpp" 1
	cbz x1, 1f 
	mov  sp,  x1 
	1: 
	mov  x30, x0 
	ldr x0,[x30],#8 
	ldp x1,x2,[x30],#16 
	ldp x3,x4,[x30],#16 
	ldp x5,x6,[x30],#16 
	ldp x7,x8,[x30],#16 
	ldp x9,x10,[x30],#16 
	ldp x11,x12,[x30],#16 
	ldp x13,x14,[x30],#16 
	ldp x15,x16,[x30],#16 
	ldp x17,x18,[x30],#16 
	ldp x19,x20,[x30],#16 
	ldp x21,x22,[x30],#16 
	ldp x23,x24,[x30],#16 
	ldp x25,x26,[x30],#16 
	ldp x27,x28,[x30],#16 
	ldp x29,x30,[x30]
	eret 
	
// 0 "" 2
	// End of user assembly
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN7Process24restoreContextAndExecuteEPv, .-_ZN7Process24restoreContextAndExecuteEPv
	.align	2
	.global	_ZNK7Process8codeBaseEv
	.type	_ZNK7Process8codeBaseEv, %function
_ZNK7Process8codeBaseEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 72]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process8codeBaseEv, .-_ZNK7Process8codeBaseEv
	.align	2
	.global	_ZNK7Process8codeSizeEv
	.type	_ZNK7Process8codeSizeEv, %function
_ZNK7Process8codeSizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 80]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process8codeSizeEv, .-_ZNK7Process8codeSizeEv
	.align	2
	.global	_ZNK7Process3ELREv
	.type	_ZNK7Process3ELREv, %function
_ZNK7Process3ELREv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 368]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process3ELREv, .-_ZNK7Process3ELREv
	.align	2
	.global	_ZNK7Process8heapBaseEv
	.type	_ZNK7Process8heapBaseEv, %function
_ZNK7Process8heapBaseEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 88]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process8heapBaseEv, .-_ZNK7Process8heapBaseEv
	.align	2
	.global	_ZNK7Process8heapSizeEv
	.type	_ZNK7Process8heapSizeEv, %function
_ZNK7Process8heapSizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 96]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process8heapSizeEv, .-_ZNK7Process8heapSizeEv
	.align	2
	.global	_ZNK7Process6parentEv
	.type	_ZNK7Process6parentEv, %function
_ZNK7Process6parentEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 16]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process6parentEv, .-_ZNK7Process6parentEv
	.align	2
	.global	_ZNK7Process3pidEv
	.type	_ZNK7Process3pidEv, %function
_ZNK7Process3pidEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process3pidEv, .-_ZNK7Process3pidEv
	.align	2
	.global	_ZNK7Process8priorityEv
	.type	_ZNK7Process8priorityEv, %function
_ZNK7Process8priorityEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 4]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process8priorityEv, .-_ZNK7Process8priorityEv
	.align	2
	.global	_ZN7Process9registersEv
	.type	_ZN7Process9registersEv, %function
_ZN7Process9registersEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 120
	add	sp, sp, 16
	ret
	.size	_ZN7Process9registersEv, .-_ZN7Process9registersEv
	.align	2
	.global	_ZNK7Process9registersEv
	.type	_ZNK7Process9registersEv, %function
_ZNK7Process9registersEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 120
	add	sp, sp, 16
	ret
	.size	_ZNK7Process9registersEv, .-_ZNK7Process9registersEv
	.align	2
	.global	_ZNK7Process6spBaseEv
	.type	_ZNK7Process6spBaseEv, %function
_ZNK7Process6spBaseEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 104]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process6spBaseEv, .-_ZNK7Process6spBaseEv
	.align	2
	.global	_ZNK7Process5spEL0Ev
	.type	_ZNK7Process5spEL0Ev, %function
_ZNK7Process5spEL0Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 32]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process5spEL0Ev, .-_ZNK7Process5spEL0Ev
	.align	2
	.global	_ZNK7Process6spSizeEv
	.type	_ZNK7Process6spSizeEv, %function
_ZNK7Process6spSizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 112]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process6spSizeEv, .-_ZNK7Process6spSizeEv
	.align	2
	.global	_ZNK7Process6statusEv
	.type	_ZNK7Process6statusEv, %function
_ZNK7Process6statusEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	w0, [x0, 8]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process6statusEv, .-_ZNK7Process6statusEv
	.align	2
	.global	_ZN7Process6statusENS_6StatusE
	.type	_ZN7Process6statusENS_6StatusE, %function
_ZN7Process6statusENS_6StatusE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldr	x0, [sp, 8]
	ldr	w1, [sp, 4]
	str	w1, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN7Process6statusENS_6StatusE, .-_ZN7Process6statusENS_6StatusE
	.align	2
	.global	_ZNK7Process4SPSREv
	.type	_ZNK7Process4SPSREv, %function
_ZNK7Process4SPSREv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 376
	add	sp, sp, 16
	ret
	.size	_ZNK7Process4SPSREv, .-_ZNK7Process4SPSREv
	.align	2
	.global	_ZNK7Process7tableL0Ev
	.type	_ZNK7Process7tableL0Ev, %function
_ZNK7Process7tableL0Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 40]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process7tableL0Ev, .-_ZNK7Process7tableL0Ev
	.align	2
	.global	_ZNK7Process7tableL1Ev
	.type	_ZNK7Process7tableL1Ev, %function
_ZNK7Process7tableL1Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 48]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process7tableL1Ev, .-_ZNK7Process7tableL1Ev
	.align	2
	.global	_ZNK7Process7tableL2Ev
	.type	_ZNK7Process7tableL2Ev, %function
_ZNK7Process7tableL2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 56]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process7tableL2Ev, .-_ZNK7Process7tableL2Ev
	.align	2
	.global	_ZNK7Process7tableL3Ev
	.type	_ZNK7Process7tableL3Ev, %function
_ZNK7Process7tableL3Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 64]
	add	sp, sp, 16
	ret
	.size	_ZNK7Process7tableL3Ev, .-_ZNK7Process7tableL3Ev
	.align	2
	.global	_ZNK7Process5TTBR0Ev
	.type	_ZNK7Process5TTBR0Ev, %function
_ZNK7Process5TTBR0Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	x0, x0, 24
	add	sp, sp, 16
	ret
	.size	_ZNK7Process5TTBR0Ev, .-_ZNK7Process5TTBR0Ev
	.section	.text._ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm,"axG",@progbits,_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm
	.type	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm, %function
_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm:
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
	.size	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm, .-_ZN13MemoryManager10allocateAsIP15Descriptor4KBL0EET_mm
	.section	.text._ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm,"axG",@progbits,_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm
	.type	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm, %function
_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm:
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
	.size	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm, .-_ZN13MemoryManager10allocateAsIP15Descriptor4KBL1EET_mm
	.section	.text._ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm,"axG",@progbits,_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm
	.type	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm, %function
_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm:
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
	.size	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm, .-_ZN13MemoryManager10allocateAsIP15Descriptor4KBL2EET_mm
	.section	.text._ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm,"axG",@progbits,_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm
	.type	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm, %function
_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm:
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
	.size	_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm, .-_ZN13MemoryManager10allocateAsIP15Descriptor4KBL3EET_mm
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
