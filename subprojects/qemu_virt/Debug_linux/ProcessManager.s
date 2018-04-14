	.arch armv8.2-a+crc
	.file	"ProcessManager.cpp"
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
	.text
	.align	2
	.global	_ZN14ProcessManagerC2Ev
	.type	_ZN14ProcessManagerC2Ev, %function
_ZN14ProcessManagerC2Ev:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	mov	x19, 6
	mov	x20, x0
.L7:
	cmp	x19, 0
	blt	.L6
	mov	x0, x20
	bl	_ZN16DoublyLinkedListI7ProcessEC1Ev
	add	x20, x20, 16
	sub	x19, x19, #1
	b	.L7
.L6:
	str	xzr, [x29, 56]
.L11:
	ldr	x0, [x29, 56]
	cmp	x0, 7
	beq	.L12
	ldr	x0, [x29, 56]
	lsl	x0, x0, 4
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L10
	bl	_ZN16DoublyLinkedListI7ProcessEC1Ev
.L10:
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L11
.L12:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN14ProcessManagerC2Ev, .-_ZN14ProcessManagerC2Ev
	.global	_ZN14ProcessManagerC1Ev
	.set	_ZN14ProcessManagerC1Ev,_ZN14ProcessManagerC2Ev
	.align	2
	.global	_ZN14ProcessManager21currentRunningProcessEv
	.type	_ZN14ProcessManager21currentRunningProcessEv, %function
_ZN14ProcessManager21currentRunningProcessEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	add	x0, x0, 48
	bl	_ZN16DoublyLinkedListI7ProcessE4headEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN14ProcessManager21currentRunningProcessEv, .-_ZN14ProcessManager21currentRunningProcessEv
	.align	2
	.global	_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE
	.type	_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE, %function
_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZNK7Process6statusEv
	str	w0, [x29, 44]
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZN7Process7destroyEv
	mov	w3, 6
	ldr	w2, [x29, 44]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE, .-_ZN14ProcessManager11killProcessEP16DoublyLinkedNodeI7ProcessE
	.section	.rodata
	.align	3
.LC0:
	.string	"schedule with idle \n"
	.align	3
.LC1:
	.string	"schedule with next ready process\n"
	.text
	.align	2
	.global	_ZN14ProcessManager19scheduleNextProcessEPm
	.type	_ZN14ProcessManager19scheduleNextProcessEPm, %function
_ZN14ProcessManager19scheduleNextProcessEPm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN14ProcessManager21currentRunningProcessEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 24]
	add	x0, x0, 32
	bl	_ZN16DoublyLinkedListI7ProcessE4headEv
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L17
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L22
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
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
.L17:
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	bl	_ZN16InterruptHandler11exitCurrentEv
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L21
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	ldr	x1, [x29, 16]
	bl	_ZN7Process11saveContextEPKm
	mov	w2, 2
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 24]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
.L21:
	mov	w2, 3
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 24]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	mov	x1, 0
	bl	_ZN7Process24restoreContextAndExecuteEPv
	b	.L16
.L22:
	nop
.L16:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14ProcessManager19scheduleNextProcessEPm, .-_ZN14ProcessManager19scheduleNextProcessEPm
	.align	2
	.global	_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE
	.type	_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE, %function
_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	mov	x1, x0
	mov	x0, x19
	bl	_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L24
	ldr	x0, [x29, 56]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZNK7Process6statusEv
	cmp	w0, 1
	bne	.L24
	mov	w0, 1
	b	.L25
.L24:
	mov	w0, 0
.L25:
	cmp	w0, 0
	beq	.L26
	mov	w3, 1
	mov	w2, 0
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 40]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
.L26:
	ldr	x0, [x29, 56]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE, .-_ZN14ProcessManager11forkProcessEP16DoublyLinkedNodeI7ProcessE
	.align	2
	.global	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
	.type	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_, %function
_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	w2, [x29, 28]
	str	w3, [x29, 24]
	ldr	w1, [x29, 28]
	ldr	w0, [x29, 24]
	cmp	w1, w0
	beq	.L29
	ldr	w0, [x29, 28]
	sxtw	x0, w0
	lsl	x0, x0, 4
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x1, [x29, 32]
	bl	_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E
	ldr	w0, [x29, 24]
	sxtw	x0, w0
	lsl	x0, x0, 4
	ldr	x1, [x29, 40]
	add	x0, x1, x0
	ldr	x1, [x29, 32]
	bl	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
.L29:
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	ldr	w1, [x29, 24]
	bl	_ZN7Process6statusENS_6StatusE
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_, .-_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
	.align	2
	.global	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
	.type	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE, %function
_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	w2, [x29, 28]
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	bl	_ZNK7Process6statusEv
	ldr	w3, [x29, 28]
	mov	w2, w0
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE, .-_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
	.section	.text._ZN16DoublyLinkedListI7ProcessEC2Ev,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessEC5Ev,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessEC2Ev
	.type	_ZN16DoublyLinkedListI7ProcessEC2Ev, %function
_ZN16DoublyLinkedListI7ProcessEC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedListI7ProcessEC2Ev, .-_ZN16DoublyLinkedListI7ProcessEC2Ev
	.weak	_ZN16DoublyLinkedListI7ProcessEC1Ev
	.set	_ZN16DoublyLinkedListI7ProcessEC1Ev,_ZN16DoublyLinkedListI7ProcessEC2Ev
	.section	.text._ZN16DoublyLinkedListI7ProcessE4headEv,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE4headEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE4headEv
	.type	_ZN16DoublyLinkedListI7ProcessE4headEv, %function
_ZN16DoublyLinkedListI7ProcessE4headEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE4headEv, .-_ZN16DoublyLinkedListI7ProcessE4headEv
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
	.section	.text._ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE, %function
_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_
	.type	_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_, %function
_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x20, x0
	mov	x0, 400
	bl	_Znwm
	mov	x19, x0
	mov	x3, x20
	mov	x2, 0
	mov	x1, 0
	mov	x0, x19
	bl	_ZN16DoublyLinkedNodeI7ProcessEC1IJRS0_EEEPS1_S4_DpOT_
	str	x19, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L39
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
.L39:
	ldr	x0, [x29, 56]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_, .-_ZN16DoublyLinkedListI7ProcessE10insertTailIJRS0_EEEP16DoublyLinkedNodeIS0_EDpOT_
	.section	.text._ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E
	.type	_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E, %function
_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L42
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedListI7ProcessE10removeHeadEv
	b	.L43
.L42:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L44
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedListI7ProcessE10removeTailEv
	b	.L43
.L44:
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv
.L43:
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E, .-_ZN16DoublyLinkedListI7ProcessE10removeNodeEP16DoublyLinkedNodeIS0_E
	.section	.text._ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
	.type	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E, %function
_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	beq	.L46
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	b	.L48
.L46:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	mov	x1, 0
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, 0
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
.L48:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E, .-_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
	.section	.text._ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessEC5IJRS0_EEEPS1_S4_DpOT_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_
	.type	_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_, %function
_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	str	x3, [x29, 32]
	ldr	x19, [x29, 56]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIR7ProcessEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	mov	x0, x19
	bl	_ZN7ProcessC1ERKS_
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 48]
	str	x1, [x0, 384]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 40]
	str	x1, [x0, 392]
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_, .-_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_
	.weak	_ZN16DoublyLinkedNodeI7ProcessEC1IJRS0_EEEPS1_S4_DpOT_
	.set	_ZN16DoublyLinkedNodeI7ProcessEC1IJRS0_EEEPS1_S4_DpOT_,_ZN16DoublyLinkedNodeI7ProcessEC2IJRS0_EEEPS1_S4_DpOT_
	.section	.text._ZN16DoublyLinkedListI7ProcessE10removeHeadEv,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10removeHeadEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10removeHeadEv
	.type	_ZN16DoublyLinkedListI7ProcessE10removeHeadEv, %function
_ZN16DoublyLinkedListI7ProcessE10removeHeadEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L51
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv
	b	.L52
.L51:
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	str	x0, [x29, 32]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 32]
.L52:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10removeHeadEv, .-_ZN16DoublyLinkedListI7ProcessE10removeHeadEv
	.section	.text._ZN16DoublyLinkedListI7ProcessE10removeTailEv,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10removeTailEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10removeTailEv
	.type	_ZN16DoublyLinkedListI7ProcessE10removeTailEv, %function
_ZN16DoublyLinkedListI7ProcessE10removeTailEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L54
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	bl	_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv
	b	.L55
.L54:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 32]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 32]
.L55:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10removeTailEv, .-_ZN16DoublyLinkedListI7ProcessE10removeTailEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv, %function
_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 392]
	cmp	x0, 0
	beq	.L57
	ldr	x0, [x29, 24]
	ldr	x2, [x0, 392]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 384]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
.L57:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 384]
	cmp	x0, 0
	beq	.L58
	ldr	x0, [x29, 24]
	ldr	x2, [x0, 384]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 392]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
.L58:
	ldr	x0, [x29, 24]
	str	xzr, [x0, 384]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 392]
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv, .-_ZN16DoublyLinkedNodeI7ProcessE10removeSelfEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_
	.type	_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_, %function
_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	mov	x1, x0
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	ldr	x0, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L62
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
.L62:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_, .-_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	.type	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_, %function
_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 384]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_, .-_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
	.type	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_, %function
_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0, 392]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_, .-_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
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
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv, %function
_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L68
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
	mov	x1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
	mov	x1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	.L68
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
.L68:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv, .-_ZN16DoublyLinkedNodeI7ProcessE12removeBeforeEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE8previousEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE8previousEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE8previousEv, %function
_ZN16DoublyLinkedNodeI7ProcessE8previousEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 392]
	add	sp, sp, 16
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE8previousEv, .-_ZN16DoublyLinkedNodeI7ProcessE8previousEv
	.section	.text._ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv
	.type	_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv, %function
_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L74
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	mov	x1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEPS1_
	mov	x1, 0
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
	ldr	x0, [x29, 24]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4nextEv
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	beq	.L74
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 32]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
.L74:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv, .-_ZN16DoublyLinkedNodeI7ProcessE11removeAfterEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
