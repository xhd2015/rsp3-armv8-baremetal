	.file	"TestVector.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section .rdata,"dr"
	.align 4
_ZL6UNIT_K:
	.long	1024
	.align 4
_ZL3KiB:
	.long	1024
	.align 4
_ZL3MiB:
	.long	1048576
	.align 4
_ZL3GiB:
	.long	1073741824
	.align 8
_ZL11koutBufSize:
	.quad	65
	.text
	.align 2
	.globl	_ZN10TestVector5setupEv
	.def	_ZN10TestVector5setupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector5setupEv
_ZN10TestVector5setupEv:
.LFB41:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp"
	.loc 1 12 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 14 0
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE41:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector8teardownEv
	.def	_ZN10TestVector8teardownEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector8teardownEv
_ZN10TestVector8teardownEv:
.LFB42:
	.loc 1 16 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 18 0
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector19initializeCorrectlyEv
	.def	_ZN10TestVector19initializeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector19initializeCorrectlyEv
_ZN10TestVector19initializeCorrectlyEv:
.LFB43:
	.loc 1 21 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 22 0
	movl	$1, %eax
	.loc 1 23 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE43:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector22minimalCapacityEnsuredEv
	.def	_ZN10TestVector22minimalCapacityEnsuredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector22minimalCapacityEnsuredEv
_ZN10TestVector22minimalCapacityEnsuredEv:
.LFB44:
	.loc 1 25 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$200, %rsp
	.seh_stackalloc	200
	.cfi_def_cfa_offset 224
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 96
	.seh_endprologue
	movq	%rcx, 96(%rbp)
	.loc 1 26 0
	leaq	32(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 27 0
	movq	%rbp, %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 28 0
	leaq	-32(%rbp), %rax
	movl	$7, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 29 0
	leaq	-64(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 30 0
	leaq	-96(%rbp), %rax
	movl	$9, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 32 0
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$8, %rax
	sete	%bl
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$8, %rax
	sete	%al
	andl	%ebx, %eax
	movzbl	%al, %ebx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$8, %rax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$8, %rax
	sete	%al
	movzbl	%al, %eax
	andl	%eax, %ebx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$8, %rax
	seta	%al
	movzbl	%al, %eax
	andl	%ebx, %eax
	testl	%eax, %eax
	setne	%al
	movb	%al, 63(%rbp)
	.loc 1 33 0
	movzbl	63(%rbp), %ebx
	.loc 1 30 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 29 0
	leaq	-64(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 28 0
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 27 0
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 26 0
	leaq	32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 33 0
	movl	%ebx, %eax
	.loc 1 35 0
	addq	$200, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -184
	ret
	.cfi_endproc
.LFE44:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector26capacityIncreasedCorrectlyEv
	.def	_ZN10TestVector26capacityIncreasedCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector26capacityIncreasedCorrectlyEv
_ZN10TestVector26capacityIncreasedCorrectlyEv:
.LFB45:
	.loc 1 37 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -32
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	.loc 1 38 0
	leaq	-96(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 39 0
	leaq	-96(%rbp), %rax
	movl	$10, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiE8pushBackEi
	.loc 1 40 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
	cmpq	$12, %rax
	sete	%bl
	.loc 1 38 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 40 0
	movl	%ebx, %eax
	.loc 1 41 0
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE45:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector26capacityDecreasedCorrectlyEv
	.def	_ZN10TestVector26capacityDecreasedCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector26capacityDecreasedCorrectlyEv
_ZN10TestVector26capacityDecreasedCorrectlyEv:
.LFB46:
	.loc 1 43 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 44 0
	movl	$1, %eax
	.loc 1 45 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE46:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector27popBackWhenEmptyNoExceptionEv
	.def	_ZN10TestVector27popBackWhenEmptyNoExceptionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector27popBackWhenEmptyNoExceptionEv
_ZN10TestVector27popBackWhenEmptyNoExceptionEv:
.LFB47:
	.loc 1 47 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -32
	.seh_endprologue
	movq	%rcx, -32(%rbp)
	.loc 1 48 0
	leaq	-96(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1Em
	.loc 1 49 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE7popBackEv
	.loc 1 51 0
	movl	$1, %ebx
	.loc 1 48 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	.loc 1 51 0
	movl	%ebx, %eax
	.loc 1 52 0
	addq	$72, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -56
	ret
	.cfi_endproc
.LFE47:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector17pushBackCorrectlyEv
	.def	_ZN10TestVector17pushBackCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector17pushBackCorrectlyEv
_ZN10TestVector17pushBackCorrectlyEv:
.LFB48:
	.loc 1 54 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 55 0
	movl	$1, %eax
	.loc 1 56 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE48:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector14eraseCorrectlyEv
	.def	_ZN10TestVector14eraseCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector14eraseCorrectlyEv
_ZN10TestVector14eraseCorrectlyEv:
.LFB49:
	.loc 1 58 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 128
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 0
	.seh_endprologue
	movq	%rcx, 0(%rbp)
	.loc 1 59 0
	leaq	._5(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$9, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1ERKSt16initializer_listIiE
	.loc 1 60 0
	leaq	-96(%rbp), %rax
	movl	$4, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiE5eraseEm
.LBB2:
	.loc 1 61 0
	movq	$0, -40(%rbp)
.L19:
	.loc 1 61 0 is_stmt 0 discriminator 1
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE7getSizeEv
	cmpq	-40(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L16
	.loc 1 62 0 is_stmt 1
	movq	-40(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiEixEm
	movl	(%rax), %eax
	cltq
	cmpq	-40(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L17
	.loc 1 63 0
	movl	$0, %ebx
	jmp	.L18
.L17:
	.loc 1 61 0 discriminator 2
	addq	$1, -40(%rbp)
	jmp	.L19
.L16:
.LBE2:
	.loc 1 64 0
	movl	$1, %ebx
.L18:
	.loc 1 59 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	movl	%ebx, %eax
	.loc 1 66 0
	addq	$104, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -88
	ret
	.cfi_endproc
.LFE49:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector15insertCorrectlyEv
	.def	_ZN10TestVector15insertCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector15insertCorrectlyEv
_ZN10TestVector15insertCorrectlyEv:
.LFB50:
	.loc 1 68 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$120, %rsp
	.seh_stackalloc	120
	.cfi_def_cfa_offset 144
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 69 0
	leaq	._6(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$7, -56(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiEC1ERKSt16initializer_listIiE
	.loc 1 70 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE7getSizeEv
	movq	%rax, -32(%rbp)
	.loc 1 71 0
	movl	$0, -40(%rbp)
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-96(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZN6VectorIiE6insertEmRKi
	.loc 1 72 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE7getSizeEv
	cmpq	-32(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L22
	.loc 1 73 0
	movl	$0, %ebx
	jmp	.L23
.L22:
	.loc 1 75 0
	movl	$4, -36(%rbp)
	leaq	-36(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %r8
	movl	$4, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIiE6insertEmRKi
.LBB3:
	.loc 1 76 0
	movq	$0, -24(%rbp)
.L26:
	.loc 1 76 0 is_stmt 0 discriminator 1
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIiE7getSizeEv
	cmpq	-24(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L24
	.loc 1 77 0 is_stmt 1
	movq	-24(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiEixEm
	movl	(%rax), %eax
	cltq
	cmpq	-24(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L25
	.loc 1 78 0
	movl	$0, %ebx
	jmp	.L23
.L25:
	.loc 1 76 0 discriminator 2
	addq	$1, -24(%rbp)
	jmp	.L26
.L24:
.LBE3:
	.loc 1 79 0
	movl	$1, %ebx
.L23:
	.loc 1 69 0
	leaq	-96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiED1Ev
	movl	%ebx, %eax
	.loc 1 80 0
	addq	$120, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -104
	ret
	.cfi_endproc
.LFE50:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector15resizeCorrectlyEv
	.def	_ZN10TestVector15resizeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector15resizeCorrectlyEv
_ZN10TestVector15resizeCorrectlyEv:
.LFB51:
	.loc 1 82 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 83 0
	movl	$1, %eax
	.loc 1 84 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE51:
	.seh_endproc
	.section	.text$_ZN6VectorIiEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEC1Em
	.def	_ZN6VectorIiEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEC1Em
_ZN6VectorIiEC1Em:
.LFB54:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/data_structures/Vector.h"
	.loc 2 15 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB4:
	.loc 2 16 0
	movq	16(%rbp), %rax
	movq	$0, (%rax)
	movq	16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	16(%rbp), %rax
	movq	$0, 16(%rax)
	.loc 2 18 0
	movl	$8, %eax
	cmpq	$8, 24(%rbp)
	cmovnb	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE14resizeCapacityEm
	testb	%al, %al
	je	.L32
	.loc 2 20 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 16(%rax)
.L32:
.LBE4:
	.loc 2 22 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE54:
	.seh_endproc
	.section	.text$_ZN6VectorIiED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiED1Ev
	.def	_ZN6VectorIiED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiED1Ev
_ZN6VectorIiED1Ev:
.LFB57:
	.loc 2 53 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
.LBB5:
	.loc 2 55 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L35
	.loc 2 57 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 2 58 0
	movq	16(%rbp), %rax
	movq	$0, (%rax)
.L35:
.LBE5:
	.loc 2 60 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.section	.text$_ZNK6VectorIiE11getCapacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIiE11getCapacityEv
	.def	_ZNK6VectorIiE11getCapacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIiE11getCapacityEv
_ZNK6VectorIiE11getCapacityEv:
.LFB58:
	.loc 2 109 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 111 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	.loc 2 112 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE58:
	.seh_endproc
	.section	.text$_ZN6VectorIiE8pushBackEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE8pushBackEi
	.def	_ZN6VectorIiE8pushBackEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE8pushBackEi
_ZN6VectorIiE8pushBackEi:
.LFB59:
	.loc 2 81 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	.loc 2 83 0
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE24adjustCapacityForOneMoreEv
	testb	%al, %al
	je	.L40
	.loc 2 85 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 2 86 0
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	salq	$2, %rax
	subq	$4, %rax
	addq	%rax, %rdx
	movl	24(%rbp), %eax
	movl	%eax, (%rdx)
.L40:
	.loc 2 88 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE59:
	.seh_endproc
	.section	.text$_ZN6VectorIiE7popBackEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE7popBackEv
	.def	_ZN6VectorIiE7popBackEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE7popBackEv
_ZN6VectorIiE7popBackEv:
.LFB60:
	.loc 2 73 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 75 0
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
	testb	%al, %al
	je	.L42
	.loc 2 76 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L42
	.loc 2 77 0
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rcx
	movq	16(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	salq	$2, %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	jmp	.L43
.L42:
	.loc 2 78 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %eax
.L43:
	.loc 2 79 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIiE5beginEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIiE5beginEv
	.def	_ZNKSt16initializer_listIiE5beginEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIiE5beginEv
_ZNKSt16initializer_listIiE5beginEv:
.LFB62:
	.file 3 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.loc 3 75 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 3 75 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIiE4sizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIiE4sizeEv
	.def	_ZNKSt16initializer_listIiE4sizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIiE4sizeEv
_ZNKSt16initializer_listIiE4sizeEv:
.LFB64:
	.loc 3 71 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 3 71 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.section	.text$_ZNKSt16initializer_listIiE3endEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNKSt16initializer_listIiE3endEv
	.def	_ZNKSt16initializer_listIiE3endEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNKSt16initializer_listIiE3endEv
_ZNKSt16initializer_listIiE3endEv:
.LFB63:
	.loc 3 79 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, -64
	.seh_endprologue
	movq	%rcx, -64(%rbp)
	.loc 3 79 0
	movq	-64(%rbp), %rcx
	call	_ZNKSt16initializer_listIiE5beginEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rcx
	call	_ZNKSt16initializer_listIiE4sizeEv
	salq	$2, %rax
	addq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE63:
	.seh_endproc
	.section	.text$_ZN6VectorIiEC1ERKSt16initializer_listIiE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEC1ERKSt16initializer_listIiE
	.def	_ZN6VectorIiEC1ERKSt16initializer_listIiE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEC1ERKSt16initializer_listIiE
_ZN6VectorIiEC1ERKSt16initializer_listIiE:
.LFB66:
	.loc 2 24 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB6:
	.loc 2 25 0
	movl	$0, %edx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiEC1Em
.LBB7:
.LBB8:
	.loc 2 27 0
	movq	24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIiE5beginEv
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNKSt16initializer_listIiE3endEv
	movq	%rax, -24(%rbp)
.L52:
	.loc 2 27 0 is_stmt 0 discriminator 3
	movq	-8(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.L53
	.loc 2 27 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	.loc 2 28 0 is_stmt 1 discriminator 2
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE8pushBackEi
	.loc 2 27 0 discriminator 2
	addq	$4, -8(%rbp)
	jmp	.L52
.L53:
.LBE8:
.LBE7:
.LBE6:
	.loc 2 29 0
	nop
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.seh_endproc
	.section	.text$_ZN6VectorIiE5eraseEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE5eraseEm
	.def	_ZN6VectorIiE5eraseEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE5eraseEm
_ZN6VectorIiE5eraseEm:
.LFB67:
	.loc 2 127 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB9:
	.loc 2 129 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	24(%rbp), %rax
	jbe	.L55
	.loc 2 129 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
	testb	%al, %al
	je	.L55
	.loc 2 129 0 discriminator 3
	movl	$1, %eax
	jmp	.L56
.L55:
	.loc 2 129 0 discriminator 4
	movl	$0, %eax
.L56:
	.loc 2 129 0 discriminator 6
	testb	%al, %al
	je	.L60
.LBB10:
	.loc 2 131 0 is_stmt 1
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
.LBB11:
	.loc 2 132 0
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L59:
	.loc 2 132 0 is_stmt 0 discriminator 3
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.L60
	.loc 2 133 0 is_stmt 1 discriminator 2
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	.loc 2 132 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L59
.L60:
.LBE11:
.LBE10:
.LBE9:
	.loc 2 135 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.seh_endproc
	.section	.text$_ZNK6VectorIiE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIiE7getSizeEv
	.def	_ZNK6VectorIiE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIiE7getSizeEv
_ZNK6VectorIiE7getSizeEv:
.LFB68:
	.loc 2 103 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 105 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 2 106 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.seh_endproc
	.section	.text$_ZN6VectorIiEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEixEm
	.def	_ZN6VectorIiEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEixEm
_ZN6VectorIiEixEm:
.LFB69:
	.loc 2 68 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 70 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	.loc 2 71 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.seh_endproc
	.section	.text$_ZN6VectorIiE6insertEmRKi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE6insertEmRKi
	.def	_ZN6VectorIiE6insertEmRKi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE6insertEmRKi
_ZN6VectorIiE6insertEmRKi:
.LFB70:
	.loc 2 146 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 148 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	24(%rbp), %rax
	jb	.L66
	.loc 2 148 0 is_stmt 0 discriminator 2
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L67
.L66:
	.loc 2 148 0 discriminator 3
	movl	$1, %eax
	jmp	.L68
.L67:
	.loc 2 148 0 discriminator 4
	movl	$0, %eax
.L68:
	.loc 2 148 0 discriminator 6
	testb	%al, %al
	je	.L69
	.loc 2 149 0 is_stmt 1
	movq	$-1, %rax
	jmp	.L70
.L69:
	.loc 2 150 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
.LBB12:
	.loc 2 151 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, -8(%rbp)
.L72:
	.loc 2 151 0 is_stmt 0 discriminator 3
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L71
	.loc 2 152 0 is_stmt 1 discriminator 2
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	salq	$2, %rcx
	subq	$4, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	.loc 2 151 0 discriminator 2
	subq	$1, -8(%rbp)
	jmp	.L72
.L71:
.LBE12:
	.loc 2 153 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	salq	$2, %rdx
	addq	%rax, %rdx
	movq	32(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	.loc 2 154 0
	movq	24(%rbp), %rax
.L70:
	.loc 2 155 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.seh_endproc
	.section	.text$_ZN6VectorIiE14resizeCapacityEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE14resizeCapacityEm
	.def	_ZN6VectorIiE14resizeCapacityEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE14resizeCapacityEm
_ZN6VectorIiE14resizeCapacityEm:
.LFB71:
	.loc 2 167 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 2 169 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	24(%rbp), %rax
	jne	.L74
	.loc 2 170 0
	movl	$1, %eax
	jmp	.L75
.L74:
	.loc 2 171 0
	movq	24(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	$-1, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10reallocateEPvmm
	.loc 2 172 0
	movq	24(%rbp), %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10allocateAsIPiEET_m
	movq	%rax, -16(%rbp)
	.loc 2 173 0
	cmpq	$0, -16(%rbp)
	jne	.L76
	.loc 2 174 0
	movl	$0, %eax
	jmp	.L75
.L76:
.LBB13:
	.loc 2 176 0
	movq	$0, -8(%rbp)
.L78:
	.loc 2 176 0 is_stmt 0 discriminator 3
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.L77
	.loc 2 177 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	salq	$2, %rcx
	addq	%rcx, %rax
	movl	(%rax), %eax
	movl	%eax, (%rdx)
	.loc 2 176 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L78
.L77:
.LBE13:
	.loc 2 178 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 2 181 0
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 2 182 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 2 183 0
	movl	$1, %eax
.L75:
	.loc 2 184 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.seh_endproc
	.section	.text$_ZN6VectorIiE24adjustCapacityForOneMoreEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE24adjustCapacityForOneMoreEv
	.def	_ZN6VectorIiE24adjustCapacityForOneMoreEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE24adjustCapacityForOneMoreEv
_ZN6VectorIiE24adjustCapacityForOneMoreEv:
.LFB72:
	.loc 2 187 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 189 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L80
	.loc 2 190 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE18getIncrementalSizeEm
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE14resizeCapacityEm
	jmp	.L81
.L80:
	.loc 2 191 0
	movl	$1, %eax
.L81:
	.loc 2 192 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.seh_endproc
	.section	.text$_ZN6VectorIiE24adjustCapacityForOneLessEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE24adjustCapacityForOneLessEv
	.def	_ZN6VectorIiE24adjustCapacityForOneLessEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE24adjustCapacityForOneLessEv
_ZN6VectorIiE24adjustCapacityForOneLessEv:
.LFB73:
	.loc 2 195 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 199 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.L83
	.loc 2 199 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	movq	%rax, %rcx
	call	_ZN6VectorIiE18getIncrementalSizeEm
	jmp	.L84
.L83:
	.loc 2 199 0 discriminator 2
	movl	$8, %eax
.L84:
	.loc 2 199 0 discriminator 4
	movq	%rax, -8(%rbp)
	.loc 2 200 0 is_stmt 1 discriminator 4
	cmpq	$7, -8(%rbp)
	ja	.L85
	.loc 2 201 0
	movq	$8, -8(%rbp)
.L85:
	.loc 2 202 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-8(%rbp), %rax
	jbe	.L86
	.loc 2 203 0
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIiE14resizeCapacityEm
	jmp	.L87
.L86:
	.loc 2 204 0
	movl	$1, %eax
.L87:
	.loc 2 206 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPiEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPiEET_m
	.def	_ZN13MemoryManager10allocateAsIPiEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPiEET_m
_ZN13MemoryManager10allocateAsIPiEET_m:
.LFB74:
	.file 4 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.loc 4 15 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 4 17 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager8allocateEm
	.loc 4 18 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.seh_endproc
	.section	.text$_ZN6VectorIiE18getIncrementalSizeEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE18getIncrementalSizeEm
	.def	_ZN6VectorIiE18getIncrementalSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE18getIncrementalSizeEm
_ZN6VectorIiE18getIncrementalSizeEm:
.LFB75:
	.loc 2 209 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 2 211 0
	movq	16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	shrq	%rax
	.loc 2 212 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.seh_endproc
	.section .rdata,"dr"
	.align 32
._5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	4
	.long	5
	.long	6
	.long	7
	.align 16
._6:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	5
	.long	6
	.long	7
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/Vector.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/test/TestVector.h"
	.file 17 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x27ce
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subprojects/host/Debug\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x5
	.byte	0xd8
	.long	0x189
	.uleb128 0x4
	.long	0x176
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1e6
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x5
	.word	0x1ab
	.long	0x1e6
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x5
	.word	0x1ac
	.long	0x1f7
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x7
	.ascii "max_align_t\0"
	.byte	0x5
	.word	0x1ad
	.long	0x19e
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x11
	.byte	0
	.long	0x4c8
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x206
	.uleb128 0xa
	.byte	0x7
	.byte	0x30
	.long	0x4c8
	.uleb128 0xa
	.byte	0x7
	.byte	0x31
	.long	0x4e5
	.uleb128 0xa
	.byte	0x7
	.byte	0x32
	.long	0x501
	.uleb128 0xa
	.byte	0x7
	.byte	0x33
	.long	0x51c
	.uleb128 0xa
	.byte	0x7
	.byte	0x35
	.long	0x64b
	.uleb128 0xa
	.byte	0x7
	.byte	0x36
	.long	0x65e
	.uleb128 0xa
	.byte	0x7
	.byte	0x37
	.long	0x672
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x686
	.uleb128 0xa
	.byte	0x7
	.byte	0x3a
	.long	0x5a1
	.uleb128 0xa
	.byte	0x7
	.byte	0x3b
	.long	0x5b5
	.uleb128 0xa
	.byte	0x7
	.byte	0x3c
	.long	0x5ca
	.uleb128 0xa
	.byte	0x7
	.byte	0x3d
	.long	0x5df
	.uleb128 0xa
	.byte	0x7
	.byte	0x3f
	.long	0x70e
	.uleb128 0xa
	.byte	0x7
	.byte	0x40
	.long	0x6ed
	.uleb128 0xa
	.byte	0x7
	.byte	0x42
	.long	0x52b
	.uleb128 0xa
	.byte	0x7
	.byte	0x43
	.long	0x54b
	.uleb128 0xa
	.byte	0x7
	.byte	0x44
	.long	0x571
	.uleb128 0xa
	.byte	0x7
	.byte	0x45
	.long	0x591
	.uleb128 0xa
	.byte	0x7
	.byte	0x47
	.long	0x69a
	.uleb128 0xa
	.byte	0x7
	.byte	0x48
	.long	0x6ae
	.uleb128 0xa
	.byte	0x7
	.byte	0x49
	.long	0x6c3
	.uleb128 0xa
	.byte	0x7
	.byte	0x4a
	.long	0x6d8
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x5f4
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x609
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x61f
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x635
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x71e
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x6fd
	.uleb128 0xb
	.ascii "initializer_list<int>\0"
	.byte	0x10
	.byte	0x3
	.byte	0x2f
	.long	0x4b4
	.uleb128 0xc
	.ascii "iterator\0"
	.byte	0x3
	.byte	0x36
	.long	0x1bb3
	.byte	0x1
	.uleb128 0xd
	.ascii "_M_array\0"
	.byte	0x3
	.byte	0x3a
	.long	0x321
	.byte	0
	.uleb128 0xc
	.ascii "size_type\0"
	.byte	0x3
	.byte	0x35
	.long	0x4b9
	.byte	0x1
	.uleb128 0xd
	.ascii "_M_len\0"
	.byte	0x3
	.byte	0x3b
	.long	0x343
	.byte	0x8
	.uleb128 0xc
	.ascii "const_iterator\0"
	.byte	0x3
	.byte	0x37
	.long	0x1bb3
	.byte	0x1
	.uleb128 0xe
	.secrel32	.LASF1
	.byte	0x3
	.byte	0x3e
	.ascii "_ZNSt16initializer_listIiEC4EPKim\0"
	.long	0x3ac
	.long	0x3bc
	.uleb128 0xf
	.long	0x1f2d
	.uleb128 0x10
	.long	0x364
	.uleb128 0x10
	.long	0x343
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF1
	.byte	0x3
	.byte	0x42
	.ascii "_ZNSt16initializer_listIiEC4Ev\0"
	.byte	0x1
	.long	0x3eb
	.long	0x3f1
	.uleb128 0xf
	.long	0x1f2d
	.byte	0
	.uleb128 0x12
	.ascii "size\0"
	.byte	0x3
	.byte	0x47
	.ascii "_ZNKSt16initializer_listIiE4sizeEv\0"
	.long	0x343
	.byte	0x1
	.long	0x429
	.long	0x42f
	.uleb128 0xf
	.long	0x1f33
	.byte	0
	.uleb128 0x12
	.ascii "begin\0"
	.byte	0x3
	.byte	0x4b
	.ascii "_ZNKSt16initializer_listIiE5beginEv\0"
	.long	0x364
	.byte	0x1
	.long	0x469
	.long	0x46f
	.uleb128 0xf
	.long	0x1f33
	.byte	0
	.uleb128 0x12
	.ascii "end\0"
	.byte	0x3
	.byte	0x4f
	.ascii "_ZNKSt16initializer_listIiE3endEv\0"
	.long	0x364
	.byte	0x1
	.long	0x4a5
	.long	0x4ab
	.uleb128 0xf
	.long	0x1f33
	.byte	0
	.uleb128 0x13
	.ascii "_E\0"
	.long	0x510
	.byte	0
	.uleb128 0x4
	.long	0x303
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x8
	.byte	0xc9
	.long	0x189
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x9
	.byte	0x22
	.long	0x4d6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x9
	.byte	0x25
	.long	0x4f4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x9
	.byte	0x28
	.long	0x510
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x510
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x9
	.byte	0x2b
	.long	0x16a
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x9
	.byte	0x2e
	.long	0x53a
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x9
	.byte	0x31
	.long	0x55b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x9
	.byte	0x34
	.long	0x581
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x9
	.byte	0x37
	.long	0x189
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x9
	.byte	0x3c
	.long	0x4d6
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x9
	.byte	0x3d
	.long	0x4f4
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x9
	.byte	0x3e
	.long	0x510
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x9
	.byte	0x3f
	.long	0x16a
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x9
	.byte	0x40
	.long	0x53a
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x9
	.byte	0x41
	.long	0x55b
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x9
	.byte	0x42
	.long	0x581
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x9
	.byte	0x43
	.long	0x189
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x9
	.byte	0x47
	.long	0x4d6
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x16a
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x9
	.byte	0x49
	.long	0x16a
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x9
	.byte	0x4a
	.long	0x16a
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x9
	.byte	0x4b
	.long	0x53a
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x9
	.byte	0x4c
	.long	0x189
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x9
	.byte	0x4d
	.long	0x189
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x9
	.byte	0x4e
	.long	0x189
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x9
	.byte	0x53
	.long	0x16a
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x9
	.byte	0x56
	.long	0x189
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x9
	.byte	0x5b
	.long	0x16a
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x9
	.byte	0x5c
	.long	0x189
	.uleb128 0x14
	.long	0x758
	.long	0x73f
	.uleb128 0x15
	.long	0x744
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x72f
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x750
	.uleb128 0x16
	.ascii "EMPTY_STR\0"
	.byte	0xa
	.byte	0x16
	.long	0x73f
	.uleb128 0x17
	.ascii "UNIT_K\0"
	.byte	0xa
	.byte	0x1a
	.long	0x517
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0x17
	.ascii "KiB\0"
	.byte	0xa
	.byte	0x1b
	.long	0x517
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0x17
	.ascii "MiB\0"
	.byte	0xa
	.byte	0x1c
	.long	0x517
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0x17
	.ascii "GiB\0"
	.byte	0xa
	.byte	0x1d
	.long	0x517
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0x18
	.byte	0x8
	.uleb128 0x19
	.byte	0x8
	.long	0x7cd
	.uleb128 0x1a
	.uleb128 0xb
	.ascii "Output\0"
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0xaaa
	.uleb128 0x12
	.ascii "print\0"
	.byte	0xb
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x176
	.byte	0x1
	.long	0x809
	.long	0x819
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xab0
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "print\0"
	.byte	0xb
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x176
	.byte	0x1
	.long	0x844
	.long	0x84f
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xab0
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0xab6
	.byte	0x1
	.long	0x872
	.long	0x87d
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x750
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0xab6
	.byte	0x1
	.long	0x8a0
	.long	0x8ab
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x52b
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0xab6
	.byte	0x1
	.long	0x8ce
	.long	0x8d9
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x54b
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0xab6
	.byte	0x1
	.long	0x8fc
	.long	0x907
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x571
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0xab6
	.byte	0x1
	.long	0x92a
	.long	0x935
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xabc
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0xab6
	.byte	0x1
	.long	0x958
	.long	0x963
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x4f4
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0xab6
	.byte	0x1
	.long	0x986
	.long	0x991
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x510
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0xab6
	.byte	0x1
	.long	0x9b4
	.long	0x9bf
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xac4
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0xab6
	.byte	0x1
	.long	0x9e4
	.long	0x9ef
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xab0
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0xab6
	.byte	0x1
	.long	0xa12
	.long	0xa1d
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0xab6
	.byte	0x1
	.long	0xa42
	.long	0xa4d
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0x7c7
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0xab6
	.byte	0x1
	.long	0xa73
	.long	0xa7e
	.uleb128 0xf
	.long	0xaaa
	.uleb128 0x10
	.long	0xace
	.byte	0
	.uleb128 0x1c
	.ascii "flush\0"
	.byte	0xb
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0xab6
	.byte	0x1
	.long	0xaa3
	.uleb128 0xf
	.long	0xaaa
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.long	0x7ce
	.uleb128 0x19
	.byte	0x8
	.long	0x758
	.uleb128 0x1d
	.byte	0x8
	.long	0x7ce
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x19
	.byte	0x8
	.long	0xad5
	.uleb128 0x1e
	.uleb128 0x4
	.long	0xad4
	.uleb128 0x16
	.ascii "kout\0"
	.byte	0xb
	.byte	0x22
	.long	0x7ce
	.uleb128 0x17
	.ascii "koutBufSize\0"
	.byte	0xb
	.byte	0x25
	.long	0x184
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0x14
	.long	0x750
	.long	0xb13
	.uleb128 0x15
	.long	0x744
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.ascii "koutBuf\0"
	.byte	0xb
	.byte	0x26
	.long	0xb03
	.uleb128 0x14
	.long	0x758
	.long	0xb2d
	.uleb128 0x1f
	.byte	0
	.uleb128 0x16
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0xb22
	.uleb128 0x20
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.long	0x116d
	.uleb128 0x21
	.ascii "nextValidChunkOffset\0"
	.byte	0xd
	.byte	0x42
	.long	0x591
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.ascii "endMark\0"
	.byte	0xd
	.byte	0x43
	.long	0x591
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.ascii "allocated\0"
	.byte	0xd
	.byte	0x44
	.long	0x591
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.ascii "size\0"
	.byte	0xd
	.byte	0x45
	.long	0x591
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x21
	.ascii "nextBaseFromEnd\0"
	.byte	0xd
	.byte	0x46
	.long	0x591
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF2
	.byte	0xd
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xbe6
	.long	0xc05
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0xabc
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0xabc
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "isAllocated\0"
	.byte	0xd
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xabc
	.byte	0x1
	.long	0xc42
	.long	0xc48
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x22
	.ascii "setAllocated\0"
	.byte	0xd
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xc82
	.long	0xc8d
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0xabc
	.byte	0
	.uleb128 0x12
	.ascii "isEnd\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xabc
	.byte	0x1
	.long	0xcbd
	.long	0xcc3
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x22
	.ascii "setEnd\0"
	.byte	0xd
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xcf0
	.long	0xcfb
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0xabc
	.byte	0
	.uleb128 0x12
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x1178
	.byte	0x1
	.long	0xd2f
	.long	0xd35
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x12
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x1172
	.byte	0x1
	.long	0xd68
	.long	0xd6e
	.uleb128 0xf
	.long	0x1172
	.byte	0
	.uleb128 0x12
	.ascii "getSize\0"
	.byte	0xd
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x176
	.byte	0x1
	.long	0xda2
	.long	0xda8
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x22
	.ascii "setSize\0"
	.byte	0xd
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xdd7
	.long	0xde2
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x7c5
	.byte	0x1
	.long	0xe15
	.long	0xe1b
	.uleb128 0xf
	.long	0x1172
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x7c7
	.byte	0x1
	.long	0xe4f
	.long	0xe55
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x7c5
	.byte	0x1
	.long	0xe88
	.long	0xe8e
	.uleb128 0xf
	.long	0x1172
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x7c7
	.byte	0x1
	.long	0xec2
	.long	0xec8
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x12
	.ascii "getNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x591
	.byte	0x1
	.long	0xf13
	.long	0xf19
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x22
	.ascii "setNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xf5f
	.long	0xf6a
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x591
	.byte	0
	.uleb128 0x12
	.ascii "getNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x591
	.byte	0x1
	.long	0xfbf
	.long	0xfc5
	.uleb128 0xf
	.long	0x1178
	.byte	0
	.uleb128 0x22
	.ascii "setNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x1015
	.long	0x1020
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x591
	.byte	0
	.uleb128 0x12
	.ascii "moveAhead\0"
	.byte	0xd
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x1172
	.byte	0x1
	.long	0x1057
	.long	0x1062
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xd
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x176
	.byte	0x1
	.long	0x10cc
	.long	0x10dc
	.uleb128 0xf
	.long	0x1178
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "split\0"
	.byte	0xd
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xabc
	.byte	0x1
	.long	0x110b
	.long	0x1116
	.uleb128 0xf
	.long	0x1172
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x23
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xd
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x1166
	.uleb128 0xf
	.long	0x1172
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xb3e
	.uleb128 0x19
	.byte	0x8
	.long	0xb3e
	.uleb128 0x19
	.byte	0x8
	.long	0x116d
	.uleb128 0x20
	.secrel32	.LASF5
	.byte	0x18
	.byte	0xe
	.byte	0x19
	.long	0x14e1
	.uleb128 0xd
	.ascii "headChunk\0"
	.byte	0xe
	.byte	0x54
	.long	0x1172
	.byte	0
	.uleb128 0xd
	.ascii "base\0"
	.byte	0xe
	.byte	0x55
	.long	0xab0
	.byte	0x8
	.uleb128 0xd
	.ascii "size\0"
	.byte	0xe
	.byte	0x56
	.long	0x184
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x11dd
	.long	0x11e3
	.uleb128 0xf
	.long	0x14e6
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x120d
	.long	0x1222
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x7c5
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0xabc
	.byte	0
	.uleb128 0x12
	.ascii "normalizeAllocSize\0"
	.byte	0xe
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x176
	.byte	0x1
	.long	0x126e
	.long	0x1279
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x7c5
	.byte	0x1
	.long	0x12ab
	.long	0x12b6
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x7c5
	.byte	0x1
	.long	0x12e9
	.long	0x12f9
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "tryIncrease\0"
	.byte	0xe
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xabc
	.byte	0x1
	.long	0x1339
	.long	0x1349
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x7c5
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "tryDecrease\0"
	.byte	0xe
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xabc
	.byte	0x1
	.long	0x1389
	.long	0x1399
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x7c5
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "reallocate\0"
	.byte	0xe
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x7c5
	.byte	0x1
	.long	0x13d8
	.long	0x13ed
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x7c5
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x22
	.ascii "deallocate\0"
	.byte	0xe
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x1426
	.long	0x1431
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x7c5
	.byte	0
	.uleb128 0x12
	.ascii "getAllocatedLength\0"
	.byte	0xe
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x176
	.byte	0x1
	.long	0x147f
	.long	0x148a
	.uleb128 0xf
	.long	0x14f1
	.uleb128 0x10
	.long	0x7c5
	.byte	0
	.uleb128 0x1c
	.ascii "allocateAs<int*>\0"
	.byte	0x4
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPiEET_m\0"
	.long	0x1b69
	.byte	0x1
	.long	0x14d5
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b69
	.uleb128 0xf
	.long	0x14e6
	.uleb128 0x10
	.long	0x176
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x117e
	.uleb128 0x19
	.byte	0x8
	.long	0x117e
	.uleb128 0x4
	.long	0x14e6
	.uleb128 0x19
	.byte	0x8
	.long	0x14e1
	.uleb128 0x16
	.ascii "mman\0"
	.byte	0xe
	.byte	0x5b
	.long	0x117e
	.uleb128 0xb
	.ascii "Vector<int>\0"
	.byte	0x18
	.byte	0xf
	.byte	0x13
	.long	0x1b64
	.uleb128 0x25
	.byte	0x4
	.long	0x581
	.byte	0xf
	.byte	0x15
	.byte	0x1
	.long	0x1538
	.uleb128 0x26
	.ascii "MINIMAL_CAPACITY\0"
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.ascii "data\0"
	.byte	0xf
	.byte	0x45
	.long	0x1b69
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF7
	.byte	0xf
	.byte	0x46
	.long	0x176
	.byte	0x8
	.uleb128 0xd
	.ascii "size\0"
	.byte	0xf
	.byte	0x47
	.long	0x176
	.byte	0x10
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0xf
	.ascii "_ZN6VectorIiEC4Em\0"
	.byte	0x1
	.long	0x1580
	.long	0x158b
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x18
	.ascii "_ZN6VectorIiEC4ERKSt16initializer_listIiE\0"
	.byte	0x1
	.long	0x15c5
	.long	0x15d0
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b7a
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF9
	.byte	0xf
	.byte	0x1b
	.ascii "_ZN6VectorIiEaSERKSt16initializer_listIiE\0"
	.long	0x1b85
	.byte	0x1
	.long	0x160e
	.long	0x1619
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b7a
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF8
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN6VectorIiEC4ERKS0_\0"
	.byte	0x1
	.long	0x163f
	.long	0x164a
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b8b
	.byte	0
	.uleb128 0x28
	.secrel32	.LASF9
	.byte	0xf
	.byte	0x1d
	.ascii "_ZN6VectorIiEaSERKS0_\0"
	.long	0x1b85
	.byte	0x1
	.long	0x1674
	.long	0x167f
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b8b
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x20
	.ascii "_ZN6VectorIiEC4EOS0_\0"
	.byte	0x1
	.long	0x16a4
	.long	0x16af
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b91
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x29
	.ascii "_ZN6VectorIiEaSEOS0_\0"
	.long	0x1b85
	.byte	0x1
	.long	0x16d8
	.long	0x16e3
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b91
	.byte	0
	.uleb128 0x22
	.ascii "~Vector\0"
	.byte	0x2
	.byte	0x35
	.ascii "_ZN6VectorIiED4Ev\0"
	.byte	0x1
	.long	0x1709
	.long	0x1714
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0xf
	.long	0x510
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x3f
	.ascii "_ZNK6VectorIiEixEm\0"
	.long	0x1b97
	.byte	0x1
	.long	0x173b
	.long	0x1746
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x44
	.ascii "_ZN6VectorIiEixEm\0"
	.long	0x1bad
	.byte	0x1
	.long	0x176c
	.long	0x1777
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "popBack\0"
	.byte	0x2
	.byte	0x49
	.ascii "_ZN6VectorIiE7popBackEv\0"
	.long	0x510
	.byte	0x1
	.long	0x17a7
	.long	0x17ad
	.uleb128 0xf
	.long	0x1b6f
	.byte	0
	.uleb128 0x22
	.ascii "pushBack\0"
	.byte	0x2
	.byte	0x51
	.ascii "_ZN6VectorIiE8pushBackEi\0"
	.byte	0x1
	.long	0x17db
	.long	0x17e6
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x510
	.byte	0
	.uleb128 0x12
	.ascii "getData\0"
	.byte	0x2
	.byte	0x5b
	.ascii "_ZN6VectorIiE7getDataEv\0"
	.long	0x1b69
	.byte	0x1
	.long	0x1816
	.long	0x181c
	.uleb128 0xf
	.long	0x1b6f
	.byte	0
	.uleb128 0x12
	.ascii "getData\0"
	.byte	0x2
	.byte	0x61
	.ascii "_ZNK6VectorIiE7getDataEv\0"
	.long	0x1bb3
	.byte	0x1
	.long	0x184d
	.long	0x1853
	.uleb128 0xf
	.long	0x1ba2
	.byte	0
	.uleb128 0x12
	.ascii "getSize\0"
	.byte	0x2
	.byte	0x67
	.ascii "_ZNK6VectorIiE7getSizeEv\0"
	.long	0x176
	.byte	0x1
	.long	0x1884
	.long	0x188a
	.uleb128 0xf
	.long	0x1ba2
	.byte	0
	.uleb128 0x12
	.ascii "getCapacity\0"
	.byte	0x2
	.byte	0x6d
	.ascii "_ZNK6VectorIiE11getCapacityEv\0"
	.long	0x176
	.byte	0x1
	.long	0x18c4
	.long	0x18ca
	.uleb128 0xf
	.long	0x1ba2
	.byte	0
	.uleb128 0x12
	.ascii "empty\0"
	.byte	0x2
	.byte	0x73
	.ascii "_ZNK6VectorIiE5emptyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x18f7
	.long	0x18fd
	.uleb128 0xf
	.long	0x1ba2
	.byte	0
	.uleb128 0x22
	.ascii "clear\0"
	.byte	0x2
	.byte	0x79
	.ascii "_ZN6VectorIiE5clearEv\0"
	.byte	0x1
	.long	0x1925
	.long	0x192b
	.uleb128 0xf
	.long	0x1b6f
	.byte	0
	.uleb128 0x22
	.ascii "erase\0"
	.byte	0x2
	.byte	0x7f
	.ascii "_ZN6VectorIiE5eraseEm\0"
	.byte	0x1
	.long	0x1953
	.long	0x195e
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "append\0"
	.byte	0x2
	.byte	0x8a
	.ascii "_ZN6VectorIiE6appendERKS0_m\0"
	.long	0x1b85
	.byte	0x1
	.long	0x1991
	.long	0x19a1
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x1b8b
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x12
	.ascii "insert\0"
	.byte	0x2
	.byte	0x92
	.ascii "_ZN6VectorIiE6insertEmRKi\0"
	.long	0x176
	.byte	0x1
	.long	0x19d2
	.long	0x19e2
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.uleb128 0x10
	.long	0x1b97
	.byte	0
	.uleb128 0x12
	.ascii "resize\0"
	.byte	0x2
	.byte	0x9e
	.ascii "_ZN6VectorIiE6resizeEm\0"
	.long	0xabc
	.byte	0x1
	.long	0x1a10
	.long	0x1a1b
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x29
	.ascii "resizeCapacity\0"
	.byte	0x2
	.byte	0xa7
	.ascii "_ZN6VectorIiE14resizeCapacityEm\0"
	.long	0xabc
	.long	0x1a59
	.long	0x1a64
	.uleb128 0xf
	.long	0x1b6f
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x29
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x2
	.byte	0xbb
	.ascii "_ZN6VectorIiE24adjustCapacityForOneMoreEv\0"
	.long	0xabc
	.long	0x1ab6
	.long	0x1abc
	.uleb128 0xf
	.long	0x1b6f
	.byte	0
	.uleb128 0x29
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x2
	.byte	0xc3
	.ascii "_ZN6VectorIiE24adjustCapacityForOneLessEv\0"
	.long	0xabc
	.long	0x1b0e
	.long	0x1b14
	.uleb128 0xf
	.long	0x1b6f
	.byte	0
	.uleb128 0x2a
	.ascii "getIncrementalSize\0"
	.byte	0x2
	.byte	0xd1
	.ascii "_ZN6VectorIiE18getIncrementalSizeEm\0"
	.long	0x176
	.long	0x1b5c
	.uleb128 0x10
	.long	0x176
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x510
	.byte	0
	.uleb128 0x4
	.long	0x1503
	.uleb128 0x19
	.byte	0x8
	.long	0x510
	.uleb128 0x19
	.byte	0x8
	.long	0x1503
	.uleb128 0x4
	.long	0x1b6f
	.uleb128 0x1d
	.byte	0x8
	.long	0x4b4
	.uleb128 0x4
	.long	0x1b7a
	.uleb128 0x1d
	.byte	0x8
	.long	0x1503
	.uleb128 0x1d
	.byte	0x8
	.long	0x1b64
	.uleb128 0x2b
	.byte	0x8
	.long	0x1503
	.uleb128 0x1d
	.byte	0x8
	.long	0x517
	.uleb128 0x4
	.long	0x1b97
	.uleb128 0x19
	.byte	0x8
	.long	0x1b64
	.uleb128 0x4
	.long	0x1ba2
	.uleb128 0x1d
	.byte	0x8
	.long	0x510
	.uleb128 0x19
	.byte	0x8
	.long	0x517
	.uleb128 0xb
	.ascii "TestVector\0"
	.byte	0x18
	.byte	0x10
	.byte	0xc
	.long	0x1f22
	.uleb128 0x2c
	.long	0x1503
	.byte	0
	.uleb128 0x22
	.ascii "setup\0"
	.byte	0x10
	.byte	0x10
	.ascii "_ZN10TestVector5setupEv\0"
	.byte	0x1
	.long	0x1bfc
	.long	0x1c02
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x22
	.ascii "teardown\0"
	.byte	0x10
	.byte	0x11
	.ascii "_ZN10TestVector8teardownEv\0"
	.byte	0x1
	.long	0x1c32
	.long	0x1c38
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "initializeCorrectly\0"
	.byte	0x10
	.byte	0x13
	.ascii "_ZN10TestVector19initializeCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1c83
	.long	0x1c89
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "minimalCapacityEnsured\0"
	.byte	0x10
	.byte	0x14
	.ascii "_ZN10TestVector22minimalCapacityEnsuredEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1cda
	.long	0x1ce0
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "capacityIncreasedCorrectly\0"
	.byte	0x10
	.byte	0x15
	.ascii "_ZN10TestVector26capacityIncreasedCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1d39
	.long	0x1d3f
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "capacityDecreasedCorrectly\0"
	.byte	0x10
	.byte	0x16
	.ascii "_ZN10TestVector26capacityDecreasedCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1d98
	.long	0x1d9e
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "popBackWhenEmptyNoException\0"
	.byte	0x10
	.byte	0x17
	.ascii "_ZN10TestVector27popBackWhenEmptyNoExceptionEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1df9
	.long	0x1dff
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "pushBackCorrectly\0"
	.byte	0x10
	.byte	0x18
	.ascii "_ZN10TestVector17pushBackCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1e46
	.long	0x1e4c
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "eraseCorrectly\0"
	.byte	0x10
	.byte	0x19
	.ascii "_ZN10TestVector14eraseCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1e8d
	.long	0x1e93
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x12
	.ascii "insertCorrectly\0"
	.byte	0x10
	.byte	0x1a
	.ascii "_ZN10TestVector15insertCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1ed6
	.long	0x1edc
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.uleb128 0x1c
	.ascii "resizeCorrectly\0"
	.byte	0x10
	.byte	0x1b
	.ascii "_ZN10TestVector15resizeCorrectlyEv\0"
	.long	0xabc
	.byte	0x1
	.long	0x1f1b
	.uleb128 0xf
	.long	0x1f22
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.long	0x1bb9
	.uleb128 0x4
	.long	0x1f22
	.uleb128 0x19
	.byte	0x8
	.long	0x303
	.uleb128 0x19
	.byte	0x8
	.long	0x4b4
	.uleb128 0x4
	.long	0x1f33
	.uleb128 0x2d
	.long	0x1b14
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f6c
	.uleb128 0x2e
	.ascii "curSize\0"
	.byte	0x2
	.byte	0xd1
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	0x148a
	.long	0x1f96
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f96
	.long	0x1faf
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b69
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x14ec
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "n\0"
	.byte	0x4
	.byte	0xf
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x2f
	.long	0x1abc
	.long	0x1fd2
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fd2
	.long	0x1ff9
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "advisedCapacity\0"
	.byte	0x2
	.byte	0xc7
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2f
	.long	0x1a64
	.long	0x201c
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x201c
	.long	0x2029
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	0x1a1b
	.long	0x204c
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x204c
	.long	0x2097
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.secrel32	.LASF7
	.byte	0x2
	.byte	0xa7
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.ascii "newData\0"
	.byte	0x2
	.byte	0xac
	.long	0x1b69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x32
	.quad	.LBB13
	.quad	.LBE13-.LBB13
	.uleb128 0x17
	.ascii "i\0"
	.byte	0x2
	.byte	0xb0
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x19a1
	.long	0x20ba
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x20ba
	.long	0x20fd
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "i\0"
	.byte	0x2
	.byte	0x92
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.ascii "t\0"
	.byte	0x2
	.byte	0x92
	.long	0x1b9d
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x32
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x17
	.ascii "j\0"
	.byte	0x2
	.byte	0x97
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0x1746
	.long	0x2120
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2120
	.long	0x2139
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "i\0"
	.byte	0x2
	.byte	0x44
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x33
	.long	0x1853
	.long	0x215c
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x215c
	.long	0x2169
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1ba8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	0x192b
	.long	0x218c
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x218c
	.long	0x21c3
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "i\0"
	.byte	0x2
	.byte	0x7f
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x32
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x17
	.ascii "j\0"
	.byte	0x2
	.byte	0x84
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x158b
	.byte	0
	.long	0x21d1
	.long	0x2221
	.uleb128 0x35
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x36
	.ascii "il\0"
	.byte	0x2
	.byte	0x18
	.long	0x1b80
	.uleb128 0x37
	.uleb128 0x38
	.ascii "i\0"
	.byte	0x2
	.byte	0x1b
	.long	0x1b9d
	.uleb128 0x39
	.ascii "__for_range\0"
	.long	0x1b7a
	.uleb128 0x39
	.ascii "__for_begin\0"
	.long	0x364
	.uleb128 0x39
	.ascii "__for_end\0"
	.long	0x364
	.byte	0
	.byte	0
	.uleb128 0x3a
	.long	0x21c3
	.ascii "_ZN6VectorIiEC1ERKSt16initializer_listIiE\0"
	.long	0x226e
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x226e
	.long	0x22cb
	.uleb128 0x3b
	.long	0x21d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x21da
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3c
	.long	0x2298
	.uleb128 0x3d
	.long	0x21e5
	.uleb128 0x3d
	.long	0x21ee
	.uleb128 0x3d
	.long	0x21ff
	.uleb128 0x3d
	.long	0x2210
	.byte	0
	.uleb128 0x32
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x3e
	.long	0x21e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3e
	.long	0x21ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.long	0x21ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3e
	.long	0x2210
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x46f
	.long	0x22ee
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x22ee
	.long	0x22fb
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	0x3f1
	.long	0x231e
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x231e
	.long	0x232b
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	0x42f
	.long	0x234e
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x234e
	.long	0x235b
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f39
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	0x1777
	.long	0x237e
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x237e
	.long	0x238b
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2f
	.long	0x17ad
	.long	0x23ae
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x23ae
	.long	0x23c7
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "t\0"
	.byte	0x2
	.byte	0x51
	.long	0x510
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x33
	.long	0x188a
	.long	0x23ea
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x23ea
	.long	0x23f7
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1ba8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	0x16e3
	.byte	0
	.long	0x2405
	.long	0x241e
	.uleb128 0x35
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x3f
	.ascii "__in_chrg\0"
	.long	0x517
	.byte	0
	.uleb128 0x3a
	.long	0x23f7
	.ascii "_ZN6VectorIiED1Ev\0"
	.long	0x2453
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x2453
	.long	0x245c
	.uleb128 0x3b
	.long	0x2405
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	0x155e
	.byte	0
	.long	0x246a
	.long	0x2484
	.uleb128 0x35
	.secrel32	.LASF11
	.long	0x1b75
	.uleb128 0x36
	.ascii "initSize\0"
	.byte	0x2
	.byte	0xf
	.long	0x176
	.byte	0
	.uleb128 0x3a
	.long	0x245c
	.ascii "_ZN6VectorIiEC1Em\0"
	.long	0x24b9
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x24b9
	.long	0x24ca
	.uleb128 0x3b
	.long	0x246a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x2473
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x40
	.long	0x1edc
	.byte	0x1
	.byte	0x51
	.long	0x24ef
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ef
	.long	0x24fc
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x1e93
	.byte	0x1
	.byte	0x43
	.long	0x2521
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x2521
	.long	0x256d
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "vec\0"
	.byte	0x1
	.byte	0x45
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.ascii "oldSize\0"
	.byte	0x1
	.byte	0x46
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x32
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x17
	.ascii "i\0"
	.byte	0x1
	.byte	0x4c
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x1e4c
	.byte	0x1
	.byte	0x39
	.long	0x2592
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2592
	.long	0x25cc
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "vec\0"
	.byte	0x1
	.byte	0x3b
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x32
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x17
	.ascii "i\0"
	.byte	0x1
	.byte	0x3d
	.long	0x176
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1dff
	.byte	0x1
	.byte	0x35
	.long	0x25f1
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x25f1
	.long	0x25fe
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x1d9e
	.byte	0x1
	.byte	0x2e
	.long	0x2623
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2623
	.long	0x263e
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "vec\0"
	.byte	0x1
	.byte	0x30
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x40
	.long	0x1d3f
	.byte	0x1
	.byte	0x2a
	.long	0x2663
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x2663
	.long	0x2670
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x41
	.long	0x1ce0
	.byte	0x1
	.byte	0x24
	.long	0x2695
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x2695
	.long	0x26b0
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "vec\0"
	.byte	0x1
	.byte	0x26
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x41
	.long	0x1c89
	.byte	0x1
	.byte	0x18
	.long	0x26d5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d5
	.long	0x273f
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.ascii "vec0\0"
	.byte	0x1
	.byte	0x1a
	.long	0x1503
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.ascii "vec1\0"
	.byte	0x1
	.byte	0x1b
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.ascii "vec2\0"
	.byte	0x1
	.byte	0x1c
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x17
	.ascii "vec3\0"
	.byte	0x1
	.byte	0x1d
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x17
	.ascii "vec4\0"
	.byte	0x1
	.byte	0x1e
	.long	0x1503
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x17
	.ascii "res\0"
	.byte	0x1
	.byte	0x20
	.long	0xabc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x40
	.long	0x1c38
	.byte	0x1
	.byte	0x14
	.long	0x2764
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x2764
	.long	0x2771
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x40
	.long	0x1c02
	.byte	0x1
	.byte	0xf
	.long	0x2796
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2796
	.long	0x27a3
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.long	0x1bd2
	.byte	0x1
	.byte	0xb
	.long	0x27c4
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c4
	.uleb128 0x30
	.secrel32	.LASF11
	.long	0x1f28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x211a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x211a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x14c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB54
	.quad	.LFE54
	.quad	.LFB57
	.quad	.LFE57
	.quad	.LFB58
	.quad	.LFE58
	.quad	.LFB59
	.quad	.LFE59
	.quad	.LFB60
	.quad	.LFE60
	.quad	.LFB62
	.quad	.LFE62
	.quad	.LFB64
	.quad	.LFE64
	.quad	.LFB63
	.quad	.LFE63
	.quad	.LFB66
	.quad	.LFE66
	.quad	.LFB67
	.quad	.LFE67
	.quad	.LFB68
	.quad	.LFE68
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB70
	.quad	.LFE70
	.quad	.LFB71
	.quad	.LFE71
	.quad	.LFB72
	.quad	.LFE72
	.quad	.LFB73
	.quad	.LFE73
	.quad	.LFB74
	.quad	.LFE74
	.quad	.LFB75
	.quad	.LFE75
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.ascii "__STDC__ 1\0"
	.byte	0x1
	.uleb128 0x2
	.ascii "__cplusplus 201402L\0"
	.byte	0x1
	.uleb128 0x3
	.ascii "__STDC_UTF_16__ 1\0"
	.byte	0x1
	.uleb128 0x4
	.ascii "__STDC_UTF_32__ 1\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "__STDC_HOSTED__ 0\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "__GNUC__ 6\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "__GNUC_MINOR__ 4\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "__VERSION__ \"6.4.0\"\0"
	.byte	0x1
	.uleb128 0xa
	.ascii "__ATOMIC_RELAXED 0\0"
	.byte	0x1
	.uleb128 0xb
	.ascii "__ATOMIC_SEQ_CST 5\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "__ATOMIC_ACQUIRE 2\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "__ATOMIC_RELEASE 3\0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__ATOMIC_ACQ_REL 4\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__ATOMIC_CONSUME 1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__pic__ 1\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "__PIC__ 1\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_LP64 1\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__LP64__ 1\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__SIZEOF_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__GNUG__ 6\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__SIZE_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__PTRDIFF_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__WINT_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__INTMAX_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__UINTMAX_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__INT64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__UINT64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__INT_LEAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "__UINT_LEAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__INT_FAST16_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__INT_FAST32_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__INT_FAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__UINT_FAST16_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__UINT_FAST32_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__UINT_FAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__INTPTR_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__UINTPTR_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__GXX_WEAK__ 1\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__GXX_EXPERIMENTAL_CXX0X__ 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__cpp_binary_literals 201304\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__cpp_unicode_characters 200704\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__cpp_raw_strings 200710\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__cpp_unicode_literals 200710\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "__cpp_user_defined_literals 200809\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__cpp_lambdas 200907\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "__cpp_range_based_for 200907\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "__cpp_static_assert 200410\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "__cpp_decltype 200707\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__cpp_attributes 200809\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__cpp_rvalue_reference 200610\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__cpp_rvalue_references 200610\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__cpp_variadic_templates 200704\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "__cpp_initializer_lists 200806\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__cpp_delegating_constructors 200604\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "__cpp_nsdmi 200809\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "__cpp_inheriting_constructors 200802\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__cpp_ref_qualifiers 200710\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__cpp_alias_templates 200704\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__cpp_return_type_deduction 201304\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "__cpp_init_captures 201304\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "__cpp_generic_lambdas 201304\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__cpp_constexpr 201304\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__cpp_decltype_auto 201304\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__cpp_aggregate_nsdmi 201304\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__cpp_variable_templates 201304\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__cpp_digit_separators 201309\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__cpp_sized_deallocation 201309\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__GXX_ABI_VERSION 1010\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__LONG_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__WINT_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__WINT_MIN__ 0U\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__SIZE_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "__INTMAX_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__UINTMAX_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "__INT64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "__UINT64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__INT64_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "__UINT64_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__INT_FAST16_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__INT_FAST32_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "__UINT_FAST16_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__UINT_FAST32_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "__DBL_MAX__ double(1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__DBL_MIN__ double(2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__DBL_EPSILON__ double(2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__DBL_DENORM_MIN__ double(4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "__GNUC_STDC_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "__NO_INLINE__ 1\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__STRICT_ANSI__ 1\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "__WCHAR_UNSIGNED__ 1\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1\0"
	.byte	0x1
	.uleb128 0xe9
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1\0"
	.byte	0x1
	.uleb128 0xec
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xed
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xee
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf1
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf3
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf5
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "__GCC_HAVE_DWARF2_CFI_ASM 1\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "__SIZEOF_INT128__ 16\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__SIZEOF_WCHAR_T__ 2\0"
	.byte	0x1
	.uleb128 0xfb
	.ascii "__SIZEOF_WINT_T__ 4\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "__SIZEOF_PTRDIFF_T__ 8\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "__amd64 1\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__amd64__ 1\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__x86_64 1\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__x86_64__ 1\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__SIZEOF_FLOAT80__ 16\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__SIZEOF_FLOAT128__ 16\0"
	.byte	0x1
	.uleb128 0x103
	.ascii "__ATOMIC_HLE_ACQUIRE 65536\0"
	.byte	0x1
	.uleb128 0x104
	.ascii "__ATOMIC_HLE_RELEASE 131072\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__GCC_ASM_FLAG_OUTPUTS__ 1\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "__k8 1\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "__k8__ 1\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "__code_model_medium__ 1\0"
	.byte	0x1
	.uleb128 0x109
	.ascii "__MMX__ 1\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__SSE__ 1\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__SSE2__ 1\0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__FXSR__ 1\0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "__SSE_MATH__ 1\0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "__SSE2_MATH__ 1\0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "__SEG_FS 1\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__SEG_GS 1\0"
	.byte	0x1
	.uleb128 0x111
	.ascii "__SEH__ 1\0"
	.byte	0x1
	.uleb128 0x112
	.ascii "__stdcall __attribute__((__stdcall__))\0"
	.byte	0x1
	.uleb128 0x113
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0x114
	.ascii "__thiscall __attribute__((__thiscall__))\0"
	.byte	0x1
	.uleb128 0x115
	.ascii "__cdecl __attribute__((__cdecl__))\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "__GXX_MERGED_TYPEINFO_NAMES 0\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__GXX_TYPEINFO_EQUALITY_INLINE 0\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "__CYGWIN__ 1\0"
	.byte	0x1
	.uleb128 0x119
	.ascii "__unix__ 1\0"
	.byte	0x1
	.uleb128 0x11a
	.ascii "__unix 1\0"
	.byte	0x1
	.uleb128 0x11b
	.ascii "__declspec(x) __attribute__((x))\0"
	.byte	0x1
	.uleb128 0x11c
	.ascii "__DECIMAL_BID_FORMAT__ 1\0"
	.byte	0x1
	.uleb128 0x1
	.ascii "unix 1\0"
	.file 18 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "TARGET_ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TESTVECTOR_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_VECTOR_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x28
	.ascii "_GLIBCXX_CSTDDEF 1\0"
	.byte	0x2
	.uleb128 0x2c
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x2d
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0x2e
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x2f
	.ascii "__need_NULL\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "__need_wint_t\0"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CXX_CONFIG_H 1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__GLIBCXX__ 20170704\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "_GLIBCXX_PURE __attribute__ ((__pure__))\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "_GLIBCXX_CONST __attribute__ ((__const__))\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_GLIBCXX_NORETURN __attribute__ ((__noreturn__))\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 0\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_GLIBCXX_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY(V)\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_GLIBCXX_USE_DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "_GLIBCXX_DEPRECATED __attribute__ ((__deprecated__))\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "_GLIBCXX_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "_GLIBCXX_USE_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "_GLIBCXX14_CONSTEXPR constexpr\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "_GLIBCXX_NOEXCEPT noexcept\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "_GLIBCXX_NOEXCEPT_IF(_COND) noexcept(_COND)\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "_GLIBCXX_USE_NOEXCEPT noexcept\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "_GLIBCXX_THROW(_EXC) \0"
	.byte	0x1
	.uleb128 0x82
	.ascii "_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_GLIBCXX_THROW_OR_ABORT(_EXC) (__builtin_abort())\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "_GLIBCXX_EXTERN_TEMPLATE 1\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "_GLIBCXX_USE_DUAL_ABI 1\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "_GLIBCXX_USE_CXX11_ABI 0\0"
	.byte	0x1
	.uleb128 0xea
	.ascii "_GLIBCXX_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xeb
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xec
	.ascii "_GLIBCXX_END_NAMESPACE_CXX11 \0"
	.byte	0x1
	.uleb128 0xed
	.ascii "_GLIBCXX_DEFAULT_ABI_TAG \0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "_GLIBCXX_INLINE_VERSION 0\0"
	.byte	0x1
	.uleb128 0x120
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0x121
	.ascii "_GLIBCXX_END_NAMESPACE_VERSION \0"
	.byte	0x1
	.uleb128 0x173
	.ascii "_GLIBCXX_STD_A std\0"
	.byte	0x1
	.uleb128 0x177
	.ascii "_GLIBCXX_STD_C std\0"
	.byte	0x1
	.uleb128 0x17b
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x17f
	.ascii "_GLIBCXX_END_NAMESPACE_ALGO \0"
	.byte	0x1
	.uleb128 0x183
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_CONTAINER \0"
	.byte	0x1
	.uleb128 0x187
	.ascii "_GLIBCXX_END_NAMESPACE_CONTAINER \0"
	.byte	0x2
	.uleb128 0x18c
	.ascii "_GLIBCXX_LONG_DOUBLE_COMPAT\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "_GLIBCXX_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x199
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x19a
	.ascii "_GLIBCXX_END_NAMESPACE_LDBL \0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "_GLIBCXX_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "_GLIBCXX_BEGIN_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_BEGIN_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "_GLIBCXX_END_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_END_NAMESPACE_LDBL\0"
	.byte	0x1
	.uleb128 0x1cd
	.ascii "__glibcxx_assert(_Condition) \0"
	.byte	0x1
	.uleb128 0x1e6
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) \0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) \0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "_GLIBCXX_END_EXTERN_C }\0"
	.byte	0x1
	.uleb128 0x1f0
	.ascii "_GLIBCXX_USE_ALLOCATOR_NEW 1\0"
	.file 19 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_OS_DEFINES 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_GLIBCXX_GTHREAD_USE_WEAK 0\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_default \0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY_hidden \0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "_GLIBCXX_PSEUDO_VISIBILITY(V) _GLIBCXX_PSEUDO_VISIBILITY_ ## V\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_GLIBCXX_HAVE_DOS_BASED_FILESYSTEM 1\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_GLIBCXX_THREAD_ATEXIT_WIN32 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_GLIBCXX_USE_WEAK_REF 0\0"
	.byte	0x4
	.file 20 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_CPU_DEFINES 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x20a
	.ascii "_GLIBCXX_WEAK_DEFINITION \0"
	.byte	0x1
	.uleb128 0x21f
	.ascii "_GLIBCXX_TXN_SAFE \0"
	.byte	0x1
	.uleb128 0x220
	.ascii "_GLIBCXX_TXN_SAFE_DYN \0"
	.byte	0x1
	.uleb128 0x22b
	.ascii "_GLIBCXX_FAST_MATH 0\0"
	.byte	0x1
	.uleb128 0x232
	.ascii "__N(msgid) (msgid)\0"
	.byte	0x2
	.uleb128 0x235
	.ascii "min\0"
	.byte	0x2
	.uleb128 0x236
	.ascii "max\0"
	.byte	0x1
	.uleb128 0x23c
	.ascii "_GLIBCXX_USE_C99_MATH _GLIBCXX11_USE_C99_MATH\0"
	.byte	0x1
	.uleb128 0x23f
	.ascii "_GLIBCXX_USE_C99_COMPLEX _GLIBCXX11_USE_C99_COMPLEX\0"
	.byte	0x1
	.uleb128 0x242
	.ascii "_GLIBCXX_USE_C99_STDIO _GLIBCXX11_USE_C99_STDIO\0"
	.byte	0x1
	.uleb128 0x245
	.ascii "_GLIBCXX_USE_C99_STDLIB _GLIBCXX11_USE_C99_STDLIB\0"
	.byte	0x1
	.uleb128 0x248
	.ascii "_GLIBCXX_USE_C99_WCHAR _GLIBCXX11_USE_C99_WCHAR\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "_GLIBCXX_HAVE_ACOSF 1\0"
	.byte	0x1
	.uleb128 0x264
	.ascii "_GLIBCXX_HAVE_ACOSL 1\0"
	.byte	0x1
	.uleb128 0x267
	.ascii "_GLIBCXX_HAVE_ASINF 1\0"
	.byte	0x1
	.uleb128 0x26a
	.ascii "_GLIBCXX_HAVE_ASINL 1\0"
	.byte	0x1
	.uleb128 0x270
	.ascii "_GLIBCXX_HAVE_ATAN2F 1\0"
	.byte	0x1
	.uleb128 0x273
	.ascii "_GLIBCXX_HAVE_ATAN2L 1\0"
	.byte	0x1
	.uleb128 0x276
	.ascii "_GLIBCXX_HAVE_ATANF 1\0"
	.byte	0x1
	.uleb128 0x279
	.ascii "_GLIBCXX_HAVE_ATANL 1\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "_GLIBCXX_HAVE_AT_QUICK_EXIT 1\0"
	.byte	0x1
	.uleb128 0x282
	.ascii "_GLIBCXX_HAVE_CEILF 1\0"
	.byte	0x1
	.uleb128 0x285
	.ascii "_GLIBCXX_HAVE_CEILL 1\0"
	.byte	0x1
	.uleb128 0x288
	.ascii "_GLIBCXX_HAVE_COMPLEX_H 1\0"
	.byte	0x1
	.uleb128 0x28b
	.ascii "_GLIBCXX_HAVE_COSF 1\0"
	.byte	0x1
	.uleb128 0x28e
	.ascii "_GLIBCXX_HAVE_COSHF 1\0"
	.byte	0x1
	.uleb128 0x291
	.ascii "_GLIBCXX_HAVE_COSHL 1\0"
	.byte	0x1
	.uleb128 0x294
	.ascii "_GLIBCXX_HAVE_COSL 1\0"
	.byte	0x1
	.uleb128 0x297
	.ascii "_GLIBCXX_HAVE_DIRENT_H 1\0"
	.byte	0x1
	.uleb128 0x29a
	.ascii "_GLIBCXX_HAVE_DLFCN_H 1\0"
	.byte	0x1
	.uleb128 0x29d
	.ascii "_GLIBCXX_HAVE_EBADMSG 1\0"
	.byte	0x1
	.uleb128 0x2a0
	.ascii "_GLIBCXX_HAVE_ECANCELED 1\0"
	.byte	0x1
	.uleb128 0x2a3
	.ascii "_GLIBCXX_HAVE_ECHILD 1\0"
	.byte	0x1
	.uleb128 0x2a6
	.ascii "_GLIBCXX_HAVE_EIDRM 1\0"
	.byte	0x1
	.uleb128 0x2a9
	.ascii "_GLIBCXX_HAVE_ENDIAN_H 1\0"
	.byte	0x1
	.uleb128 0x2ac
	.ascii "_GLIBCXX_HAVE_ENODATA 1\0"
	.byte	0x1
	.uleb128 0x2af
	.ascii "_GLIBCXX_HAVE_ENOLINK 1\0"
	.byte	0x1
	.uleb128 0x2b2
	.ascii "_GLIBCXX_HAVE_ENOSPC 1\0"
	.byte	0x1
	.uleb128 0x2b5
	.ascii "_GLIBCXX_HAVE_ENOSR 1\0"
	.byte	0x1
	.uleb128 0x2b8
	.ascii "_GLIBCXX_HAVE_ENOSTR 1\0"
	.byte	0x1
	.uleb128 0x2bb
	.ascii "_GLIBCXX_HAVE_ENOTRECOVERABLE 1\0"
	.byte	0x1
	.uleb128 0x2be
	.ascii "_GLIBCXX_HAVE_ENOTSUP 1\0"
	.byte	0x1
	.uleb128 0x2c1
	.ascii "_GLIBCXX_HAVE_EOVERFLOW 1\0"
	.byte	0x1
	.uleb128 0x2c4
	.ascii "_GLIBCXX_HAVE_EOWNERDEAD 1\0"
	.byte	0x1
	.uleb128 0x2c7
	.ascii "_GLIBCXX_HAVE_EPERM 1\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "_GLIBCXX_HAVE_EPROTO 1\0"
	.byte	0x1
	.uleb128 0x2cd
	.ascii "_GLIBCXX_HAVE_ETIME 1\0"
	.byte	0x1
	.uleb128 0x2d0
	.ascii "_GLIBCXX_HAVE_ETIMEDOUT 1\0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "_GLIBCXX_HAVE_ETXTBSY 1\0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "_GLIBCXX_HAVE_EWOULDBLOCK 1\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "_GLIBCXX_HAVE_EXPF 1\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "_GLIBCXX_HAVE_EXPL 1\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "_GLIBCXX_HAVE_FABSF 1\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "_GLIBCXX_HAVE_FABSL 1\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "_GLIBCXX_HAVE_FCNTL_H 1\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "_GLIBCXX_HAVE_FENV_H 1\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "_GLIBCXX_HAVE_FINITE 1\0"
	.byte	0x1
	.uleb128 0x2f1
	.ascii "_GLIBCXX_HAVE_FINITEF 1\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "_GLIBCXX_HAVE_FINITEL 1\0"
	.byte	0x1
	.uleb128 0x2f7
	.ascii "_GLIBCXX_HAVE_FLOAT_H 1\0"
	.byte	0x1
	.uleb128 0x2fa
	.ascii "_GLIBCXX_HAVE_FLOORF 1\0"
	.byte	0x1
	.uleb128 0x2fd
	.ascii "_GLIBCXX_HAVE_FLOORL 1\0"
	.byte	0x1
	.uleb128 0x300
	.ascii "_GLIBCXX_HAVE_FMODF 1\0"
	.byte	0x1
	.uleb128 0x303
	.ascii "_GLIBCXX_HAVE_FMODL 1\0"
	.byte	0x1
	.uleb128 0x30c
	.ascii "_GLIBCXX_HAVE_FREXPF 1\0"
	.byte	0x1
	.uleb128 0x30f
	.ascii "_GLIBCXX_HAVE_FREXPL 1\0"
	.byte	0x1
	.uleb128 0x312
	.ascii "_GLIBCXX_HAVE_GETIPINFO 1\0"
	.byte	0x1
	.uleb128 0x315
	.ascii "_GLIBCXX_HAVE_GETS 1\0"
	.byte	0x1
	.uleb128 0x318
	.ascii "_GLIBCXX_HAVE_HYPOT 1\0"
	.byte	0x1
	.uleb128 0x31b
	.ascii "_GLIBCXX_HAVE_HYPOTF 1\0"
	.byte	0x1
	.uleb128 0x31e
	.ascii "_GLIBCXX_HAVE_HYPOTL 1\0"
	.byte	0x1
	.uleb128 0x321
	.ascii "_GLIBCXX_HAVE_ICONV 1\0"
	.byte	0x1
	.uleb128 0x324
	.ascii "_GLIBCXX_HAVE_IEEEFP_H 1\0"
	.byte	0x1
	.uleb128 0x327
	.ascii "_GLIBCXX_HAVE_INT64_T 1\0"
	.byte	0x1
	.uleb128 0x32a
	.ascii "_GLIBCXX_HAVE_INT64_T_LONG 1\0"
	.byte	0x1
	.uleb128 0x330
	.ascii "_GLIBCXX_HAVE_INTTYPES_H 1\0"
	.byte	0x1
	.uleb128 0x336
	.ascii "_GLIBCXX_HAVE_ISINFF 1\0"
	.byte	0x1
	.uleb128 0x339
	.ascii "_GLIBCXX_HAVE_ISINFL 1\0"
	.byte	0x1
	.uleb128 0x33f
	.ascii "_GLIBCXX_HAVE_ISNANF 1\0"
	.byte	0x1
	.uleb128 0x342
	.ascii "_GLIBCXX_HAVE_ISNANL 1\0"
	.byte	0x1
	.uleb128 0x345
	.ascii "_GLIBCXX_HAVE_ISWBLANK 1\0"
	.byte	0x1
	.uleb128 0x348
	.ascii "_GLIBCXX_HAVE_LC_MESSAGES 1\0"
	.byte	0x1
	.uleb128 0x34b
	.ascii "_GLIBCXX_HAVE_LDEXPF 1\0"
	.byte	0x1
	.uleb128 0x34e
	.ascii "_GLIBCXX_HAVE_LDEXPL 1\0"
	.byte	0x1
	.uleb128 0x354
	.ascii "_GLIBCXX_HAVE_LIMIT_AS 1\0"
	.byte	0x1
	.uleb128 0x357
	.ascii "_GLIBCXX_HAVE_LIMIT_DATA 1\0"
	.byte	0x1
	.uleb128 0x35a
	.ascii "_GLIBCXX_HAVE_LIMIT_FSIZE 1\0"
	.byte	0x1
	.uleb128 0x35d
	.ascii "_GLIBCXX_HAVE_LIMIT_RSS 0\0"
	.byte	0x1
	.uleb128 0x360
	.ascii "_GLIBCXX_HAVE_LIMIT_VMEM 0\0"
	.byte	0x1
	.uleb128 0x366
	.ascii "_GLIBCXX_HAVE_LOCALE_H 1\0"
	.byte	0x1
	.uleb128 0x369
	.ascii "_GLIBCXX_HAVE_LOG10F 1\0"
	.byte	0x1
	.uleb128 0x36c
	.ascii "_GLIBCXX_HAVE_LOG10L 1\0"
	.byte	0x1
	.uleb128 0x36f
	.ascii "_GLIBCXX_HAVE_LOGF 1\0"
	.byte	0x1
	.uleb128 0x372
	.ascii "_GLIBCXX_HAVE_LOGL 1\0"
	.byte	0x1
	.uleb128 0x375
	.ascii "_GLIBCXX_HAVE_MACHINE_ENDIAN_H 1\0"
	.byte	0x1
	.uleb128 0x378
	.ascii "_GLIBCXX_HAVE_MACHINE_PARAM_H 1\0"
	.byte	0x1
	.uleb128 0x37b
	.ascii "_GLIBCXX_HAVE_MBSTATE_T 1\0"
	.byte	0x1
	.uleb128 0x37e
	.ascii "_GLIBCXX_HAVE_MEMORY_H 1\0"
	.byte	0x1
	.uleb128 0x381
	.ascii "_GLIBCXX_HAVE_MODF 1\0"
	.byte	0x1
	.uleb128 0x384
	.ascii "_GLIBCXX_HAVE_MODFF 1\0"
	.byte	0x1
	.uleb128 0x387
	.ascii "_GLIBCXX_HAVE_MODFL 1\0"
	.byte	0x1
	.uleb128 0x393
	.ascii "_GLIBCXX_HAVE_POLL 1\0"
	.byte	0x1
	.uleb128 0x396
	.ascii "_GLIBCXX_HAVE_POWF 1\0"
	.byte	0x1
	.uleb128 0x399
	.ascii "_GLIBCXX_HAVE_POWL 1\0"
	.byte	0x1
	.uleb128 0x39f
	.ascii "_GLIBCXX_HAVE_QUICK_EXIT 1\0"
	.byte	0x1
	.uleb128 0x3a2
	.ascii "_GLIBCXX_HAVE_SETENV 1\0"
	.byte	0x1
	.uleb128 0x3a5
	.ascii "_GLIBCXX_HAVE_SINCOS 1\0"
	.byte	0x1
	.uleb128 0x3a8
	.ascii "_GLIBCXX_HAVE_SINCOSF 1\0"
	.byte	0x1
	.uleb128 0x3ab
	.ascii "_GLIBCXX_HAVE_SINCOSL 1\0"
	.byte	0x1
	.uleb128 0x3ae
	.ascii "_GLIBCXX_HAVE_SINF 1\0"
	.byte	0x1
	.uleb128 0x3b1
	.ascii "_GLIBCXX_HAVE_SINHF 1\0"
	.byte	0x1
	.uleb128 0x3b4
	.ascii "_GLIBCXX_HAVE_SINHL 1\0"
	.byte	0x1
	.uleb128 0x3b7
	.ascii "_GLIBCXX_HAVE_SINL 1\0"
	.byte	0x1
	.uleb128 0x3bd
	.ascii "_GLIBCXX_HAVE_SQRTF 1\0"
	.byte	0x1
	.uleb128 0x3c0
	.ascii "_GLIBCXX_HAVE_SQRTL 1\0"
	.byte	0x1
	.uleb128 0x3c3
	.ascii "_GLIBCXX_HAVE_STDALIGN_H 1\0"
	.byte	0x1
	.uleb128 0x3c6
	.ascii "_GLIBCXX_HAVE_STDBOOL_H 1\0"
	.byte	0x1
	.uleb128 0x3c9
	.ascii "_GLIBCXX_HAVE_STDINT_H 1\0"
	.byte	0x1
	.uleb128 0x3cc
	.ascii "_GLIBCXX_HAVE_STDLIB_H 1\0"
	.byte	0x1
	.uleb128 0x3d2
	.ascii "_GLIBCXX_HAVE_STRERROR_R 1\0"
	.byte	0x1
	.uleb128 0x3d5
	.ascii "_GLIBCXX_HAVE_STRINGS_H 1\0"
	.byte	0x1
	.uleb128 0x3d8
	.ascii "_GLIBCXX_HAVE_STRING_H 1\0"
	.byte	0x1
	.uleb128 0x3db
	.ascii "_GLIBCXX_HAVE_STRTOF 1\0"
	.byte	0x1
	.uleb128 0x3de
	.ascii "_GLIBCXX_HAVE_STRTOLD 1\0"
	.byte	0x1
	.uleb128 0x3e1
	.ascii "_GLIBCXX_HAVE_STRUCT_DIRENT_D_TYPE 1\0"
	.byte	0x1
	.uleb128 0x3ee
	.ascii "_GLIBCXX_HAVE_SYS_IOCTL_H 1\0"
	.byte	0x1
	.uleb128 0x3f1
	.ascii "_GLIBCXX_HAVE_SYS_IPC_H 1\0"
	.byte	0x1
	.uleb128 0x3fa
	.ascii "_GLIBCXX_HAVE_SYS_PARAM_H 1\0"
	.byte	0x1
	.uleb128 0x3fd
	.ascii "_GLIBCXX_HAVE_SYS_RESOURCE_H 1\0"
	.byte	0x1
	.uleb128 0x403
	.ascii "_GLIBCXX_HAVE_SYS_SEM_H 1\0"
	.byte	0x1
	.uleb128 0x406
	.ascii "_GLIBCXX_HAVE_SYS_STATVFS_H 1\0"
	.byte	0x1
	.uleb128 0x409
	.ascii "_GLIBCXX_HAVE_SYS_STAT_H 1\0"
	.byte	0x1
	.uleb128 0x40c
	.ascii "_GLIBCXX_HAVE_SYS_SYSINFO_H 1\0"
	.byte	0x1
	.uleb128 0x40f
	.ascii "_GLIBCXX_HAVE_SYS_TIME_H 1\0"
	.byte	0x1
	.uleb128 0x412
	.ascii "_GLIBCXX_HAVE_SYS_TYPES_H 1\0"
	.byte	0x1
	.uleb128 0x415
	.ascii "_GLIBCXX_HAVE_SYS_UIO_H 1\0"
	.byte	0x1
	.uleb128 0x41b
	.ascii "_GLIBCXX_HAVE_S_ISREG 1\0"
	.byte	0x1
	.uleb128 0x41e
	.ascii "_GLIBCXX_HAVE_TANF 1\0"
	.byte	0x1
	.uleb128 0x421
	.ascii "_GLIBCXX_HAVE_TANHF 1\0"
	.byte	0x1
	.uleb128 0x424
	.ascii "_GLIBCXX_HAVE_TANHL 1\0"
	.byte	0x1
	.uleb128 0x427
	.ascii "_GLIBCXX_HAVE_TANL 1\0"
	.byte	0x1
	.uleb128 0x42a
	.ascii "_GLIBCXX_HAVE_TGMATH_H 1\0"
	.byte	0x1
	.uleb128 0x42d
	.ascii "_GLIBCXX_HAVE_TLS 1\0"
	.byte	0x1
	.uleb128 0x433
	.ascii "_GLIBCXX_HAVE_UNISTD_H 1\0"
	.byte	0x1
	.uleb128 0x439
	.ascii "_GLIBCXX_HAVE_UTIME_H 1\0"
	.byte	0x1
	.uleb128 0x43c
	.ascii "_GLIBCXX_HAVE_VFWSCANF 1\0"
	.byte	0x1
	.uleb128 0x43f
	.ascii "_GLIBCXX_HAVE_VSWSCANF 1\0"
	.byte	0x1
	.uleb128 0x442
	.ascii "_GLIBCXX_HAVE_VWSCANF 1\0"
	.byte	0x1
	.uleb128 0x445
	.ascii "_GLIBCXX_HAVE_WCHAR_H 1\0"
	.byte	0x1
	.uleb128 0x448
	.ascii "_GLIBCXX_HAVE_WCSTOF 1\0"
	.byte	0x1
	.uleb128 0x44b
	.ascii "_GLIBCXX_HAVE_WCTYPE_H 1\0"
	.byte	0x1
	.uleb128 0x451
	.ascii "_GLIBCXX_HAVE_WRITEV 1\0"
	.byte	0x1
	.uleb128 0x511
	.ascii "_GLIBCXX_ICONV_CONST \0"
	.byte	0x1
	.uleb128 0x515
	.ascii "LT_OBJDIR \".libs/\"\0"
	.byte	0x1
	.uleb128 0x51b
	.ascii "_GLIBCXX_PACKAGE_BUGREPORT \"\"\0"
	.byte	0x1
	.uleb128 0x51e
	.ascii "_GLIBCXX_PACKAGE_NAME \"package-unused\"\0"
	.byte	0x1
	.uleb128 0x521
	.ascii "_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\"\0"
	.byte	0x1
	.uleb128 0x524
	.ascii "_GLIBCXX_PACKAGE_TARNAME \"libstdc++\"\0"
	.byte	0x1
	.uleb128 0x527
	.ascii "_GLIBCXX_PACKAGE_URL \"\"\0"
	.byte	0x1
	.uleb128 0x52a
	.ascii "_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\"\0"
	.byte	0x1
	.uleb128 0x53c
	.ascii "STDC_HEADERS 1\0"
	.byte	0x1
	.uleb128 0x544
	.ascii "_GLIBCXX11_USE_C99_COMPLEX 1\0"
	.byte	0x1
	.uleb128 0x548
	.ascii "_GLIBCXX11_USE_C99_MATH 1\0"
	.byte	0x1
	.uleb128 0x54c
	.ascii "_GLIBCXX11_USE_C99_STDIO 1\0"
	.byte	0x1
	.uleb128 0x550
	.ascii "_GLIBCXX11_USE_C99_STDLIB 1\0"
	.byte	0x1
	.uleb128 0x554
	.ascii "_GLIBCXX11_USE_C99_WCHAR 1\0"
	.byte	0x1
	.uleb128 0x559
	.ascii "_GLIBCXX98_USE_C99_COMPLEX 1\0"
	.byte	0x1
	.uleb128 0x55d
	.ascii "_GLIBCXX98_USE_C99_MATH 1\0"
	.byte	0x1
	.uleb128 0x561
	.ascii "_GLIBCXX98_USE_C99_STDIO 1\0"
	.byte	0x1
	.uleb128 0x565
	.ascii "_GLIBCXX98_USE_C99_STDLIB 1\0"
	.byte	0x1
	.uleb128 0x569
	.ascii "_GLIBCXX98_USE_C99_WCHAR 1\0"
	.byte	0x1
	.uleb128 0x56c
	.ascii "_GLIBCXX_ATOMIC_BUILTINS 1\0"
	.byte	0x1
	.uleb128 0x573
	.ascii "_GLIBCXX_FULLY_DYNAMIC_STRING 0\0"
	.byte	0x1
	.uleb128 0x576
	.ascii "_GLIBCXX_HAS_GTHREADS 1\0"
	.byte	0x1
	.uleb128 0x579
	.ascii "_GLIBCXX_HOSTED 1\0"
	.byte	0x1
	.uleb128 0x57e
	.ascii "_GLIBCXX_MANGLE_SIZE_T m\0"
	.byte	0x1
	.uleb128 0x584
	.ascii "_GLIBCXX_RES_LIMITS 1\0"
	.byte	0x1
	.uleb128 0x58a
	.ascii "_GLIBCXX_STDIO_EOF -1\0"
	.byte	0x1
	.uleb128 0x58d
	.ascii "_GLIBCXX_STDIO_SEEK_CUR 1\0"
	.byte	0x1
	.uleb128 0x590
	.ascii "_GLIBCXX_STDIO_SEEK_END 2\0"
	.byte	0x1
	.uleb128 0x5a7
	.ascii "_GLIBCXX_USE_C99 1\0"
	.byte	0x1
	.uleb128 0x5ac
	.ascii "_GLIBCXX_USE_C99_COMPLEX_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b0
	.ascii "_GLIBCXX_USE_C99_CTYPE_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b4
	.ascii "_GLIBCXX_USE_C99_FENV_TR1 1\0"
	.byte	0x1
	.uleb128 0x5b8
	.ascii "_GLIBCXX_USE_C99_INTTYPES_TR1 1\0"
	.byte	0x1
	.uleb128 0x5bc
	.ascii "_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1\0"
	.byte	0x1
	.uleb128 0x5c0
	.ascii "_GLIBCXX_USE_C99_MATH_TR1 1\0"
	.byte	0x1
	.uleb128 0x5c4
	.ascii "_GLIBCXX_USE_C99_STDINT_TR1 1\0"
	.byte	0x1
	.uleb128 0x5cb
	.ascii "_GLIBCXX_USE_CLOCK_MONOTONIC 1\0"
	.byte	0x1
	.uleb128 0x5ce
	.ascii "_GLIBCXX_USE_CLOCK_REALTIME 1\0"
	.byte	0x1
	.uleb128 0x5d2
	.ascii "_GLIBCXX_USE_DECIMAL_FLOAT 1\0"
	.byte	0x1
	.uleb128 0x5d5
	.ascii "_GLIBCXX_USE_FCHMOD 1\0"
	.byte	0x1
	.uleb128 0x5d8
	.ascii "_GLIBCXX_USE_FCHMODAT 1\0"
	.byte	0x1
	.uleb128 0x5db
	.ascii "_GLIBCXX_USE_FLOAT128 1\0"
	.byte	0x1
	.uleb128 0x5de
	.ascii "_GLIBCXX_USE_GETTIMEOFDAY 1\0"
	.byte	0x1
	.uleb128 0x5e1
	.ascii "_GLIBCXX_USE_GET_NPROCS 1\0"
	.byte	0x1
	.uleb128 0x5e4
	.ascii "_GLIBCXX_USE_INT128 1\0"
	.byte	0x1
	.uleb128 0x5ea
	.ascii "_GLIBCXX_USE_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x5ed
	.ascii "_GLIBCXX_USE_NANOSLEEP 1\0"
	.byte	0x1
	.uleb128 0x5f6
	.ascii "_GLIBCXX_USE_PTHREAD_RWLOCK_T 1\0"
	.byte	0x1
	.uleb128 0x5fa
	.ascii "_GLIBCXX_USE_RANDOM_TR1 1\0"
	.byte	0x1
	.uleb128 0x5fd
	.ascii "_GLIBCXX_USE_REALPATH 1\0"
	.byte	0x1
	.uleb128 0x600
	.ascii "_GLIBCXX_USE_SCHED_YIELD 1\0"
	.byte	0x1
	.uleb128 0x603
	.ascii "_GLIBCXX_USE_SC_NPROCESSORS_ONLN 1\0"
	.byte	0x1
	.uleb128 0x60c
	.ascii "_GLIBCXX_USE_ST_MTIM 1\0"
	.byte	0x1
	.uleb128 0x612
	.ascii "_GLIBCXX_USE_TMPNAM 1\0"
	.byte	0x1
	.uleb128 0x616
	.ascii "_GLIBCXX_USE_UTIMENSAT 1\0"
	.byte	0x1
	.uleb128 0x619
	.ascii "_GLIBCXX_USE_WCHAR_T 1\0"
	.byte	0x1
	.uleb128 0x61c
	.ascii "_GLIBCXX_VERBOSE 1\0"
	.byte	0x1
	.uleb128 0x61f
	.ascii "_GLIBCXX_X86_RDRAND 1\0"
	.byte	0x1
	.uleb128 0x622
	.ascii "_GTHREAD_USE_MUTEX_TIMEDLOCK 0\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x27
	.ascii "_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_STDDEF_H_ \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "_ANSI_STDDEF_H \0"
	.byte	0x1
	.uleb128 0x89
	.ascii "_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "_T_PTRDIFF_ \0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "_T_PTRDIFF \0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "_BSD_PTRDIFF_T_ \0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "___int_ptrdiff_t_h \0"
	.byte	0x1
	.uleb128 0x90
	.ascii "_GCC_PTRDIFF_T \0"
	.byte	0x1
	.uleb128 0x91
	.ascii "_PTRDIFF_T_DECLARED \0"
	.byte	0x2
	.uleb128 0xa1
	.ascii "__need_ptrdiff_t\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__size_t__ \0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__SIZE_T__ \0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_SIZE_T \0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "_SYS_SIZE_T_H \0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "_T_SIZE_ \0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_T_SIZE \0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__SIZE_T \0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_BSD_SIZE_T_ \0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "_SIZE_T_DEFINED \0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "_BSD_SIZE_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "_SIZE_T_DECLARED \0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "___int_size_t_h \0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "_GCC_SIZE_T \0"
	.byte	0x1
	.uleb128 0xca
	.ascii "_SIZET_ \0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__size_t \0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x1
	.uleb128 0x10b
	.ascii "__wchar_t__ \0"
	.byte	0x1
	.uleb128 0x10c
	.ascii "__WCHAR_T__ \0"
	.byte	0x1
	.uleb128 0x10d
	.ascii "_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x10e
	.ascii "_T_WCHAR_ \0"
	.byte	0x1
	.uleb128 0x10f
	.ascii "_T_WCHAR \0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__WCHAR_T \0"
	.byte	0x1
	.uleb128 0x111
	.ascii "_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x112
	.ascii "_BSD_WCHAR_T_ \0"
	.byte	0x1
	.uleb128 0x113
	.ascii "_WCHAR_T_DEFINED_ \0"
	.byte	0x1
	.uleb128 0x114
	.ascii "_WCHAR_T_DEFINED \0"
	.byte	0x1
	.uleb128 0x115
	.ascii "_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x116
	.ascii "___int_wchar_t_h \0"
	.byte	0x1
	.uleb128 0x117
	.ascii "__INT_WCHAR_T_H \0"
	.byte	0x1
	.uleb128 0x118
	.ascii "_GCC_WCHAR_T \0"
	.byte	0x1
	.uleb128 0x119
	.ascii "_WCHAR_T_DECLARED \0"
	.byte	0x2
	.uleb128 0x126
	.ascii "_BSD_WCHAR_T_\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x2
	.uleb128 0x191
	.ascii "NULL\0"
	.byte	0x1
	.uleb128 0x193
	.ascii "NULL __null\0"
	.byte	0x2
	.uleb128 0x19c
	.ascii "__need_NULL\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "_GCC_MAX_ALIGN_T \0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "_GXX_NULLPTR_T \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 21 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x15
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x1d
	.ascii "_GCC_STDINT_H \0"
	.byte	0x2
	.uleb128 0x64
	.ascii "INT8_MAX\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "INT8_MAX __INT8_MAX__\0"
	.byte	0x2
	.uleb128 0x66
	.ascii "INT8_MIN\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "INT8_MIN (-INT8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x6a
	.ascii "UINT8_MAX\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "UINT8_MAX __UINT8_MAX__\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "INT16_MAX\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "INT16_MAX __INT16_MAX__\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "INT16_MIN\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "INT16_MIN (-INT16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "UINT16_MAX\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "UINT16_MAX __UINT16_MAX__\0"
	.byte	0x2
	.uleb128 0x78
	.ascii "INT32_MAX\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "INT32_MAX __INT32_MAX__\0"
	.byte	0x2
	.uleb128 0x7a
	.ascii "INT32_MIN\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "INT32_MIN (-INT32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x7e
	.ascii "UINT32_MAX\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "UINT32_MAX __UINT32_MAX__\0"
	.byte	0x2
	.uleb128 0x82
	.ascii "INT64_MAX\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "INT64_MAX __INT64_MAX__\0"
	.byte	0x2
	.uleb128 0x84
	.ascii "INT64_MIN\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "INT64_MIN (-INT64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x88
	.ascii "UINT64_MAX\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "UINT64_MAX __UINT64_MAX__\0"
	.byte	0x2
	.uleb128 0x8c
	.ascii "INT_LEAST8_MAX\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "INT_LEAST8_MAX __INT_LEAST8_MAX__\0"
	.byte	0x2
	.uleb128 0x8e
	.ascii "INT_LEAST8_MIN\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x90
	.ascii "UINT_LEAST8_MAX\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "UINT_LEAST8_MAX __UINT_LEAST8_MAX__\0"
	.byte	0x2
	.uleb128 0x92
	.ascii "INT_LEAST16_MAX\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "INT_LEAST16_MAX __INT_LEAST16_MAX__\0"
	.byte	0x2
	.uleb128 0x94
	.ascii "INT_LEAST16_MIN\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x96
	.ascii "UINT_LEAST16_MAX\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "UINT_LEAST16_MAX __UINT_LEAST16_MAX__\0"
	.byte	0x2
	.uleb128 0x98
	.ascii "INT_LEAST32_MAX\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "INT_LEAST32_MAX __INT_LEAST32_MAX__\0"
	.byte	0x2
	.uleb128 0x9a
	.ascii "INT_LEAST32_MIN\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0x9c
	.ascii "UINT_LEAST32_MAX\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "UINT_LEAST32_MAX __UINT_LEAST32_MAX__\0"
	.byte	0x2
	.uleb128 0x9e
	.ascii "INT_LEAST64_MAX\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "INT_LEAST64_MAX __INT_LEAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xa0
	.ascii "INT_LEAST64_MIN\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xa2
	.ascii "UINT_LEAST64_MAX\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "UINT_LEAST64_MAX __UINT_LEAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xa5
	.ascii "INT_FAST8_MAX\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "INT_FAST8_MAX __INT_FAST8_MAX__\0"
	.byte	0x2
	.uleb128 0xa7
	.ascii "INT_FAST8_MIN\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "INT_FAST8_MIN (-INT_FAST8_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xa9
	.ascii "UINT_FAST8_MAX\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "UINT_FAST8_MAX __UINT_FAST8_MAX__\0"
	.byte	0x2
	.uleb128 0xab
	.ascii "INT_FAST16_MAX\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "INT_FAST16_MAX __INT_FAST16_MAX__\0"
	.byte	0x2
	.uleb128 0xad
	.ascii "INT_FAST16_MIN\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "INT_FAST16_MIN (-INT_FAST16_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xaf
	.ascii "UINT_FAST16_MAX\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "UINT_FAST16_MAX __UINT_FAST16_MAX__\0"
	.byte	0x2
	.uleb128 0xb1
	.ascii "INT_FAST32_MAX\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "INT_FAST32_MAX __INT_FAST32_MAX__\0"
	.byte	0x2
	.uleb128 0xb3
	.ascii "INT_FAST32_MIN\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "INT_FAST32_MIN (-INT_FAST32_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "UINT_FAST32_MAX\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "UINT_FAST32_MAX __UINT_FAST32_MAX__\0"
	.byte	0x2
	.uleb128 0xb7
	.ascii "INT_FAST64_MAX\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "INT_FAST64_MAX __INT_FAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xb9
	.ascii "INT_FAST64_MIN\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "INT_FAST64_MIN (-INT_FAST64_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xbb
	.ascii "UINT_FAST64_MAX\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "UINT_FAST64_MAX __UINT_FAST64_MAX__\0"
	.byte	0x2
	.uleb128 0xbf
	.ascii "INTPTR_MAX\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "INTPTR_MAX __INTPTR_MAX__\0"
	.byte	0x2
	.uleb128 0xc1
	.ascii "INTPTR_MIN\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "INTPTR_MIN (-INTPTR_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xc5
	.ascii "UINTPTR_MAX\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "UINTPTR_MAX __UINTPTR_MAX__\0"
	.byte	0x2
	.uleb128 0xc9
	.ascii "INTMAX_MAX\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "INTMAX_MAX __INTMAX_MAX__\0"
	.byte	0x2
	.uleb128 0xcb
	.ascii "INTMAX_MIN\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "INTMAX_MIN (-INTMAX_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xcd
	.ascii "UINTMAX_MAX\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "UINTMAX_MAX __UINTMAX_MAX__\0"
	.byte	0x2
	.uleb128 0xd2
	.ascii "PTRDIFF_MAX\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "PTRDIFF_MAX __PTRDIFF_MAX__\0"
	.byte	0x2
	.uleb128 0xd4
	.ascii "PTRDIFF_MIN\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "PTRDIFF_MIN (-PTRDIFF_MAX - 1)\0"
	.byte	0x2
	.uleb128 0xd7
	.ascii "SIG_ATOMIC_MAX\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__\0"
	.byte	0x2
	.uleb128 0xd9
	.ascii "SIG_ATOMIC_MIN\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__\0"
	.byte	0x2
	.uleb128 0xdc
	.ascii "SIZE_MAX\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "SIZE_MAX __SIZE_MAX__\0"
	.byte	0x2
	.uleb128 0xdf
	.ascii "WCHAR_MAX\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "WCHAR_MAX __WCHAR_MAX__\0"
	.byte	0x2
	.uleb128 0xe1
	.ascii "WCHAR_MIN\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "WCHAR_MIN __WCHAR_MIN__\0"
	.byte	0x2
	.uleb128 0xe4
	.ascii "WINT_MAX\0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "WINT_MAX __WINT_MAX__\0"
	.byte	0x2
	.uleb128 0xe6
	.ascii "WINT_MIN\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "WINT_MIN __WINT_MIN__\0"
	.byte	0x2
	.uleb128 0xef
	.ascii "INT8_C\0"
	.byte	0x1
	.uleb128 0xf0
	.ascii "INT8_C(c) __INT8_C(c)\0"
	.byte	0x2
	.uleb128 0xf1
	.ascii "INT16_C\0"
	.byte	0x1
	.uleb128 0xf2
	.ascii "INT16_C(c) __INT16_C(c)\0"
	.byte	0x2
	.uleb128 0xf3
	.ascii "INT32_C\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "INT32_C(c) __INT32_C(c)\0"
	.byte	0x2
	.uleb128 0xf5
	.ascii "INT64_C\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "INT64_C(c) __INT64_C(c)\0"
	.byte	0x2
	.uleb128 0xf7
	.ascii "UINT8_C\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "UINT8_C(c) __UINT8_C(c)\0"
	.byte	0x2
	.uleb128 0xf9
	.ascii "UINT16_C\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "UINT16_C(c) __UINT16_C(c)\0"
	.byte	0x2
	.uleb128 0xfb
	.ascii "UINT32_C\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "UINT32_C(c) __UINT32_C(c)\0"
	.byte	0x2
	.uleb128 0xfd
	.ascii "UINT64_C\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "UINT64_C(c) __UINT64_C(c)\0"
	.byte	0x2
	.uleb128 0xff
	.ascii "INTMAX_C\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "INTMAX_C(c) __INTMAX_C(c)\0"
	.byte	0x2
	.uleb128 0x101
	.ascii "UINTMAX_C\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "UINTMAX_C(c) __UINTMAX_C(c)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "_GCC_WRAP_STDINT_H \0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0xb
	.ascii "AS_MACRO __attribute__((always_inline)) inline\0"
	.byte	0x1
	.uleb128 0xc
	.ascii "arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "NULL_CHAR '\\0'\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "INFO \"[INFO] \"\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WARNING \"[WARNING] \"\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FATAL \"[FATAL] \"\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__stringify_1(x) #x\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__stringify(x) __stringify_1(x)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "CALL_CONST_EQUIV(var,method) const_cast<std::remove_const<decltype(((var)->method))>>(reinterpret_cast<const decltype(var) *>(var)->method)\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "HEX32(a,b) 0x ##a ##b\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "HEX64(a,b,c,d) 0x ##a ##b ##c ##d\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_SECTORREADER_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_OUTPUT_H_ \0"
	.file 23 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x8
	.ascii "INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x1f
	.ascii "CMP_HELPER(vecN,op) (vecN.getCapacity() op Vector<int>::MINIMAL_CAPACITY)\0"
	.byte	0x2
	.uleb128 0x22
	.ascii "CMP_HELPER\0"
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF5:
	.ascii "MemoryManager\0"
.LASF4:
	.ascii "getDataEnd\0"
.LASF9:
	.ascii "operator=\0"
.LASF2:
	.ascii "MemoryChunk\0"
.LASF10:
	.ascii "operator[]\0"
.LASF1:
	.ascii "initializer_list\0"
.LASF3:
	.ascii "getDataPtr\0"
.LASF11:
	.ascii "this\0"
.LASF6:
	.ascii "allocate\0"
.LASF8:
	.ascii "Vector\0"
.LASF7:
	.ascii "capacity\0"
.LASF0:
	.ascii "operator<<\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.mman, "dr"
	.globl	.refptr.mman
	.linkonce	discard
.refptr.mman:
	.quad	mman
