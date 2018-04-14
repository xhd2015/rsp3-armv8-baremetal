	.arch armv8.2-a+crc
	.file	"FAT32EntryTable.cpp"
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
	.text
	.align	2
	.global	_ZN15FAT32EntryTableC2Ev
	.type	_ZN15FAT32EntryTableC2Ev, %function
_ZN15FAT32EntryTableC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI10FAT32EntryEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN15FAT32EntryTableC2Ev, .-_ZN15FAT32EntryTableC2Ev
	.global	_ZN15FAT32EntryTableC1Ev
	.set	_ZN15FAT32EntryTableC1Ev,_ZN15FAT32EntryTableC2Ev
	.align	2
	.global	_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_
	.type	_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_, %function
_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	w2, [x29, 24]
	str	xzr, [x29, 56]
.L8:
	add	x0, x29, 24
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	ldr	x0, [x29, 56]
	add	x1, x0, 1
	str	x1, [x29, 56]
	mov	x2, x0
	ldr	w1, [x29, 24]
	ldr	x0, [x29, 32]
	bl	_ZNKSt8functionIFv10FAT32EntrymEEclES0_m
	ldr	w1, [x29, 24]
	ldr	x0, [x29, 40]
	bl	_ZNK15FAT32EntryTable4nextE10FAT32Entry
	str	w0, [x29, 24]
	b	.L8
.L9:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_, .-_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZNK15FAT32EntryTable4nextE10FAT32Entry
	.type	_ZNK15FAT32EntryTable4nextE10FAT32Entry, %function
_ZNK15FAT32EntryTable4nextE10FAT32Entry:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	w1, [x29, 32]
	ldr	x19, [x29, 40]
	add	x0, x29, 32
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	str	x19, [x29, 56]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcc	.L11
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L11:
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	lsl	x0, x0, 2
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK15FAT32EntryTable4nextE10FAT32Entry, .-_ZNK15FAT32EntryTable4nextE10FAT32Entry
	.align	2
	.global	_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm
	.type	_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm, %function
_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	w1, [x29, 32]
	str	x2, [x29, 24]
	str	x3, [x29, 16]
	str	xzr, [x29, 56]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	udiv	x0, x1, x0
	str	x0, [x29, 48]
.L18:
	ldr	x1, [x29, 56]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	beq	.L15
	add	x0, x29, 32
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L15
	mov	w0, 1
	b	.L16
.L15:
	mov	w0, 0
.L16:
	cmp	w0, 0
	beq	.L17
	ldr	w1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZNK15FAT32EntryTable4nextE10FAT32Entry
	str	w0, [x29, 32]
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L18
.L17:
	ldr	w0, [x29, 32]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm, .-_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm
	.section	.text._ZN6VectorI10FAT32EntryEC2Ev,"axG",@progbits,_ZN6VectorI10FAT32EntryEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorI10FAT32EntryEC2Ev
	.type	_ZN6VectorI10FAT32EntryEC2Ev, %function
_ZN6VectorI10FAT32EntryEC2Ev:
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
	.size	_ZN6VectorI10FAT32EntryEC2Ev, .-_ZN6VectorI10FAT32EntryEC2Ev
	.weak	_ZN6VectorI10FAT32EntryEC1Ev
	.set	_ZN6VectorI10FAT32EntryEC1Ev,_ZN6VectorI10FAT32EntryEC2Ev
	.section	.text._ZNKSt8functionIFv10FAT32EntrymEEclES0_m,"axG",@progbits,_ZNKSt8functionIFv10FAT32EntrymEEclES0_m,comdat
	.align	2
	.weak	_ZNKSt8functionIFv10FAT32EntrymEEclES0_m
	.type	_ZNKSt8functionIFv10FAT32EntrymEEclES0_m, %function
_ZNKSt8functionIFv10FAT32EntrymEEclES0_m:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [x29, 72]
	str	w1, [x29, 64]
	str	x2, [x29, 56]
	ldr	x0, [x29, 72]
	bl	_ZNKSt14_Function_base8_M_emptyEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L22
	bl	_ZSt25__throw_bad_function_callv
.L22:
	ldr	x0, [x29, 72]
	ldr	x19, [x0, 24]
	ldr	x20, [x29, 72]
	add	x0, x29, 64
	bl	_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x21, x0
	add	x0, x29, 56
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	mov	x2, x0
	mov	x1, x21
	mov	x0, x20
	blr	x19
	nop
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNKSt8functionIFv10FAT32EntrymEEclES0_m, .-_ZNKSt8functionIFv10FAT32EntrymEEclES0_m
	.section	.text._ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.align	2
	.weak	_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE
	.type	_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE, %function
_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE, .-_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE
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
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__, 95
_ZZNK6VectorI10FAT32EntryEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = FAT32Entry; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
