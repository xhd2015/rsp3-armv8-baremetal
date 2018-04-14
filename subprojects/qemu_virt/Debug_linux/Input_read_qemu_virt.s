	.arch armv8.2-a+crc
	.file	"Input_read_qemu_virt.cpp"
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
	.global	_ZN5Input4readEv
	.type	_ZN5Input4readEv, %function
_ZN5Input4readEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
.L6:
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	ldr	x0, [x0, 16]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	b	.L6
.L5:
	adrp	x0, inputBuffer
	add	x0, x0, :lo12:inputBuffer
	bl	_ZN5QueueItE6removeEv
	and	w0, w0, 65535
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN5Input4readEv, .-_ZN5Input4readEv
	.section	.rodata
	.align	3
.LC0:
	.string	"!empty()"
	.align	3
.LC1:
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
	bne	.L10
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L10:
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
	bne	.L11
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
.L11:
	ldr	x0, [x29, 40]
	bl	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	ldrh	w0, [x0]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN5QueueItE6removeEv, .-_ZN5QueueItE6removeEv
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
	.type	_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__, 51
_ZZN5QueueItE6removeEvE19__PRETTY_FUNCTION__:
	.string	"T Queue<T>::remove() [with T = short unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
