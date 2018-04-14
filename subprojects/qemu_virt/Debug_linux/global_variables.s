	.arch armv8.2-a+crc
	.file	"global_variables.cpp"
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
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZN16InterruptManagerC2EPvS0_,"axG",@progbits,_ZN16InterruptManagerC5EPvS0_,comdat
	.align	2
	.weak	_ZN16InterruptManagerC2EPvS0_
	.type	_ZN16InterruptManagerC2EPvS0_, %function
_ZN16InterruptManagerC2EPvS0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	add	x1, x29, 32
	bl	_ZN14GICDistributorC2IJRPvEEEDpOT_
	ldr	x0, [x29, 40]
	add	x0, x0, 8
	add	x1, x29, 24
	bl	_ZN16GICRedistributorC2IJRPvEEEDpOT_
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 16]
	and	w1, w1, -2
	strb	w1, [x0, 16]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 16]
	and	w1, w1, -3
	strb	w1, [x0, 16]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 16]
	and	w1, w1, -61
	strb	w1, [x0, 16]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 16]
	and	w1, w1, -65
	strb	w1, [x0, 16]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 16]
	and	w1, w1, 127
	strb	w1, [x0, 16]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 17]
	and	w1, w1, -8
	strb	w1, [x0, 17]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 17]
	and	w1, w1, -57
	strb	w1, [x0, 17]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 17]
	and	w1, w1, -65
	strb	w1, [x0, 17]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 17]
	and	w1, w1, 127
	strb	w1, [x0, 17]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 18]
	and	w1, w1, -4
	strb	w1, [x0, 18]
	ldr	x0, [x29, 40]
	ldrb	w1, [x0, 18]
	and	w1, w1, -5
	strb	w1, [x0, 18]
	ldr	x0, [x29, 40]
	ldrh	w1, [x0, 18]
	and	w1, w1, 7
	strh	w1, [x0, 18]
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16InterruptManagerC2EPvS0_, .-_ZN16InterruptManagerC2EPvS0_
	.weak	_ZN16InterruptManagerC1EPvS0_
	.set	_ZN16InterruptManagerC1EPvS0_,_ZN16InterruptManagerC2EPvS0_
	.global	intm
	.bss
	.align	3
	.type	intm, %object
	.size	intm, 24
intm:
	.zero	24
	.global	koutBuf
	.align	3
	.type	koutBuf, %object
	.size	koutBuf, 65
koutBuf:
	.zero	65
	.global	EMPTY_STR
	.section	.rodata
	.align	3
	.type	EMPTY_STR, %object
	.size	EMPTY_STR, 1
EMPTY_STR:
	.zero	1
	.global	kout
	.bss
	.align	3
	.type	kout, %object
	.size	kout, 1
kout:
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
	.global	kin
	.bss
	.align	3
	.type	kin, %object
	.size	kin, 1
kin:
	.zero	1
	.global	mman
	.align	3
	.type	mman, %object
	.size	mman, 24
mman:
	.zero	24
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
	.global	pidManager
	.bss
	.align	3
	.type	pidManager, %object
	.size	pidManager, 128
pidManager:
	.zero	128
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
	.global	processManager
	.bss
	.align	3
	.type	processManager, %object
	.size	processManager, 112
processManager:
	.zero	112
	.global	systemFeatures
	.align	3
	.type	systemFeatures, %object
	.size	systemFeatures, 4
systemFeatures:
	.zero	4
	.global	xilinxUART
	.align	3
	.type	xilinxUART, %object
	.size	xilinxUART, 32
xilinxUART:
	.zero	32
	.global	pl011
	.align	3
	.type	pl011, %object
	.size	pl011, 8
pl011:
	.zero	8
	.global	ktimer
	.align	3
	.type	ktimer, %object
	.size	ktimer, 4
ktimer:
	.zero	4
	.global	intHandler
	.align	3
	.type	intHandler, %object
	.size	intHandler, 32
intHandler:
	.zero	32
	.global	virtman
	.align	3
	.type	virtman, %object
	.size	virtman, 16
virtman:
	.zero	16
	.global	vfs
	.align	3
	.type	vfs, %object
	.size	vfs, 8
vfs:
	.zero	8
	.global	m_abort
	.align	3
	.type	m_abort, %object
	.size	m_abort, 1
m_abort:
	.zero	1
	.global	inputBuffer
	.align	3
	.type	inputBuffer, %object
	.size	inputBuffer, 40
inputBuffer:
	.zero	40
	.section	.text._ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN14GICDistributorC2IJRPvEEEDpOT_,"axG",@progbits,_ZN14GICDistributorC5IJRPvEEEDpOT_,comdat
	.align	2
	.weak	_ZN14GICDistributorC2IJRPvEEEDpOT_
	.type	_ZN14GICDistributorC2IJRPvEEEDpOT_, %function
_ZN14GICDistributorC2IJRPvEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14GICDistributorC2IJRPvEEEDpOT_, .-_ZN14GICDistributorC2IJRPvEEEDpOT_
	.weak	_ZN14GICDistributorC1IJRPvEEEDpOT_
	.set	_ZN14GICDistributorC1IJRPvEEEDpOT_,_ZN14GICDistributorC2IJRPvEEEDpOT_
	.section	.text._ZN16GICRedistributorC2IJRPvEEEDpOT_,"axG",@progbits,_ZN16GICRedistributorC5IJRPvEEEDpOT_,comdat
	.align	2
	.weak	_ZN16GICRedistributorC2IJRPvEEEDpOT_
	.type	_ZN16GICRedistributorC2IJRPvEEEDpOT_, %function
_ZN16GICRedistributorC2IJRPvEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIRPvEOT_RNSt16remove_referenceIS2_E4typeE
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16GICRedistributorC2IJRPvEEEDpOT_, .-_ZN16GICRedistributorC2IJRPvEEEDpOT_
	.weak	_ZN16GICRedistributorC1IJRPvEEEDpOT_
	.set	_ZN16GICRedistributorC1IJRPvEEEDpOT_,_ZN16GICRedistributorC2IJRPvEEEDpOT_
	.section	.text._ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZN5PL011C2IJDnEEEDpOT_,"axG",@progbits,_ZN5PL011C5IJDnEEEDpOT_,comdat
	.align	2
	.weak	_ZN5PL011C2IJDnEEEDpOT_
	.type	_ZN5PL011C2IJDnEEEDpOT_, %function
_ZN5PL011C2IJDnEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN17MemBasedRegReaderILb1EEC2EDn
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN5PL011C2IJDnEEEDpOT_, .-_ZN5PL011C2IJDnEEEDpOT_
	.weak	_ZN5PL011C1IJDnEEEDpOT_
	.set	_ZN5PL011C1IJDnEEEDpOT_,_ZN5PL011C2IJDnEEEDpOT_
	.section	.text._ZN5QueueItEC2Em,"axG",@progbits,_ZN5QueueItEC5Em,comdat
	.align	2
	.weak	_ZN5QueueItEC2Em
	.type	_ZN5QueueItEC2Em, %function
_ZN5QueueItEC2Em:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	mov	x1, 4611686018427387900
	cmp	x0, x1
	bhi	.L12
	lsl	x0, x0, 1
	b	.L13
.L12:
	mov	x0, -1
.L13:
	mov	w1, w2
	bl	_Znam8MemAbort
	mov	x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN5QueueItEC2Em, .-_ZN5QueueItEC2Em
	.weak	_ZN5QueueItEC1Em
	.set	_ZN5QueueItEC1Em,_ZN5QueueItEC2Em
	.section	.text._ZN17MemBasedRegReaderILb1EEC2IPvEET_,"axG",@progbits,_ZN17MemBasedRegReaderILb1EEC5IPvEET_,comdat
	.align	2
	.weak	_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.type	_ZN17MemBasedRegReaderILb1EEC2IPvEET_, %function
_ZN17MemBasedRegReaderILb1EEC2IPvEET_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17MemBasedRegReaderILb1EEC2IPvEET_, .-_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.weak	_ZN17MemBasedRegReaderILb1EEC1IPvEET_
	.set	_ZN17MemBasedRegReaderILb1EEC1IPvEET_,_ZN17MemBasedRegReaderILb1EEC2IPvEET_
	.section	.text._ZN17MemBasedRegReaderILb1EEC2EDn,"axG",@progbits,_ZN17MemBasedRegReaderILb1EEC5EDn,comdat
	.align	2
	.weak	_ZN17MemBasedRegReaderILb1EEC2EDn
	.type	_ZN17MemBasedRegReaderILb1EEC2EDn, %function
_ZN17MemBasedRegReaderILb1EEC2EDn:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17MemBasedRegReaderILb1EEC2EDn, .-_ZN17MemBasedRegReaderILb1EEC2EDn
	.weak	_ZN17MemBasedRegReaderILb1EEC1EDn
	.set	_ZN17MemBasedRegReaderILb1EEC1EDn,_ZN17MemBasedRegReaderILb1EEC2EDn
	.section	.text._ZN14ProcessManagerD2Ev,"axG",@progbits,_ZN14ProcessManagerD5Ev,comdat
	.align	2
	.weak	_ZN14ProcessManagerD2Ev
	.type	_ZN14ProcessManagerD2Ev, %function
_ZN14ProcessManagerD2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L17
	ldr	x0, [x29, 40]
	add	x19, x0, 112
.L18:
	ldr	x0, [x29, 40]
	cmp	x19, x0
	beq	.L17
	sub	x19, x19, #16
	mov	x0, x19
	bl	_ZN16DoublyLinkedListI7ProcessED1Ev
	b	.L18
.L17:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14ProcessManagerD2Ev, .-_ZN14ProcessManagerD2Ev
	.weak	_ZN14ProcessManagerD1Ev
	.set	_ZN14ProcessManagerD1Ev,_ZN14ProcessManagerD2Ev
	.section	.text._ZN16InterruptHandlerD2Ev,"axG",@progbits,_ZN16InterruptHandlerD5Ev,comdat
	.align	2
	.weak	_ZN16InterruptHandlerD2Ev
	.type	_ZN16InterruptHandlerD2Ev, %function
_ZN16InterruptHandlerD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	_ZN6VectorI14ExceptionStateED1Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16InterruptHandlerD2Ev, .-_ZN16InterruptHandlerD2Ev
	.weak	_ZN16InterruptHandlerD1Ev
	.set	_ZN16InterruptHandlerD1Ev,_ZN16InterruptHandlerD2Ev
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	w1, [x29, 24]
	ldr	w0, [x29, 28]
	cmp	w0, 1
	bne	.L22
	ldr	w1, [x29, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L22
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	mov	x2, 0
	mov	x1, 0
	bl	_ZN16InterruptManagerC1EPvS0_
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	w3, 0
	mov	x2, 0
	mov	x1, 0
	bl	_ZN13MemoryManagerC1EPvmb
	adrp	x0, pidManager
	add	x0, x0, :lo12:pidManager
	bl	_ZN10PidManagerC1Ev
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManagerC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, processManager
	add	x1, x0, :lo12:processManager
	adrp	x0, _ZN14ProcessManagerD1Ev
	add	x0, x0, :lo12:_ZN14ProcessManagerD1Ev
	bl	__cxa_atexit
	adrp	x0, xilinxUART
	add	x0, x0, :lo12:xilinxUART
	mov	x1, 0
	bl	_ZN12XilinxUARTPSC1EPv
	str	xzr, [x29, 40]
	add	x1, x29, 40
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	bl	_ZN5PL011C1IJDnEEEDpOT_
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandlerC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, intHandler
	add	x1, x0, :lo12:intHandler
	adrp	x0, _ZN16InterruptHandlerD1Ev
	add	x0, x0, :lo12:_ZN16InterruptHandlerD1Ev
	bl	__cxa_atexit
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManagerC1Ev
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	bl	_ZN17VirtualFileSystemC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, vfs
	add	x1, x0, :lo12:vfs
	adrp	x0, _ZN17VirtualFileSystemD1Ev
	add	x0, x0, :lo12:_ZN17VirtualFileSystemD1Ev
	bl	__cxa_atexit
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	mov	x1, 512
	bl	_ZN5QueueItEC1Em
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, inputBuffer
	add	x1, x0, :lo12:inputBuffer
	adrp	x0, _ZN5QueueItED1Ev
	add	x0, x0, :lo12:_ZN5QueueItED1Ev
	bl	__cxa_atexit
.L22:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZN16DoublyLinkedListI7ProcessED2Ev,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessED5Ev,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessED2Ev
	.type	_ZN16DoublyLinkedListI7ProcessED2Ev, %function
_ZN16DoublyLinkedListI7ProcessED2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedListI7ProcessE5clearEv
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedListI7ProcessED2Ev, .-_ZN16DoublyLinkedListI7ProcessED2Ev
	.weak	_ZN16DoublyLinkedListI7ProcessED1Ev
	.set	_ZN16DoublyLinkedListI7ProcessED1Ev,_ZN16DoublyLinkedListI7ProcessED2Ev
	.section	.text._ZN6VectorI14ExceptionStateED2Ev,"axG",@progbits,_ZN6VectorI14ExceptionStateED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI14ExceptionStateED2Ev
	.type	_ZN6VectorI14ExceptionStateED2Ev, %function
_ZN6VectorI14ExceptionStateED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L29
	str	xzr, [x29, 40]
.L27:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L26
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L27
.L26:
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
.L29:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI14ExceptionStateED2Ev, .-_ZN6VectorI14ExceptionStateED2Ev
	.weak	_ZN6VectorI14ExceptionStateED1Ev
	.set	_ZN6VectorI14ExceptionStateED1Ev,_ZN6VectorI14ExceptionStateED2Ev
	.section	.text._ZN5QueueItED2Ev,"axG",@progbits,_ZN5QueueItED5Ev,comdat
	.align	2
	.weak	_ZN5QueueItED2Ev
	.type	_ZN5QueueItED2Ev, %function
_ZN5QueueItED2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L33
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L32
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	bl	_ZdaPv
.L32:
	ldr	x0, [x29, 24]
	str	xzr, [x0]
.L33:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN5QueueItED2Ev, .-_ZN5QueueItED2Ev
	.weak	_ZN5QueueItED1Ev
	.set	_ZN5QueueItED1Ev,_ZN5QueueItED2Ev
	.section	.text._ZN16DoublyLinkedListI7ProcessE5clearEv,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE5clearEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE5clearEv
	.type	_ZN16DoublyLinkedListI7ProcessE5clearEv, %function
_ZN16DoublyLinkedListI7ProcessE5clearEv:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L39
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	str	x0, [x29, 56]
.L38:
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L36
	ldr	x0, [x29, 56]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	str	x0, [x29, 48]
	ldr	x19, [x29, 56]
	cmp	x19, 0
	beq	.L37
	mov	x0, x19
	bl	_ZN16DoublyLinkedNodeI7ProcessED1Ev
	mov	x1, 400
	mov	x0, x19
	bl	_ZdlPvm
.L37:
	ldr	x0, [x29, 48]
	str	x0, [x29, 56]
	b	.L38
.L36:
	ldr	x0, [x29, 40]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 40]
	str	x1, [x0]
.L39:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE5clearEv, .-_ZN16DoublyLinkedListI7ProcessE5clearEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE4nextEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE4nextEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE4nextEv, %function
_ZN16DoublyLinkedNodeI7ProcessE4nextEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 384]
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE4nextEv, .-_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessED2Ev,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessED5Ev,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessED2Ev
	.type	_ZN16DoublyLinkedNodeI7ProcessED2Ev, %function
_ZN16DoublyLinkedNodeI7ProcessED2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 392]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 392]
	ldr	x0, [x29, 24]
	str	x1, [x0, 384]
	ldr	x0, [x29, 24]
	bl	_ZN7ProcessD1Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessED2Ev, .-_ZN16DoublyLinkedNodeI7ProcessED2Ev
	.weak	_ZN16DoublyLinkedNodeI7ProcessED1Ev
	.set	_ZN16DoublyLinkedNodeI7ProcessED1Ev,_ZN16DoublyLinkedNodeI7ProcessED2Ev
	.text
	.align	2
	.type	_GLOBAL__sub_I_intm, %function
_GLOBAL__sub_I_intm:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	ret
	.size	_GLOBAL__sub_I_intm, .-_GLOBAL__sub_I_intm
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_intm
	.hidden	__dso_handle
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
