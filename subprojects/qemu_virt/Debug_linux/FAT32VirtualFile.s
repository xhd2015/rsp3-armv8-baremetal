	.arch armv8.2-a+crc
	.file	"FAT32VirtualFile.cpp"
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
	.section	.text._ZN6StringaSERKS_,"axG",@progbits,_ZN6StringaSERKS_,comdat
	.align	2
	.weak	_ZN6StringaSERKS_
	.type	_ZN6StringaSERKS_, %function
_ZN6StringaSERKS_:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	_ZN6VectorIcEaSERKS0_
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6StringaSERKS_, .-_ZN6StringaSERKS_
	.section	.text._ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.align	2
	.weak	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	.type	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_, %function
_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_, .-_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	.section	.text._ZN6StringC2EOS_,"axG",@progbits,_ZN6StringC5EOS_,comdat
	.align	2
	.weak	_ZN6StringC2EOS_
	.type	_ZN6StringC2EOS_, %function
_ZN6StringC2EOS_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x19, [x29, 40]
	ldr	x0, [x29, 32]
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorIcEC2EOS0_
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6StringC2EOS_, .-_ZN6StringC2EOS_
	.weak	_ZN6StringC1EOS_
	.set	_ZN6StringC1EOS_,_ZN6StringC2EOS_
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
	beq	.L17
	ldr	x0, [x29, 24]
	ldr	x3, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 24]
	mov	w2, 3
	blr	x3
.L17:
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
	.section	.text._ZNK11FATDirEntry6isFileEv,"axG",@progbits,_ZNK11FATDirEntry6isFileEv,comdat
	.align	2
	.weak	_ZNK11FATDirEntry6isFileEv
	.type	_ZNK11FATDirEntry6isFileEv, %function
_ZNK11FATDirEntry6isFileEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
	and	w0, w0, 63
	cmp	w0, 32
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK11FATDirEntry6isFileEv, .-_ZNK11FATDirEntry6isFileEv
	.section	.text._ZN16FATDirEntryTableC2Ev,"axG",@progbits,_ZN16FATDirEntryTableC5Ev,comdat
	.align	2
	.weak	_ZN16FATDirEntryTableC2Ev
	.type	_ZN16FATDirEntryTableC2Ev, %function
_ZN16FATDirEntryTableC2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI11FATDirEntryEC2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FATDirEntryTableC2Ev, .-_ZN16FATDirEntryTableC2Ev
	.weak	_ZN16FATDirEntryTableC1Ev
	.set	_ZN16FATDirEntryTableC1Ev,_ZN16FATDirEntryTableC2Ev
	.section	.text._ZN16FATDirEntryTableD2Ev,"axG",@progbits,_ZN16FATDirEntryTableD5Ev,comdat
	.align	2
	.weak	_ZN16FATDirEntryTableD2Ev
	.type	_ZN16FATDirEntryTableD2Ev, %function
_ZN16FATDirEntryTableD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI11FATDirEntryED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FATDirEntryTableD2Ev, .-_ZN16FATDirEntryTableD2Ev
	.weak	_ZN16FATDirEntryTableD1Ev
	.set	_ZN16FATDirEntryTableD1Ev,_ZN16FATDirEntryTableD2Ev
	.text
	.align	2
	.global	_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	.type	_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry, %function
_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	str	x3, [x29, 48]
	str	x4, [x29, 40]
	strh	w5, [x29, 38]
	str	x6, [x29, 24]
	str	w7, [x29, 32]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 64]
	bl	_ZN11VirtualFileC2ERK6String
	adrp	x0, _ZTV16FAT32VirtualFile+16
	add	x1, x0, :lo12:_ZTV16FAT32VirtualFile+16
	ldr	x0, [x29, 72]
	str	x1, [x0]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 56]
	str	x1, [x0, 56]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 48]
	str	x1, [x0, 64]
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 40]
	str	x1, [x0, 72]
	ldr	x0, [x29, 72]
	strb	wzr, [x0, 80]
	ldr	x0, [x29, 72]
	ldrh	w1, [x29, 38]
	strh	w1, [x0, 82]
	ldr	x0, [x29, 72]
	str	xzr, [x0, 88]
	ldr	x0, [x29, 72]
	str	xzr, [x0, 96]
	ldr	x0, [x29, 72]
	str	xzr, [x0, 104]
	ldr	x0, [x29, 72]
	add	x0, x0, 88
	bl	_ZN16FATDirEntryTableC1Ev
	ldr	x0, [x29, 72]
	ldr	x1, [x29, 24]
	str	x1, [x0, 112]
	ldr	x0, [x29, 72]
	ldr	w1, [x29, 32]
	str	w1, [x0, 120]
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry, .-_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	.global	_ZN16FAT32VirtualFileC1ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	.set	_ZN16FAT32VirtualFileC1ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry,_ZN16FAT32VirtualFileC2ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	.align	2
	.global	_ZN16FAT32VirtualFileD2Ev
	.type	_ZN16FAT32VirtualFileD2Ev, %function
_ZN16FAT32VirtualFileD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, _ZTV16FAT32VirtualFile+16
	add	x1, x0, :lo12:_ZTV16FAT32VirtualFile+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 88
	bl	_ZN16FATDirEntryTableD1Ev
	ldr	x0, [x29, 24]
	bl	_ZN11VirtualFileD2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFileD2Ev, .-_ZN16FAT32VirtualFileD2Ev
	.global	_ZN16FAT32VirtualFileD1Ev
	.set	_ZN16FAT32VirtualFileD1Ev,_ZN16FAT32VirtualFileD2Ev
	.align	2
	.global	_ZN16FAT32VirtualFileD0Ev
	.type	_ZN16FAT32VirtualFileD0Ev, %function
_ZN16FAT32VirtualFileD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN16FAT32VirtualFileD1Ev
	mov	x1, 128
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFileD0Ev, .-_ZN16FAT32VirtualFileD0Ev
	.align	2
	.global	_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB
	.type	_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB, %function
_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x4, [x0]
	mov	x3, 512
	ldr	x2, [x29, 16]
	mov	x1, 0
	ldr	x0, [x29, 24]
	blr	x4
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB, .-_ZN16FAT32VirtualFile7readBPBER10ByteReaderR11FAT32ExtBPB
	.align	2
	.global	_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	.type	_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable, %function
_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	ldr	x0, [x29, 32]
	ldrh	w0, [x0, 11]
	mul	w0, w1, w0
	sxtw	x0, w0
	str	x0, [x29, 72]
	ldr	x0, [x29, 32]
	bl	_ZNK11FAT32ExtBPB14uni_getFatSizeEv
	mov	x1, x0
	ldr	x0, [x29, 32]
	ldrh	w0, [x0, 11]
	and	x0, x0, 65535
	mul	x0, x1, x0
	str	x0, [x29, 64]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 64]
	bl	_ZN6VectorI10FAT32EntryE6resizeEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x4, [x0]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	ldr	x3, [x29, 64]
	mov	x2, x0
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 40]
	blr	x4
	mov	x1, x0
	ldr	x0, [x29, 64]
	cmp	x0, x1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI10FAT32EntryE5clearEv
.L31:
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable, .-_ZN16FAT32VirtualFile7readFATER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	.section	.text._ZN6StringD2Ev,"axG",@progbits,_ZN6StringD5Ev,comdat
	.align	2
	.weak	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, %function
_ZN6StringD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
	.weak	_ZN6StringD1Ev
	.set	_ZN6StringD1Ev,_ZN6StringD2Ev
	.section	.rodata
	.align	3
.LC0:
	.string	""
	.text
	.align	2
	.global	_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	.type	_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable, %function
_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, x29, 64
	bl	_ZN6StringC1EPKc
	add	x20, x29, 64
	ldr	x0, [x29, 48]
	bl	_ZNK11FAT32ExtBPB15getRootFATEntryEv
	mov	w1, w0
	add	x0, x29, 88
	bl	_ZN10FAT32EntryC1Ej
	mov	x0, 128
	bl	_Znwm
	mov	x19, x0
	ldr	w7, [x29, 88]
	mov	x6, 0
	mov	w5, 2
	ldr	x4, [x29, 40]
	ldr	x3, [x29, 48]
	ldr	x2, [x29, 56]
	mov	x1, x20
	mov	x0, x19
	bl	_ZN16FAT32VirtualFileC1ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	str	x19, [x29, 200]
	add	x0, x29, 64
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 200]
	cmp	x0, 0
	beq	.L34
	ldr	x0, [x29, 200]
	bl	_ZN16FAT32VirtualFile17loadDirEntryTableEv
	ldr	x0, [x29, 200]
	str	x0, [x29, 184]
	mov	w0, 1
	strb	w0, [x29, 183]
	ldr	x0, [x29, 184]
	add	x0, x0, 80
	str	x0, [x29, 168]
	mov	w0, 1
	strb	w0, [x29, 167]
	ldrb	w0, [x29, 183]
	strb	w0, [x29, 166]
	ldr	x0, [x29, 168]
	str	x0, [x29, 152]
	ldrb	w0, [x29, 167]
	strb	w0, [x29, 151]
	ldrb	w0, [x29, 167]
	strb	w0, [x29, 150]
	ldrb	w0, [x29, 166]
	strb	w0, [x29, 149]
	ldr	x0, [x29, 152]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 151]
	ldrb	w0, [x29, 150]
	str	x2, [x29, 136]
	str	x0, [x29, 128]
	ldr	x0, [x29, 136]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 136]
	mov	w3, w0
	ldr	x0, [x29, 128]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 128]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 149]
	ldrb	w3, [x29, 150]
	ldrb	w0, [x29, 151]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 120]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 151]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 152]
	strb	w1, [x0]
	ldr	x19, [x29, 200]
	ldr	x0, [x29, 200]
	add	x0, x0, 88
	add	x1, x29, 96
	mov	x8, x1
	bl	_ZNK16FATDirEntryTable11volumnLabelEv
	str	x19, [x29, 192]
	ldr	x0, [x29, 192]
	add	x0, x0, 8
	add	x1, x29, 96
	bl	_ZN6StringaSERKS_
	add	x0, x29, 96
	bl	_ZN6StringD1Ev
.L34:
	ldr	x0, [x29, 200]
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 208
	ret
	.size	_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable, .-_ZN16FAT32VirtualFile12makeRootFileER10ByteReaderR11FAT32ExtBPBR15FAT32EntryTable
	.align	2
	.global	_ZNK16FAT32VirtualFile4typeEv
	.type	_ZNK16FAT32VirtualFile4typeEv, %function
_ZNK16FAT32VirtualFile4typeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrh	w0, [x0, 82]
	add	sp, sp, 16
	ret
	.size	_ZNK16FAT32VirtualFile4typeEv, .-_ZNK16FAT32VirtualFile4typeEv
	.align	2
	.global	_ZNK16FAT32VirtualFile9subFSTypeEv
	.type	_ZNK16FAT32VirtualFile9subFSTypeEv, %function
_ZNK16FAT32VirtualFile9subFSTypeEv:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	mov	w0, 5
	b	.L43
.L42:
	mov	w0, 0
.L43:
	add	sp, sp, 32
	ret
	.size	_ZNK16FAT32VirtualFile9subFSTypeEv, .-_ZNK16FAT32VirtualFile9subFSTypeEv
	.section	.rodata
	.align	3
.LC1:
	.string	"i<_size"
	.align	3
.LC2:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZNK16FAT32VirtualFile4sizeEv
	.type	_ZNK16FAT32VirtualFile4sizeEv, %function
_ZNK16FAT32VirtualFile4sizeEv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L47
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 82]
	cmp	w0, 1
	bne	.L47
	mov	w0, 1
	b	.L48
.L47:
	mov	w0, 0
.L48:
	cmp	w0, 0
	beq	.L49
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 32]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	add	x1, x0, 88
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 112]
	str	x1, [x29, 56]
	str	x0, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 48]
	cmp	x1, x0
	bcc	.L52
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L52:
	ldr	x0, [x29, 56]
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	lsl	x0, x0, 5
	add	x0, x1, x0
	ldr	w0, [x0, 28]
	uxtw	x0, w0
	b	.L54
.L49:
	mov	x0, 0
.L54:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNK16FAT32VirtualFile4sizeEv, .-_ZNK16FAT32VirtualFile4sizeEv
	.align	2
	.global	_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile
	.type	_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile, %function
_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	w0, 1
	add	sp, sp, 32
	ret
	.size	_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile, .-_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile
	.align	2
	.global	_ZN16FAT32VirtualFile7addFileEP11VirtualFile
	.type	_ZN16FAT32VirtualFile7addFileEP11VirtualFile, %function
_ZN16FAT32VirtualFile7addFileEP11VirtualFile:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	w0, 1
	add	sp, sp, 16
	ret
	.size	_ZN16FAT32VirtualFile7addFileEP11VirtualFile, .-_ZN16FAT32VirtualFile7addFileEP11VirtualFile
	.align	2
	.global	_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE
	.type	_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE, %function
_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	x0, 0
	add	sp, sp, 16
	ret
	.size	_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE, .-_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE
	.align	2
	.global	_ZN16FAT32VirtualFile10removeFileERK9StringRef
	.type	_ZN16FAT32VirtualFile10removeFileERK9StringRef, %function
_ZN16FAT32VirtualFile10removeFileERK9StringRef:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	mov	x0, 0
	add	sp, sp, 16
	ret
	.size	_ZN16FAT32VirtualFile10removeFileERK9StringRef, .-_ZN16FAT32VirtualFile10removeFileERK9StringRef
	.align	2
	.global	_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE
	.type	_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE, %function
_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN16FAT32VirtualFile15buildSubEntriesEv
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	_ZN11VirtualFile8findFileERK9VectorRefI6StringE
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE, .-_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE
	.align	2
	.global	_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE
	.type	_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE, %function
_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN16FAT32VirtualFile15buildSubEntriesEv
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	_ZN11VirtualFile8findFileERK6VectorI9StringRefE
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE, .-_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE
	.align	2
	.global	_ZN16FAT32VirtualFile8findFileERK9StringRef
	.type	_ZN16FAT32VirtualFile8findFileERK9StringRef, %function
_ZN16FAT32VirtualFile8findFileERK9StringRef:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN16FAT32VirtualFile15buildSubEntriesEv
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	bl	_ZN11VirtualFile8findFileERK9StringRef
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN16FAT32VirtualFile8findFileERK9StringRef, .-_ZN16FAT32VirtualFile8findFileERK9StringRef
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
	.global	_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE
	.type	_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE, %function
_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZN16FAT32VirtualFile15buildSubEntriesEv
	ldr	x19, [x29, 40]
	add	x0, x29, 48
	ldr	x1, [x29, 32]
	bl	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_
	add	x0, x29, 48
	mov	x1, x0
	mov	x0, x19
	bl	_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE
	add	x0, x29, 48
	bl	_ZNSt8functionIFvP11VirtualFileEED1Ev
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE, .-_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE
	.align	2
	.type	_ZZN16FAT32VirtualFile4readEmmENKUl10FAT32EntrymE_clES0_m, %function
_ZZN16FAT32VirtualFile4readEmmENKUl10FAT32EntrymE_clES0_m:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	str	x0, [x29, 72]
	str	w1, [x29, 64]
	str	x2, [x29, 56]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L75
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x1, [x0]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 24]
	cmp	x1, x0
	bhi	.L73
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x0, [x0]
	b	.L74
.L73:
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 24]
.L74:
	str	x0, [x29, 104]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 8]
	mov	x22, x0
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	ldr	x20, [x0, 56]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	ldr	x0, [x0, 56]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x19, [x0]
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	ldr	x21, [x0, 64]
	add	x0, x29, 64
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	mov	x1, x0
	mov	x0, x21
	bl	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	mov	x1, x0
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	ldr	x0, [x0, 64]
	ldrh	w0, [x0, 11]
	and	x0, x0, 65535
	mul	x0, x1, x0
	add	x1, x29, 80
	mov	x8, x1
	ldr	x2, [x29, 104]
	mov	x1, x0
	mov	x0, x20
	blr	x19
	add	x0, x29, 80
	mov	x2, -1
	mov	x1, x0
	mov	x0, x22
	bl	_ZN6VectorIcE6appendERKS0_m
	add	x0, x29, 80
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x2, [x0]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 104]
	sub	x1, x2, x1
	str	x1, [x0]
.L75:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZZN16FAT32VirtualFile4readEmmENKUl10FAT32EntrymE_clES0_m, .-_ZZN16FAT32VirtualFile4readEmmENKUl10FAT32EntrymE_clES0_m
	.section	.text._ZNSt8functionIFv10FAT32EntrymEED2Ev,"axG",@progbits,_ZNSt8functionIFv10FAT32EntrymEED5Ev,comdat
	.align	2
	.weak	_ZNSt8functionIFv10FAT32EntrymEED2Ev
	.type	_ZNSt8functionIFv10FAT32EntrymEED2Ev, %function
_ZNSt8functionIFv10FAT32EntrymEED2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNSt14_Function_baseD2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt8functionIFv10FAT32EntrymEED2Ev, .-_ZNSt8functionIFv10FAT32EntrymEED2Ev
	.weak	_ZNSt8functionIFv10FAT32EntrymEED1Ev
	.set	_ZNSt8functionIFv10FAT32EntrymEED1Ev,_ZNSt8functionIFv10FAT32EntrymEED2Ev
	.text
	.align	2
	.global	_ZN16FAT32VirtualFile4readEmm
	.type	_ZN16FAT32VirtualFile4readEmm, %function
_ZN16FAT32VirtualFile4readEmm:
	stp	x29, x30, [sp, -272]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	mov	x20, x8
	str	x0, [x29, 104]
	str	x1, [x29, 96]
	str	x2, [x29, 88]
	ldr	x0, [x29, 104]
	str	x0, [x29, 240]
	ldr	x0, [x29, 240]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L79
	ldr	x0, [x29, 104]
	ldrh	w0, [x0, 82]
	cmp	w0, 1
	beq	.L80
.L79:
	mov	w0, 1
	b	.L81
.L80:
	mov	w0, 0
.L81:
	cmp	w0, 0
	beq	.L82
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	mov	x1, x0
	mov	x0, x20
	bl	_ZN6StringC1EPKc
	b	.L77
.L82:
	ldr	x0, [x29, 104]
	ldr	w0, [x0, 120]
	str	w0, [x29, 144]
	ldr	x0, [x29, 104]
	ldr	x19, [x0, 72]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 64]
	bl	_ZNK11FAT32ExtBPB18getClusterByteSizeEv
	ldr	x3, [x29, 96]
	mov	x2, x0
	ldr	w1, [x29, 144]
	mov	x0, x19
	bl	_ZNK15FAT32EntryTable16locateFileOffsetE10FAT32Entrymm
	str	w0, [x29, 144]
	ldr	x0, [x29, 88]
	str	x0, [x29, 264]
	add	x0, x29, 120
	bl	_ZN6VectorIcEC2Ev
	add	x0, x29, 144
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L84
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 64]
	bl	_ZNK11FAT32ExtBPB18getClusterByteSizeEv
	mov	x1, x0
	ldr	x0, [x29, 96]
	udiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [x29, 256]
	ldr	x0, [x29, 264]
	cmn	x0, #1
	bne	.L85
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x1, [x0]
	ldr	x0, [x29, 104]
	blr	x1
	mov	x1, x0
	ldr	x0, [x29, 96]
	sub	x0, x1, x0
	str	x0, [x29, 264]
.L85:
	ldr	x1, [x29, 96]
	ldr	x0, [x29, 264]
	add	x19, x1, x0
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 32
	ldr	x1, [x0]
	ldr	x0, [x29, 104]
	blr	x1
	cmp	x19, x0
	cset	w0, ls
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L84
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 64]
	bl	_ZNK11FAT32ExtBPB18getClusterByteSizeEv
	str	x0, [x29, 248]
	ldr	x0, [x29, 104]
	ldr	x21, [x0, 56]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 56]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x19, [x0]
	ldr	x0, [x29, 104]
	ldr	x22, [x0, 64]
	add	x0, x29, 144
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	mov	x1, x0
	mov	x0, x22
	bl	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	mov	x1, x0
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 64]
	ldrh	w0, [x0, 11]
	and	x0, x0, 65535
	mul	x1, x1, x0
	ldr	x0, [x29, 256]
	add	x3, x1, x0
	ldr	x1, [x29, 248]
	ldr	x0, [x29, 256]
	sub	x0, x1, x0
	add	x1, x29, 152
	mov	x8, x1
	mov	x2, x0
	mov	x1, x3
	mov	x0, x21
	blr	x19
	add	x1, x29, 152
	add	x0, x29, 120
	mov	x2, -1
	bl	_ZN6VectorIcE6appendERKS0_m
	add	x0, x29, 152
	bl	_ZN6StringD1Ev
	ldr	x1, [x29, 256]
	ldr	x0, [x29, 248]
	sub	x1, x1, x0
	ldr	x0, [x29, 264]
	add	x0, x1, x0
	str	x0, [x29, 112]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 72]
	ldr	w1, [x29, 144]
	bl	_ZNK15FAT32EntryTable4nextE10FAT32Entry
	str	w0, [x29, 144]
	ldr	x0, [x29, 104]
	ldr	x19, [x0, 72]
	ldr	x0, [x29, 104]
	str	x0, [x29, 208]
	add	x0, x29, 120
	str	x0, [x29, 216]
	add	x0, x29, 112
	str	x0, [x29, 224]
	ldr	x0, [x29, 248]
	str	x0, [x29, 232]
	add	x2, x29, 48
	add	x3, x29, 208
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	add	x1, x29, 48
	add	x0, x29, 176
	bl	_ZNSt8functionIFv10FAT32EntrymEEC1IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_
	add	x0, x29, 176
	ldr	w2, [x29, 144]
	mov	x1, x0
	mov	x0, x19
	bl	_ZNK15FAT32EntryTable12foreachEntryESt8functionIFv10FAT32EntrymEES1_
	add	x0, x29, 176
	bl	_ZNSt8functionIFv10FAT32EntrymEED1Ev
.L84:
	add	x0, x29, 120
	bl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	mov	x1, x0
	mov	x0, x20
	bl	_ZN6StringC1EOS_
	add	x0, x29, 120
	bl	_ZN6StringD1Ev
.L77:
	mov	x0, x20
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x29, x30, [sp], 272
	ret
	.size	_ZN16FAT32VirtualFile4readEmm, .-_ZN16FAT32VirtualFile4readEmm
	.align	2
	.global	_ZN16FAT32VirtualFile5writeERK9StringRefm
	.type	_ZN16FAT32VirtualFile5writeERK9StringRefm, %function
_ZN16FAT32VirtualFile5writeERK9StringRefm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x0, 0
	add	sp, sp, 32
	ret
	.size	_ZN16FAT32VirtualFile5writeERK9StringRefm, .-_ZN16FAT32VirtualFile5writeERK9StringRefm
	.align	2
	.global	_ZN16FAT32VirtualFile15clearSubEntriesEv
	.type	_ZN16FAT32VirtualFile15clearSubEntriesEv, %function
_ZN16FAT32VirtualFile15clearSubEntriesEv:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 64]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L92
	ldr	x0, [x29, 72]
	ldrh	w0, [x0, 82]
	cmp	w0, 2
	bne	.L93
.L92:
	mov	w0, 1
	b	.L94
.L93:
	mov	w0, 0
.L94:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L100
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 48]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	_ZN16FAT32VirtualFile15clearSubEntriesEPS_
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	str	xzr, [x29, 48]
	ldr	x0, [x29, 56]
	ldr	x1, [x29, 48]
	str	x1, [x0, 48]
	b	.L90
.L100:
	nop
.L90:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16FAT32VirtualFile15clearSubEntriesEv, .-_ZN16FAT32VirtualFile15clearSubEntriesEv
	.section	.rodata
	.align	3
.LC3:
	.string	"[FATAL] "
	.align	3
.LC4:
	.string	"no enough space \n"
	.text
	.align	2
	.global	_ZN16FAT32VirtualFile15buildSubEntriesEv
	.type	_ZN16FAT32VirtualFile15buildSubEntriesEv, %function
_ZN16FAT32VirtualFile15buildSubEntriesEv:
	stp	x29, x30, [sp, -352]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	str	x0, [x29, 304]
	ldr	x0, [x29, 304]
	str	x0, [x29, 296]
	ldr	x0, [x29, 296]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L103
	ldr	x0, [x29, 304]
	ldrh	w0, [x0, 82]
	cmp	w0, 2
	bne	.L104
.L103:
	mov	w0, 1
	b	.L105
.L104:
	mov	w0, 0
.L105:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L107
	ldr	x0, [x29, 40]
	str	x0, [x29, 288]
	ldr	x0, [x29, 288]
	ldrb	w0, [x0, 80]
	and	w0, w0, 4
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L109
.L107:
	mov	w0, 1
	b	.L110
.L109:
	mov	w0, 0
.L110:
	cmp	w0, 0
	bne	.L137
	ldr	x0, [x29, 40]
	bl	_ZN16FAT32VirtualFile17loadDirEntryTableEv
	ldr	x0, [x29, 40]
	bl	_ZN16FAT32VirtualFile15clearSubEntriesEv
	str	xzr, [x29, 344]
	str	xzr, [x29, 336]
	str	xzr, [x29, 328]
.L133:
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	str	x0, [x29, 280]
	ldr	x0, [x29, 280]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 328]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L114
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	str	x0, [x29, 272]
	ldr	x0, [x29, 328]
	str	x0, [x29, 264]
	ldr	x0, [x29, 272]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 264]
	cmp	x1, x0
	bcc	.L115
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L115:
	ldr	x0, [x29, 272]
	ldr	x1, [x0]
	ldr	x0, [x29, 264]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry6isFileEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L117
	mov	w0, 1
	b	.L118
.L117:
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	str	x0, [x29, 248]
	ldr	x0, [x29, 328]
	str	x0, [x29, 240]
	ldr	x0, [x29, 248]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 240]
	cmp	x1, x0
	bcc	.L119
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L119:
	ldr	x0, [x29, 248]
	ldr	x1, [x0]
	ldr	x0, [x29, 240]
	lsl	x0, x0, 5
	add	x0, x1, x0
	str	x0, [x29, 256]
	ldr	x0, [x29, 256]
	ldrb	w0, [x0, 11]
	and	w0, w0, 63
	cmp	w0, 16
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L122
	mov	w0, 2
	b	.L118
.L122:
	mov	w0, 0
.L118:
	strh	w0, [x29, 326]
	ldrh	w0, [x29, 326]
	cmp	w0, 0
	beq	.L124
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	str	x0, [x29, 216]
	ldr	x0, [x29, 328]
	str	x0, [x29, 208]
	ldr	x0, [x29, 216]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 208]
	cmp	x1, x0
	bcc	.L125
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L125:
	ldr	x0, [x29, 216]
	ldr	x1, [x0]
	ldr	x0, [x29, 208]
	lsl	x0, x0, 5
	add	x0, x1, x0
	add	x1, x29, 56
	mov	x8, x1
	bl	_ZNK11FATDirEntry11getLongNameEv
	add	x20, x29, 56
	ldr	x0, [x29, 40]
	add	x0, x0, 88
	str	x0, [x29, 232]
	ldr	x0, [x29, 328]
	str	x0, [x29, 224]
	ldr	x0, [x29, 232]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 224]
	cmp	x1, x0
	bcc	.L127
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 57
	bl	_Z19report_assert_errorPKcmS0_S0_
.L127:
	ldr	x0, [x29, 232]
	ldr	x1, [x0]
	ldr	x0, [x29, 224]
	lsl	x0, x0, 5
	add	x0, x1, x0
	bl	_ZNK11FATDirEntry17getFirstClusIndexEv
	mov	w1, w0
	add	x0, x29, 80
	bl	_ZN10FAT32EntryC1Ej
	mov	x0, 128
	bl	_Znwm
	mov	x19, x0
	ldr	x0, [x29, 40]
	ldr	x1, [x0, 56]
	ldr	x0, [x29, 40]
	ldr	x2, [x0, 64]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 72]
	ldr	w7, [x29, 80]
	ldr	x6, [x29, 328]
	ldrh	w5, [x29, 326]
	mov	x4, x0
	mov	x3, x2
	mov	x2, x1
	mov	x1, x20
	mov	x0, x19
	bl	_ZN16FAT32VirtualFileC1ERK6StringR10ByteReaderR11FAT32ExtBPBR15FAT32EntryTableN11VirtualFile8FileTypeEm10FAT32Entry
	str	x19, [x29, 312]
	add	x0, x29, 56
	bl	_ZN6StringD1Ev
	ldr	x0, [x29, 312]
	cmp	x0, 0
	bne	.L129
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L130:
	// Start of user assembly
// 168 "/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/asm_instructions.h" 1
	wfe 
	
// 0 "" 2
	// End of user assembly
	b	.L130
.L129:
	ldr	x0, [x29, 344]
	cmp	x0, 0
	bne	.L131
	ldr	x0, [x29, 312]
	str	x0, [x29, 344]
.L131:
	ldr	x0, [x29, 336]
	cmp	x0, 0
	beq	.L132
	ldr	x0, [x29, 336]
	str	x0, [x29, 200]
	ldr	x0, [x29, 312]
	str	x0, [x29, 192]
	ldr	x0, [x29, 200]
	ldr	x1, [x29, 192]
	str	x1, [x0, 40]
.L132:
	ldr	x0, [x29, 312]
	str	x0, [x29, 336]
.L124:
	ldr	x0, [x29, 328]
	add	x0, x0, 1
	str	x0, [x29, 328]
	b	.L133
.L114:
	ldr	x0, [x29, 344]
	cmp	x0, 0
	beq	.L134
	ldr	x1, [x29, 344]
	ldr	x0, [x29, 40]
	str	x1, [x29, 168]
	str	x0, [x29, 160]
	ldr	x0, [x29, 168]
	ldr	x1, [x29, 160]
	str	x1, [x0, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 184]
	ldr	x0, [x29, 344]
	str	x0, [x29, 176]
	ldr	x0, [x29, 184]
	ldr	x1, [x29, 176]
	str	x1, [x0, 48]
.L134:
	ldr	x0, [x29, 40]
	str	x0, [x29, 152]
	mov	w0, 1
	strb	w0, [x29, 151]
	ldr	x0, [x29, 152]
	add	x0, x0, 80
	str	x0, [x29, 136]
	mov	w0, 2
	strb	w0, [x29, 135]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 134]
	ldr	x0, [x29, 136]
	str	x0, [x29, 120]
	ldrb	w0, [x29, 135]
	strb	w0, [x29, 119]
	ldrb	w0, [x29, 135]
	strb	w0, [x29, 118]
	ldrb	w0, [x29, 134]
	strb	w0, [x29, 117]
	ldr	x0, [x29, 120]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 119]
	ldrb	w0, [x29, 118]
	str	x2, [x29, 104]
	str	x0, [x29, 96]
	ldr	x0, [x29, 104]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 104]
	mov	w3, w0
	ldr	x0, [x29, 96]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 96]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 117]
	ldrb	w3, [x29, 118]
	ldrb	w0, [x29, 119]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 88]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 119]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 120]
	strb	w1, [x0]
	b	.L101
.L137:
	nop
.L101:
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 352
	ret
	.size	_ZN16FAT32VirtualFile15buildSubEntriesEv, .-_ZN16FAT32VirtualFile15buildSubEntriesEv
	.align	2
	.global	_ZN16FAT32VirtualFile17loadDirEntryTableEv
	.type	_ZN16FAT32VirtualFile17loadDirEntryTableEv, %function
_ZN16FAT32VirtualFile17loadDirEntryTableEv:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	str	x0, [x29, 192]
	ldr	x0, [x29, 192]
	str	x0, [x29, 184]
	ldr	x0, [x29, 184]
	ldrb	w0, [x0, 80]
	and	w0, w0, 2
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L140
	ldr	x0, [x29, 192]
	ldrh	w0, [x0, 82]
	cmp	w0, 2
	bne	.L141
.L140:
	mov	w0, 1
	b	.L142
.L141:
	mov	w0, 0
.L142:
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L144
	ldr	x0, [x29, 56]
	str	x0, [x29, 176]
	ldr	x0, [x29, 176]
	ldrb	w0, [x0, 80]
	and	w0, w0, 1
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L146
.L144:
	mov	w0, 1
	b	.L147
.L146:
	mov	w0, 0
.L147:
	cmp	w0, 0
	bne	.L154
	ldr	x0, [x29, 56]
	add	x0, x0, 88
	bl	_ZN6VectorI11FATDirEntryE5clearEv
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 64]
	ldrb	w0, [x0, 13]
	mov	w1, w0
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 64]
	ldrh	w0, [x0, 11]
	mul	w0, w1, w0
	sxtw	x0, w0
	str	x0, [x29, 200]
	ldr	x0, [x29, 56]
	ldr	w0, [x0, 120]
	str	w0, [x29, 96]
.L151:
	add	x0, x29, 96
	bl	_ZNK10FAT32Entry6isLastEv
	and	w0, w0, 255
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L150
	ldr	x0, [x29, 56]
	ldr	x20, [x0, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 56]
	ldr	x0, [x0]
	add	x0, x0, 16
	ldr	x19, [x0]
	ldr	x0, [x29, 56]
	ldr	x21, [x0, 64]
	add	x0, x29, 96
	bl	_ZNK10FAT32Entry8getAsIntEv
	uxtw	x0, w0
	mov	x1, x0
	mov	x0, x21
	bl	_ZNK11FAT32ExtBPB21getClusterFirstSectorEm
	mov	x1, x0
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 64]
	ldrh	w0, [x0, 11]
	and	x0, x0, 65535
	mul	x0, x1, x0
	add	x1, x29, 72
	mov	x8, x1
	ldr	x2, [x29, 200]
	mov	x1, x0
	mov	x0, x20
	blr	x19
	ldr	x0, [x29, 56]
	add	x19, x0, 88
	add	x0, x29, 72
	bl	_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev
	mov	x2, -1
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6VectorI11FATDirEntryE6appendERKS1_m
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 72]
	ldr	w1, [x29, 96]
	bl	_ZNK15FAT32EntryTable4nextE10FAT32Entry
	str	w0, [x29, 96]
	add	x0, x29, 72
	bl	_ZN6StringD1Ev
	b	.L151
.L150:
	ldr	x0, [x29, 56]
	str	x0, [x29, 168]
	mov	w0, 1
	strb	w0, [x29, 167]
	ldr	x0, [x29, 168]
	add	x0, x0, 80
	str	x0, [x29, 152]
	strb	wzr, [x29, 151]
	ldrb	w0, [x29, 167]
	strb	w0, [x29, 150]
	ldr	x0, [x29, 152]
	str	x0, [x29, 136]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 135]
	ldrb	w0, [x29, 151]
	strb	w0, [x29, 134]
	ldrb	w0, [x29, 150]
	strb	w0, [x29, 133]
	ldr	x0, [x29, 136]
	ldrb	w1, [x0]
	ldrb	w2, [x29, 135]
	ldrb	w0, [x29, 134]
	str	x2, [x29, 120]
	str	x0, [x29, 112]
	ldr	x0, [x29, 120]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [x29, 120]
	mov	w3, w0
	ldr	x0, [x29, 112]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [x29, 112]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [x29, 133]
	ldrb	w3, [x29, 134]
	ldrb	w0, [x29, 135]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [x29, 104]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [x29, 135]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [x29, 136]
	strb	w1, [x0]
	b	.L138
.L154:
	nop
.L138:
	ldp	x19, x20, [sp, 16]
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 208
	ret
	.size	_ZN16FAT32VirtualFile17loadDirEntryTableEv, .-_ZN16FAT32VirtualFile17loadDirEntryTableEv
	.align	2
	.global	_ZN16FAT32VirtualFile15clearSubEntriesEPS_
	.type	_ZN16FAT32VirtualFile15clearSubEntriesEPS_, %function
_ZN16FAT32VirtualFile15clearSubEntriesEPS_:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	beq	.L162
	ldr	x0, [x29, 24]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 48]
	str	x0, [x29, 72]
	ldr	x0, [x29, 24]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 40]
	str	x0, [x29, 64]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	beq	.L159
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	add	x0, x0, 8
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	blr	x1
.L159:
	ldr	x0, [x29, 72]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	bl	_ZN16FAT32VirtualFile15clearSubEntriesEPS_
	ldr	x0, [x29, 64]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	bl	_ZN16FAT32VirtualFile15clearSubEntriesEPS_
.L162:
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN16FAT32VirtualFile15clearSubEntriesEPS_, .-_ZN16FAT32VirtualFile15clearSubEntriesEPS_
	.section	.text._ZN6VectorIcEC2Ev,"axG",@progbits,_ZN6VectorIcEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorIcEC2Ev
	.type	_ZN6VectorIcEC2Ev, %function
_ZN6VectorIcEC2Ev:
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
	.size	_ZN6VectorIcEC2Ev, .-_ZN6VectorIcEC2Ev
	.weak	_ZN6VectorIcEC1Ev
	.set	_ZN6VectorIcEC1Ev,_ZN6VectorIcEC2Ev
	.section	.text._ZN6VectorIcED2Ev,"axG",@progbits,_ZN6VectorIcED5Ev,comdat
	.align	2
	.weak	_ZN6VectorIcED2Ev
	.type	_ZN6VectorIcED2Ev, %function
_ZN6VectorIcED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L169
	str	xzr, [x29, 40]
.L167:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L166
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L167
.L166:
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
.L169:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZN6VectorIcEaSERKS0_,"axG",@progbits,_ZN6VectorIcEaSERKS0_,comdat
	.align	2
	.weak	_ZN6VectorIcEaSERKS0_
	.type	_ZN6VectorIcEaSERKS0_, %function
_ZN6VectorIcEaSERKS0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	ldr	x0, [x0, 16]
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE6resizeEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L171
	ldr	x0, [x29, 16]
	ldr	x0, [x0]
	str	x0, [x29, 32]
	str	xzr, [x29, 40]
.L173:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L171
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	add	x1, x1, x0
	ldr	x0, [x29, 24]
	ldr	x2, [x0]
	ldr	x0, [x29, 40]
	add	x0, x2, x0
	ldrsb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L173
.L171:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcEaSERKS0_, .-_ZN6VectorIcEaSERKS0_
	.section	.text._ZN6VectorIcEC2EOS0_,"axG",@progbits,_ZN6VectorIcEC5EOS0_,comdat
	.align	2
	.weak	_ZN6VectorIcEC2EOS0_
	.type	_ZN6VectorIcEC2EOS0_, %function
_ZN6VectorIcEC2EOS0_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	str	x1, [x0]
	ldr	x0, [sp]
	ldr	x1, [x0, 8]
	ldr	x0, [sp, 8]
	str	x1, [x0, 8]
	ldr	x0, [sp]
	ldr	x1, [x0, 16]
	ldr	x0, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp]
	str	xzr, [x0]
	ldr	x0, [sp]
	str	xzr, [x0, 8]
	ldr	x0, [sp]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN6VectorIcEC2EOS0_, .-_ZN6VectorIcEC2EOS0_
	.weak	_ZN6VectorIcEC1EOS0_
	.set	_ZN6VectorIcEC1EOS0_,_ZN6VectorIcEC2EOS0_
	.section	.text._ZN6VectorI11FATDirEntryEC2Ev,"axG",@progbits,_ZN6VectorI11FATDirEntryEC5Ev,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryEC2Ev
	.type	_ZN6VectorI11FATDirEntryEC2Ev, %function
_ZN6VectorI11FATDirEntryEC2Ev:
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
	.size	_ZN6VectorI11FATDirEntryEC2Ev, .-_ZN6VectorI11FATDirEntryEC2Ev
	.weak	_ZN6VectorI11FATDirEntryEC1Ev
	.set	_ZN6VectorI11FATDirEntryEC1Ev,_ZN6VectorI11FATDirEntryEC2Ev
	.section	.text._ZN6VectorI11FATDirEntryED2Ev,"axG",@progbits,_ZN6VectorI11FATDirEntryED5Ev,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryED2Ev
	.type	_ZN6VectorI11FATDirEntryED2Ev, %function
_ZN6VectorI11FATDirEntryED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L182
	str	xzr, [x29, 40]
.L180:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L179
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L180
.L179:
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
.L182:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI11FATDirEntryED2Ev, .-_ZN6VectorI11FATDirEntryED2Ev
	.weak	_ZN6VectorI11FATDirEntryED1Ev
	.set	_ZN6VectorI11FATDirEntryED1Ev,_ZN6VectorI11FATDirEntryED2Ev
	.section	.text._ZN6VectorI10FAT32EntryE6resizeEm,"axG",@progbits,_ZN6VectorI10FAT32EntryE6resizeEm,comdat
	.align	2
	.weak	_ZN6VectorI10FAT32EntryE6resizeEm
	.type	_ZN6VectorI10FAT32EntryE6resizeEm, %function
_ZN6VectorI10FAT32EntryE6resizeEm:
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
	bl	_ZN6VectorI10FAT32EntryE14resizeCapacityEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L184
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
.L184:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L185
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bne	.L185
	mov	w0, 1
	b	.L186
.L185:
	mov	w0, 0
.L186:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI10FAT32EntryE6resizeEm, .-_ZN6VectorI10FAT32EntryE6resizeEm
	.section	.text._ZN6VectorI10FAT32EntryE5clearEv,"axG",@progbits,_ZN6VectorI10FAT32EntryE5clearEv,comdat
	.align	2
	.weak	_ZN6VectorI10FAT32EntryE5clearEv
	.type	_ZN6VectorI10FAT32EntryE5clearEv, %function
_ZN6VectorI10FAT32EntryE5clearEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	mov	x1, 8
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI10FAT32EntryE14resizeCapacityEm
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorI10FAT32EntryE5clearEv, .-_ZN6VectorI10FAT32EntryE5clearEv
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
	beq	.L191
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
.L191:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_, .-_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_
	.weak	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_
	.set	_ZNSt8functionIFvP11VirtualFileEEC1ERKS3_,_ZNSt8functionIFvP11VirtualFileEEC2ERKS3_
	.section	.text._ZN6VectorIcE6appendERKS0_m,"axG",@progbits,_ZN6VectorIcE6appendERKS0_m,comdat
	.align	2
	.weak	_ZN6VectorIcE6appendERKS0_m
	.type	_ZN6VectorIcE6appendERKS0_m, %function
_ZN6VectorIcE6appendERKS0_m:
	stp	x29, x30, [sp, -96]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 32]
	str	x0, [x29, 80]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 24]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L194
	ldr	x0, [x29, 32]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 16]
	str	x0, [x29, 24]
.L194:
	str	xzr, [x29, 88]
.L199:
	ldr	x1, [x29, 88]
	ldr	x0, [x29, 24]
	cmp	x1, x0
	beq	.L196
	ldr	x0, [x29, 32]
	str	x0, [x29, 64]
	ldr	x0, [x29, 88]
	str	x0, [x29, 56]
	ldr	x0, [x29, 64]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	bcc	.L197
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L197:
	ldr	x0, [x29, 64]
	ldr	x1, [x0]
	ldr	x0, [x29, 56]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 40]
	bl	_ZN6VectorIcE8pushBackEc
	ldr	x0, [x29, 88]
	add	x0, x0, 1
	str	x0, [x29, 88]
	b	.L199
.L196:
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 96
	ret
	.size	_ZN6VectorIcE6appendERKS0_m, .-_ZN6VectorIcE6appendERKS0_m
	.text
	.align	2
	.type	_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_
	.align	2
	.type	_ZNSt8functionIFv10FAT32EntrymEEC2IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_, %function
_ZNSt8functionIFv10FAT32EntrymEEC2IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	mov	x20, x1
	ldr	x0, [x29, 40]
	bl	_ZNSt14_Function_baseC2Ev
	mov	x0, x20
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E21_M_not_empty_functionIS3_EEbRKT_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L205
	ldr	x19, [x29, 40]
	mov	x0, x20
	bl	_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_
	ldr	x0, [x29, 40]
	adrp	x1, _ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om
	add	x1, x1, :lo12:_ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om
	str	x1, [x0, 24]
	ldr	x0, [x29, 40]
	adrp	x1, _ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	add	x1, x1, :lo12:_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	str	x1, [x0, 16]
.L205:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNSt8functionIFv10FAT32EntrymEEC2IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_, .-_ZNSt8functionIFv10FAT32EntrymEEC2IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_
	.set	_ZNSt8functionIFv10FAT32EntrymEEC1IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_,_ZNSt8functionIFv10FAT32EntrymEEC2IZN16FAT32VirtualFile4readEmmEUlS0_mE_vvEET_
	.section	.text._ZN6VectorI11FATDirEntryE5clearEv,"axG",@progbits,_ZN6VectorI11FATDirEntryE5clearEv,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryE5clearEv
	.type	_ZN6VectorI11FATDirEntryE5clearEv, %function
_ZN6VectorI11FATDirEntryE5clearEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	mov	x1, 8
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI11FATDirEntryE14resizeCapacityEm
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorI11FATDirEntryE5clearEv, .-_ZN6VectorI11FATDirEntryE5clearEv
	.section	.text._ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev,"axG",@progbits,_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev,comdat
	.align	2
	.weak	_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev
	.type	_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev, %function
_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	lsr	x1, x0, 5
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	lsr	x1, x0, 5
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	bl	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev, .-_ZN6VectorIcE8castMoveI11FATDirEntryEEOS_IT_Ev
	.section	.text._ZN6VectorI11FATDirEntryE6appendERKS1_m,"axG",@progbits,_ZN6VectorI11FATDirEntryE6appendERKS1_m,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryE6appendERKS1_m
	.type	_ZN6VectorI11FATDirEntryE6appendERKS1_m, %function
_ZN6VectorI11FATDirEntryE6appendERKS1_m:
	stp	x29, x30, [sp, -128]!
	add	x29, sp, 0
	str	x0, [x29, 72]
	str	x1, [x29, 64]
	str	x2, [x29, 56]
	ldr	x0, [x29, 64]
	str	x0, [x29, 112]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	cset	w0, hi
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L211
	ldr	x0, [x29, 64]
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	ldr	x0, [x0, 16]
	str	x0, [x29, 56]
.L211:
	str	xzr, [x29, 120]
.L216:
	ldr	x1, [x29, 120]
	ldr	x0, [x29, 56]
	cmp	x1, x0
	beq	.L213
	ldr	x0, [x29, 64]
	str	x0, [x29, 96]
	ldr	x0, [x29, 120]
	str	x0, [x29, 88]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 88]
	cmp	x1, x0
	bcc	.L214
	adrp	x0, .LC1
	add	x2, x0, :lo12:.LC1
	adrp	x0, _ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L214:
	ldr	x0, [x29, 96]
	ldr	x1, [x0]
	ldr	x0, [x29, 88]
	lsl	x0, x0, 5
	add	x0, x1, x0
	add	x2, x29, 16
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	add	x0, x29, 16
	mov	x1, x0
	ldr	x0, [x29, 72]
	bl	_ZN6VectorI11FATDirEntryE8pushBackES0_
	ldr	x0, [x29, 120]
	add	x0, x0, 1
	str	x0, [x29, 120]
	b	.L216
.L213:
	ldr	x0, [x29, 72]
	ldp	x29, x30, [sp], 128
	ret
	.size	_ZN6VectorI11FATDirEntryE6appendERKS1_m, .-_ZN6VectorI11FATDirEntryE6appendERKS1_m
	.section	.text._ZN6VectorIcE14resizeCapacityEm,"axG",@progbits,_ZN6VectorIcE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorIcE14resizeCapacityEm
	.type	_ZN6VectorIcE14resizeCapacityEm, %function
_ZN6VectorIcE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L219
	mov	w0, 1
	b	.L220
.L219:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L221
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	ldr	x2, [x29, 16]
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L222
.L221:
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	ldr	x1, [x29, 16]
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L222:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L223
	mov	w0, 0
	b	.L220
.L223:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L220:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE14resizeCapacityEm, .-_ZN6VectorIcE14resizeCapacityEm
	.section	.text._ZN6VectorIcE6resizeEm,"axG",@progbits,_ZN6VectorIcE6resizeEm,comdat
	.align	2
	.weak	_ZN6VectorIcE6resizeEm
	.type	_ZN6VectorIcE6resizeEm, %function
_ZN6VectorIcE6resizeEm:
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
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L225
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 16]
.L225:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L226
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bne	.L226
	mov	w0, 1
	b	.L227
.L226:
	mov	w0, 0
.L227:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE6resizeEm, .-_ZN6VectorIcE6resizeEm
	.section	.text._ZN6VectorI10FAT32EntryE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI10FAT32EntryE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI10FAT32EntryE14resizeCapacityEm
	.type	_ZN6VectorI10FAT32EntryE14resizeCapacityEm, %function
_ZN6VectorI10FAT32EntryE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L230
	mov	w0, 1
	b	.L231
.L230:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L232
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	lsl	x2, x0, 2
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L233
.L232:
	ldr	x0, [x29, 16]
	lsl	x1, x0, 2
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L233:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L234
	mov	w0, 0
	b	.L231
.L234:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L231:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI10FAT32EntryE14resizeCapacityEm, .-_ZN6VectorI10FAT32EntryE14resizeCapacityEm
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
	.section	.text._ZN6VectorIcE8pushBackEc,"axG",@progbits,_ZN6VectorIcE8pushBackEc,comdat
	.align	2
	.weak	_ZN6VectorIcE8pushBackEc
	.type	_ZN6VectorIcE8pushBackEc, %function
_ZN6VectorIcE8pushBackEc:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 23]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L241
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	sub	x0, x0, #1
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L241
	ldrb	w1, [x29, 23]
	strb	w1, [x0]
.L241:
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6VectorIcE8pushBackEc, .-_ZN6VectorIcE8pushBackEc
	.text
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E21_M_not_empty_functionIS3_EEbRKT_, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E21_M_not_empty_functionIS3_EEbRKT_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 1
	add	sp, sp, 16
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E21_M_not_empty_functionIS3_EEbRKT_, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E21_M_not_empty_functionIS3_EEbRKT_
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 32]
	bl	_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_
	mov	w2, w19
	mov	x1, x0
	ldr	x0, [x29, 40]
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_St17integral_constantIbLb0EE
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_
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
	.text
	.align	2
	.type	_ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om, %function
_ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	ldr	x0, [x29, 56]
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data
	mov	x20, x0
	ldr	x0, [x29, 48]
	bl	_ZSt7forwardI10FAT32EntryEOT_RNSt16remove_referenceIS1_E4typeE
	mov	x19, x0
	ldr	x0, [x29, 40]
	bl	_ZSt7forwardImEOT_RNSt16remove_referenceIS0_E4typeE
	ldr	x0, [x0]
	mov	x2, x0
	ldr	w1, [x19]
	mov	x0, x20
	bl	_ZZN16FAT32VirtualFile4readEmmENKUl10FAT32EntrymE_clES0_m
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om, .-_ZNSt17_Function_handlerIFv10FAT32EntrymEZN16FAT32VirtualFile4readEmmEUlS0_mE_E9_M_invokeERKSt9_Any_dataOS0_Om
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	w2, [x29, 44]
	ldr	w0, [x29, 44]
	cmp	w0, 2
	beq	.L252
	cmp	w0, 3
	beq	.L253
	cmp	w0, 1
	bne	.L251
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v
	mov	x19, x0
	ldr	x0, [x29, 48]
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data
	str	x0, [x19]
	b	.L251
.L252:
	mov	w2, w4
	ldr	x1, [x29, 48]
	ldr	x0, [x29, 56]
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E8_M_cloneERSt9_Any_dataRKS5_St17integral_constantIbLb0EE
	b	.L251
.L253:
	mov	w1, w3
	ldr	x0, [x29, 56]
	bl	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	nop
.L251:
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.section	.text._ZN6VectorI11FATDirEntryE14resizeCapacityEm,"axG",@progbits,_ZN6VectorI11FATDirEntryE14resizeCapacityEm,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryE14resizeCapacityEm
	.type	_ZN6VectorI11FATDirEntryE14resizeCapacityEm, %function
_ZN6VectorI11FATDirEntryE14resizeCapacityEm:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 16]
	cmp	x1, x0
	bne	.L257
	mov	w0, 1
	b	.L258
.L257:
	str	xzr, [x29, 40]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L259
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 16]
	lsl	x2, x0, 5
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	mov	x3, -1
	bl	_ZN13MemoryManager10reallocateEPvmm
	str	x0, [x29, 40]
	b	.L260
.L259:
	ldr	x0, [x29, 16]
	lsl	x1, x0, 5
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager8allocateEm
	str	x0, [x29, 40]
.L260:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	bne	.L261
	mov	w0, 0
	b	.L258
.L261:
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 40]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	ldr	x1, [x29, 16]
	str	x1, [x0, 8]
	mov	w0, 1
.L258:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI11FATDirEntryE14resizeCapacityEm, .-_ZN6VectorI11FATDirEntryE14resizeCapacityEm
	.section	.text._ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.align	2
	.weak	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_, %function
_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	.size	_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIR6VectorI11FATDirEntryEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZN6VectorI11FATDirEntryE8pushBackES0_,"axG",@progbits,_ZN6VectorI11FATDirEntryE8pushBackES0_,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryE8pushBackES0_
	.type	_ZN6VectorI11FATDirEntryE8pushBackES0_, %function
_ZN6VectorI11FATDirEntryE8pushBackES0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	mov	x19, x1
	ldr	x0, [x29, 40]
	bl	_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L268
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 40]
	str	x1, [x0, 16]
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	lsl	x0, x0, 5
	sub	x0, x0, #32
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 32
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L268
	mov	x2, x0
	mov	x3, x19
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
.L268:
	nop
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI11FATDirEntryE8pushBackES0_, .-_ZN6VectorI11FATDirEntryE8pushBackES0_
	.section	.text._ZN6VectorIcE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorIcE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorIcE24adjustCapacityForOneMoreEv, %function
_ZN6VectorIcE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L270
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L271
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L273
.L271:
	mov	x0, 8
.L273:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcE14resizeCapacityEm
	and	w0, w0, 255
	b	.L274
.L270:
	mov	w0, 1
.L274:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcE24adjustCapacityForOneMoreEv, .-_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.text
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_St17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_St17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	strb	w2, [x29, 40]
	ldr	x0, [x29, 48]
	bl	_ZSt4moveIRZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EONSt16remove_referenceIT_E4typeEOS5_
	mov	x20, x0
	mov	x0, 32
	bl	_Znwm
	mov	x19, x0
	mov	x2, x19
	mov	x3, x20
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v
	str	x19, [x0]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E15_M_init_functorERSt9_Any_dataOS3_St17integral_constantIbLb0EE
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v
	ldr	x0, [x0]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E14_M_get_pointerERKSt9_Any_data
	.align	2
	.type	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v, %function
_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNSt9_Any_data9_M_accessEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v, .-_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E8_M_cloneERSt9_Any_dataRKS5_St17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E8_M_cloneERSt9_Any_dataRKS5_St17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	strb	w2, [x29, 40]
	ldr	x0, [x29, 48]
	bl	_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v
	ldr	x20, [x0]
	mov	x0, 32
	bl	_Znwm
	mov	x19, x0
	mov	x2, x19
	mov	x3, x20
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	ldr	x0, [x29, 56]
	bl	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v
	str	x19, [x0]
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E8_M_cloneERSt9_Any_dataRKS5_St17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E8_M_cloneERSt9_Any_dataRKS5_St17integral_constantIbLb0EE
	.align	2
	.type	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, %function
_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	strb	w1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZNSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERT_v
	ldr	x0, [x0]
	mov	x1, 32
	bl	_ZdlPvm
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE, .-_ZNSt14_Function_base13_Base_managerIZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_E10_M_destroyERSt9_Any_dataSt17integral_constantIbLb0EE
	.section	.text._ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv,"axG",@progbits,_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv,comdat
	.align	2
	.weak	_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv
	.type	_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv, %function
_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	add	x1, x0, 1
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	cmp	x1, x0
	bls	.L283
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 8]
	str	x0, [x29, 40]
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L284
	ldr	x1, [x29, 40]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsr	x0, x0, 1
	b	.L286
.L284:
	mov	x0, 8
.L286:
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6VectorI11FATDirEntryE14resizeCapacityEm
	and	w0, w0, 255
	b	.L287
.L283:
	mov	w0, 1
.L287:
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv, .-_ZN6VectorI11FATDirEntryE24adjustCapacityForOneMoreEv
	.text
	.align	2
	.type	_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v, %function
_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZNKSt9_Any_data9_M_accessEv
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v, .-_ZNKSt9_Any_data9_M_accessIPZN16FAT32VirtualFile4readEmmEUl10FAT32EntrymE_EERKT_v
	.weak	_ZTV16FAT32VirtualFile
	.section	.rodata._ZTV16FAT32VirtualFile,"aG",@progbits,_ZTV16FAT32VirtualFile,comdat
	.align	3
	.type	_ZTV16FAT32VirtualFile, %object
	.size	_ZTV16FAT32VirtualFile, 136
_ZTV16FAT32VirtualFile:
	.xword	0
	.xword	0
	.xword	_ZN16FAT32VirtualFileD1Ev
	.xword	_ZN16FAT32VirtualFileD0Ev
	.xword	_ZNK16FAT32VirtualFile4typeEv
	.xword	_ZNK16FAT32VirtualFile9subFSTypeEv
	.xword	_ZNK16FAT32VirtualFile4sizeEv
	.xword	_ZN16FAT32VirtualFile7addFileERK9VectorRefI6StringEP11VirtualFile
	.xword	_ZN16FAT32VirtualFile7addFileEP11VirtualFile
	.xword	_ZN16FAT32VirtualFile10removeFileERK9VectorRefI6StringE
	.xword	_ZN16FAT32VirtualFile10removeFileERK9StringRef
	.xword	_ZN16FAT32VirtualFile8findFileERK9VectorRefI6StringE
	.xword	_ZN16FAT32VirtualFile8findFileERK6VectorI9StringRefE
	.xword	_ZN16FAT32VirtualFile8findFileERK9StringRef
	.xword	_ZN16FAT32VirtualFile11foreachFileESt8functionIFvP11VirtualFileEE
	.xword	_ZN16FAT32VirtualFile4readEmm
	.xword	_ZN16FAT32VirtualFile5writeERK9StringRefm
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, 96
_ZZNK6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = FATDirEntry; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, 89
_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.align	3
	.type	_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__, 84
_ZZN6VectorI11FATDirEntryEixEmE19__PRETTY_FUNCTION__:
	.string	"T& Vector<T>::operator[](size_t) [with T = FATDirEntry; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
