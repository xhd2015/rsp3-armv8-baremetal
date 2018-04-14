	.arch armv8.2-a+crc
	.file	"main_demo_complete_input.cpp"
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
	.section	.text._ZN23VirtioQueueAvailableRefC2Ev,"axG",@progbits,_ZN23VirtioQueueAvailableRefC5Ev,comdat
	.align	2
	.weak	_ZN23VirtioQueueAvailableRefC2Ev
	.type	_ZN23VirtioQueueAvailableRefC2Ev, %function
_ZN23VirtioQueueAvailableRefC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN23VirtioQueueAvailableRefC2Ev, .-_ZN23VirtioQueueAvailableRefC2Ev
	.weak	_ZN23VirtioQueueAvailableRefC1Ev
	.set	_ZN23VirtioQueueAvailableRefC1Ev,_ZN23VirtioQueueAvailableRefC2Ev
	.section	.text._ZN18VirtioQueueUsedRefC2Ev,"axG",@progbits,_ZN18VirtioQueueUsedRefC5Ev,comdat
	.align	2
	.weak	_ZN18VirtioQueueUsedRefC2Ev
	.type	_ZN18VirtioQueueUsedRefC2Ev, %function
_ZN18VirtioQueueUsedRefC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN18VirtioQueueUsedRefC2Ev, .-_ZN18VirtioQueueUsedRefC2Ev
	.weak	_ZN18VirtioQueueUsedRefC1Ev
	.set	_ZN18VirtioQueueUsedRefC1Ev,_ZN18VirtioQueueUsedRefC2Ev
	.section	.text._ZN17VirtioQueueLayoutC2Ev,"axG",@progbits,_ZN17VirtioQueueLayoutC5Ev,comdat
	.align	2
	.weak	_ZN17VirtioQueueLayoutC2Ev
	.type	_ZN17VirtioQueueLayoutC2Ev, %function
_ZN17VirtioQueueLayoutC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
	ldr	x0, [x29, 24]
	add	x0, x0, 40
	bl	_ZN23VirtioQueueAvailableRefC1Ev
	ldr	x0, [x29, 24]
	add	x0, x0, 56
	bl	_ZN18VirtioQueueUsedRefC1Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN17VirtioQueueLayoutC2Ev, .-_ZN17VirtioQueueLayoutC2Ev
	.weak	_ZN17VirtioQueueLayoutC1Ev
	.set	_ZN17VirtioQueueLayoutC1Ev,_ZN17VirtioQueueLayoutC2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	"[FATAL] "
	.align	3
.LC1:
	.string	"This program is designed to run at EL1\n"
	.align	3
.LC2:
	.string	"fullConfig.size()!=0"
	.align	3
.LC3:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/arch/qemu_virt/main_demo_complete_input.cpp"
	.align	3
.LC4:
	.string	"i<_size"
	.align	3
.LC5:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.align	3
.LC6:
	.string	"fullConfig[i].size() % VirtualMap::_D::PAGE_SIZE == 0"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -272]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x0, __vt_end
	add	x1, x0, :lo12:__vt_end
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	sub	x0, x1, x0
	mov	x2, x0
	adrp	x0, __vt_rom_begin
	add	x1, x0, :lo12:__vt_rom_begin
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	bl	memcpy
	mov	w0, 150994944
	str	w0, [x29, 132]
	add	x19, x29, 132
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L11
	mov	x1, x19
	bl	_ZN5PL011C1IJiEEEDpOT_
.L11:
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	bl	_ZN5PL0114initEv
	// Start of user assembly
// 85 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/arch/common_aarch64/registers/system_common_registers.h" 1
	mrs x0,CurrentEL
	
// 0 "" 2
	// End of user assembly
	str	w0, [x29, 72]
	ldr	w0, [x29, 72]
	str	w0, [x29, 128]
	ldrb	w0, [x29, 128]
	and	w0, w0, 12
	and	w0, w0, 255
	cmp	w0, 4
	beq	.L13
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
	mov	w19, 1
	b	.L41
.L13:
	adrp	x0, ramEnd
	add	x1, x0, :lo12:ramEnd
	adrp	x0, ramStart
	add	x0, x0, :lo12:ramStart
	sub	x0, x1, x0
	str	x0, [x29, 248]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	mov	x4, x0
	cmp	x4, 0
	beq	.L16
	adrp	x0, ramStart
	add	x0, x0, :lo12:ramStart
	mov	w3, 1
	ldr	x2, [x29, 248]
	mov	x1, x0
	mov	x0, x4
	bl	_ZN13MemoryManagerC1EPvmb
.L16:
	adrp	x0, intHandler
	add	x0, x0, :lo12:intHandler
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L18
	bl	_ZN16InterruptHandlerC1Ev
.L18:
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L20
	mov	x2, 134873088
	mov	x1, 134217728
	bl	_ZN16InterruptManagerC1EPvS0_
.L20:
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	mov	x1, x0
	mov	x0, 16
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L22
	bl	_ZN14VirtualManagerC1Ev
.L22:
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	adrp	x0, ExceptionVectorEL1
	add	x1, x0, :lo12:ExceptionVectorEL1
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	mov	w5, -16
	mov	w4, -2
	mov	w3, 0
	mov	w2, 1
	bl	_ZN16InterruptManager4initEPvb7EOIModehh
	str	w0, [x29, 244]
	ldr	w0, [x29, 244]
	cmp	w0, 0
	beq	.L25
	ldr	w19, [x29, 244]
	b	.L41
.L25:
	add	x0, x29, 104
	bl	_ZN6VectorI22AddressSpaceDescriptorEC1Ev
	add	x0, x29, 136
	mov	w6, 0
	mov	w5, 1
	mov	w4, 0
	mov	w3, 0
	mov	x2, 1073741824
	mov	x1, 1073741824
	bl	_ZN22AddressSpaceDescriptorC1EPvmNS_4TypeEbbb
	add	x2, x29, 32
	add	x3, x29, 136
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, x29, 32
	add	x0, x29, 104
	bl	_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_
	add	x0, x29, 160
	mov	w6, 0
	mov	w5, 0
	mov	w4, 0
	mov	w3, 1
	mov	x2, 939524096
	mov	x1, 134217728
	bl	_ZN22AddressSpaceDescriptorC1EPvmNS_4TypeEbbb
	add	x2, x29, 32
	add	x3, x29, 160
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
	add	x1, x29, 32
	add	x0, x29, 104
	bl	_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_
	add	x0, x29, 104
	add	x1, x29, 80
	mov	x8, x1
	bl	_ZN14VirtualManager26makeFullOrderedDescriptorsERK6VectorI22AddressSpaceDescriptorE
	ldr	x0, [x29, 96]
	cmp	x0, 0
	bne	.L27
	adrp	x0, .LC2
	add	x2, x0, :lo12:.LC2
	adrp	x0, _ZZ4mainE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZ4mainE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 98
	bl	_Z19report_assert_errorPKcmS0_S0_
.L27:
	str	xzr, [x29, 264]
	str	xzr, [x29, 256]
.L37:
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 256]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L29
	ldr	x0, [x29, 256]
	str	x0, [x29, 216]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 216]
	cmp	x1, x0
	bcc	.L30
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L30:
	ldr	x2, [x29, 80]
	ldr	x1, [x29, 216]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 224]
	ldr	x0, [x29, 224]
	ldr	x0, [x0, 16]
	and	x0, x0, 4095
	cmp	x0, 0
	beq	.L33
	adrp	x0, .LC6
	add	x2, x0, :lo12:.LC6
	adrp	x0, _ZZ4mainE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZ4mainE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 103
	bl	_Z19report_assert_errorPKcmS0_S0_
.L33:
	ldr	x0, [x29, 256]
	str	x0, [x29, 200]
	ldr	x0, [x29, 96]
	ldr	x1, [x29, 200]
	cmp	x1, x0
	bcc	.L34
	adrp	x0, .LC4
	add	x2, x0, :lo12:.LC4
	adrp	x0, _ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L34:
	ldr	x2, [x29, 80]
	ldr	x1, [x29, 200]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	str	x0, [x29, 208]
	ldr	x0, [x29, 208]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 264]
	add	x0, x1, x0
	str	x0, [x29, 264]
	ldr	x0, [x29, 256]
	add	x0, x0, 1
	str	x0, [x29, 256]
	b	.L37
.L29:
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x20, [x0]
	mov	x0, 104
	bl	_Znwm
	mov	x19, x0
	ldr	x0, [x29, 264]
	lsr	x0, x0, 12
	mov	x5, x20
	mov	x4, 0
	mov	w3, 1
	mov	x2, x0
	mov	x1, 0
	mov	x0, x19
	bl	_ZN10VirtualMapC1EmmbPKvm
	str	x19, [x29, 232]
	ldr	x0, [x29, 232]
	bl	_ZN10VirtualMap5mapL0Ev
	ldr	x0, [x29, 232]
	bl	_ZN10VirtualMap5mapL1Ev
	ldr	x0, [x29, 232]
	bl	_ZN10VirtualMap5mapL2Ev
	add	x0, x29, 80
	mov	x1, x0
	ldr	x0, [x29, 232]
	bl	_ZN10VirtualMap5mapL3ERK6VectorI22AddressSpaceDescriptorE
	ldr	x0, [x29, 232]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	ldr	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager11updateTTBR0EP15Descriptor4KBL0
	ldr	x0, [x29, 232]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	ldr	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager11updateTTBR1EP15Descriptor4KBL0
	adrp	x0, __stack_top
	add	x2, x0, :lo12:__stack_top
	adrp	x0, _Z12main_mmu_setv
	add	x1, x0, :lo12:_Z12main_mmu_setv
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	bl	_ZN14VirtualManager9enableMMUEPFvvEPv
	mov	w19, 0
	add	x0, x29, 80
	bl	_ZN6VectorI22AddressSpaceDescriptorED1Ev
	add	x0, x29, 104
	bl	_ZN6VectorI22AddressSpaceDescriptorED1Ev
.L41:
	mov	w0, w19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 272
	ret
	.size	main, .-main
	.global	bpb
	.bss
	.align	3
	.type	bpb, %object
	.size	bpb, 512
bpb:
	.zero	512
	.global	fat
	.align	3
	.type	fat, %object
	.size	fat, 24
fat:
	.zero	24
	.section	.rodata
	.align	3
.LC7:
	.string	"_nestedExceps.size()==0"
	.align	3
.LC8:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/interrupt/InterruptHandler.h"
	.align	3
.LC9:
	.string	"queueBuffer"
	.align	3
.LC10:
	.string	"processLink && process.status()!=Process::CREATED_INCOMPLETE"
	.text
	.align	2
	.global	_Z12main_mmu_setv
	.type	_Z12main_mmu_setv, %function
_Z12main_mmu_setv:
	stp	x29, x30, [sp, -464]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	adrp	x0, __vt_end
	add	x1, x0, :lo12:__vt_end
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	sub	x0, x1, x0
	asr	x0, x0, 3
	str	x0, [x29, 448]
	str	xzr, [x29, 456]
.L46:
	ldr	x1, [x29, 456]
	ldr	x0, [x29, 448]
	cmp	x1, x0
	beq	.L43
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	ldr	x1, [x29, 456]
	ldr	x0, [x0, x1, lsl 3]
	cmp	x0, 0
	beq	.L44
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x0, 8]
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	ldr	x2, [x29, 456]
	ldr	x0, [x0, x2, lsl 3]
	orr	x2, x1, x0
	adrp	x0, __vt_begin
	add	x0, x0, :lo12:__vt_begin
	ldr	x1, [x29, 456]
	str	x2, [x0, x1, lsl 3]
.L44:
	ldr	x0, [x29, 456]
	add	x0, x0, 1
	str	x0, [x29, 456]
	b	.L46
.L43:
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	mov	w1, 0
	bl	_ZN14VirtualManager11enableTTBR0Eb
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0, 8]
	str	x0, [x29, 288]
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	ldr	x1, [x0]
	ldr	x0, [x29, 288]
	add	x1, x1, x0
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	str	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0, 8]
	str	x0, [x29, 296]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 296]
	add	x1, x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	str	x1, [x0, 8]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x2, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 296]
	add	x1, x2, x1
	str	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0, 8]
	str	x0, [x29, 336]
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 328]
	ldr	x0, [x29, 336]
	str	x0, [x29, 320]
	ldr	x0, [x29, 328]
	ldr	x1, [x0]
	ldr	x0, [x29, 320]
	add	x1, x1, x0
	ldr	x0, [x29, 328]
	str	x1, [x0]
	adrp	x0, intm+8
	add	x0, x0, :lo12:intm+8
	str	x0, [x29, 312]
	ldr	x0, [x29, 336]
	str	x0, [x29, 304]
	ldr	x0, [x29, 312]
	ldr	x1, [x0]
	ldr	x0, [x29, 304]
	add	x1, x1, x0
	ldr	x0, [x29, 312]
	str	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0, 8]
	str	x0, [x29, 368]
	adrp	x0, intHandler+8
	add	x0, x0, :lo12:intHandler+8
	str	x0, [x29, 360]
	ldr	x0, [x29, 360]
	ldr	x0, [x0, 16]
	cmp	x0, 0
	beq	.L52
	adrp	x0, .LC7
	add	x2, x0, :lo12:.LC7
	adrp	x0, _ZZN16InterruptHandler6rebaseEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN16InterruptHandler6rebaseEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	mov	x3, x2
	mov	x2, x1
	mov	x1, 32
	bl	_Z19report_assert_errorPKcmS0_S0_
.L52:
	adrp	x0, intHandler+8
	add	x0, x0, :lo12:intHandler+8
	str	x0, [x29, 352]
	ldr	x0, [x29, 368]
	str	x0, [x29, 344]
	ldr	x0, [x29, 352]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L53
	ldr	x0, [x29, 352]
	ldr	x1, [x0]
	ldr	x0, [x29, 344]
	add	x1, x1, x0
	ldr	x0, [x29, 352]
	str	x1, [x0]
.L53:
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	mov	x1, x0
	mov	x0, 40
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L55
	mov	x1, 512
	bl	_ZN5QueueItEC1Em
.L55:
	adrp	x0, kin
	add	x0, x0, :lo12:kin
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	mov	x1, x0
	mov	x0, 4
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L59
	str	wzr, [x0]
.L59:
	adrp	x0, pidManager
	add	x0, x0, :lo12:pidManager
	mov	x1, x0
	mov	x0, 128
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L61
	bl	_ZN10PidManagerC1Ev
.L61:
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	mov	x1, x0
	mov	x0, 112
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L63
	bl	_ZN14ProcessManagerC1Ev
.L63:
	adrp	x0, fat
	add	x0, x0, :lo12:fat
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L65
	bl	_ZN15FAT32EntryTableC1Ev
.L65:
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	mov	x1, x0
	mov	x0, 8
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L67
	bl	_ZN17VirtualFileSystemC1Ev
.L67:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x2, 4096
	mov	x1, 8192
	bl	_ZN13MemoryManager8allocateEmm
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	cmp	x0, 0
	bne	.L68
	adrp	x0, .LC9
	add	x2, x0, :lo12:.LC9
	adrp	x0, _ZZ12main_mmu_setvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZ12main_mmu_setvE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 154
	bl	_Z19report_assert_errorPKcmS0_S0_
.L68:
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x0, 8]
	mov	x0, 15872
	movk	x0, 0xa00, lsl 16
	orr	x0, x1, x0
	str	x0, [x29, 40]
	add	x20, x29, 40
	ldrb	w1, [x29, 48]
	mov	x0, 136
	bl	_Znwm8MemAbort
	mov	x19, x0
	mov	x1, x20
	mov	x0, x19
	bl	_ZN17VirtioBlockDriverC1IJmEEEDpOT_
	str	x19, [x29, 440]
	mov	x0, 4096
	bl	_ZN17VirtioBlockDriver20maximumDescriptorNumEm
	str	x0, [x29, 432]
	ldr	x0, [x29, 32]
	mov	w5, 1
	mov	x4, 4096
	mov	x3, 4096
	ldr	x2, [x29, 432]
	mov	x1, x0
	ldr	x0, [x29, 440]
	bl	_ZN17VirtioBlockDriver4initEPvmmmb
	ldrb	w1, [x29, 56]
	mov	x0, 16
	bl	_Znwm8MemAbort
	mov	x19, x0
	ldr	x1, [x29, 440]
	mov	x0, x19
	bl	_ZN18VirtioSectorReaderC1ER17VirtioBlockDriver
	str	x19, [x29, 424]
	ldrb	w1, [x29, 64]
	mov	x0, 24
	bl	_Znwm8MemAbort
	mov	x19, x0
	ldr	x0, [x29, 424]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN24SectorReaderToByteReaderC1ER12SectorReader
	str	x19, [x29, 416]
	ldr	x2, [x29, 416]
	adrp	x0, bpb
	add	x0, x0, :lo12:bpb
	mov	x1, x0
	mov	x0, x2
	bl	_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB
	ldr	x3, [x29, 416]
	adrp	x0, fat
	add	x1, x0, :lo12:fat
	adrp	x0, bpb
	add	x0, x0, :lo12:bpb
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	ldr	x3, [x29, 416]
	adrp	x0, fat
	add	x1, x0, :lo12:fat
	adrp	x0, bpb
	add	x0, x0, :lo12:bpb
	mov	x2, x1
	mov	x1, x0
	mov	x0, x3
	bl	_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	str	x0, [x29, 408]
	ldr	x0, [x29, 408]
	str	x0, [x29, 272]
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x3, [x0]
	adrp	x0, vfs
	add	x0, x0, :lo12:vfs
	ldr	x0, [x0]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldr	x2, [x0]
	ldr	x1, [x29, 272]
	mov	x0, x3
	blr	x2
	mov	w0, 1000
	str	w0, [x29, 284]
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	ldr	w1, [x29, 284]
	str	w1, [x0]
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	ldr	w1, [x0]
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	bl	_ZN12GenericTimer12timerValueMSEj
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	mov	w1, 1
	bl	_ZN12GenericTimer15enableTimerWorkEb
	adrp	x0, ktimer
	add	x0, x0, :lo12:ktimer
	mov	w1, 1
	bl	_ZN12GenericTimer14enableTimerIntEb
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0]
	str	x0, [x29, 72]
	str	xzr, [x29, 80]
	mov	w0, 10
	str	w0, [x29, 92]
	mov	w0, 28672
	str	w0, [x29, 96]
	mov	w0, 8192
	str	w0, [x29, 100]
	mov	w0, 8192
	str	w0, [x29, 104]
	add	x6, x29, 104
	add	x5, x29, 100
	add	x4, x29, 96
	add	x3, x29, 92
	add	x2, x29, 80
	add	x1, x29, 72
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	bl	_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_
	str	x0, [x29, 400]
	ldr	x0, [x29, 400]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	str	x0, [x29, 392]
	ldr	x0, [x29, 400]
	cmp	x0, 0
	beq	.L71
	ldr	x0, [x29, 392]
	bl	_ZNK7Process6statusEv
	cmp	w0, 0
	bne	.L83
.L71:
	adrp	x0, .LC10
	add	x2, x0, :lo12:.LC10
	adrp	x0, _ZZ12main_mmu_setvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZ12main_mmu_setvE19__PRETTY_FUNCTION__
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x3, x2
	mov	x2, x1
	mov	x1, 192
	bl	_Z19report_assert_errorPKcmS0_S0_
.L83:
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x0, [x0, 8]
	orr	x0, x0, 524288
	str	x0, [x29, 384]
	ldr	x0, [x29, 392]
	bl	_ZNK7Process8codeBaseEv
	mov	x2, 28672
	ldr	x1, [x29, 384]
	bl	memcpy
	ldr	x0, [x29, 392]
	bl	_ZNK7Process3ELREv
	mov	x19, x0
	ldr	x0, [x29, 392]
	bl	_ZN7Process9registersEv
	add	x0, x0, 240
	mov	x1, x19
	str	x1, [x0]
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	mov	w1, 1
	bl	_ZN14VirtualManager11enableTTBR0Eb
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	bl	_ZN16InterruptManager20disableAllInterruptsEv
	str	wzr, [x29, 108]
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	ldr	w3, [x29, 108]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	mov	w0, -1
	str	w0, [x1]
	mov	w0, 33
	str	w0, [x29, 188]
	mov	w0, 1
	strb	w0, [x29, 187]
	ldr	w0, [x29, 188]
	lsr	w0, w0, 5
	mov	w1, w0
	adrp	x0, intm
	add	x0, x0, :lo12:intm
	str	x0, [x29, 176]
	str	w1, [x29, 172]
	ldr	w3, [x29, 172]
	mov	x2, 256
	mov	x1, 256
	movk	x1, 0x1, lsl 16
	ldr	x0, [x29, 176]
	bl	_ZN16InterruptManager13readWriteWordEmmi
	mov	x1, x0
	ldr	w0, [x29, 188]
	and	w0, w0, 255
	and	w0, w0, 31
	and	w0, w0, 255
	str	x1, [x29, 160]
	strb	w0, [x29, 159]
	ldrb	w0, [x29, 187]
	strb	w0, [x29, 158]
	ldr	x0, [x29, 160]
	str	x0, [x29, 144]
	ldrb	w0, [x29, 159]
	strb	w0, [x29, 143]
	ldrb	w0, [x29, 159]
	strb	w0, [x29, 142]
	ldrb	w0, [x29, 158]
	strb	w0, [x29, 141]
	ldr	x0, [x29, 144]
	ldr	w1, [x0]
	ldrb	w2, [x29, 143]
	ldrb	w0, [x29, 142]
	str	x2, [x29, 128]
	str	x0, [x29, 120]
	ldr	x0, [x29, 128]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 128]
	mov	w3, w0
	ldr	x0, [x29, 120]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 120]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	mvn	w0, w0
	and	w0, w1, w0
	ldrb	w2, [x29, 141]
	ldrb	w3, [x29, 142]
	ldrb	w1, [x29, 143]
	sub	w1, w3, w1
	add	w1, w1, 1
	sxtw	x1, w1
	str	x1, [x29, 112]
	ldr	x1, [x29, 112]
	mov	w3, w1
	mov	w1, 64
	sub	w1, w1, w3
	mov	x3, -1
	lsl	x3, x3, x1
	ldr	x1, [x29, 112]
	mov	w4, w1
	mov	w1, 64
	sub	w1, w1, w4
	lsr	x1, x3, x1
	and	x2, x2, x1
	ldrb	w1, [x29, 143]
	lsl	x1, x2, x1
	orr	w1, w0, w1
	ldr	x0, [x29, 144]
	str	w1, [x0]
	mov	w0, 1
	strb	w0, [x29, 271]
	adrp	x0, pl011
	add	x0, x0, :lo12:pl011
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	str	x0, [x29, 248]
	ldr	x0, [x29, 248]
	ldr	x0, [x0]
	add	x0, x0, 56
	str	x0, [x29, 240]
	mov	w0, 4
	strb	w0, [x29, 239]
	ldrb	w0, [x29, 271]
	strb	w0, [x29, 238]
	ldr	x0, [x29, 240]
	str	x0, [x29, 224]
	ldrb	w0, [x29, 239]
	strb	w0, [x29, 223]
	ldrb	w0, [x29, 239]
	strb	w0, [x29, 222]
	ldrb	w0, [x29, 238]
	strb	w0, [x29, 221]
	ldr	x0, [x29, 224]
	ldrh	w0, [x0]
	and	w1, w0, 65535
	ldrb	w2, [x29, 223]
	ldrb	w0, [x29, 222]
	str	x2, [x29, 208]
	str	x0, [x29, 200]
	ldr	x0, [x29, 208]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 208]
	mov	w3, w0
	ldr	x0, [x29, 200]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 200]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 65535
	mvn	w0, w0
	and	w0, w0, 65535
	and	w0, w1, w0
	and	w1, w0, 65535
	ldrb	w2, [x29, 221]
	ldrb	w3, [x29, 222]
	ldrb	w0, [x29, 223]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 192]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 223]
	lsl	x0, x2, x0
	and	w0, w0, 65535
	orr	w0, w1, w0
	and	w1, w0, 65535
	ldr	x0, [x29, 224]
	strh	w1, [x0]
	adrp	x0, processManager
	add	x0, x0, :lo12:processManager
	mov	w2, 3
	ldr	x1, [x29, 400]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusE
	adrp	x0, virtman
	add	x0, x0, :lo12:virtman
	ldr	x1, [x0, 8]
	adrp	x0, __stack_top
	add	x0, x0, :lo12:__stack_top
	orr	x0, x1, x0
	str	x0, [x29, 376]
	ldr	x1, [x29, 376]
	ldr	x0, [x29, 392]
	bl	_ZN7Process24restoreContextAndExecuteEPv
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 464
	ret
	.size	_Z12main_mmu_setv, .-_Z12main_mmu_setv
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
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZN5PL011C2IJiEEEDpOT_,"axG",@progbits,_ZN5PL011C5IJiEEEDpOT_,comdat
	.align	2
	.weak	_ZN5PL011C2IJiEEEDpOT_
	.type	_ZN5PL011C2IJiEEEDpOT_, %function
_ZN5PL011C2IJiEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	w0, [x0]
	mov	w1, w0
	mov	x0, x19
	bl	_ZN17MemBasedRegReaderILb1EEC2IiEET_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN5PL011C2IJiEEEDpOT_, .-_ZN5PL011C2IJiEEEDpOT_
	.weak	_ZN5PL011C1IJiEEEDpOT_
	.set	_ZN5PL011C1IJiEEEDpOT_,_ZN5PL011C2IJiEEEDpOT_
	.section	.text._ZN6VectorI22AddressSpaceDescriptorEC2Ev,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC2Ev
	.type	_ZN6VectorI22AddressSpaceDescriptorEC2Ev, %function
_ZN6VectorI22AddressSpaceDescriptorEC2Ev:
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
	.size	_ZN6VectorI22AddressSpaceDescriptorEC2Ev, .-_ZN6VectorI22AddressSpaceDescriptorEC2Ev
	.weak	_ZN6VectorI22AddressSpaceDescriptorEC1Ev
	.set	_ZN6VectorI22AddressSpaceDescriptorEC1Ev,_ZN6VectorI22AddressSpaceDescriptorEC2Ev
	.section	.text._ZN6VectorI22AddressSpaceDescriptorED2Ev,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.type	_ZN6VectorI22AddressSpaceDescriptorED2Ev, %function
_ZN6VectorI22AddressSpaceDescriptorED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L97
	str	xzr, [x29, 40]
.L95:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L94
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L95
.L94:
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
.L97:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorED2Ev, .-_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.weak	_ZN6VectorI22AddressSpaceDescriptorED1Ev
	.set	_ZN6VectorI22AddressSpaceDescriptorED1Ev,_ZN6VectorI22AddressSpaceDescriptorED2Ev
	.section	.text._ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_
	.type	_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_, %function
_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	mov	x19, x1
	ldr	x0, [x29, 40]
	bl	_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L102
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 40]
	str	x1, [x0, 16]
	ldr	x0, [x29, 40]
	ldr	x2, [x0]
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	sub	x0, x0, #24
	add	x0, x2, x0
	mov	x1, x0
	mov	x0, 24
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L102
	mov	x2, x0
	mov	x3, x19
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldr	x0, [x3, 16]
	str	x0, [x2, 16]
.L102:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_, .-_ZN6VectorI22AddressSpaceDescriptorE8pushBackES0_
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
	bhi	.L104
	lsl	x0, x0, 1
	b	.L105
.L104:
	mov	x0, -1
.L105:
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
	.section	.text._ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, %function
_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZN17VirtioBlockDriverC2IJmEEEDpOT_,"axG",@progbits,_ZN17VirtioBlockDriverC5IJmEEEDpOT_,comdat
	.align	2
	.weak	_ZN17VirtioBlockDriverC2IJmEEEDpOT_
	.type	_ZN17VirtioBlockDriverC2IJmEEEDpOT_, %function
_ZN17VirtioBlockDriverC2IJmEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x1, x0
	mov	x0, x19
	bl	_ZN12VirtioDriverC2IJmEEEDpOT_
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	mov	x2, 24
	mov	w1, 0
	bl	memset
	ldr	x0, [x29, 40]
	add	x0, x0, 112
	mov	x2, 17
	mov	w1, 0
	bl	memset
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN17VirtioBlockDriverC2IJmEEEDpOT_, .-_ZN17VirtioBlockDriverC2IJmEEEDpOT_
	.weak	_ZN17VirtioBlockDriverC1IJmEEEDpOT_
	.set	_ZN17VirtioBlockDriverC1IJmEEEDpOT_,_ZN17VirtioBlockDriverC2IJmEEEDpOT_
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
	.section	.text._ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_,"axG",@progbits,_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_,comdat
	.align	2
	.weak	_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_
	.type	_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_, %function
_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_:
	stp	x29, x30, [sp, -144]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x23, [sp, 48]
	str	x0, [x29, 120]
	str	x1, [x29, 112]
	str	x2, [x29, 104]
	str	x3, [x29, 96]
	str	x4, [x29, 88]
	str	x5, [x29, 80]
	str	x6, [x29, 72]
	ldr	x0, [x29, 120]
	bl	_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_
	str	x0, [x29, 136]
	ldr	x0, [x29, 136]
	cmp	x0, 0
	beq	.L112
	ldr	x0, [x29, 136]
	bl	_ZN16DoublyLinkedNodeI7ProcessE4dataILb1EEEN18ReturnTypeSelectorIS0_XT_ELb0EE4typeEv
	mov	x22, x0
	ldr	x0, [x29, 112]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x19, [x0]
	ldr	x0, [x29, 104]
	bl	_ZSt7forwardIDnEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x29, 96]
	bl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	w0, [x0]
	mov	w23, w0
	ldr	x0, [x29, 88]
	bl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	w0, [x0]
	sxtw	x20, w0
	ldr	x0, [x29, 80]
	bl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	w0, [x0]
	sxtw	x21, w0
	ldr	x0, [x29, 72]
	bl	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	w0, [x0]
	sxtw	x0, w0
	mov	x6, x0
	mov	x5, x21
	mov	x4, x20
	mov	w3, w23
	mov	x2, 0
	mov	x1, x19
	mov	x0, x22
	bl	_ZN7Process4initEmPS_jmmm
	str	w0, [x29, 132]
	ldr	w0, [x29, 132]
	cmp	w0, 0
	bne	.L112
	mov	w3, 1
	mov	w2, 0
	ldr	x1, [x29, 136]
	ldr	x0, [x29, 120]
	bl	_ZN14ProcessManager19changeProcessStatusEP16DoublyLinkedNodeI7ProcessENS1_6StatusES4_
.L112:
	ldr	x0, [x29, 136]
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldr	x23, [sp, 48]
	ldp	x29, x30, [sp], 144
	ret
	.size	_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_, .-_ZN14ProcessManager16createNewProcessIJmDniiiiEEEP16DoublyLinkedNodeI7ProcessEDpOT_
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
	.section	.text._ZN17MemBasedRegReaderILb1EEC2IiEET_,"axG",@progbits,_ZN17MemBasedRegReaderILb1EEC5IiEET_,comdat
	.align	2
	.weak	_ZN17MemBasedRegReaderILb1EEC2IiEET_
	.type	_ZN17MemBasedRegReaderILb1EEC2IiEET_, %function
_ZN17MemBasedRegReaderILb1EEC2IiEET_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	ldrsw	x0, [sp, 4]
	mov	x1, x0
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17MemBasedRegReaderILb1EEC2IiEET_, .-_ZN17MemBasedRegReaderILb1EEC2IiEET_
	.weak	_ZN17MemBasedRegReaderILb1EEC1IiEET_
	.set	_ZN17MemBasedRegReaderILb1EEC1IiEET_,_ZN17MemBasedRegReaderILb1EEC2IiEET_
	.section	.text._ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv, %function
_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L120
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L121
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L123
.L121:
	mov	x0, 8
.L123:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	and	w0, w0, 255
	b	.L124
.L120:
	mov	w0, 1
.L124:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv, .-_ZN6VectorI22AddressSpaceDescriptorE24adjustCapacityForOneMoreEv
	.section	.text._ZN12VirtioDriverC2IJmEEEDpOT_,"axG",@progbits,_ZN12VirtioDriverC5IJmEEEDpOT_,comdat
	.align	2
	.weak	_ZN12VirtioDriverC2IJmEEEDpOT_
	.type	_ZN12VirtioDriverC2IJmEEEDpOT_, %function
_ZN12VirtioDriverC2IJmEEEDpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x19
	bl	_ZN17MemBasedRegReaderILb1EEC2ImEET_
	ldr	x0, [x29, 40]
	strb	wzr, [x0, 8]
	ldr	x0, [x29, 40]
	str	wzr, [x0, 12]
	ldr	x0, [x29, 40]
	add	x0, x0, 16
	bl	_ZN17VirtioQueueLayoutC1Ev
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN12VirtioDriverC2IJmEEEDpOT_, .-_ZN12VirtioDriverC2IJmEEEDpOT_
	.weak	_ZN12VirtioDriverC1IJmEEEDpOT_
	.set	_ZN12VirtioDriverC1IJmEEEDpOT_,_ZN12VirtioDriverC2IJmEEEDpOT_
	.section	.text._ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_,"axG",@progbits,_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_
	.type	_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_, %function
_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	mov	x0, 400
	bl	_Znwm
	mov	x19, x0
	mov	x2, 0
	mov	x1, 0
	mov	x0, x19
	bl	_ZN16DoublyLinkedNodeI7ProcessEC1IJEEEPS1_S3_DpOT_
	str	x19, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L127
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
.L127:
	ldr	x0, [x29, 56]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_, .-_ZN16DoublyLinkedListI7ProcessE10insertTailIJEEEP16DoublyLinkedNodeIS0_EDpOT_
	.section	.text._ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	.type	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm, %function
_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L130
	mov	w0, 1
	b	.L131
.L130:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L132
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	mov	x2, x1
	mov	x1, x4
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L133
.L132:
	ldr	x1, [x29, 16]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	mov	x1, x0
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L133:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L134
	mov	w0, 0
	b	.L131
.L134:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L131:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm, .-_ZN6VectorI22AddressSpaceDescriptorE14resizeCapacityEm
	.section	.text._ZN17MemBasedRegReaderILb1EEC2ImEET_,"axG",@progbits,_ZN17MemBasedRegReaderILb1EEC5ImEET_,comdat
	.align	2
	.weak	_ZN17MemBasedRegReaderILb1EEC2ImEET_
	.type	_ZN17MemBasedRegReaderILb1EEC2ImEET_, %function
_ZN17MemBasedRegReaderILb1EEC2ImEET_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x1, [sp]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN17MemBasedRegReaderILb1EEC2ImEET_, .-_ZN17MemBasedRegReaderILb1EEC2ImEET_
	.weak	_ZN17MemBasedRegReaderILb1EEC1ImEET_
	.set	_ZN17MemBasedRegReaderILb1EEC1ImEET_,_ZN17MemBasedRegReaderILb1EEC2ImEET_
	.section	.text._ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_,"axG",@progbits,_ZN16DoublyLinkedNodeI7ProcessEC5IJEEEPS1_S3_DpOT_,comdat
	.align	2
	.weak	_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_
	.type	_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_, %function
_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	bl	_ZN7ProcessC1Ev
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	str	x1, [x0, 384]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 24]
	str	x1, [x0, 392]
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_, .-_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_
	.weak	_ZN16DoublyLinkedNodeI7ProcessEC1IJEEEPS1_S3_DpOT_
	.set	_ZN16DoublyLinkedNodeI7ProcessEC1IJEEEPS1_S3_DpOT_,_ZN16DoublyLinkedNodeI7ProcessEC2IJEEEPS1_S3_DpOT_
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
	beq	.L138
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	bl	_ZN16DoublyLinkedNodeI7ProcessE11insertAfterEPS1_
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	b	.L140
.L138:
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
.L140:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E, .-_ZN16DoublyLinkedListI7ProcessE10insertTailEP16DoublyLinkedNodeIS0_E
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
	beq	.L143
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 40]
	bl	_ZN16DoublyLinkedNodeI7ProcessE8previousEPS1_
.L143:
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
	.section	.text._ZN15FAT32EntryTableD2Ev,"axG",@progbits,_ZN15FAT32EntryTableD5Ev,comdat
	.align	2
	.weak	_ZN15FAT32EntryTableD2Ev
	.type	_ZN15FAT32EntryTableD2Ev, %function
_ZN15FAT32EntryTableD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI10FAT32EntryED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN15FAT32EntryTableD2Ev, .-_ZN15FAT32EntryTableD2Ev
	.weak	_ZN15FAT32EntryTableD1Ev
	.set	_ZN15FAT32EntryTableD1Ev,_ZN15FAT32EntryTableD2Ev
	.text
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	w1, [x29, 24]
	ldr	w0, [x29, 28]
	cmp	w0, 1
	bne	.L151
	ldr	w1, [x29, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L151
	adrp	x0, fat
	add	x0, x0, :lo12:fat
	bl	_ZN15FAT32EntryTableC1Ev
	adrp	x0, __dso_handle
	add	x2, x0, :lo12:__dso_handle
	adrp	x0, fat
	add	x1, x0, :lo12:fat
	adrp	x0, _ZN15FAT32EntryTableD1Ev
	add	x0, x0, :lo12:_ZN15FAT32EntryTableD1Ev
	bl	__cxa_atexit
.L151:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZN6VectorI10FAT32EntryED2Ev,"axG",@progbits,_ZN6VectorI10FAT32EntryED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI10FAT32EntryED2Ev
	.type	_ZN6VectorI10FAT32EntryED2Ev, %function
_ZN6VectorI10FAT32EntryED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L157
	str	xzr, [x29, 40]
.L155:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L154
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L155
.L154:
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
.L157:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI10FAT32EntryED2Ev, .-_ZN6VectorI10FAT32EntryED2Ev
	.weak	_ZN6VectorI10FAT32EntryED1Ev
	.set	_ZN6VectorI10FAT32EntryED1Ev,_ZN6VectorI10FAT32EntryED2Ev
	.text
	.align	2
	.type	_GLOBAL__sub_I_main, %function
_GLOBAL__sub_I_main:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	mov	w1, 65535
	mov	w0, 1
	bl	_Z41__static_initialization_and_destruction_0ii
	ldp	x29, x30, [sp], 16
	ret
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw",%init_array
	.align	3
	.xword	_GLOBAL__sub_I_main
	.section	.rodata
	.align	3
	.type	_ZZ4mainE19__PRETTY_FUNCTION__, %object
	.size	_ZZ4mainE19__PRETTY_FUNCTION__, 11
_ZZ4mainE19__PRETTY_FUNCTION__:
	.string	"int main()"
	.align	3
	.type	_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__, 95
_ZZN6VectorI22AddressSpaceDescriptorEixEmE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::operator[](size_t) [with T = AddressSpaceDescriptor; size_t = long unsigned int]"
	.align	3
	.type	_ZZ12main_mmu_setvE19__PRETTY_FUNCTION__, %object
	.size	_ZZ12main_mmu_setvE19__PRETTY_FUNCTION__, 20
_ZZ12main_mmu_setvE19__PRETTY_FUNCTION__:
	.string	"void main_mmu_set()"
	.align	3
	.type	_ZZN16InterruptHandler6rebaseEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZN16InterruptHandler6rebaseEmE19__PRETTY_FUNCTION__, 38
_ZZN16InterruptHandler6rebaseEmE19__PRETTY_FUNCTION__:
	.string	"void InterruptHandler::rebase(size_t)"
	.hidden	__dso_handle
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
