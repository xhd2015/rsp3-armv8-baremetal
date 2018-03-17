	.file	"MemoryChunk.cpp"
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
	.section	.text$_ZnwmPv,"x"
	.linkonce discard
	.globl	_ZnwmPv
	.def	_ZnwmPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZnwmPv
_ZnwmPv:
.LFB55:
	.file 1 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/new"
	.loc 1 147 0
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
	.loc 1 147 0
	movq	24(%rbp), %rax
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN11MemoryChunkC2Embmbm
	.def	_ZN11MemoryChunkC2Embmbm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunkC2Embmbm
_ZN11MemoryChunkC2Embmbm:
.LFB60:
	.file 2 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp"
	.loc 2 12 0
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
	movl	%r8d, %edx
	movq	%r9, 40(%rbp)
	movl	48(%rbp), %eax
	movb	%dl, 32(%rbp)
	movb	%al, -4(%rbp)
.LBB2:
	.loc 2 13 0
	movq	40(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	andl	$63, %edx
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	cmpb	$0, -4(%rbp)
	je	.L4
	.loc 2 13 0 is_stmt 0 discriminator 1
	movl	$1, %edx
	jmp	.L5
.L4:
	.loc 2 13 0 discriminator 2
	movl	$0, %edx
.L5:
	.loc 2 13 0 discriminator 4
	movq	16(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	(%rax), %edx
	andl	$-65, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	cmpb	$0, 32(%rbp)
	je	.L6
	.loc 2 13 0 discriminator 5
	movl	$1, %edx
	jmp	.L7
.L6:
	.loc 2 13 0 discriminator 6
	movl	$0, %edx
.L7:
	.loc 2 13 0 discriminator 8
	movq	16(%rbp), %rax
	sall	$7, %edx
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	andl	$127, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	movabsq	$274877906943, %rax
	andq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	movq	56(%rbp), %rax
	andl	$262143, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	andl	$3, %ecx
	movl	%ecx, %r8d
	sall	$6, %r8d
	movzbl	5(%rax), %ecx
	andl	$63, %ecx
	orl	%r8d, %ecx
	movb	%cl, 5(%rax)
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %r8d
	movzbl	6(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 6(%rax)
	shrl	$10, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	7(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 7(%rax)
.LBE2:
	nop
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE60:
	.seh_endproc
	.globl	_ZN11MemoryChunkC1Embmbm
	.def	_ZN11MemoryChunkC1Embmbm;	.scl	2;	.type	32;	.endef
	.set	_ZN11MemoryChunkC1Embmbm,_ZN11MemoryChunkC2Embmbm
	.align 2
	.globl	_ZNK11MemoryChunk11isAllocatedEv
	.def	_ZNK11MemoryChunk11isAllocatedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk11isAllocatedEv
_ZNK11MemoryChunk11isAllocatedEv:
.LFB62:
	.loc 2 14 0 is_stmt 1
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
	.loc 2 15 0
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	setne	%al
	.loc 2 16 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk12setAllocatedEb
	.def	_ZN11MemoryChunk12setAllocatedEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk12setAllocatedEb
_ZN11MemoryChunk12setAllocatedEb:
.LFB63:
	.loc 2 19 0
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
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 2 20 0
	cmpb	$0, 24(%rbp)
	je	.L11
	.loc 2 20 0 is_stmt 0 discriminator 1
	movl	$1, %edx
	jmp	.L12
.L11:
	.loc 2 20 0 discriminator 2
	movl	$0, %edx
.L12:
	.loc 2 20 0 discriminator 4
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	sall	$7, %ecx
	movzbl	(%rax), %edx
	andl	$127, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 21 0 is_stmt 1 discriminator 4
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk5isEndEv
	.def	_ZNK11MemoryChunk5isEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk5isEndEv
_ZNK11MemoryChunk5isEndEv:
.LFB64:
	.loc 2 23 0
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
	.loc 2 24 0
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$64, %eax
	testb	%al, %al
	setne	%al
	.loc 2 25 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk6setEndEb
	.def	_ZN11MemoryChunk6setEndEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk6setEndEb
_ZN11MemoryChunk6setEndEb:
.LFB65:
	.loc 2 27 0
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
	movl	%edx, %eax
	movb	%al, 24(%rbp)
	.loc 2 28 0
	cmpb	$0, 24(%rbp)
	je	.L16
	.loc 2 28 0 is_stmt 0 discriminator 1
	movl	$1, %edx
	jmp	.L17
.L16:
	.loc 2 28 0 discriminator 2
	movl	$0, %edx
.L17:
	.loc 2 28 0 discriminator 4
	movq	16(%rbp), %rax
	andl	$1, %edx
	movl	%edx, %ecx
	sall	$6, %ecx
	movzbl	(%rax), %edx
	andl	$-65, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 29 0 is_stmt 1 discriminator 4
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE65:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk7getNextEv
	.def	_ZNK11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk7getNextEv
_ZNK11MemoryChunk7getNextEv:
.LFB66:
	.loc 2 31 0
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
	.loc 2 32 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk5isEndEv
	testb	%al, %al
	je	.L19
	.loc 2 33 0
	movl	$0, %eax
	jmp	.L20
.L19:
	.loc 2 34 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk10getDataEndEv
	movq	%rax, %r8
	movq	16(%rbp), %rax
	movzbl	5(%rax), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rax), %ecx
	salq	$2, %rcx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	movl	%eax, %eax
	addq	%r8, %rax
	movq	%rax, -8(%rbp)
.L24:
	.loc 2 35 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L21
	.loc 2 35 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$63, %eax
	testb	%al, %al
	je	.L21
	.loc 2 35 0 discriminator 3
	movl	$1, %eax
	jmp	.L22
.L21:
	.loc 2 35 0 discriminator 4
	movl	$0, %eax
.L22:
	.loc 2 35 0 discriminator 6
	testb	%al, %al
	je	.L23
	.loc 2 36 0 is_stmt 1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	addq	%rax, -8(%rbp)
	.loc 2 35 0
	jmp	.L24
.L23:
	.loc 2 37 0
	movq	-8(%rbp), %rax
.L20:
	.loc 2 38 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk7getNextEv
	.def	_ZN11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk7getNextEv
_ZN11MemoryChunk7getNextEv:
.LFB67:
	.loc 2 40 0
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
	.loc 2 41 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk7getNextEv
	.loc 2 42 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk7getSizeEv
	.def	_ZNK11MemoryChunk7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk7getSizeEv
_ZNK11MemoryChunk7getSizeEv:
.LFB68:
	.loc 2 46 0
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
	.loc 2 47 0
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	.loc 2 48 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE68:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk7setSizeEm
	.def	_ZN11MemoryChunk7setSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk7setSizeEm
_ZN11MemoryChunk7setSizeEm:
.LFB69:
	.loc 2 51 0
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
	.loc 2 52 0
	movabsq	$274877906943, %rax
	andq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	.loc 2 53 0
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk10getDataPtrEv
	.def	_ZN11MemoryChunk10getDataPtrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk10getDataPtrEv
_ZN11MemoryChunk10getDataPtrEv:
.LFB70:
	.loc 2 55 0
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
	.loc 2 56 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk10getDataPtrEv
	.loc 2 57 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE70:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk10getDataPtrEv
	.def	_ZNK11MemoryChunk10getDataPtrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk10getDataPtrEv
_ZNK11MemoryChunk10getDataPtrEv:
.LFB71:
	.loc 2 59 0
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
	.loc 2 60 0
	movq	16(%rbp), %rax
	addq	$8, %rax
	.loc 2 61 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk10getDataEndEv
	.def	_ZN11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk10getDataEndEv
_ZN11MemoryChunk10getDataEndEv:
.LFB72:
	.loc 2 63 0
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
	.loc 2 64 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk10getDataEndEv
	.loc 2 65 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk10getDataEndEv
	.def	_ZNK11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk10getDataEndEv
_ZNK11MemoryChunk10getDataEndEv:
.LFB73:
	.loc 2 67 0
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
	.loc 2 68 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	.loc 2 69 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE73:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk18getNextBaseFromEndEv
	.def	_ZNK11MemoryChunk18getNextBaseFromEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk18getNextBaseFromEndEv
_ZNK11MemoryChunk18getNextBaseFromEndEv:
.LFB74:
	.loc 2 74 0
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
	.loc 2 75 0
	movq	16(%rbp), %rax
	movzbl	5(%rax), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rax), %ecx
	salq	$2, %rcx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	movl	%eax, %eax
	.loc 2 76 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE74:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk18setNextBaseFromEndEm
	.def	_ZN11MemoryChunk18setNextBaseFromEndEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk18setNextBaseFromEndEm
_ZN11MemoryChunk18setNextBaseFromEndEm:
.LFB75:
	.loc 2 78 0
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
	.loc 2 79 0
	movq	24(%rbp), %rax
	andl	$262143, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	andl	$3, %ecx
	movl	%ecx, %r8d
	sall	$6, %r8d
	movzbl	5(%rax), %ecx
	andl	$63, %ecx
	orl	%r8d, %ecx
	movb	%cl, 5(%rax)
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %r8d
	movzbl	6(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 6(%rax)
	shrl	$10, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	7(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 7(%rax)
	.loc 2 80 0
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE75:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
	.def	_ZNK11MemoryChunk23getNextValidChunkOffsetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
_ZNK11MemoryChunk23getNextValidChunkOffsetEv:
.LFB76:
	.loc 2 82 0
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
	.loc 2 83 0
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	.loc 2 84 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE76:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.def	_ZN11MemoryChunk23setNextValidChunkOffsetEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk23setNextValidChunkOffsetEm
_ZN11MemoryChunk23setNextValidChunkOffsetEm:
.LFB77:
	.loc 2 87 0
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
	.loc 2 88 0
	movq	24(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
	.loc 2 89 0
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE77:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk9moveAheadEm
	.def	_ZN11MemoryChunk9moveAheadEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk9moveAheadEm
_ZN11MemoryChunk9moveAheadEm:
.LFB78:
	.loc 2 92 0
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
	.loc 2 93 0
	movq	16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$-128, %eax
	testb	%al, %al
	jne	.L45
	.loc 2 93 0 is_stmt 0 discriminator 1
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	cmpq	24(%rbp), %rax
	ja	.L46
.L45:
	.loc 2 94 0 is_stmt 1
	movl	$0, %eax
	jmp	.L47
.L46:
	.loc 2 95 0
	cmpq	$0, 24(%rbp)
	jne	.L48
	.loc 2 96 0
	movq	16(%rbp), %rax
	jmp	.L47
.L48:
	.loc 2 97 0
	movq	16(%rbp), %rdx
	movq	24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -8(%rbp)
.LBB3:
	.loc 2 99 0
	cmpq	$7, 24(%rbp)
	jbe	.L49
	.loc 2 100 0
	movq	-8(%rbp), %rax
	movq	16(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	jmp	.L50
.L49:
.LBB4:
	.loc 2 102 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	.loc 2 103 0
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
.L50:
.LBE4:
.LBE3:
	.loc 2 105 0
	movq	-8(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	subq	24(%rbp), %rax
	movq	%rax, %rdx
	movabsq	$274877906943, %rax
	andq	%rax, %rdx
	movq	-8(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	.loc 2 108 0
	cmpq	$8, 24(%rbp)
	jbe	.L51
	.loc 2 111 0
	movq	16(%rbp), %rax
	movzbl	5(%rax), %edx
	andl	$63, %edx
	movb	%dl, 5(%rax)
	movzbl	6(%rax), %edx
	andl	$0, %edx
	movb	%dl, 6(%rax)
	movzbl	7(%rax), %edx
	andl	$0, %edx
	movb	%dl, 7(%rax)
	.loc 2 112 0
	movq	24(%rbp), %rax
	leaq	-8(%rax), %rdx
	movabsq	$274877906943, %rax
	andq	%rax, %rdx
	movq	16(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	jmp	.L52
.L51:
	.loc 2 114 0
	movq	24(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	andl	$63, %edx
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
.L52:
	.loc 2 116 0
	movq	-8(%rbp), %rax
.L47:
	.loc 2 117 0
	addq	$16, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE78:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.def	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm:
.LFB79:
	.loc 2 119 0
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
	.loc 2 120 0
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	cmpq	24(%rbp), %rax
	jnb	.L54
	.loc 2 121 0
	movq	$-1, %rax
	jmp	.L55
.L54:
	.loc 2 122 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk10getDataPtrEv
	movl	$0, %edx
	divq	32(%rbp)
	movq	%rdx, -8(%rbp)
	.loc 2 123 0
	cmpq	$0, -8(%rbp)
	je	.L56
	.loc 2 125 0
	movq	32(%rbp), %rax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	24(%rbp), %rax
	leaq	(%rdx,%rax), %r8
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	cmpq	%rax, %r8
	jbe	.L57
	.loc 2 126 0
	movq	$-1, %rax
	jmp	.L55
.L57:
	.loc 2 128 0
	movq	32(%rbp), %rax
	subq	-8(%rbp), %rax
	jmp	.L55
.L56:
	.loc 2 130 0
	movl	$0, %eax
.L55:
	.loc 2 131 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE79:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk5splitEm
	.def	_ZN11MemoryChunk5splitEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk5splitEm
_ZN11MemoryChunk5splitEm:
.LFB80:
	.loc 2 133 0
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
	.loc 2 134 0
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk5isEndEv
	testb	%al, %al
	jne	.L59
	.loc 2 134 0 is_stmt 0 discriminator 2
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	jne	.L59
	.loc 2 134 0 discriminator 4
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	cmpq	40(%rbp), %rax
	jb	.L59
	.loc 2 134 0 discriminator 6
	cmpq	$0, 40(%rbp)
	jne	.L60
.L59:
	.loc 2 134 0 discriminator 7
	movl	$1, %eax
	jmp	.L61
.L60:
	.loc 2 134 0 discriminator 8
	movl	$0, %eax
.L61:
	.loc 2 134 0 discriminator 10
	testb	%al, %al
	je	.L62
	.loc 2 135 0 is_stmt 1
	movl	$0, %eax
	jmp	.L63
.L62:
	.loc 2 136 0
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	subq	40(%rbp), %rax
	movq	%rax, -8(%rbp)
	.loc 2 137 0
	movq	32(%rbp), %rcx
	call	_ZN11MemoryChunk10getDataPtrEv
	movq	%rax, %rdx
	movq	40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 138 0
	cmpq	$8, -8(%rbp)
	jbe	.L64
	.loc 2 140 0
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	movzbl	%al, %ebx
	movq	32(%rbp), %rcx
	call	_ZNK11MemoryChunk18getNextBaseFromEndEv
	movq	%rax, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L66
	.loc 2 140 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rdx
	subq	$8, %rdx
	movq	%rsi, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	%ebx, %r8d
	movq	%rax, %rcx
	call	_ZN11MemoryChunkC1Embmbm
.L66:
	.loc 2 142 0 is_stmt 1
	movabsq	$274877906943, %rax
	andq	40(%rbp), %rax
	movq	%rax, %rdx
	movq	32(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	.loc 2 143 0
	movq	32(%rbp), %rax
	movzbl	5(%rax), %edx
	andl	$63, %edx
	movb	%dl, 5(%rax)
	movzbl	6(%rax), %edx
	andl	$0, %edx
	movb	%dl, 6(%rax)
	movzbl	7(%rax), %edx
	andl	$0, %edx
	movb	%dl, 7(%rax)
	jmp	.L67
.L64:
	.loc 2 145 0
	movq	-8(%rbp), %rax
	andl	$63, %eax
	movl	%eax, %edx
	movq	32(%rbp), %rax
	andl	$63, %edx
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, (%rax)
.L67:
	.loc 2 147 0
	movl	$1, %eax
.L63:
	.loc 2 148 0
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
.LFE80:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.def	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
_ZN11MemoryChunk25mergeTrailingsUnallocatedEv:
.LFB81:
	.loc 2 151 0
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
	.loc 2 152 0
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	jne	.L69
	.loc 2 152 0 is_stmt 0 discriminator 2
	movq	16(%rbp), %rax
	movzbl	5(%rax), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rax), %ecx
	salq	$2, %rcx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	testl	%eax, %eax
	jne	.L69
	.loc 2 152 0 discriminator 4
	movq	16(%rbp), %rcx
	call	_ZNK11MemoryChunk5isEndEv
	testb	%al, %al
	je	.L70
.L69:
	.loc 2 152 0 discriminator 5
	movl	$1, %eax
	jmp	.L71
.L70:
	.loc 2 152 0 discriminator 6
	movl	$0, %eax
.L71:
	.loc 2 152 0 discriminator 8
	testb	%al, %al
	jne	.L80
	.loc 2 154 0 is_stmt 1
	movq	$0, -8(%rbp)
	.loc 2 155 0
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -16(%rbp)
	.loc 2 156 0
	movq	$0, -24(%rbp)
.L79:
.LBB5:
	.loc 2 159 0
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$63, %eax
	movzbl	%al, %eax
	movq	%rax, -32(%rbp)
	.loc 2 160 0
	cmpq	$0, -32(%rbp)
	jne	.L74
	.loc 2 162 0
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L75
	.loc 2 162 0 is_stmt 0 discriminator 1
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L75
	.loc 2 162 0 discriminator 3
	movq	-16(%rbp), %rax
	movzbl	5(%rax), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rax), %ecx
	salq	$2, %rcx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	testl	%eax, %eax
	jne	.L75
	.loc 2 162 0 discriminator 5
	movl	$1, %eax
	jmp	.L76
.L75:
	.loc 2 162 0 discriminator 6
	movl	$0, %eax
.L76:
	.loc 2 162 0 discriminator 8
	testb	%al, %al
	je	.L81
	.loc 2 163 0 is_stmt 1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, -32(%rbp)
.L74:
	.loc 2 167 0
	movq	-32(%rbp), %rax
	addq	%rax, -8(%rbp)
	.loc 2 168 0
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	.loc 2 169 0
	movq	-32(%rbp), %rax
	addq	%rax, -16(%rbp)
.LBE5:
	.loc 2 170 0
	jmp	.L79
.L81:
.LBB6:
	.loc 2 165 0
	nop
.LBE6:
	.loc 2 172 0
	movq	16(%rbp), %rax
	movzbl	1(%rax), %edx
	movzbl	2(%rax), %ecx
	salq	$8, %rcx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$16, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$24, %rdx
	orq	%rcx, %rdx
	movzbl	5(%rax), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movabsq	$274877906943, %rax
	andq	%rax, %rdx
	movq	16(%rbp), %rax
	movzbl	%dl, %r8d
	movzbl	1(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 1(%rax)
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movzbl	%cl, %r8d
	movzbl	2(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 2(%rax)
	movq	%rdx, %rcx
	shrq	$16, %rcx
	movzbl	%cl, %r8d
	movzbl	3(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 3(%rax)
	movq	%rdx, %rcx
	shrq	$24, %rcx
	movzbl	%cl, %r8d
	movzbl	4(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 4(%rax)
	shrq	$32, %rdx
	andl	$63, %edx
	movl	%edx, %ecx
	andl	$63, %ecx
	movzbl	5(%rax), %edx
	andl	$-64, %edx
	orl	%ecx, %edx
	movb	%dl, 5(%rax)
	.loc 2 173 0
	movq	-24(%rbp), %rax
	movzbl	5(%rax), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rax), %ecx
	salq	$2, %rcx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	movl	%eax, %edx
	movq	16(%rbp), %rax
	movl	%edx, %ecx
	andl	$3, %ecx
	movl	%ecx, %r8d
	sall	$6, %r8d
	movzbl	5(%rax), %ecx
	andl	$63, %ecx
	orl	%r8d, %ecx
	movb	%cl, 5(%rax)
	movl	%edx, %ecx
	shrl	$2, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %r8d
	movzbl	6(%rax), %ecx
	andl	$0, %ecx
	orl	%r8d, %ecx
	movb	%cl, 6(%rax)
	shrl	$10, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	7(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 7(%rax)
	jmp	.L68
.L80:
	.loc 2 153 0
	nop
.L68:
	.loc 2 174 0
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE81:
	.seh_endproc
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 6 "<built-in>"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_ptr.h"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 13 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/type_traits"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x185b
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryChunk.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subprojects/host/Debug\0"
	.secrel32	.Ldebug_ranges0+0x30
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x3
	.byte	0xd8
	.long	0x187
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x4
	.byte	0x20
	.byte	0x3
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1e4
	.uleb128 0x5
	.ascii "__max_align_ll\0"
	.byte	0x3
	.word	0x1ab
	.long	0x1e4
	.byte	0
	.uleb128 0x5
	.ascii "__max_align_ld\0"
	.byte	0x3
	.word	0x1ac
	.long	0x1f5
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
	.uleb128 0x6
	.ascii "max_align_t\0"
	.byte	0x3
	.word	0x1ad
	.long	0x19c
	.uleb128 0x7
	.ascii "decltype(nullptr)\0"
	.uleb128 0x8
	.ascii "std\0"
	.byte	0x6
	.byte	0
	.long	0x87b
	.uleb128 0x9
	.byte	0x4
	.byte	0x38
	.long	0x204
	.uleb128 0x9
	.byte	0x5
	.byte	0x30
	.long	0x87b
	.uleb128 0x9
	.byte	0x5
	.byte	0x31
	.long	0x898
	.uleb128 0x9
	.byte	0x5
	.byte	0x32
	.long	0x8b4
	.uleb128 0x9
	.byte	0x5
	.byte	0x33
	.long	0x8cf
	.uleb128 0x9
	.byte	0x5
	.byte	0x35
	.long	0x9fe
	.uleb128 0x9
	.byte	0x5
	.byte	0x36
	.long	0xa11
	.uleb128 0x9
	.byte	0x5
	.byte	0x37
	.long	0xa25
	.uleb128 0x9
	.byte	0x5
	.byte	0x38
	.long	0xa39
	.uleb128 0x9
	.byte	0x5
	.byte	0x3a
	.long	0x954
	.uleb128 0x9
	.byte	0x5
	.byte	0x3b
	.long	0x968
	.uleb128 0x9
	.byte	0x5
	.byte	0x3c
	.long	0x97d
	.uleb128 0x9
	.byte	0x5
	.byte	0x3d
	.long	0x992
	.uleb128 0x9
	.byte	0x5
	.byte	0x3f
	.long	0xac1
	.uleb128 0x9
	.byte	0x5
	.byte	0x40
	.long	0xaa0
	.uleb128 0x9
	.byte	0x5
	.byte	0x42
	.long	0x8de
	.uleb128 0x9
	.byte	0x5
	.byte	0x43
	.long	0x8fe
	.uleb128 0x9
	.byte	0x5
	.byte	0x44
	.long	0x924
	.uleb128 0x9
	.byte	0x5
	.byte	0x45
	.long	0x944
	.uleb128 0x9
	.byte	0x5
	.byte	0x47
	.long	0xa4d
	.uleb128 0x9
	.byte	0x5
	.byte	0x48
	.long	0xa61
	.uleb128 0x9
	.byte	0x5
	.byte	0x49
	.long	0xa76
	.uleb128 0x9
	.byte	0x5
	.byte	0x4a
	.long	0xa8b
	.uleb128 0x9
	.byte	0x5
	.byte	0x4c
	.long	0x9a7
	.uleb128 0x9
	.byte	0x5
	.byte	0x4d
	.long	0x9bc
	.uleb128 0x9
	.byte	0x5
	.byte	0x4e
	.long	0x9d2
	.uleb128 0x9
	.byte	0x5
	.byte	0x4f
	.long	0x9e8
	.uleb128 0x9
	.byte	0x5
	.byte	0x51
	.long	0xad1
	.uleb128 0x9
	.byte	0x5
	.byte	0x52
	.long	0xab0
	.uleb128 0x8
	.ascii "__exception_ptr\0"
	.byte	0x7
	.byte	0x35
	.long	0x77e
	.uleb128 0xa
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x7
	.byte	0x4d
	.long	0x771
	.uleb128 0xb
	.ascii "_M_exception_object\0"
	.byte	0x7
	.byte	0x4f
	.long	0x11c3
	.byte	0
	.uleb128 0xc
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x51
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0x37a
	.long	0x385
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11c3
	.byte	0
	.uleb128 0xf
	.ascii "_M_addref\0"
	.byte	0x7
	.byte	0x53
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0x3cc
	.long	0x3d2
	.uleb128 0xd
	.long	0x11cc
	.byte	0
	.uleb128 0xf
	.ascii "_M_release\0"
	.byte	0x7
	.byte	0x54
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0x41c
	.long	0x422
	.uleb128 0xd
	.long	0x11cc
	.byte	0
	.uleb128 0x10
	.ascii "_M_get\0"
	.byte	0x7
	.byte	0x56
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x11c3
	.long	0x468
	.long	0x46e
	.uleb128 0xd
	.long	0x11d2
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x5c
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.byte	0x1
	.long	0x4a8
	.long	0x4ae
	.uleb128 0xd
	.long	0x11cc
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x5e
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.byte	0x1
	.long	0x4ec
	.long	0x4f7
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11d8
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x61
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.byte	0x1
	.long	0x532
	.long	0x53d
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x7e0
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF0
	.byte	0x7
	.byte	0x65
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.byte	0x1
	.long	0x57a
	.long	0x585
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11de
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x72
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x11e4
	.byte	0x1
	.long	0x5c7
	.long	0x5d2
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11d8
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF1
	.byte	0x7
	.byte	0x76
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x11e4
	.byte	0x1
	.long	0x613
	.long	0x61e
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11de
	.byte	0
	.uleb128 0x13
	.ascii "~exception_ptr\0"
	.byte	0x7
	.byte	0x7d
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.byte	0x1
	.long	0x663
	.long	0x66e
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xd
	.long	0x8c3
	.byte	0
	.uleb128 0x13
	.ascii "swap\0"
	.byte	0x7
	.byte	0x80
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.byte	0x1
	.long	0x6af
	.long	0x6ba
	.uleb128 0xd
	.long	0x11cc
	.uleb128 0xe
	.long	0x11e4
	.byte	0
	.uleb128 0x14
	.ascii "operator bool\0"
	.byte	0x7
	.byte	0x8c
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x11b0
	.byte	0x1
	.long	0x704
	.long	0x70a
	.uleb128 0xd
	.long	0x11d2
	.byte	0
	.uleb128 0x15
	.ascii "__cxa_exception_type\0"
	.byte	0x7
	.byte	0x95
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x11ea
	.byte	0x1
	.long	0x76a
	.uleb128 0xd
	.long	0x11d2
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x318
	.uleb128 0x9
	.byte	0x7
	.byte	0x47
	.long	0x785
	.byte	0
	.uleb128 0x9
	.byte	0x7
	.byte	0x3a
	.long	0x318
	.uleb128 0x17
	.ascii "rethrow_exception\0"
	.byte	0x7
	.byte	0x43
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0x7e0
	.uleb128 0xe
	.long	0x318
	.byte	0
	.uleb128 0x3
	.ascii "nullptr_t\0"
	.byte	0x8
	.byte	0xcd
	.long	0x218
	.uleb128 0x18
	.ascii "type_info\0"
	.uleb128 0x16
	.long	0x7f1
	.uleb128 0x19
	.ascii "__swappable_details\0"
	.byte	0xd
	.word	0xa37
	.uleb128 0x1a
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x1
	.byte	0x52
	.long	0x84b
	.uleb128 0x1b
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x55
	.ascii "_ZNSt9nothrow_tC4Ev\0"
	.long	0x844
	.uleb128 0xd
	.long	0x120a
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0x819
	.uleb128 0x1c
	.ascii "nothrow\0"
	.byte	0x1
	.byte	0x59
	.ascii "_ZSt7nothrow\0"
	.long	0x84b
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x8
	.byte	0xc9
	.long	0x187
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x9
	.byte	0x22
	.long	0x889
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x9
	.byte	0x25
	.long	0x8a7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x9
	.byte	0x28
	.long	0x8c3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x16
	.long	0x8c3
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x9
	.byte	0x2b
	.long	0x16d
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x9
	.byte	0x2e
	.long	0x8ed
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x9
	.byte	0x31
	.long	0x90e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x9
	.byte	0x34
	.long	0x934
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x9
	.byte	0x37
	.long	0x187
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x9
	.byte	0x3c
	.long	0x889
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x9
	.byte	0x3d
	.long	0x8a7
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x9
	.byte	0x3e
	.long	0x8c3
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x9
	.byte	0x3f
	.long	0x16d
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x9
	.byte	0x40
	.long	0x8ed
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x9
	.byte	0x41
	.long	0x90e
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x9
	.byte	0x42
	.long	0x934
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x9
	.byte	0x43
	.long	0x187
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x9
	.byte	0x47
	.long	0x889
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x16d
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x9
	.byte	0x49
	.long	0x16d
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x9
	.byte	0x4a
	.long	0x16d
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x9
	.byte	0x4b
	.long	0x8ed
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x9
	.byte	0x4c
	.long	0x187
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x9
	.byte	0x4d
	.long	0x187
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x9
	.byte	0x4e
	.long	0x187
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x9
	.byte	0x53
	.long	0x16d
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x9
	.byte	0x56
	.long	0x187
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x9
	.byte	0x5b
	.long	0x16d
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x9
	.byte	0x5c
	.long	0x187
	.uleb128 0x1d
	.long	0xb0b
	.long	0xaf2
	.uleb128 0x1e
	.long	0xaf7
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xae2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x16
	.long	0xb03
	.uleb128 0x1f
	.ascii "EMPTY_STR\0"
	.byte	0xa
	.byte	0x16
	.long	0xaf2
	.uleb128 0x20
	.ascii "UNIT_K\0"
	.byte	0xa
	.byte	0x1a
	.long	0x8ca
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0x20
	.ascii "KiB\0"
	.byte	0xa
	.byte	0x1b
	.long	0x8ca
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0x20
	.ascii "MiB\0"
	.byte	0xa
	.byte	0x1c
	.long	0x8ca
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0x20
	.ascii "GiB\0"
	.byte	0xa
	.byte	0x1d
	.long	0x8ca
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0x1d
	.long	0xb0b
	.long	0xb83
	.uleb128 0x21
	.byte	0
	.uleb128 0x1f
	.ascii "digitsMap\0"
	.byte	0xb
	.byte	0x16
	.long	0xb78
	.uleb128 0xa
	.secrel32	.LASF3
	.byte	0x8
	.byte	0xc
	.byte	0x16
	.long	0x11a0
	.uleb128 0x22
	.secrel32	.LASF4
	.byte	0xc
	.byte	0x42
	.long	0x944
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x23
	.ascii "endMark\0"
	.byte	0xc
	.byte	0x43
	.long	0x944
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF5
	.byte	0xc
	.byte	0x44
	.long	0x944
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.ascii "size\0"
	.byte	0xc
	.byte	0x45
	.long	0x944
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF6
	.byte	0xc
	.byte	0x46
	.long	0x944
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF3
	.byte	0xc
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xc19
	.long	0xc38
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x179
	.uleb128 0xe
	.long	0x11b0
	.uleb128 0xe
	.long	0x179
	.uleb128 0xe
	.long	0x11b0
	.uleb128 0xe
	.long	0x179
	.byte	0
	.uleb128 0x24
	.ascii "isAllocated\0"
	.byte	0xc
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x11b0
	.byte	0x1
	.long	0xc75
	.long	0xc7b
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x13
	.ascii "setAllocated\0"
	.byte	0xc
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xcb5
	.long	0xcc0
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x11b0
	.byte	0
	.uleb128 0x24
	.ascii "isEnd\0"
	.byte	0xc
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x11b0
	.byte	0x1
	.long	0xcf0
	.long	0xcf6
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x13
	.ascii "setEnd\0"
	.byte	0xc
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xd23
	.long	0xd2e
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x11b0
	.byte	0
	.uleb128 0x24
	.ascii "getNext\0"
	.byte	0xc
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x11b8
	.byte	0x1
	.long	0xd62
	.long	0xd68
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x24
	.ascii "getNext\0"
	.byte	0xc
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x11a5
	.byte	0x1
	.long	0xd9b
	.long	0xda1
	.uleb128 0xd
	.long	0x11a5
	.byte	0
	.uleb128 0x24
	.ascii "getSize\0"
	.byte	0xc
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x179
	.byte	0x1
	.long	0xdd5
	.long	0xddb
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x13
	.ascii "setSize\0"
	.byte	0xc
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xe0a
	.long	0xe15
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x179
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF7
	.byte	0xc
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x11c3
	.byte	0x1
	.long	0xe48
	.long	0xe4e
	.uleb128 0xd
	.long	0x11a5
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF7
	.byte	0xc
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x11c5
	.byte	0x1
	.long	0xe82
	.long	0xe88
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF8
	.byte	0xc
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x11c3
	.byte	0x1
	.long	0xebb
	.long	0xec1
	.uleb128 0xd
	.long	0x11a5
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF8
	.byte	0xc
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x11c5
	.byte	0x1
	.long	0xef5
	.long	0xefb
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x24
	.ascii "getNextBaseFromEnd\0"
	.byte	0xc
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x944
	.byte	0x1
	.long	0xf46
	.long	0xf4c
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x13
	.ascii "setNextBaseFromEnd\0"
	.byte	0xc
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xf92
	.long	0xf9d
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x944
	.byte	0
	.uleb128 0x24
	.ascii "getNextValidChunkOffset\0"
	.byte	0xc
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x944
	.byte	0x1
	.long	0xff2
	.long	0xff8
	.uleb128 0xd
	.long	0x11b8
	.byte	0
	.uleb128 0x13
	.ascii "setNextValidChunkOffset\0"
	.byte	0xc
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x1048
	.long	0x1053
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x944
	.byte	0
	.uleb128 0x24
	.ascii "moveAhead\0"
	.byte	0xc
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x11a5
	.byte	0x1
	.long	0x108a
	.long	0x1095
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x179
	.byte	0
	.uleb128 0x24
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xc
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x179
	.byte	0x1
	.long	0x10ff
	.long	0x110f
	.uleb128 0xd
	.long	0x11b8
	.uleb128 0xe
	.long	0x179
	.uleb128 0xe
	.long	0x179
	.byte	0
	.uleb128 0x24
	.ascii "split\0"
	.byte	0xc
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x11b0
	.byte	0x1
	.long	0x113e
	.long	0x1149
	.uleb128 0xd
	.long	0x11a5
	.uleb128 0xe
	.long	0x179
	.byte	0
	.uleb128 0x25
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xc
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x1199
	.uleb128 0xd
	.long	0x11a5
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	0xb94
	.uleb128 0x26
	.byte	0x8
	.long	0xb94
	.uleb128 0x16
	.long	0x11a5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x26
	.byte	0x8
	.long	0x11a0
	.uleb128 0x16
	.long	0x11b8
	.uleb128 0x27
	.byte	0x8
	.uleb128 0x26
	.byte	0x8
	.long	0x11cb
	.uleb128 0x28
	.uleb128 0x26
	.byte	0x8
	.long	0x318
	.uleb128 0x26
	.byte	0x8
	.long	0x771
	.uleb128 0x29
	.byte	0x8
	.long	0x771
	.uleb128 0x2a
	.byte	0x8
	.long	0x318
	.uleb128 0x29
	.byte	0x8
	.long	0x318
	.uleb128 0x26
	.byte	0x8
	.long	0x7fc
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x26
	.byte	0x8
	.long	0x819
	.uleb128 0x2b
	.long	0x1149
	.byte	0x2
	.byte	0x96
	.long	0x1235
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1235
	.long	0x129d
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "collectedSize\0"
	.byte	0x2
	.byte	0x9a
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.ascii "freeChunk\0"
	.byte	0x2
	.byte	0x9b
	.long	0x11a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.ascii "lastChunk\0"
	.byte	0x2
	.byte	0x9c
	.long	0x11a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2d
	.secrel32	.Ldebug_ranges0+0
	.uleb128 0x20
	.ascii "addingSize\0"
	.byte	0x2
	.byte	0x9f
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x110f
	.byte	0x2
	.byte	0x84
	.long	0x12c2
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c2
	.long	0x1304
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "splitSize\0"
	.byte	0x2
	.byte	0x84
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x20
	.ascii "leftSize\0"
	.byte	0x2
	.byte	0x88
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x89
	.long	0x11a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2b
	.long	0x1095
	.byte	0x2
	.byte	0x76
	.long	0x1329
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1329
	.long	0x136c
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "allocSize\0"
	.byte	0x2
	.byte	0x76
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.ascii "alignment\0"
	.byte	0x2
	.byte	0x76
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.ascii "mod\0"
	.byte	0x2
	.byte	0x7a
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	0x1053
	.byte	0x2
	.byte	0x5b
	.long	0x1391
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1391
	.long	0x13e0
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "moveSize\0"
	.byte	0x2
	.byte	0x5b
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x61
	.long	0x11a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x31
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x20
	.ascii "temp\0"
	.byte	0x2
	.byte	0x66
	.long	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0xff8
	.byte	0x2
	.byte	0x56
	.long	0x1405
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1405
	.long	0x1420
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.secrel32	.LASF4
	.byte	0x2
	.byte	0x56
	.long	0x944
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.long	0xf9d
	.byte	0x2
	.byte	0x52
	.long	0x1445
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x1445
	.long	0x1452
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	0xf4c
	.byte	0x2
	.byte	0x4d
	.long	0x1477
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x1477
	.long	0x1492
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.secrel32	.LASF6
	.byte	0x2
	.byte	0x4d
	.long	0x944
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.long	0xefb
	.byte	0x2
	.byte	0x49
	.long	0x14b7
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b7
	.long	0x14c4
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xec1
	.byte	0x2
	.byte	0x42
	.long	0x14e9
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x14e9
	.long	0x14f6
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xe88
	.byte	0x2
	.byte	0x3e
	.long	0x151b
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x151b
	.long	0x1528
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	0xe4e
	.byte	0x2
	.byte	0x3a
	.long	0x154d
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x154d
	.long	0x155a
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xe15
	.byte	0x2
	.byte	0x36
	.long	0x157f
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x157f
	.long	0x158c
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	0xddb
	.byte	0x2
	.byte	0x32
	.long	0x15b1
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x15b1
	.long	0x15cd
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "size\0"
	.byte	0x2
	.byte	0x32
	.long	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.long	0xda1
	.byte	0x2
	.byte	0x2d
	.long	0x15f2
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f2
	.long	0x15ff
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xd68
	.byte	0x2
	.byte	0x27
	.long	0x1624
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1624
	.long	0x1631
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	0xd2e
	.byte	0x2
	.byte	0x1e
	.long	0x1656
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1656
	.long	0x1672
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.ascii "next\0"
	.byte	0x2
	.byte	0x22
	.long	0x11b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x30
	.long	0xcf6
	.byte	0x2
	.byte	0x1a
	.long	0x1697
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1697
	.long	0x16b2
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "end\0"
	.byte	0x2
	.byte	0x1a
	.long	0x11b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.long	0xcc0
	.byte	0x2
	.byte	0x16
	.long	0x16d7
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x16d7
	.long	0x16e4
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.long	0xc7b
	.byte	0x2
	.byte	0x12
	.long	0x1709
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1709
	.long	0x1724
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.secrel32	.LASF5
	.byte	0x2
	.byte	0x12
	.long	0x11b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x30
	.long	0xc38
	.byte	0x2
	.byte	0xe
	.long	0x1749
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1749
	.long	0x1756
	.uleb128 0x2c
	.secrel32	.LASF9
	.long	0x11be
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.long	0xbf0
	.byte	0x2
	.byte	0xc
	.byte	0
	.long	0x1766
	.long	0x17ac
	.uleb128 0x34
	.secrel32	.LASF9
	.long	0x11ab
	.uleb128 0x35
	.ascii "size\0"
	.byte	0x2
	.byte	0xc
	.long	0x179
	.uleb128 0x36
	.secrel32	.LASF5
	.byte	0x2
	.byte	0xc
	.long	0x11b0
	.uleb128 0x36
	.secrel32	.LASF4
	.byte	0x2
	.byte	0xc
	.long	0x179
	.uleb128 0x35
	.ascii "endMark\0"
	.byte	0x2
	.byte	0xc
	.long	0x11b0
	.uleb128 0x36
	.secrel32	.LASF6
	.byte	0x2
	.byte	0xc
	.long	0x179
	.byte	0
	.uleb128 0x37
	.long	0x1756
	.ascii "_ZN11MemoryChunkC2Embmbm\0"
	.long	0x17e8
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x17e8
	.long	0x1819
	.uleb128 0x38
	.long	0x1766
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	0x176f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	0x177b
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x38
	.long	0x1786
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x38
	.long	0x1791
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x38
	.long	0x17a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.uleb128 0x39
	.ascii "operator new\0"
	.byte	0x1
	.byte	0x92
	.ascii "_ZnwmPv\0"
	.long	0x11c3
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	0x86c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.ascii "__p\0"
	.byte	0x1
	.byte	0x92
	.long	0x11c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x34
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0x3c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB5
	.quad	.LBE5
	.quad	.LBB6
	.quad	.LBE6
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB55
	.quad	.LFE55
	.quad	0
	.quad	0
	.section	.debug_macro,"dr"
.Ldebug_macro0:
	.word	0x4
	.byte	0x2
	.secrel32	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
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
	.file 14 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x4
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
	.file 15 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0xf
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
	.file 16 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x10
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
	.uleb128 0x3
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
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 17 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x11
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
	.uleb128 0x23
	.ascii "__stringify_1(x) #x\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__stringify(x) __stringify_1(x)\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "HEX32(a,b) 0x ##a ##b\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "HEX64(a,b,c,d) 0x ##a ##b ##c ##d\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x23
	.ascii "_NEW \0"
	.file 18 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/exception"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x1f
	.ascii "__EXCEPTION__ \0"
	.file 19 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/atomic_lockfree_defines.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_ATOMIC_LOCK_FREE_H 1\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "ATOMIC_BOOL_LOCK_FREE __GCC_ATOMIC_BOOL_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "ATOMIC_CHAR_LOCK_FREE __GCC_ATOMIC_CHAR_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "ATOMIC_WCHAR_T_LOCK_FREE __GCC_ATOMIC_WCHAR_T_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "ATOMIC_CHAR16_T_LOCK_FREE __GCC_ATOMIC_CHAR16_T_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "ATOMIC_CHAR32_T_LOCK_FREE __GCC_ATOMIC_CHAR32_T_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "ATOMIC_SHORT_LOCK_FREE __GCC_ATOMIC_SHORT_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "ATOMIC_INT_LOCK_FREE __GCC_ATOMIC_INT_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "ATOMIC_LONG_LOCK_FREE __GCC_ATOMIC_LONG_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "ATOMIC_LLONG_LOCK_FREE __GCC_ATOMIC_LLONG_LOCK_FREE\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "ATOMIC_POINTER_LOCK_FREE __GCC_ATOMIC_POINTER_LOCK_FREE\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xaa
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x20
	.ascii "_EXCEPTION_PTR_H \0"
	.file 20 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_defines.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x1f
	.ascii "_EXCEPTION_DEFINES_H 1\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__try if (true)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__catch(X) if (false)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__throw_exception_again \0"
	.byte	0x4
	.byte	0x4
	.file 21 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/nested_exception.h"
	.byte	0x3
	.uleb128 0xab
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_NESTED_EXCEPTION_H 1\0"
	.file 22 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/move.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x1f
	.ascii "_MOVE_H 1\0"
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x17
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
	.uleb128 0xd
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
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF6:
	.ascii "nextBaseFromEnd\0"
.LASF8:
	.ascii "getDataEnd\0"
.LASF0:
	.ascii "exception_ptr\0"
.LASF1:
	.ascii "operator=\0"
.LASF4:
	.ascii "nextValidChunkOffset\0"
.LASF9:
	.ascii "this\0"
.LASF7:
	.ascii "getDataPtr\0"
.LASF2:
	.ascii "nothrow_t\0"
.LASF3:
	.ascii "MemoryChunk\0"
.LASF5:
	.ascii "allocated\0"
.LASF10:
	.ascii "nextChunk\0"
	.ident	"GCC: (GNU) 6.4.0"
