	.arch armv8.2-a+crc
	.file	"VirtualFile.cpp"
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
	.text
	.align	2
	.global	_ZN11VirtualFileC2ERK6String
	.type	_ZN11VirtualFileC2ERK6String, %function
_ZN11VirtualFileC2ERK6String:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	adrp	x0, _ZTV11VirtualFile+16
	add	x1, x0, :lo12:_ZTV11VirtualFile+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	str	x0, [x29, 40]
	ldr	x0, [x29, 16]
	str	x0, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x1, [x29, 32]
	bl	_ZN6VectorIcEC2ERKS0_
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 48]
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN11VirtualFileC2ERK6String, .-_ZN11VirtualFileC2ERK6String
	.global	_ZN11VirtualFileC1ERK6String
	.set	_ZN11VirtualFileC1ERK6String,_ZN11VirtualFileC2ERK6String
	.align	2
	.global	_ZN11VirtualFileD2Ev
	.type	_ZN11VirtualFileD2Ev, %function
_ZN11VirtualFileD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, _ZTV11VirtualFile+16
	add	x1, x0, :lo12:_ZTV11VirtualFile+16
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 32]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 48]
	ldr	x0, [x29, 24]
	add	x0, x0, 8
	bl	_ZN6StringD1Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11VirtualFileD2Ev, .-_ZN11VirtualFileD2Ev
	.global	_ZN11VirtualFileD1Ev
	.set	_ZN11VirtualFileD1Ev,_ZN11VirtualFileD2Ev
	.align	2
	.global	_ZN11VirtualFileD0Ev
	.type	_ZN11VirtualFileD0Ev, %function
_ZN11VirtualFileD0Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN11VirtualFileD1Ev
	mov	x1, 56
	ldr	x0, [x29, 24]
	bl	_ZdlPvm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN11VirtualFileD0Ev, .-_ZN11VirtualFileD0Ev
	.align	2
	.global	_ZNK11VirtualFile4typeEv
	.type	_ZNK11VirtualFile4typeEv, %function
_ZNK11VirtualFile4typeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 5
	add	sp, sp, 16
	ret
	.size	_ZNK11VirtualFile4typeEv, .-_ZNK11VirtualFile4typeEv
	.align	2
	.global	_ZNK11VirtualFile9subFSTypeEv
	.type	_ZNK11VirtualFile9subFSTypeEv, %function
_ZNK11VirtualFile9subFSTypeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	w0, 2
	add	sp, sp, 16
	ret
	.size	_ZNK11VirtualFile9subFSTypeEv, .-_ZNK11VirtualFile9subFSTypeEv
	.align	2
	.global	_ZNK11VirtualFile4sizeEv
	.type	_ZNK11VirtualFile4sizeEv, %function
_ZNK11VirtualFile4sizeEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	mov	x0, 0
	add	sp, sp, 16
	ret
	.size	_ZNK11VirtualFile4sizeEv, .-_ZNK11VirtualFile4sizeEv
	.align	2
	.global	_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_
	.type	_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_, %function
_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	str	x2, [x29, 24]
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 72
	ldr	x2, [x0]
	ldr	x1, [x29, 32]
	ldr	x0, [x29, 40]
	blr	x2
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L18
	ldr	x0, [x29, 56]
	ldr	x0, [x0]
	add	x0, x0, 48
	ldr	x2, [x0]
	ldr	x1, [x29, 24]
	ldr	x0, [x29, 56]
	blr	x2
	and	w0, w0, 255
	b	.L19
.L18:
	mov	w0, 0
.L19:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_, .-_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_
	.align	2
	.global	_ZN11VirtualFile7addFileEPS_
	.type	_ZN11VirtualFile7addFileEPS_, %function
_ZN11VirtualFile7addFileEPS_:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 48]
	cmp	x0, 0
	bne	.L21
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	str	x1, [x0, 48]
	ldr	x0, [sp]
	ldr	x1, [sp, 8]
	str	x1, [x0, 32]
	b	.L22
.L21:
	ldr	x0, [sp, 8]
	ldr	x0, [x0, 48]
	str	x0, [sp, 24]
.L24:
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	cmp	x0, 0
	beq	.L23
	ldr	x0, [sp, 24]
	ldr	x0, [x0, 40]
	str	x0, [sp, 24]
	b	.L24
.L23:
	ldr	x0, [sp, 24]
	ldr	x1, [sp]
	str	x1, [x0, 40]
	ldr	x0, [sp]
	ldr	x1, [sp, 8]
	str	x1, [x0, 32]
.L22:
	mov	w0, 1
	add	sp, sp, 32
	ret
	.size	_ZN11VirtualFile7addFileEPS_, .-_ZN11VirtualFile7addFileEPS_
	.section	.rodata
	.align	3
.LC0:
	.string	"i<_size"
	.align	3
.LC1:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/VectorRef.h"
	.text
	.align	2
	.global	_ZN11VirtualFile10removeFileERK9VectorRefI6StringE
	.type	_ZN11VirtualFile10removeFileERK9VectorRefI6StringE, %function
_ZN11VirtualFile10removeFileERK9VectorRefI6StringE:
	stp	x29, x30, [sp, -176]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 32]
	str	x0, [x29, 160]
	ldr	x0, [x29, 160]
	ldr	x0, [x0, 8]
	cmp	x0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L28
	mov	x0, 0
	b	.L29
.L28:
	ldr	x0, [x29, 32]
	str	x0, [x29, 152]
	ldr	x0, [x29, 152]
	ldr	x0, [x0, 8]
	cmp	x0, 1
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L31
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 64
	ldr	x19, [x0]
	ldr	x0, [x29, 32]
	str	x0, [x29, 144]
	str	xzr, [x29, 136]
	ldr	x0, [x29, 144]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 136]
	cmp	x1, x0
	bcc	.L32
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 30
	bl	_Z19report_assert_errorPKcmS0_S0_
.L32:
	ldr	x0, [x29, 144]
	ldr	x2, [x0]
	ldr	x1, [x29, 136]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	add	x0, x29, 64
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 64
	mov	x1, x0
	ldr	x0, [x29, 40]
	blr	x19
	b	.L29
.L31:
	ldr	x0, [x29, 32]
	str	x0, [x29, 120]
	ldr	x0, [x29, 120]
	ldr	x1, [x0]
	ldr	x0, [x29, 32]
	str	x0, [x29, 128]
	ldr	x0, [x29, 128]
	ldr	x0, [x0, 8]
	sub	x2, x0, #1
	add	x0, x29, 48
	bl	_ZN9VectorRefI6StringEC1EPKS0_m
	ldr	x0, [x29, 40]
	ldr	x0, [x0]
	add	x0, x0, 72
	ldr	x2, [x0]
	add	x0, x29, 48
	mov	x1, x0
	ldr	x0, [x29, 40]
	blr	x2
	str	x0, [x29, 168]
	ldr	x0, [x29, 168]
	cmp	x0, 0
	beq	.L36
	ldr	x0, [x29, 168]
	ldr	x0, [x0]
	add	x0, x0, 64
	ldr	x19, [x0]
	ldr	x0, [x29, 32]
	str	x0, [x29, 96]
	ldr	x0, [x29, 96]
	ldr	x0, [x0, 8]
	sub	x0, x0, #1
	ldr	x1, [x29, 32]
	str	x1, [x29, 112]
	str	x0, [x29, 104]
	ldr	x0, [x29, 112]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 104]
	cmp	x1, x0
	bcc	.L38
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 30
	bl	_Z19report_assert_errorPKcmS0_S0_
.L38:
	ldr	x0, [x29, 112]
	ldr	x2, [x0]
	ldr	x1, [x29, 104]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	add	x0, x29, 80
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 80
	mov	x1, x0
	ldr	x0, [x29, 168]
	blr	x19
	b	.L29
.L36:
	mov	x0, 0
.L29:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 176
	ret
	.size	_ZN11VirtualFile10removeFileERK9VectorRefI6StringE, .-_ZN11VirtualFile10removeFileERK9VectorRefI6StringE
	.align	2
	.global	_ZN11VirtualFile10removeFileERK9StringRef
	.type	_ZN11VirtualFile10removeFileERK9StringRef, %function
_ZN11VirtualFile10removeFileERK9StringRef:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	add	x1, x0, 8
	add	x0, x29, 32
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 32
	ldr	x1, [x29, 16]
	bl	_ZeqRK9StringRefS1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L42
	ldr	x0, [x29, 72]
	str	xzr, [x0, 32]
	ldr	x0, [x29, 72]
	ldr	x1, [x0, 40]
	ldr	x0, [x29, 24]
	str	x1, [x0, 48]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	cmp	x0, 0
	beq	.L43
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	ldr	x1, [x29, 24]
	str	x1, [x0, 32]
.L43:
	ldr	x0, [x29, 72]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 72]
	b	.L44
.L42:
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 40]
	str	x0, [x29, 72]
.L47:
	ldr	x0, [x29, 72]
	cmp	x0, 0
	beq	.L45
	ldr	x0, [x29, 72]
	add	x1, x0, 8
	add	x0, x29, 48
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 48
	ldr	x1, [x29, 16]
	bl	_ZeqRK9StringRefS1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L46
	ldr	x0, [x29, 72]
	ldr	x1, [x0, 40]
	ldr	x0, [x29, 64]
	str	x1, [x0, 40]
	ldr	x0, [x29, 72]
	str	xzr, [x0, 40]
	ldr	x0, [x29, 72]
	b	.L44
.L46:
	ldr	x0, [x29, 72]
	str	x0, [x29, 64]
	ldr	x0, [x29, 72]
	ldr	x0, [x0, 40]
	str	x0, [x29, 72]
	b	.L47
.L45:
	mov	x0, 0
.L44:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN11VirtualFile10removeFileERK9StringRef, .-_ZN11VirtualFile10removeFileERK9StringRef
	.align	2
	.global	_ZN11VirtualFile8findFileERK9VectorRefI6StringE
	.type	_ZN11VirtualFile8findFileERK9VectorRefI6StringE, %function
_ZN11VirtualFile8findFileERK9VectorRefI6StringE:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	str	x0, [x29, 104]
	str	xzr, [x29, 96]
.L55:
	ldr	x0, [x29, 32]
	str	x0, [x29, 88]
	ldr	x0, [x29, 88]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 96]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L50
	ldr	x0, [x29, 104]
	ldr	x0, [x0]
	add	x0, x0, 88
	ldr	x19, [x0]
	ldr	x0, [x29, 32]
	str	x0, [x29, 80]
	ldr	x0, [x29, 96]
	str	x0, [x29, 72]
	ldr	x0, [x29, 80]
	ldr	x0, [x0, 8]
	ldr	x1, [x29, 72]
	cmp	x1, x0
	bcc	.L51
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x3, x2
	mov	x2, x1
	mov	x1, 30
	bl	_Z19report_assert_errorPKcmS0_S0_
.L51:
	ldr	x0, [x29, 80]
	ldr	x2, [x0]
	ldr	x1, [x29, 72]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x1, x2, x0
	add	x0, x29, 56
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 56
	mov	x1, x0
	ldr	x0, [x29, 104]
	blr	x19
	str	x0, [x29, 104]
	ldr	x0, [x29, 104]
	cmp	x0, 0
	bne	.L53
	mov	x0, 0
	b	.L54
.L53:
	ldr	x0, [x29, 96]
	add	x0, x0, 1
	str	x0, [x29, 96]
	b	.L55
.L50:
	ldr	x0, [x29, 104]
.L54:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZN11VirtualFile8findFileERK9VectorRefI6StringE, .-_ZN11VirtualFile8findFileERK9VectorRefI6StringE
	.section	.rodata
	.align	3
.LC2:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.text
	.align	2
	.global	_ZN11VirtualFile8findFileERK6VectorI9StringRefE
	.type	_ZN11VirtualFile8findFileERK6VectorI9StringRefE, %function
_ZN11VirtualFile8findFileERK6VectorI9StringRefE:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 72]
	str	xzr, [x29, 64]
.L63:
	ldr	x0, [x29, 16]
	str	x0, [x29, 56]
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 64]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L58
	ldr	x0, [x29, 72]
	ldr	x0, [x0]
	add	x0, x0, 88
	ldr	x2, [x0]
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 64]
	str	x0, [x29, 40]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	bcc	.L59
	adrp	x0, .LC0
	add	x2, x0, :lo12:.LC0
	adrp	x0, _ZZNK6VectorI9StringRefEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorI9StringRefEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L59:
	ldr	x0, [x29, 48]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	lsl	x0, x0, 4
	add	x0, x1, x0
	mov	x1, x0
	ldr	x0, [x29, 72]
	blr	x2
	str	x0, [x29, 72]
	ldr	x0, [x29, 72]
	cmp	x0, 0
	bne	.L61
	mov	x0, 0
	b	.L62
.L61:
	ldr	x0, [x29, 64]
	add	x0, x0, 1
	str	x0, [x29, 64]
	b	.L63
.L58:
	ldr	x0, [x29, 72]
.L62:
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN11VirtualFile8findFileERK6VectorI9StringRefE, .-_ZN11VirtualFile8findFileERK6VectorI9StringRefE
	.align	2
	.global	_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE
	.type	_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE, %function
_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	ldr	x0, [x29, 32]
	ldr	x0, [x0, 48]
	str	x0, [x29, 40]
.L67:
	ldr	x0, [x29, 40]
	cmp	x0, 0
	beq	.L68
	ldr	x1, [x29, 40]
	ldr	x0, [x29, 16]
	bl	_ZNKSt8functionIFvP11VirtualFileEEclES1_
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 40]
	str	x0, [x29, 40]
	b	.L67
.L68:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE, .-_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE
	.align	2
	.global	_ZN11VirtualFile8findFileERK9StringRef
	.type	_ZN11VirtualFile8findFileERK9StringRef, %function
_ZN11VirtualFile8findFileERK9StringRef:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 48]
	str	x0, [x29, 56]
.L73:
	ldr	x0, [x29, 56]
	cmp	x0, 0
	beq	.L70
	ldr	x0, [x29, 56]
	add	x1, x0, 8
	add	x0, x29, 40
	bl	_ZN9StringRefC1ERK6String
	add	x0, x29, 40
	ldr	x1, [x29, 16]
	bl	_ZeqRK9StringRefS1_
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L71
	ldr	x0, [x29, 56]
	b	.L72
.L71:
	ldr	x0, [x29, 56]
	ldr	x0, [x0, 40]
	str	x0, [x29, 56]
	b	.L73
.L70:
	mov	x0, 0
.L72:
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN11VirtualFile8findFileERK9StringRef, .-_ZN11VirtualFile8findFileERK9StringRef
	.section	.rodata
	.align	3
.LC3:
	.string	""
	.text
	.align	2
	.global	_ZN11VirtualFile4readEmm
	.type	_ZN11VirtualFile4readEmm, %function
_ZN11VirtualFile4readEmm:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	x2, [x29, 40]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6StringC1EPKc
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZN11VirtualFile4readEmm, .-_ZN11VirtualFile4readEmm
	.align	2
	.global	_ZN11VirtualFile5writeERK9StringRefm
	.type	_ZN11VirtualFile5writeERK9StringRefm, %function
_ZN11VirtualFile5writeERK9StringRefm:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	mov	x0, 0
	add	sp, sp, 32
	ret
	.size	_ZN11VirtualFile5writeERK9StringRefm, .-_ZN11VirtualFile5writeERK9StringRefm
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
	beq	.L83
	str	xzr, [x29, 40]
.L81:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L80
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L81
.L80:
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
.L83:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZN6VectorIcEC2ERKS0_,"axG",@progbits,_ZN6VectorIcEC5ERKS0_,comdat
	.align	2
	.weak	_ZN6VectorIcEC2ERKS0_
	.type	_ZN6VectorIcEC2ERKS0_, %function
_ZN6VectorIcEC2ERKS0_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 8]
	adrp	x0, mman
	add	x0, x0, :lo12:mman
	bl	_ZN13MemoryManager10allocateAsIPcEET_m
	mov	x1, x0
	ldr	x0, [x29, 24]
	str	x1, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L90
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 8]
	ldr	x0, [x29, 24]
	str	x1, [x0, 8]
	ldr	x0, [x29, 16]
	ldr	x1, [x0, 16]
	ldr	x0, [x29, 24]
	str	x1, [x0, 16]
	ldr	x0, [x29, 16]
	ldr	x0, [x0]
	str	x0, [x29, 32]
	str	xzr, [x29, 40]
.L89:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L90
	ldr	x0, [x29, 24]
	ldr	x1, [x0]
	ldr	x0, [x29, 40]
	add	x0, x1, x0
	mov	x1, x0
	mov	x0, 1
	bl	_ZnwmPv
	cmp	x0, 0
	beq	.L88
	ldr	x2, [x29, 32]
	ldr	x1, [x29, 40]
	add	x1, x2, x1
	ldrsb	w1, [x1]
	strb	w1, [x0]
.L88:
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L89
.L90:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcEC2ERKS0_, .-_ZN6VectorIcEC2ERKS0_
	.weak	_ZN6VectorIcEC1ERKS0_
	.set	_ZN6VectorIcEC1ERKS0_,_ZN6VectorIcEC2ERKS0_
	.section	.text._ZN9VectorRefI6StringEC2EPKS0_m,"axG",@progbits,_ZN9VectorRefI6StringEC5EPKS0_m,comdat
	.align	2
	.weak	_ZN9VectorRefI6StringEC2EPKS0_m
	.type	_ZN9VectorRefI6StringEC2EPKS0_m, %function
_ZN9VectorRefI6StringEC2EPKS0_m:
	sub	sp, sp, #32
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 8]
	nop
	add	sp, sp, 32
	ret
	.size	_ZN9VectorRefI6StringEC2EPKS0_m, .-_ZN9VectorRefI6StringEC2EPKS0_m
	.weak	_ZN9VectorRefI6StringEC1EPKS0_m
	.set	_ZN9VectorRefI6StringEC1EPKS0_m,_ZN9VectorRefI6StringEC2EPKS0_m
	.section	.text._ZNKSt8functionIFvP11VirtualFileEEclES1_,"axG",@progbits,_ZNKSt8functionIFvP11VirtualFileEEclES1_,comdat
	.align	2
	.weak	_ZNKSt8functionIFvP11VirtualFileEEclES1_
	.type	_ZNKSt8functionIFvP11VirtualFileEEclES1_, %function
_ZNKSt8functionIFvP11VirtualFileEEclES1_:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	str	x0, [x29, 40]
	str	x1, [x29, 32]
	ldr	x0, [x29, 40]
	bl	_ZNKSt14_Function_base8_M_emptyEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L93
	bl	_ZSt25__throw_bad_function_callv
.L93:
	ldr	x0, [x29, 40]
	ldr	x19, [x0, 24]
	ldr	x20, [x29, 40]
	add	x0, x29, 32
	bl	_ZSt7forwardIP11VirtualFileEOT_RNSt16remove_referenceIS2_E4typeE
	mov	x1, x0
	mov	x0, x20
	blr	x19
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZNKSt8functionIFvP11VirtualFileEEclES1_, .-_ZNKSt8functionIFvP11VirtualFileEEclES1_
	.section	.text._ZN13MemoryManager10allocateAsIPcEET_m,"axG",@progbits,_ZN13MemoryManager10allocateAsIPcEET_m,comdat
	.align	2
	.weak	_ZN13MemoryManager10allocateAsIPcEET_m
	.type	_ZN13MemoryManager10allocateAsIPcEET_m, %function
_ZN13MemoryManager10allocateAsIPcEET_m:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x1, [x29, 16]
	ldr	x0, [x29, 24]
	bl	_ZN13MemoryManager8allocateEm
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13MemoryManager10allocateAsIPcEET_m, .-_ZN13MemoryManager10allocateAsIPcEET_m
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
	.weak	_ZTV11VirtualFile
	.section	.rodata._ZTV11VirtualFile,"aG",@progbits,_ZTV11VirtualFile,comdat
	.align	3
	.type	_ZTV11VirtualFile, %object
	.size	_ZTV11VirtualFile, 136
_ZTV11VirtualFile:
	.xword	0
	.xword	0
	.xword	_ZN11VirtualFileD1Ev
	.xword	_ZN11VirtualFileD0Ev
	.xword	_ZNK11VirtualFile4typeEv
	.xword	_ZNK11VirtualFile9subFSTypeEv
	.xword	_ZNK11VirtualFile4sizeEv
	.xword	_ZN11VirtualFile7addFileERK9VectorRefI6StringEPS_
	.xword	_ZN11VirtualFile7addFileEPS_
	.xword	_ZN11VirtualFile10removeFileERK9VectorRefI6StringE
	.xword	_ZN11VirtualFile10removeFileERK9StringRef
	.xword	_ZN11VirtualFile8findFileERK9VectorRefI6StringE
	.xword	_ZN11VirtualFile8findFileERK6VectorI9StringRefE
	.xword	_ZN11VirtualFile8findFileERK9StringRef
	.xword	_ZN11VirtualFile11foreachFileESt8functionIFvPS_EE
	.xword	_ZN11VirtualFile4readEmm
	.xword	_ZN11VirtualFile5writeERK9StringRefm
	.section	.rodata
	.align	3
	.type	_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__, 94
_ZZNK9VectorRefI6StringEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& VectorRef<T>::operator[](size_t) const [with T = String; size_t = long unsigned int]"
	.align	3
	.type	_ZZNK6VectorI9StringRefEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorI9StringRefEixEmE19__PRETTY_FUNCTION__, 94
_ZZNK6VectorI9StringRefEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = StringRef; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
