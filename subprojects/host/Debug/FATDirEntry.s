	.file	"FATDirEntry.cpp"
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
_ZStL19piecewise_construct:
	.space 1
	.text
	.align 2
	.globl	_ZN11FATDirEntry6chksumEPc
	.def	_ZN11FATDirEntry6chksumEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry6chksumEPc
_ZN11FATDirEntry6chksumEPc:
.LFB124:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntry.cpp"
	.loc 1 14 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 15 0
	movb	$0, -1(%rbp)
.LBB2:
	.loc 1 16 0
	movq	$11, -16(%rbp)
.L5:
	.loc 1 16 0 is_stmt 0 discriminator 2
	cmpq	$0, -16(%rbp)
	je	.L2
	.loc 1 17 0 is_stmt 1
	movzbl	-1(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 17 0 is_stmt 0 discriminator 1
	movl	$-128, %edx
	jmp	.L4
.L3:
	.loc 1 17 0 discriminator 2
	movl	$0, %edx
.L4:
	.loc 1 17 0 discriminator 4
	movzbl	-1(%rbp), %eax
	sarl	%eax
	addl	%edx, %eax
	movb	%al, -1(%rbp)
	.loc 1 16 0 is_stmt 1 discriminator 4
	subq	$1, -16(%rbp)
	jmp	.L5
.L2:
.LBE2:
	.loc 1 18 0
	movzbl	-1(%rbp), %eax
	.loc 1 19 0
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE124:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.def	_ZNK11FATDirEntry19uni_isLongNameEntryEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry19uni_isLongNameEntryEv
_ZNK11FATDirEntry19uni_isLongNameEntryEv:
.LFB125:
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
	movq	16(%rbp), %rax
	movzbl	11(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cmpl	$15, %eax
	sete	%al
	.loc 1 23 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE125:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry10isVolumeIDEv
	.def	_ZNK11FATDirEntry10isVolumeIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry10isVolumeIDEv
_ZNK11FATDirEntry10isVolumeIDEv:
.LFB126:
	.loc 1 25 0
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
	.loc 1 26 0
	movq	16(%rbp), %rax
	movzbl	11(%rax), %eax
	movzbl	%al, %eax
	andl	$63, %eax
	cmpl	$8, %eax
	sete	%al
	.loc 1 27 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE126:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	.def	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_:
.LFB127:
	.loc 1 31 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	.loc 1 32 0
	movl	$0, %ebx
	movq	32(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKv
	movl	$1, %esi
	movq	40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %r8
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	testb	%al, %al
	je	.L12
	.loc 1 32 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKv
	movl	$1, %ebx
	movq	48(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %r8
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	testb	%al, %al
	je	.L12
	.loc 1 32 0 discriminator 3
	movl	$1, %eax
	jmp	.L13
.L12:
	.loc 1 32 0 discriminator 4
	movl	$0, %eax
.L13:
	.loc 1 32 0 discriminator 6
	testb	%bl, %bl
	testb	%sil, %sil
	.loc 1 33 0 is_stmt 1 discriminator 6
	addq	$64, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 24
	ret
	.cfi_endproc
.LFE127:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry17getFirstClusIndexEv
	.def	_ZNK11FATDirEntry17getFirstClusIndexEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry17getFirstClusIndexEv
_ZNK11FATDirEntry17getFirstClusIndexEv:
.LFB128:
	.loc 1 35 0
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
	.loc 1 36 0
	movq	16(%rbp), %rax
	movzwl	20(%rax), %eax
	movzwl	%ax, %eax
	sall	$16, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %eax
	orl	%edx, %eax
	.loc 1 37 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE128:
	.seh_endproc
	.section	.text$_ZN6StringD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6StringD1Ev
	.def	_ZN6StringD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6StringD1Ev
_ZN6StringD1Ev:
.LFB132:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/String.h"
	.loc 2 14 0
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
.LBB3:
	.loc 2 14 0
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIcED2Ev
.LBE3:
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE132:
	.seh_endproc
	.section	.text$_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_,"x"
	.linkonce discard
	.globl	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	.def	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_:
.LFB133:
	.file 3 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/move.h"
	.loc 3 101 0
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
	.loc 3 102 0
	movq	16(%rbp), %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE133:
	.seh_endproc
	.text
	.align 2
	.globl	_ZNK11FATDirEntry11getLongNameEv
	.def	_ZNK11FATDirEntry11getLongNameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry11getLongNameEv
_ZNK11FATDirEntry11getLongNameEv:
.LFB129:
	.loc 1 39 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	.seh_stackalloc	144
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 40 0
	leaq	-112(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6StringC1Em
	.loc 1 41 0
	movq	24(%rbp), %rax
	subq	$32, %rax
	movq	%rax, -16(%rbp)
.LBB4:
	.loc 1 42 0
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	testb	%al, %al
	je	.L23
.LBB5:
	.loc 1 44 0
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 1 45 0
	leaq	-80(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	leaq	-80(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	$-1, %r8
	movq	%rax, %rcx
	call	_ZN6VectorIcE6appendERKS0_m
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6StringD1Ev
	.loc 1 46 0
	subq	$32, -8(%rbp)
.L25:
	.loc 1 47 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
	testb	%al, %al
	je	.L23
	.loc 1 49 0
	leaq	-48(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	leaq	-48(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	$-1, %r8
	movq	%rax, %rcx
	call	_ZN6VectorIcE6appendERKS0_m
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6StringD1Ev
	.loc 1 50 0
	subq	$32, -8(%rbp)
	.loc 1 47 0
	jmp	.L25
.L23:
.LBE5:
.LBE4:
	.loc 1 53 0
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6StringC1EOS_
	.loc 1 40 0
	leaq	-112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6StringD1Ev
	.loc 1 53 0
	nop
	.loc 1 54 0
	movq	16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE129:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry12getShortNameEv
	.def	_ZNK11FATDirEntry12getShortNameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry12getShortNameEv
_ZNK11FATDirEntry12getShortNameEv:
.LFB134:
	.loc 1 56 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	.loc 1 57 0
	leaq	-48(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6StringC1Em
	.loc 1 58 0
	movq	24(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	movq	%rax, -8(%rbp)
	.loc 1 59 0
	movq	24(%rbp), %rax
	movl	$8, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	movq	%rax, -16(%rbp)
.L29:
	.loc 1 60 0 discriminator 2
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.L28
	.loc 1 61 0 discriminator 1
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIcE8pushBackEc
	.loc 1 60 0 discriminator 1
	addq	$1, -8(%rbp)
	jmp	.L29
.L28:
	.loc 1 62 0
	leaq	-48(%rbp), %rax
	movl	$46, %edx
	movq	%rax, %rcx
	call	_ZN6VectorIcE8pushBackEc
	.loc 1 63 0
	movq	24(%rbp), %rax
	addq	$8, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	addq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 1 64 0
	movq	24(%rbp), %rax
	addq	$8, %rax
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	addq	$8, %rax
	movq	%rax, -16(%rbp)
.L31:
	.loc 1 65 0 discriminator 2
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	ja	.L30
	.loc 1 66 0 discriminator 1
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIcE8pushBackEc
	.loc 1 65 0 discriminator 1
	addq	$1, -8(%rbp)
	jmp	.L31
.L30:
	.loc 1 67 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6StringC1EOS_
	.loc 1 57 0
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6StringD1Ev
	.loc 1 67 0
	nop
	.loc 1 68 0
	movq	16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE134:
	.seh_endproc
	.align 2
	.globl	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	.def	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_:
.LFB135:
	.loc 1 71 0
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
	movq	%r8, 32(%rbp)
	.loc 1 72 0
	movb	$0, -1(%rbp)
	.loc 1 73 0
	movq	$0, -16(%rbp)
.L42:
.LBB6:
	.loc 1 74 0 discriminator 1
	movq	-16(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L34
.LBB7:
	.loc 1 76 0
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L35
	.loc 1 76 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNK9VectorRefIcEixEm
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L35
	.loc 1 76 0 discriminator 3
	movl	$1, %eax
	jmp	.L36
.L35:
	.loc 1 76 0 discriminator 4
	movl	$0, %eax
.L36:
	.loc 1 76 0 discriminator 6
	testb	%al, %al
	je	.L37
	.loc 1 77 0 is_stmt 1
	movb	$1, -1(%rbp)
.L37:
	.loc 1 78 0
	cmpb	$0, -1(%rbp)
	je	.L38
	.loc 1 78 0 is_stmt 0 discriminator 1
	movl	$32, %eax
	jmp	.L39
.L38:
	.loc 1 78 0 discriminator 2
	movq	32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNK9VectorRefIcEixEm
	movzbl	(%rax), %eax
.L39:
	.loc 1 78 0 discriminator 4
	movb	%al, -17(%rbp)
	.loc 1 79 0 is_stmt 1 discriminator 4
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNK9VectorRefIcEixEm
	movzbl	(%rax), %eax
	cmpb	-17(%rbp), %al
	setne	%al
	testb	%al, %al
	je	.L40
	.loc 1 80 0
	movl	$0, %eax
	jmp	.L41
.L40:
.LBE7:
	.loc 1 74 0
	addq	$1, -16(%rbp)
	jmp	.L42
.L34:
.LBE6:
	.loc 1 83 0
	movzbl	-1(%rbp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L43
	.loc 1 83 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rax, %rcx
	call	_ZNK9VectorRefIcEixEm
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L43
	.loc 1 83 0 discriminator 3
	movl	$1, %eax
	jmp	.L44
.L43:
	.loc 1 83 0 discriminator 4
	movl	$0, %eax
.L44:
	.loc 1 83 0 discriminator 6
	testb	%al, %al
	je	.L45
	.loc 1 84 0 is_stmt 1
	movl	$0, %eax
	jmp	.L41
.L45:
	.loc 1 85 0
	movl	$1, %eax
.L41:
	.loc 1 86 0
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE135:
	.seh_endproc
	.align 2
	.globl	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	.def	_ZN11FATDirEntry17findFirstNonSpaceEPKcm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
_ZN11FATDirEntry17findFirstNonSpaceEPKcm:
.LFB136:
	.loc 1 88 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB8:
	.loc 1 89 0
	movq	$0, -8(%rbp)
.L50:
	.loc 1 89 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L47
	.loc 1 90 0 is_stmt 1
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L48
	.loc 1 91 0
	movq	-8(%rbp), %rax
	jmp	.L49
.L48:
	.loc 1 89 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L50
.L47:
.LBE8:
	.loc 1 92 0
	movq	24(%rbp), %rax
.L49:
	.loc 1 93 0
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE136:
	.seh_endproc
	.align 2
	.globl	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	.def	_ZN11FATDirEntry16findLastNonSpaceEPKcm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry16findLastNonSpaceEPKcm
_ZN11FATDirEntry16findLastNonSpaceEPKcm:
.LFB137:
	.loc 1 95 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
.LBB9:
	.loc 1 96 0
	movq	24(%rbp), %rax
	movq	%rax, -8(%rbp)
.L55:
	.loc 1 96 0 is_stmt 0 discriminator 1
	cmpq	$0, -8(%rbp)
	je	.L52
	.loc 1 97 0 is_stmt 1
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$32, %al
	je	.L53
	.loc 1 98 0
	movq	-8(%rbp), %rax
	subq	$1, %rax
	jmp	.L54
.L53:
	.loc 1 96 0 discriminator 2
	subq	$1, -8(%rbp)
	jmp	.L55
.L52:
.LBE9:
	.loc 1 99 0
	movq	24(%rbp), %rax
.L54:
	.loc 1 100 0
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE137:
	.seh_endproc
	.section	.text$_ZN6VectorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcED2Ev
	.def	_ZN6VectorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcED2Ev
_ZN6VectorIcED2Ev:
.LFB139:
	.file 4 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/data_structures/Vector.h"
	.loc 4 53 0
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
.LBB10:
	.loc 4 55 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L58
	.loc 4 57 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 4 58 0
	movq	16(%rbp), %rax
	movq	$0, (%rax)
.L58:
.LBE10:
	.loc 4 60 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE139:
	.seh_endproc
	.section	.text$_ZN6VectorIcE6appendERKS0_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE6appendERKS0_m
	.def	_ZN6VectorIcE6appendERKS0_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE6appendERKS0_m
_ZN6VectorIcE6appendERKS0_m:
.LFB141:
	.loc 4 138 0
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
	.loc 4 140 0
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcE7getSizeEv
	cmpq	32(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L60
	.loc 4 140 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcE7getSizeEv
	movq	%rax, 32(%rbp)
.L60:
.LBB11:
	.loc 4 141 0 is_stmt 1
	movq	$0, -8(%rbp)
.L62:
	.loc 4 141 0 is_stmt 0 discriminator 3
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcE7getSizeEv
	cmpq	-8(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L61
	.loc 4 142 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIcE8pushBackEc
	.loc 4 141 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L62
.L61:
.LBE11:
	.loc 4 143 0
	movq	16(%rbp), %rax
	.loc 4 144 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE141:
	.seh_endproc
	.section	.text$_ZN6VectorIcE8pushBackEc,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE8pushBackEc
	.def	_ZN6VectorIcE8pushBackEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE8pushBackEc
_ZN6VectorIcE8pushBackEc:
.LFB142:
	.loc 4 81 0
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
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 4 83 0
	movq	16(%rbp), %rcx
	call	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	testb	%al, %al
	je	.L66
	.loc 4 85 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	%rdx, 16(%rax)
	.loc 4 86 0
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	subq	$1, %rax
	addq	%rax, %rdx
	movzbl	24(%rbp), %eax
	movb	%al, (%rdx)
.L66:
	.loc 4 88 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE142:
	.seh_endproc
	.section	.text$_ZNK9VectorRefIcEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9VectorRefIcEixEm
	.def	_ZNK9VectorRefIcEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9VectorRefIcEixEm
_ZNK9VectorRefIcEixEm:
.LFB143:
	.file 5 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/data_structures/VectorRef.h"
	.loc 5 47 0
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
	.loc 5 49 0
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	.loc 5 50 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE143:
	.seh_endproc
	.section	.text$_ZNK6VectorIcE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcE7getSizeEv
	.def	_ZNK6VectorIcE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcE7getSizeEv
_ZNK6VectorIcE7getSizeEv:
.LFB144:
	.loc 4 103 0
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
	.loc 4 105 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	.loc 4 106 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE144:
	.seh_endproc
	.section	.text$_ZNK6VectorIcEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcEixEm
	.def	_ZNK6VectorIcEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcEixEm
_ZNK6VectorIcEixEm:
.LFB145:
	.loc 4 63 0
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
	.loc 4 65 0
	movq	16(%rbp), %rax
	movq	(%rax), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	.loc 4 66 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE145:
	.seh_endproc
	.section	.text$_ZN6VectorIcE24adjustCapacityForOneMoreEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.def	_ZN6VectorIcE24adjustCapacityForOneMoreEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE24adjustCapacityForOneMoreEv
_ZN6VectorIcE24adjustCapacityForOneMoreEv:
.LFB146:
	.loc 4 187 0
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
	.loc 4 189 0
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	leaq	1(%rax), %rdx
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jbe	.L74
	.loc 4 190 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIcE18getIncrementalSizeEm
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6VectorIcE14resizeCapacityEm
	jmp	.L75
.L74:
	.loc 4 191 0
	movl	$1, %eax
.L75:
	.loc 4 192 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE146:
	.seh_endproc
	.section	.text$_ZN6VectorIcE14resizeCapacityEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE14resizeCapacityEm
	.def	_ZN6VectorIcE14resizeCapacityEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE14resizeCapacityEm
_ZN6VectorIcE14resizeCapacityEm:
.LFB147:
	.loc 4 167 0
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
	.loc 4 169 0
	movq	16(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	24(%rbp), %rax
	jne	.L77
	.loc 4 170 0
	movl	$1, %eax
	jmp	.L78
.L77:
	.loc 4 171 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	24(%rbp), %rdx
	movq	$-1, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10reallocateEPvmm
	.loc 4 172 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, -16(%rbp)
	.loc 4 173 0
	cmpq	$0, -16(%rbp)
	jne	.L79
	.loc 4 174 0
	movl	$0, %eax
	jmp	.L78
.L79:
.LBB12:
	.loc 4 176 0
	movq	$0, -8(%rbp)
.L81:
	.loc 4 176 0 is_stmt 0 discriminator 3
	movq	16(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	je	.L80
	.loc 4 177 0 is_stmt 1 discriminator 2
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movq	16(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	addq	%rcx, %rax
	movzbl	(%rax), %eax
	movb	%al, (%rdx)
	.loc 4 176 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L81
.L80:
.LBE12:
	.loc 4 178 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 4 181 0
	movq	16(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	.loc 4 182 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	.loc 4 183 0
	movl	$1, %eax
.L78:
	.loc 4 184 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE147:
	.seh_endproc
	.section	.text$_ZN6VectorIcE18getIncrementalSizeEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE18getIncrementalSizeEm
	.def	_ZN6VectorIcE18getIncrementalSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE18getIncrementalSizeEm
_ZN6VectorIcE18getIncrementalSizeEm:
.LFB148:
	.loc 4 209 0
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
	.loc 4 211 0
	movq	16(%rbp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	shrq	%rax
	.loc 4 212 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE148:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPcEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPcEET_m
	.def	_ZN13MemoryManager10allocateAsIPcEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPcEET_m
_ZN13MemoryManager10allocateAsIPcEET_m:
.LFB149:
	.file 6 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.loc 6 15 0
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
	.loc 6 17 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager8allocateEm
	.loc 6 18 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE149:
	.seh_endproc
	.text
.Letext0:
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 10 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/type_traits"
	.file 11 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 12 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_pair.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 18 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/Vector.h"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/VectorRef.h"
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/StringRef.h"
	.file 21 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FATDirEntry.h"
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FATLongNameEntry.h"
	.file 23 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2fc3
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FATDirEntry.cpp\0"
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
	.byte	0x7
	.byte	0xd8
	.long	0x194
	.uleb128 0x4
	.long	0x181
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x7
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1f1
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x7
	.word	0x1ab
	.long	0x1f1
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x7
	.word	0x1ac
	.long	0x202
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
	.byte	0x7
	.word	0x1ad
	.long	0x1a9
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x17
	.byte	0
	.long	0x432
	.uleb128 0xa
	.byte	0x8
	.byte	0x38
	.long	0x211
	.uleb128 0xa
	.byte	0x9
	.byte	0x30
	.long	0x432
	.uleb128 0xa
	.byte	0x9
	.byte	0x31
	.long	0x44f
	.uleb128 0xa
	.byte	0x9
	.byte	0x32
	.long	0x46b
	.uleb128 0xa
	.byte	0x9
	.byte	0x33
	.long	0x486
	.uleb128 0xa
	.byte	0x9
	.byte	0x35
	.long	0x5b5
	.uleb128 0xa
	.byte	0x9
	.byte	0x36
	.long	0x5c8
	.uleb128 0xa
	.byte	0x9
	.byte	0x37
	.long	0x5dc
	.uleb128 0xa
	.byte	0x9
	.byte	0x38
	.long	0x5f0
	.uleb128 0xa
	.byte	0x9
	.byte	0x3a
	.long	0x50b
	.uleb128 0xa
	.byte	0x9
	.byte	0x3b
	.long	0x51f
	.uleb128 0xa
	.byte	0x9
	.byte	0x3c
	.long	0x534
	.uleb128 0xa
	.byte	0x9
	.byte	0x3d
	.long	0x549
	.uleb128 0xa
	.byte	0x9
	.byte	0x3f
	.long	0x678
	.uleb128 0xa
	.byte	0x9
	.byte	0x40
	.long	0x657
	.uleb128 0xa
	.byte	0x9
	.byte	0x42
	.long	0x495
	.uleb128 0xa
	.byte	0x9
	.byte	0x43
	.long	0x4b5
	.uleb128 0xa
	.byte	0x9
	.byte	0x44
	.long	0x4db
	.uleb128 0xa
	.byte	0x9
	.byte	0x45
	.long	0x4fb
	.uleb128 0xa
	.byte	0x9
	.byte	0x47
	.long	0x604
	.uleb128 0xa
	.byte	0x9
	.byte	0x48
	.long	0x618
	.uleb128 0xa
	.byte	0x9
	.byte	0x49
	.long	0x62d
	.uleb128 0xa
	.byte	0x9
	.byte	0x4a
	.long	0x642
	.uleb128 0xa
	.byte	0x9
	.byte	0x4c
	.long	0x55e
	.uleb128 0xa
	.byte	0x9
	.byte	0x4d
	.long	0x573
	.uleb128 0xa
	.byte	0x9
	.byte	0x4e
	.long	0x589
	.uleb128 0xa
	.byte	0x9
	.byte	0x4f
	.long	0x59f
	.uleb128 0xa
	.byte	0x9
	.byte	0x51
	.long	0x688
	.uleb128 0xa
	.byte	0x9
	.byte	0x52
	.long	0x667
	.uleb128 0xb
	.ascii "initializer_list<char>\0"
	.uleb128 0x4
	.long	0x30e
	.uleb128 0xc
	.ascii "__swappable_details\0"
	.byte	0xa
	.word	0xa37
	.uleb128 0xd
	.secrel32	.LASF0
	.byte	0x1
	.byte	0xc
	.byte	0x4c
	.long	0x382
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0xc
	.byte	0x4c
	.ascii "_ZNSt21piecewise_construct_tC4Ev\0"
	.long	0x37b
	.uleb128 0xf
	.long	0x2900
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x343
	.uleb128 0x10
	.ascii "piecewise_construct\0"
	.byte	0xc
	.byte	0x4f
	.long	0x382
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.ascii "remove_reference<String&>\0"
	.byte	0x1
	.byte	0xa
	.word	0x66e
	.long	0x3d5
	.uleb128 0x7
	.ascii "type\0"
	.byte	0xa
	.word	0x66f
	.long	0x1ae9
	.byte	0
	.uleb128 0x12
	.ascii "move<String&>\0"
	.byte	0x3
	.byte	0x65
	.ascii "_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_\0"
	.long	0x2de2
	.uleb128 0x13
	.ascii "_Tp\0"
	.long	0x1c32
	.uleb128 0x14
	.long	0x1c32
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0xb
	.byte	0x22
	.long	0x440
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0xb
	.byte	0x25
	.long	0x45e
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0xb
	.byte	0x28
	.long	0x47a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x47a
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0xb
	.byte	0x2b
	.long	0x175
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0xb
	.byte	0x2e
	.long	0x4a4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0xb
	.byte	0x31
	.long	0x4c5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0xb
	.byte	0x34
	.long	0x4eb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0xb
	.byte	0x37
	.long	0x194
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0xb
	.byte	0x3c
	.long	0x440
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0xb
	.byte	0x3d
	.long	0x45e
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0xb
	.byte	0x3e
	.long	0x47a
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0xb
	.byte	0x3f
	.long	0x175
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0xb
	.byte	0x40
	.long	0x4a4
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0xb
	.byte	0x41
	.long	0x4c5
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0xb
	.byte	0x42
	.long	0x4eb
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0xb
	.byte	0x43
	.long	0x194
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0xb
	.byte	0x47
	.long	0x440
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0xb
	.byte	0x48
	.long	0x175
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0xb
	.byte	0x49
	.long	0x175
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0xb
	.byte	0x4a
	.long	0x175
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0xb
	.byte	0x4b
	.long	0x4a4
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0xb
	.byte	0x4c
	.long	0x194
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0xb
	.byte	0x4d
	.long	0x194
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0xb
	.byte	0x4e
	.long	0x194
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0xb
	.byte	0x53
	.long	0x175
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0xb
	.byte	0x56
	.long	0x194
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0xb
	.byte	0x5b
	.long	0x175
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0xb
	.byte	0x5c
	.long	0x194
	.uleb128 0x15
	.long	0x6c2
	.long	0x6a9
	.uleb128 0x16
	.long	0x6ae
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x699
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x6ba
	.uleb128 0x17
	.ascii "EMPTY_STR\0"
	.byte	0xd
	.byte	0x16
	.long	0x6a9
	.uleb128 0x18
	.ascii "UNIT_K\0"
	.byte	0xd
	.byte	0x1a
	.long	0x481
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0x18
	.ascii "KiB\0"
	.byte	0xd
	.byte	0x1b
	.long	0x481
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0x18
	.ascii "MiB\0"
	.byte	0xd
	.byte	0x1c
	.long	0x481
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0x18
	.ascii "GiB\0"
	.byte	0xd
	.byte	0x1d
	.long	0x481
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0x19
	.byte	0x8
	.uleb128 0x1a
	.byte	0x8
	.long	0x737
	.uleb128 0x1b
	.uleb128 0x1c
	.ascii "Output\0"
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.long	0xa14
	.uleb128 0x1d
	.ascii "print\0"
	.byte	0xe
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x181
	.byte	0x1
	.long	0x773
	.long	0x783
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "print\0"
	.byte	0xe
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x181
	.byte	0x1
	.long	0x7ae
	.long	0x7b9
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa1a
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0xa20
	.byte	0x1
	.long	0x7dc
	.long	0x7e7
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x6ba
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0xa20
	.byte	0x1
	.long	0x80a
	.long	0x815
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x495
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0xa20
	.byte	0x1
	.long	0x838
	.long	0x843
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x4b5
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0xa20
	.byte	0x1
	.long	0x866
	.long	0x871
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x4db
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0xa20
	.byte	0x1
	.long	0x894
	.long	0x89f
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0xa20
	.byte	0x1
	.long	0x8c2
	.long	0x8cd
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x45e
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0xa20
	.byte	0x1
	.long	0x8f0
	.long	0x8fb
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x47a
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0xa20
	.byte	0x1
	.long	0x91e
	.long	0x929
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa2e
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0xa20
	.byte	0x1
	.long	0x94e
	.long	0x959
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa1a
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0xa20
	.byte	0x1
	.long	0x97c
	.long	0x987
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0xa20
	.byte	0x1
	.long	0x9ac
	.long	0x9b7
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0x731
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xe
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0xa20
	.byte	0x1
	.long	0x9dd
	.long	0x9e8
	.uleb128 0xf
	.long	0xa14
	.uleb128 0x14
	.long	0xa38
	.byte	0
	.uleb128 0x1f
	.ascii "flush\0"
	.byte	0xe
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0xa20
	.byte	0x1
	.long	0xa0d
	.uleb128 0xf
	.long	0xa14
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.long	0x738
	.uleb128 0x1a
	.byte	0x8
	.long	0x6c2
	.uleb128 0x20
	.byte	0x8
	.long	0x738
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x1a
	.byte	0x8
	.long	0xa3f
	.uleb128 0x21
	.uleb128 0x4
	.long	0xa3e
	.uleb128 0x17
	.ascii "kout\0"
	.byte	0xe
	.byte	0x22
	.long	0x738
	.uleb128 0x18
	.ascii "koutBufSize\0"
	.byte	0xe
	.byte	0x25
	.long	0x18f
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0x15
	.long	0x6ba
	.long	0xa7d
	.uleb128 0x16
	.long	0x6ae
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.ascii "koutBuf\0"
	.byte	0xe
	.byte	0x26
	.long	0xa6d
	.uleb128 0x15
	.long	0x6c2
	.long	0xa97
	.uleb128 0x22
	.byte	0
	.uleb128 0x17
	.ascii "digitsMap\0"
	.byte	0xf
	.byte	0x16
	.long	0xa8c
	.uleb128 0x23
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x10
	.byte	0x16
	.long	0x10d3
	.uleb128 0x24
	.ascii "nextValidChunkOffset\0"
	.byte	0x10
	.byte	0x42
	.long	0x4fb
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x24
	.ascii "endMark\0"
	.byte	0x10
	.byte	0x43
	.long	0x4fb
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x24
	.ascii "allocated\0"
	.byte	0x10
	.byte	0x44
	.long	0x4fb
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.ascii "size\0"
	.byte	0x10
	.byte	0x45
	.long	0x4fb
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x24
	.ascii "nextBaseFromEnd\0"
	.byte	0x10
	.byte	0x46
	.long	0x4fb
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF2
	.byte	0x10
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xb50
	.long	0xb6f
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0xa26
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0xa26
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "isAllocated\0"
	.byte	0x10
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xa26
	.byte	0x1
	.long	0xbac
	.long	0xbb2
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x26
	.ascii "setAllocated\0"
	.byte	0x10
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xbec
	.long	0xbf7
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1d
	.ascii "isEnd\0"
	.byte	0x10
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xa26
	.byte	0x1
	.long	0xc27
	.long	0xc2d
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x26
	.ascii "setEnd\0"
	.byte	0x10
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xc5a
	.long	0xc65
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1d
	.ascii "getNext\0"
	.byte	0x10
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x10de
	.byte	0x1
	.long	0xc99
	.long	0xc9f
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x1d
	.ascii "getNext\0"
	.byte	0x10
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x10d8
	.byte	0x1
	.long	0xcd2
	.long	0xcd8
	.uleb128 0xf
	.long	0x10d8
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x10
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x181
	.byte	0x1
	.long	0xd08
	.long	0xd0e
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x26
	.ascii "setSize\0"
	.byte	0x10
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xd3d
	.long	0xd48
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x10
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x72f
	.byte	0x1
	.long	0xd7b
	.long	0xd81
	.uleb128 0xf
	.long	0x10d8
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF4
	.byte	0x10
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x731
	.byte	0x1
	.long	0xdb5
	.long	0xdbb
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x10
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x72f
	.byte	0x1
	.long	0xdee
	.long	0xdf4
	.uleb128 0xf
	.long	0x10d8
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF5
	.byte	0x10
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x731
	.byte	0x1
	.long	0xe28
	.long	0xe2e
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x1d
	.ascii "getNextBaseFromEnd\0"
	.byte	0x10
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x4fb
	.byte	0x1
	.long	0xe79
	.long	0xe7f
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x26
	.ascii "setNextBaseFromEnd\0"
	.byte	0x10
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xec5
	.long	0xed0
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x4fb
	.byte	0
	.uleb128 0x1d
	.ascii "getNextValidChunkOffset\0"
	.byte	0x10
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x4fb
	.byte	0x1
	.long	0xf25
	.long	0xf2b
	.uleb128 0xf
	.long	0x10de
	.byte	0
	.uleb128 0x26
	.ascii "setNextValidChunkOffset\0"
	.byte	0x10
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0xf7b
	.long	0xf86
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x4fb
	.byte	0
	.uleb128 0x1d
	.ascii "moveAhead\0"
	.byte	0x10
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x10d8
	.byte	0x1
	.long	0xfbd
	.long	0xfc8
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0x10
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x181
	.byte	0x1
	.long	0x1032
	.long	0x1042
	.uleb128 0xf
	.long	0x10de
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "split\0"
	.byte	0x10
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xa26
	.byte	0x1
	.long	0x1071
	.long	0x107c
	.uleb128 0xf
	.long	0x10d8
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x27
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0x10
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x10cc
	.uleb128 0xf
	.long	0x10d8
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xaa8
	.uleb128 0x1a
	.byte	0x8
	.long	0xaa8
	.uleb128 0x1a
	.byte	0x8
	.long	0x10d3
	.uleb128 0x23
	.secrel32	.LASF6
	.byte	0x18
	.byte	0x11
	.byte	0x19
	.long	0x1448
	.uleb128 0x28
	.ascii "headChunk\0"
	.byte	0x11
	.byte	0x54
	.long	0x10d8
	.byte	0
	.uleb128 0x28
	.ascii "base\0"
	.byte	0x11
	.byte	0x55
	.long	0xa1a
	.byte	0x8
	.uleb128 0x28
	.ascii "size\0"
	.byte	0x11
	.byte	0x56
	.long	0x18f
	.byte	0x10
	.uleb128 0x29
	.secrel32	.LASF6
	.byte	0x11
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x1143
	.long	0x1149
	.uleb128 0xf
	.long	0x144d
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0x11
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x1173
	.long	0x1188
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x72f
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1d
	.ascii "normalizeAllocSize\0"
	.byte	0x11
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x181
	.byte	0x1
	.long	0x11d4
	.long	0x11df
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x11
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x72f
	.byte	0x1
	.long	0x1211
	.long	0x121c
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF7
	.byte	0x11
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x72f
	.byte	0x1
	.long	0x124f
	.long	0x125f
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "tryIncrease\0"
	.byte	0x11
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xa26
	.byte	0x1
	.long	0x129f
	.long	0x12af
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x72f
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "tryDecrease\0"
	.byte	0x11
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xa26
	.byte	0x1
	.long	0x12ef
	.long	0x12ff
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x72f
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "reallocate\0"
	.byte	0x11
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x72f
	.byte	0x1
	.long	0x133e
	.long	0x1353
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x72f
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x26
	.ascii "deallocate\0"
	.byte	0x11
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x138c
	.long	0x1397
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x72f
	.byte	0
	.uleb128 0x1d
	.ascii "getAllocatedLength\0"
	.byte	0x11
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x181
	.byte	0x1
	.long	0x13e5
	.long	0x13f0
	.uleb128 0xf
	.long	0x1458
	.uleb128 0x14
	.long	0x72f
	.byte	0
	.uleb128 0x1f
	.ascii "allocateAs<char*>\0"
	.byte	0x6
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPcEET_m\0"
	.long	0x1aa4
	.byte	0x1
	.long	0x143c
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1aa4
	.uleb128 0xf
	.long	0x144d
	.uleb128 0x14
	.long	0x181
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x10e4
	.uleb128 0x1a
	.byte	0x8
	.long	0x10e4
	.uleb128 0x4
	.long	0x144d
	.uleb128 0x1a
	.byte	0x8
	.long	0x1448
	.uleb128 0x17
	.ascii "mman\0"
	.byte	0x11
	.byte	0x5b
	.long	0x10e4
	.uleb128 0x1c
	.ascii "Vector<char>\0"
	.byte	0x18
	.byte	0x12
	.byte	0x13
	.long	0x1a9f
	.uleb128 0x28
	.ascii "data\0"
	.byte	0x12
	.byte	0x45
	.long	0x1aa4
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF8
	.byte	0x12
	.byte	0x46
	.long	0x181
	.byte	0x8
	.uleb128 0x28
	.ascii "size\0"
	.byte	0x12
	.byte	0x47
	.long	0x181
	.byte	0x10
	.uleb128 0x25
	.secrel32	.LASF9
	.byte	0x4
	.byte	0xf
	.ascii "_ZN6VectorIcEC4Em\0"
	.byte	0x1
	.long	0x14c7
	.long	0x14d2
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF9
	.byte	0x4
	.byte	0x18
	.ascii "_ZN6VectorIcEC4ERKSt16initializer_listIcE\0"
	.byte	0x1
	.long	0x150c
	.long	0x1517
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1ab5
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF10
	.byte	0x12
	.byte	0x1b
	.ascii "_ZN6VectorIcEaSERKSt16initializer_listIcE\0"
	.long	0x1abb
	.byte	0x1
	.long	0x1555
	.long	0x1560
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1ab5
	.byte	0
	.uleb128 0x29
	.secrel32	.LASF9
	.byte	0x12
	.byte	0x1c
	.ascii "_ZN6VectorIcEC4ERKS0_\0"
	.byte	0x1
	.long	0x1586
	.long	0x1591
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1ac1
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF10
	.byte	0x12
	.byte	0x1d
	.ascii "_ZN6VectorIcEaSERKS0_\0"
	.long	0x1abb
	.byte	0x1
	.long	0x15bb
	.long	0x15c6
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1ac1
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF9
	.byte	0x4
	.byte	0x20
	.ascii "_ZN6VectorIcEC4EOS0_\0"
	.byte	0x1
	.long	0x15eb
	.long	0x15f6
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1acc
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF10
	.byte	0x4
	.byte	0x29
	.ascii "_ZN6VectorIcEaSEOS0_\0"
	.long	0x1abb
	.byte	0x1
	.long	0x161f
	.long	0x162a
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1acc
	.byte	0
	.uleb128 0x26
	.ascii "~Vector\0"
	.byte	0x4
	.byte	0x35
	.ascii "_ZN6VectorIcED4Ev\0"
	.byte	0x1
	.long	0x1650
	.long	0x165b
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0xf
	.long	0x47a
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF11
	.byte	0x4
	.byte	0x3f
	.ascii "_ZNK6VectorIcEixEm\0"
	.long	0x1ad2
	.byte	0x1
	.long	0x1682
	.long	0x168d
	.uleb128 0xf
	.long	0x1ad8
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF11
	.byte	0x4
	.byte	0x44
	.ascii "_ZN6VectorIcEixEm\0"
	.long	0x1ae3
	.byte	0x1
	.long	0x16b3
	.long	0x16be
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "popBack\0"
	.byte	0x4
	.byte	0x49
	.ascii "_ZN6VectorIcE7popBackEv\0"
	.long	0x6ba
	.byte	0x1
	.long	0x16ee
	.long	0x16f4
	.uleb128 0xf
	.long	0x1aaa
	.byte	0
	.uleb128 0x26
	.ascii "pushBack\0"
	.byte	0x4
	.byte	0x51
	.ascii "_ZN6VectorIcE8pushBackEc\0"
	.byte	0x1
	.long	0x1722
	.long	0x172d
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x6ba
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF12
	.byte	0x4
	.byte	0x5b
	.ascii "_ZN6VectorIcE7getDataEv\0"
	.long	0x1aa4
	.byte	0x1
	.long	0x1759
	.long	0x175f
	.uleb128 0xf
	.long	0x1aaa
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF12
	.byte	0x4
	.byte	0x61
	.ascii "_ZNK6VectorIcE7getDataEv\0"
	.long	0xa1a
	.byte	0x1
	.long	0x178c
	.long	0x1792
	.uleb128 0xf
	.long	0x1ad8
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x4
	.byte	0x67
	.ascii "_ZNK6VectorIcE7getSizeEv\0"
	.long	0x181
	.byte	0x1
	.long	0x17bf
	.long	0x17c5
	.uleb128 0xf
	.long	0x1ad8
	.byte	0
	.uleb128 0x1d
	.ascii "getCapacity\0"
	.byte	0x4
	.byte	0x6d
	.ascii "_ZNK6VectorIcE11getCapacityEv\0"
	.long	0x181
	.byte	0x1
	.long	0x17ff
	.long	0x1805
	.uleb128 0xf
	.long	0x1ad8
	.byte	0
	.uleb128 0x1d
	.ascii "empty\0"
	.byte	0x4
	.byte	0x73
	.ascii "_ZNK6VectorIcE5emptyEv\0"
	.long	0xa26
	.byte	0x1
	.long	0x1832
	.long	0x1838
	.uleb128 0xf
	.long	0x1ad8
	.byte	0
	.uleb128 0x26
	.ascii "clear\0"
	.byte	0x4
	.byte	0x79
	.ascii "_ZN6VectorIcE5clearEv\0"
	.byte	0x1
	.long	0x1860
	.long	0x1866
	.uleb128 0xf
	.long	0x1aaa
	.byte	0
	.uleb128 0x26
	.ascii "erase\0"
	.byte	0x4
	.byte	0x7f
	.ascii "_ZN6VectorIcE5eraseEm\0"
	.byte	0x1
	.long	0x188e
	.long	0x1899
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "append\0"
	.byte	0x4
	.byte	0x8a
	.ascii "_ZN6VectorIcE6appendERKS0_m\0"
	.long	0x1abb
	.byte	0x1
	.long	0x18cc
	.long	0x18dc
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x1ac1
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1d
	.ascii "insert\0"
	.byte	0x4
	.byte	0x92
	.ascii "_ZN6VectorIcE6insertEmRKc\0"
	.long	0x181
	.byte	0x1
	.long	0x190d
	.long	0x191d
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x1ad2
	.byte	0
	.uleb128 0x1d
	.ascii "resize\0"
	.byte	0x4
	.byte	0x9e
	.ascii "_ZN6VectorIcE6resizeEm\0"
	.long	0xa26
	.byte	0x1
	.long	0x194b
	.long	0x1956
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x2c
	.ascii "resizeCapacity\0"
	.byte	0x4
	.byte	0xa7
	.ascii "_ZN6VectorIcE14resizeCapacityEm\0"
	.long	0xa26
	.long	0x1994
	.long	0x199f
	.uleb128 0xf
	.long	0x1aaa
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x2c
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x4
	.byte	0xbb
	.ascii "_ZN6VectorIcE24adjustCapacityForOneMoreEv\0"
	.long	0xa26
	.long	0x19f1
	.long	0x19f7
	.uleb128 0xf
	.long	0x1aaa
	.byte	0
	.uleb128 0x2c
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x4
	.byte	0xc3
	.ascii "_ZN6VectorIcE24adjustCapacityForOneLessEv\0"
	.long	0xa26
	.long	0x1a49
	.long	0x1a4f
	.uleb128 0xf
	.long	0x1aaa
	.byte	0
	.uleb128 0x2d
	.ascii "getIncrementalSize\0"
	.byte	0x4
	.byte	0xd1
	.ascii "_ZN6VectorIcE18getIncrementalSizeEm\0"
	.long	0x181
	.long	0x1a97
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x6ba
	.byte	0
	.uleb128 0x4
	.long	0x146a
	.uleb128 0x1a
	.byte	0x8
	.long	0x6ba
	.uleb128 0x1a
	.byte	0x8
	.long	0x146a
	.uleb128 0x4
	.long	0x1aaa
	.uleb128 0x20
	.byte	0x8
	.long	0x326
	.uleb128 0x20
	.byte	0x8
	.long	0x146a
	.uleb128 0x20
	.byte	0x8
	.long	0x1a9f
	.uleb128 0x4
	.long	0x1ac1
	.uleb128 0x2e
	.byte	0x8
	.long	0x146a
	.uleb128 0x20
	.byte	0x8
	.long	0x6c2
	.uleb128 0x1a
	.byte	0x8
	.long	0x1a9f
	.uleb128 0x4
	.long	0x1ad8
	.uleb128 0x20
	.byte	0x8
	.long	0x6ba
	.uleb128 0x23
	.secrel32	.LASF13
	.byte	0x18
	.byte	0x2
	.byte	0xe
	.long	0x1c1c
	.uleb128 0xa
	.byte	0x2
	.byte	0xe
	.long	0x1899
	.uleb128 0x2f
	.long	0x146a
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x15
	.ascii "_ZN6StringC4Em\0"
	.byte	0x1
	.long	0x1b22
	.long	0x1b2d
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x16
	.ascii "_ZN6StringC4EOS_\0"
	.byte	0x1
	.long	0x1b4e
	.long	0x1b59
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0x14
	.long	0x1c2c
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF13
	.byte	0x2
	.byte	0x18
	.ascii "_ZN6StringC4EPKc\0"
	.byte	0x1
	.long	0x1b7a
	.long	0x1b85
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0x14
	.long	0xa1a
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x19
	.ascii "_ZN6StringaSEPKc\0"
	.long	0x1c32
	.byte	0x1
	.long	0x1baa
	.long	0x1bb5
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0x14
	.long	0xa1a
	.byte	0
	.uleb128 0x1d
	.ascii "append\0"
	.byte	0x2
	.byte	0x1a
	.ascii "_ZN6String6appendEPKcm\0"
	.long	0x1c32
	.byte	0x1
	.long	0x1be3
	.long	0x1bf3
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x30
	.ascii "~String\0"
	.ascii "_ZN6StringD4Ev\0"
	.byte	0x1
	.long	0x1c10
	.uleb128 0xf
	.long	0x1c21
	.uleb128 0xf
	.long	0x47a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1ae9
	.uleb128 0x1a
	.byte	0x8
	.long	0x1ae9
	.uleb128 0x4
	.long	0x1c21
	.uleb128 0x2e
	.byte	0x8
	.long	0x1ae9
	.uleb128 0x20
	.byte	0x8
	.long	0x1ae9
	.uleb128 0x4
	.long	0x1c32
	.uleb128 0x1c
	.ascii "VectorRef<char>\0"
	.byte	0x10
	.byte	0x13
	.byte	0x10
	.long	0x1e36
	.uleb128 0x28
	.ascii "data\0"
	.byte	0x13
	.byte	0x1c
	.long	0xa1a
	.byte	0
	.uleb128 0x28
	.ascii "size\0"
	.byte	0x13
	.byte	0x1d
	.long	0x181
	.byte	0x8
	.uleb128 0x29
	.secrel32	.LASF14
	.byte	0x13
	.byte	0x12
	.ascii "_ZN9VectorRefIcEC4Ev\0"
	.byte	0x1
	.long	0x1c94
	.long	0x1c9a
	.uleb128 0xf
	.long	0x1e3b
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF14
	.byte	0x5
	.byte	0xf
	.ascii "_ZN9VectorRefIcEC4EPKcm\0"
	.byte	0x1
	.long	0x1cc2
	.long	0x1cd2
	.uleb128 0xf
	.long	0x1e3b
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF14
	.byte	0x5
	.byte	0x13
	.ascii "_ZN9VectorRefIcEC4E6VectorIcEmm\0"
	.byte	0x1
	.long	0x1d02
	.long	0x1d17
	.uleb128 0xf
	.long	0x1e3b
	.uleb128 0x14
	.long	0x146a
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF12
	.byte	0x5
	.byte	0x17
	.ascii "_ZNK9VectorRefIcE7getDataEv\0"
	.long	0xa1a
	.byte	0x1
	.long	0x1d47
	.long	0x1d4d
	.uleb128 0xf
	.long	0x1e41
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF3
	.byte	0x5
	.byte	0x1d
	.ascii "_ZNK9VectorRefIcE7getSizeEv\0"
	.long	0x181
	.byte	0x1
	.long	0x1d7d
	.long	0x1d83
	.uleb128 0xf
	.long	0x1e41
	.byte	0
	.uleb128 0x26
	.ascii "setData\0"
	.byte	0x5
	.byte	0x24
	.ascii "_ZN9VectorRefIcE7setDataEPKc\0"
	.byte	0x1
	.long	0x1db4
	.long	0x1dbf
	.uleb128 0xf
	.long	0x1e3b
	.uleb128 0x14
	.long	0xa1a
	.byte	0
	.uleb128 0x26
	.ascii "setSize\0"
	.byte	0x5
	.byte	0x29
	.ascii "_ZN9VectorRefIcE7setSizeEm\0"
	.byte	0x1
	.long	0x1dee
	.long	0x1df9
	.uleb128 0xf
	.long	0x1e3b
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF11
	.byte	0x5
	.byte	0x2f
	.ascii "_ZNK9VectorRefIcEixEm\0"
	.long	0x1ad2
	.byte	0x1
	.long	0x1e23
	.long	0x1e2e
	.uleb128 0xf
	.long	0x1e41
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x6ba
	.byte	0
	.uleb128 0x4
	.long	0x1c3d
	.uleb128 0x1a
	.byte	0x8
	.long	0x1c3d
	.uleb128 0x1a
	.byte	0x8
	.long	0x1e36
	.uleb128 0x4
	.long	0x1e41
	.uleb128 0x23
	.secrel32	.LASF15
	.byte	0x10
	.byte	0x14
	.byte	0x10
	.long	0x1ef5
	.uleb128 0x2f
	.long	0x1c3d
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.secrel32	.LASF15
	.byte	0x14
	.byte	0x14
	.ascii "_ZN9StringRefC4EPKv\0"
	.byte	0x1
	.long	0x1e83
	.long	0x1e8e
	.uleb128 0xf
	.long	0x1efa
	.uleb128 0x14
	.long	0x731
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF15
	.byte	0x14
	.byte	0x15
	.ascii "_ZN9StringRefC4EPKvm\0"
	.byte	0x1
	.long	0x1eb3
	.long	0x1ec3
	.uleb128 0xf
	.long	0x1efa
	.uleb128 0x14
	.long	0x731
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x31
	.secrel32	.LASF15
	.byte	0x14
	.byte	0x16
	.ascii "_ZN9StringRefC4ERK6String\0"
	.byte	0x1
	.long	0x1ee9
	.uleb128 0xf
	.long	0x1efa
	.uleb128 0x14
	.long	0x1f00
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1e4c
	.uleb128 0x1a
	.byte	0x8
	.long	0x1e4c
	.uleb128 0x20
	.byte	0x8
	.long	0x1c1c
	.uleb128 0x1c
	.ascii "FATDirEntry\0"
	.byte	0x20
	.byte	0x15
	.byte	0xf
	.long	0x2379
	.uleb128 0x32
	.byte	0x1
	.long	0x6ba
	.byte	0x15
	.byte	0x11
	.byte	0x1
	.long	0x1f34
	.uleb128 0x33
	.ascii "ATTR_MASK\0"
	.byte	0x3f
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.long	0x6ba
	.byte	0x15
	.byte	0x12
	.byte	0x1
	.long	0x1fb1
	.uleb128 0x33
	.ascii "ATTR_READ_ONLY\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "ATTR_HIDDEN\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "ATTR_SYSTEM\0"
	.byte	0x4
	.uleb128 0x33
	.ascii "ATTR_VOLUME_ID\0"
	.byte	0x8
	.uleb128 0x33
	.ascii "ATTR_DIRECTORY\0"
	.byte	0x10
	.uleb128 0x33
	.ascii "ATTR_ARCHIVE\0"
	.byte	0x20
	.uleb128 0x33
	.ascii "ATTR_LONG_NAME\0"
	.byte	0xf
	.byte	0
	.uleb128 0x34
	.ascii "name\0"
	.byte	0x15
	.byte	0x18
	.long	0x237e
	.byte	0
	.byte	0x1
	.uleb128 0x34
	.ascii "attr\0"
	.byte	0x15
	.byte	0x19
	.long	0x495
	.byte	0xb
	.byte	0x1
	.uleb128 0x34
	.ascii "NTRes\0"
	.byte	0x15
	.byte	0x1a
	.long	0x495
	.byte	0xc
	.byte	0x1
	.uleb128 0x34
	.ascii "crtTimeTenth\0"
	.byte	0x15
	.byte	0x1b
	.long	0x495
	.byte	0xd
	.byte	0x1
	.uleb128 0x34
	.ascii "crtTime\0"
	.byte	0x15
	.byte	0x1c
	.long	0x4b5
	.byte	0xe
	.byte	0x1
	.uleb128 0x34
	.ascii "crtDate\0"
	.byte	0x15
	.byte	0x1d
	.long	0x4b5
	.byte	0x10
	.byte	0x1
	.uleb128 0x34
	.ascii "lstAccData\0"
	.byte	0x15
	.byte	0x1e
	.long	0x4b5
	.byte	0x12
	.byte	0x1
	.uleb128 0x34
	.ascii "fstClusHI\0"
	.byte	0x15
	.byte	0x1f
	.long	0x4b5
	.byte	0x14
	.byte	0x1
	.uleb128 0x34
	.ascii "wrtTime\0"
	.byte	0x15
	.byte	0x20
	.long	0x4b5
	.byte	0x16
	.byte	0x1
	.uleb128 0x34
	.ascii "wrtDate\0"
	.byte	0x15
	.byte	0x21
	.long	0x4b5
	.byte	0x18
	.byte	0x1
	.uleb128 0x35
	.secrel32	.LASF16
	.byte	0x15
	.byte	0x22
	.long	0x4b5
	.byte	0x1a
	.byte	0x1
	.uleb128 0x34
	.ascii "fileSize\0"
	.byte	0x15
	.byte	0x23
	.long	0x4db
	.byte	0x1c
	.byte	0x1
	.uleb128 0x36
	.ascii "chksum\0"
	.byte	0x15
	.byte	0x25
	.ascii "_ZN11FATDirEntry6chksumEPc\0"
	.long	0x495
	.byte	0x1
	.long	0x20b0
	.uleb128 0x14
	.long	0x1aa4
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF17
	.byte	0x15
	.byte	0x26
	.ascii "_ZNK11FATDirEntry19uni_isLongNameEntryEv\0"
	.long	0xa26
	.byte	0x1
	.long	0x20ed
	.long	0x20f3
	.uleb128 0xf
	.long	0x238e
	.byte	0
	.uleb128 0x1d
	.ascii "isVolumeID\0"
	.byte	0x15
	.byte	0x27
	.ascii "_ZNK11FATDirEntry10isVolumeIDEv\0"
	.long	0xa26
	.byte	0x1
	.long	0x212e
	.long	0x2134
	.uleb128 0xf
	.long	0x238e
	.byte	0
	.uleb128 0x1d
	.ascii "shortNameEquals\0"
	.byte	0x15
	.byte	0x2a
	.ascii "_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_\0"
	.long	0xa26
	.byte	0x1
	.long	0x2187
	.long	0x2197
	.uleb128 0xf
	.long	0x238e
	.uleb128 0x14
	.long	0x2399
	.uleb128 0x14
	.long	0x2399
	.byte	0
	.uleb128 0x1d
	.ascii "getFirstClusIndex\0"
	.byte	0x15
	.byte	0x2c
	.ascii "_ZNK11FATDirEntry17getFirstClusIndexEv\0"
	.long	0x4db
	.byte	0x1
	.long	0x21e0
	.long	0x21e6
	.uleb128 0xf
	.long	0x238e
	.byte	0
	.uleb128 0x1d
	.ascii "getLongName\0"
	.byte	0x15
	.byte	0x33
	.ascii "_ZNK11FATDirEntry11getLongNameEv\0"
	.long	0x1ae9
	.byte	0x1
	.long	0x2223
	.long	0x2229
	.uleb128 0xf
	.long	0x238e
	.byte	0
	.uleb128 0x1d
	.ascii "getShortName\0"
	.byte	0x15
	.byte	0x34
	.ascii "_ZNK11FATDirEntry12getShortNameEv\0"
	.long	0x1ae9
	.byte	0x1
	.long	0x2268
	.long	0x226e
	.uleb128 0xf
	.long	0x238e
	.byte	0
	.uleb128 0x2d
	.ascii "trailingSpaceNameEquals\0"
	.byte	0x15
	.byte	0x37
	.ascii "_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_\0"
	.long	0xa26
	.long	0x22dc
	.uleb128 0x14
	.long	0x2399
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x2399
	.byte	0
	.uleb128 0x2d
	.ascii "findFirstNonSpace\0"
	.byte	0x15
	.byte	0x38
	.ascii "_ZN11FATDirEntry17findFirstNonSpaceEPKcm\0"
	.long	0x181
	.long	0x232d
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.byte	0
	.uleb128 0x12
	.ascii "findLastNonSpace\0"
	.byte	0x15
	.byte	0x39
	.ascii "_ZN11FATDirEntry16findLastNonSpaceEPKcm\0"
	.long	0x181
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1f06
	.uleb128 0x15
	.long	0x6ba
	.long	0x238e
	.uleb128 0x16
	.long	0x6ae
	.byte	0xa
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.long	0x2379
	.uleb128 0x4
	.long	0x238e
	.uleb128 0x20
	.byte	0x8
	.long	0x1ef5
	.uleb128 0x4
	.long	0x2399
	.uleb128 0x1c
	.ascii "FATLongNameEntry\0"
	.byte	0x20
	.byte	0x16
	.byte	0x10
	.long	0x289f
	.uleb128 0x34
	.ascii "ord\0"
	.byte	0x16
	.byte	0x12
	.long	0x495
	.byte	0
	.byte	0x1
	.uleb128 0x34
	.ascii "name1\0"
	.byte	0x16
	.byte	0x13
	.long	0x28a4
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.ascii "attr\0"
	.byte	0x16
	.byte	0x14
	.long	0x495
	.byte	0xb
	.byte	0x1
	.uleb128 0x34
	.ascii "type\0"
	.byte	0x16
	.byte	0x15
	.long	0x495
	.byte	0xc
	.byte	0x1
	.uleb128 0x34
	.ascii "chksum\0"
	.byte	0x16
	.byte	0x16
	.long	0x495
	.byte	0xd
	.byte	0x1
	.uleb128 0x34
	.ascii "name2\0"
	.byte	0x16
	.byte	0x17
	.long	0x28b4
	.byte	0xe
	.byte	0x1
	.uleb128 0x35
	.secrel32	.LASF16
	.byte	0x16
	.byte	0x18
	.long	0x4b5
	.byte	0x1a
	.byte	0x1
	.uleb128 0x34
	.ascii "name3\0"
	.byte	0x16
	.byte	0x19
	.long	0x28c4
	.byte	0x1c
	.byte	0x1
	.uleb128 0x37
	.ascii "getNameRequiredCapacity\0"
	.byte	0x16
	.byte	0x1b
	.ascii "_ZN16FATLongNameEntry23getNameRequiredCapacityEv\0"
	.long	0x181
	.byte	0x1
	.uleb128 0x1d
	.ascii "getAsAsciiName\0"
	.byte	0x16
	.byte	0x1d
	.ascii "_ZNK16FATLongNameEntry14getAsAsciiNameEb\0"
	.long	0x1ae9
	.byte	0x1
	.long	0x24c9
	.long	0x24d4
	.uleb128 0xf
	.long	0x28d4
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF17
	.byte	0x16
	.byte	0x1e
	.ascii "_ZNK16FATLongNameEntry19uni_isLongNameEntryEv\0"
	.long	0xa26
	.byte	0x1
	.long	0x2516
	.long	0x251c
	.uleb128 0xf
	.long	0x28d4
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF18
	.byte	0x16
	.byte	0x1f
	.ascii "_ZNK16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x28d4
	.byte	0x1
	.long	0x255d
	.long	0x2563
	.uleb128 0xf
	.long	0x28d4
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF19
	.byte	0x16
	.byte	0x20
	.ascii "_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x238e
	.byte	0x1
	.long	0x25a8
	.long	0x25ae
	.uleb128 0xf
	.long	0x28d4
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF18
	.byte	0x16
	.byte	0x21
	.ascii "_ZN16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x28da
	.byte	0x1
	.long	0x25ee
	.long	0x25f4
	.uleb128 0xf
	.long	0x28da
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF19
	.byte	0x16
	.byte	0x22
	.ascii "_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x28e0
	.byte	0x1
	.long	0x2638
	.long	0x263e
	.uleb128 0xf
	.long	0x28da
	.byte	0
	.uleb128 0x1d
	.ascii "nameEqulasAsciiName\0"
	.byte	0x16
	.byte	0x24
	.ascii "_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb\0"
	.long	0xa26
	.byte	0x1
	.long	0x269c
	.long	0x26ac
	.uleb128 0xf
	.long	0x28d4
	.uleb128 0x14
	.long	0x2399
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x1d
	.ascii "nameEqulasAsciiNameUpto\0"
	.byte	0x16
	.byte	0x25
	.ascii "_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb\0"
	.long	0xa26
	.byte	0x1
	.long	0x2716
	.long	0x272b
	.uleb128 0xf
	.long	0x28d4
	.uleb128 0x14
	.long	0x28d4
	.uleb128 0x14
	.long	0x2399
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x37
	.ascii "getNameBytesCount\0"
	.byte	0x16
	.byte	0x26
	.ascii "_ZN16FATLongNameEntry17getNameBytesCountEv\0"
	.long	0x181
	.byte	0x1
	.uleb128 0x2c
	.ascii "lookupFirstNullChar\0"
	.byte	0x16
	.byte	0x2a
	.ascii "_ZNK16FATLongNameEntry19lookupFirstNullCharEv\0"
	.long	0x181
	.long	0x27c1
	.long	0x27c7
	.uleb128 0xf
	.long	0x28d4
	.byte	0
	.uleb128 0x2d
	.ascii "unicodeNameMatchesAsciiName\0"
	.byte	0x16
	.byte	0x2f
	.ascii "_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb\0"
	.long	0xa26
	.long	0x2848
	.uleb128 0x14
	.long	0xa1a
	.uleb128 0x14
	.long	0x181
	.uleb128 0x14
	.long	0x2399
	.uleb128 0x14
	.long	0xa26
	.byte	0
	.uleb128 0x12
	.ascii "unicodeCharToAsciiChar\0"
	.byte	0x16
	.byte	0x30
	.ascii "_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv\0"
	.long	0x6ba
	.uleb128 0x14
	.long	0x731
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x23a4
	.uleb128 0x15
	.long	0x6ba
	.long	0x28b4
	.uleb128 0x16
	.long	0x6ae
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.long	0x6ba
	.long	0x28c4
	.uleb128 0x16
	.long	0x6ae
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.long	0x6ba
	.long	0x28d4
	.uleb128 0x16
	.long	0x6ae
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.byte	0x8
	.long	0x289f
	.uleb128 0x1a
	.byte	0x8
	.long	0x23a4
	.uleb128 0x1a
	.byte	0x8
	.long	0x1f06
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x1a
	.byte	0x8
	.long	0x343
	.uleb128 0x38
	.long	0x387
	.uleb128 0x39
	.long	0x13f0
	.long	0x2935
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x2935
	.long	0x294e
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1aa4
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1453
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "n\0"
	.byte	0x6
	.byte	0xf
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3c
	.long	0x1a4f
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x297c
	.uleb128 0x3b
	.ascii "curSize\0"
	.byte	0x4
	.byte	0xd1
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	0x1956
	.long	0x299f
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x299f
	.long	0x29ea
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.secrel32	.LASF8
	.byte	0x4
	.byte	0xa7
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "newData\0"
	.byte	0x4
	.byte	0xac
	.long	0x1aa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x4
	.byte	0xb0
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x199f
	.long	0x2a0d
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a0d
	.long	0x2a1a
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	0x165b
	.long	0x2a3d
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a3d
	.long	0x2a56
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ade
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "i\0"
	.byte	0x4
	.byte	0x3f
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3f
	.long	0x1792
	.long	0x2a79
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a79
	.long	0x2a86
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ade
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	0x1df9
	.long	0x2aa9
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aa9
	.long	0x2ac2
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1e47
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "i\0"
	.byte	0x5
	.byte	0x2f
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x39
	.long	0x16f4
	.long	0x2ae5
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae5
	.long	0x2afe
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "t\0"
	.byte	0x4
	.byte	0x51
	.long	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x39
	.long	0x1899
	.long	0x2b21
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b21
	.long	0x2b68
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x1ab0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "vec\0"
	.byte	0x4
	.byte	0x8a
	.long	0x1ac7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.ascii "len\0"
	.byte	0x4
	.byte	0x8a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3e
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x4
	.byte	0x8d
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x162a
	.byte	0
	.long	0x2b76
	.long	0x2b89
	.uleb128 0x41
	.secrel32	.LASF20
	.long	0x1ab0
	.uleb128 0x41
	.secrel32	.LASF21
	.long	0x481
	.byte	0
	.uleb128 0x42
	.long	0x2b68
	.ascii "_ZN6VectorIcED2Ev\0"
	.long	0x2bbe
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bbe
	.long	0x2bc7
	.uleb128 0x43
	.long	0x2b76
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x44
	.long	0x232d
	.byte	0x1
	.byte	0x5e
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c1d
	.uleb128 0x3b
	.ascii "s\0"
	.byte	0x1
	.byte	0x5e
	.long	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "len\0"
	.byte	0x1
	.byte	0x5e
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x60
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x22dc
	.byte	0x1
	.byte	0x57
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c73
	.uleb128 0x3b
	.ascii "s\0"
	.byte	0x1
	.byte	0x57
	.long	0xa1a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "len\0"
	.byte	0x1
	.byte	0x57
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x59
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	0x226e
	.byte	0x1
	.byte	0x46
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d19
	.uleb128 0x3b
	.ascii "hasSpaceStr\0"
	.byte	0x1
	.byte	0x46
	.long	0x239f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "hasSpaceStrLen\0"
	.byte	0x1
	.byte	0x46
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.ascii "nullTermStr\0"
	.byte	0x1
	.byte	0x46
	.long	0x239f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.ascii "meetTerm\0"
	.byte	0x1
	.byte	0x48
	.long	0xa26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x49
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x18
	.ascii "thisChr\0"
	.byte	0x1
	.byte	0x4e
	.long	0x6ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x2229
	.byte	0x1
	.byte	0x37
	.long	0x2d3e
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d3e
	.long	0x2d73
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "sname\0"
	.byte	0x1
	.byte	0x39
	.long	0x1ae9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x18
	.ascii "i\0"
	.byte	0x1
	.byte	0x3a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.ascii "j\0"
	.byte	0x1
	.byte	0x3b
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x46
	.long	0x21e6
	.byte	0x1
	.byte	0x26
	.long	0x2d98
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d98
	.long	0x2de2
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.ascii "res\0"
	.byte	0x1
	.byte	0x28
	.long	0x1ae9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x18
	.ascii "p\0"
	.byte	0x1
	.byte	0x29
	.long	0x238e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3e
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x18
	.ascii "entry\0"
	.byte	0x1
	.byte	0x2c
	.long	0x28d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x8
	.long	0x3c7
	.uleb128 0x3c
	.long	0x3d5
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e1b
	.uleb128 0x13
	.ascii "_Tp\0"
	.long	0x1c32
	.uleb128 0x3b
	.ascii "__t\0"
	.byte	0x3
	.byte	0x65
	.long	0x1c38
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.long	0x1bf3
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.long	0x2e2b
	.long	0x2e3e
	.uleb128 0x41
	.secrel32	.LASF20
	.long	0x1c27
	.uleb128 0x41
	.secrel32	.LASF21
	.long	0x481
	.byte	0
	.uleb128 0x42
	.long	0x2e1b
	.ascii "_ZN6StringD1Ev\0"
	.long	0x2e70
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e70
	.long	0x2e79
	.uleb128 0x43
	.long	0x2e2b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.long	0x2197
	.byte	0x1
	.byte	0x22
	.long	0x2e9e
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e9e
	.long	0x2eab
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x46
	.long	0x2134
	.byte	0x1
	.byte	0x1e
	.long	0x2ed0
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed0
	.long	0x2f02
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.ascii "mainPart\0"
	.byte	0x1
	.byte	0x1e
	.long	0x239f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.ascii "extPart\0"
	.byte	0x1
	.byte	0x1e
	.long	0x239f
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x48
	.long	0x20f3
	.byte	0x1
	.byte	0x18
	.long	0x2f27
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f27
	.long	0x2f34
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x48
	.long	0x20b0
	.byte	0x1
	.byte	0x14
	.long	0x2f59
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f59
	.long	0x2f66
	.uleb128 0x3a
	.secrel32	.LASF20
	.long	0x2394
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x49
	.long	0x207c
	.byte	0x1
	.byte	0xd
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.ascii "shortName\0"
	.byte	0x1
	.byte	0xd
	.long	0x1aa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.ascii "sum\0"
	.byte	0x1
	.byte	0xf
	.long	0x495
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x3e
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x18
	.ascii "nameLen\0"
	.byte	0x1
	.byte	0x10
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
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
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
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
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1c
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0xec
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB132
	.quad	.LFE132
	.quad	.LFB133
	.quad	.LFE133
	.quad	.LFB139
	.quad	.LFE139
	.quad	.LFB141
	.quad	.LFE141
	.quad	.LFB142
	.quad	.LFE142
	.quad	.LFB143
	.quad	.LFE143
	.quad	.LFB144
	.quad	.LFE144
	.quad	.LFB145
	.quad	.LFE145
	.quad	.LFB146
	.quad	.LFE146
	.quad	.LFB147
	.quad	.LFE147
	.quad	.LFB148
	.quad	.LFE148
	.quad	.LFB149
	.quad	.LFE149
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
	.file 24 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "TARGET_ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x8
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
	.file 25 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x19
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
	.file 26 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x1a
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
	.file 27 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x1b
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
	.uleb128 0x7
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
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 28 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRING_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x12
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_VECTOR_H_ \0"
	.file 29 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.file 30 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_SECTORREADER_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_OUTPUT_H_ \0"
	.file 31 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.file 32 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x8
	.ascii "INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 33 "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/io/printk.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRINGREF_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_ \0"
	.byte	0x4
	.file 34 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/utility"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_UTILITY 1\0"
	.file 35 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_relops.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x41
	.ascii "_STL_RELOPS_H 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x46
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_PAIR_H 1\0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x1f
	.ascii "_MOVE_H 1\0"
	.file 36 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x1f
	.ascii "_CONCEPT_CHECK_H 1\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__glibcxx_function_requires(...) \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__glibcxx_class_requires(_a,_b) \0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__glibcxx_class_requires2(_a,_b,_c) \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__glibcxx_class_requires3(_a,_b,_c,_d) \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__glibcxx_class_requires4(_a,_b,_c,_d,_e) \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_TYPE_TRAITS 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__cpp_lib_integral_constant_callable 201304\0"
	.byte	0x1
	.uleb128 0x227
	.ascii "__cpp_lib_is_null_pointer 201309\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "__cpp_lib_is_final 201402L\0"
	.byte	0x1
	.uleb128 0x64b
	.ascii "__cpp_lib_transformation_trait_aliases 201304\0"
	.byte	0x1
	.uleb128 0x8e9
	.ascii "__cpp_lib_result_of_sfinae 201210\0"
	.byte	0x1
	.uleb128 0xa19
	.ascii "_GLIBCXX_HAS_NESTED_TYPE(_NTYPE) template<typename _Tp, typename = __void_t<>> struct __has_ ##_NTYPE : false_type { }; template<typename _Tp> struct __has_ ##_NTYPE<_Tp, __void_t<typename _Tp::_NTYPE>> : true_type { };\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x98
	.ascii "_GLIBCXX_MOVE(__val) std::move(__val)\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "_GLIBCXX_FORWARD(_Tp,__val) std::forward<_Tp>(__val)\0"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x7f
	.ascii "__cpp_lib_tuple_element_t 201402\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__cpp_lib_tuples_by_type 201304\0"
	.byte	0x1
	.uleb128 0xf9
	.ascii "__cpp_lib_exchange_function 201304\0"
	.byte	0x1
	.uleb128 0x124
	.ascii "__cpp_lib_integer_sequence 201304\0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF8:
	.ascii "capacity\0"
.LASF0:
	.ascii "piecewise_construct_t\0"
.LASF17:
	.ascii "uni_isLongNameEntry\0"
.LASF13:
	.ascii "String\0"
.LASF18:
	.ascii "getLastAppearEntry\0"
.LASF11:
	.ascii "operator[]\0"
.LASF14:
	.ascii "VectorRef\0"
.LASF20:
	.ascii "this\0"
.LASF12:
	.ascii "getData\0"
.LASF15:
	.ascii "StringRef\0"
.LASF16:
	.ascii "fstClusLO\0"
.LASF6:
	.ascii "MemoryManager\0"
.LASF1:
	.ascii "operator<<\0"
.LASF19:
	.ascii "getOwnerDirectoryEntry\0"
.LASF9:
	.ascii "Vector\0"
.LASF3:
	.ascii "getSize\0"
.LASF5:
	.ascii "getDataEnd\0"
.LASF7:
	.ascii "allocate\0"
.LASF4:
	.ascii "getDataPtr\0"
.LASF21:
	.ascii "__in_chrg\0"
.LASF10:
	.ascii "operator=\0"
.LASF2:
	.ascii "MemoryChunk\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZN9StringRefC1EPKv;	.scl	2;	.type	32;	.endef
	.def	_ZN6StringC1Em;	.scl	2;	.type	32;	.endef
	.def	_ZNK16FATLongNameEntry14getAsAsciiNameEb;	.scl	2;	.type	32;	.endef
	.def	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6StringC1EOS_;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.mman, "dr"
	.globl	.refptr.mman
	.linkonce	discard
.refptr.mman:
	.quad	mman
