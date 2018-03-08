	.file	"MemoryChunk.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl	_ZN11MemoryChunkC2Embmbm
	.def	_ZN11MemoryChunkC2Embmbm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunkC2Embmbm
_ZN11MemoryChunkC2Embmbm:
.LFB55:
	.file 1 "../src/MemoryChunk.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.seh_endprologue
	movq	56(%rsp), %rax
.LBB4:
	.loc 1 13 0
	movl	%r9d, %r10d
	andl	$63, %r10d
	movzbl	(%rcx), %r9d
.LVL1:
	andl	$-64, %r9d
	orl	%r10d, %r9d
	movb	%r9b, (%rcx)
	cmpb	$0, 48(%rsp)
	je	.L4
	movl	$1, %r9d
.L2:
	.loc 1 13 0 is_stmt 0 discriminator 4
	andl	$1, %r9d
	movl	%r9d, %r10d
	sall	$6, %r10d
	movzbl	(%rcx), %r9d
	andl	$-65, %r9d
	orl	%r10d, %r9d
	movb	%r9b, (%rcx)
	testb	%r8b, %r8b
	jne	.L6
	.loc 1 13 0
	movl	$0, %r8d
.LVL2:
.L3:
	.loc 1 13 0 discriminator 8
	sall	$7, %r8d
	movl	%r8d, %r9d
	movzbl	(%rcx), %r8d
	andl	$127, %r8d
	orl	%r9d, %r8d
	movb	%r8b, (%rcx)
	movb	%dl, 1(%rcx)
.LVL3:
	movzbl	%dh, %ebx
	movb	%bl, 2(%rcx)
	movq	%rdx, %r8
	shrq	$16, %r8
	movb	%r8b, 3(%rcx)
	movq	%rdx, %r8
	shrq	$24, %r8
	movb	%r8b, 4(%rcx)
	shrq	$32, %rdx
.LVL4:
	movl	%eax, %r8d
	sall	$6, %r8d
	andl	$63, %edx
	orl	%r8d, %edx
	movb	%dl, 5(%rcx)
	movl	%eax, %edx
	shrl	$2, %edx
	movb	%dl, 6(%rcx)
	shrl	$10, %eax
.LVL5:
	movb	%al, 7(%rcx)
.LBE4:
	popq	%rbx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
.LVL6:
.L4:
	.cfi_restore_state
.LBB5:
	.loc 1 13 0
	movl	$0, %r9d
	jmp	.L2
.L6:
	movl	$1, %r8d
.LVL7:
	jmp	.L3
.LBE5:
	.cfi_endproc
.LFE55:
	.seh_endproc
	.globl	_ZN11MemoryChunkC1Embmbm
	.def	_ZN11MemoryChunkC1Embmbm;	.scl	2;	.type	32;	.endef
	.set	_ZN11MemoryChunkC1Embmbm,_ZN11MemoryChunkC2Embmbm
	.align 2
	.globl	_ZNK11MemoryChunk11isAllocatedEv
	.def	_ZNK11MemoryChunk11isAllocatedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk11isAllocatedEv
_ZNK11MemoryChunk11isAllocatedEv:
.LFB57:
	.loc 1 14 0 is_stmt 1
	.cfi_startproc
.LVL8:
	.seh_endprologue
	.loc 1 15 0
	movzbl	(%rcx), %eax
	shrb	$7, %al
	.loc 1 16 0
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk12setAllocatedEb
	.def	_ZN11MemoryChunk12setAllocatedEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk12setAllocatedEb
_ZN11MemoryChunk12setAllocatedEb:
.LFB58:
	.loc 1 19 0
	.cfi_startproc
.LVL9:
	.seh_endprologue
	.loc 1 20 0
	testb	%dl, %dl
	jne	.L11
	movl	$0, %eax
.L9:
	.loc 1 20 0 is_stmt 0 discriminator 4
	sall	$7, %eax
	movl	%eax, %edx
.LVL10:
	movzbl	(%rcx), %eax
	andl	$127, %eax
	orl	%edx, %eax
	movb	%al, (%rcx)
	ret
.LVL11:
.L11:
	.loc 1 20 0
	movl	$1, %eax
	jmp	.L9
	.cfi_endproc
.LFE58:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk5isEndEv
	.def	_ZNK11MemoryChunk5isEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk5isEndEv
_ZNK11MemoryChunk5isEndEv:
.LFB59:
	.loc 1 23 0 is_stmt 1
	.cfi_startproc
.LVL12:
	.seh_endprologue
	.loc 1 24 0
	testb	$64, (%rcx)
	setne	%al
	.loc 1 25 0
	ret
	.cfi_endproc
.LFE59:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk6setEndEb
	.def	_ZN11MemoryChunk6setEndEb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk6setEndEb
_ZN11MemoryChunk6setEndEb:
.LFB60:
	.loc 1 27 0
	.cfi_startproc
.LVL13:
	.seh_endprologue
	.loc 1 28 0
	testb	%dl, %dl
	jne	.L16
	movl	$0, %eax
.L14:
	.loc 1 28 0 is_stmt 0 discriminator 4
	andl	$1, %eax
	sall	$6, %eax
	movl	%eax, %edx
.LVL14:
	movzbl	(%rcx), %eax
	andl	$-65, %eax
	orl	%edx, %eax
	movb	%al, (%rcx)
	ret
.LVL15:
.L16:
	.loc 1 28 0
	movl	$1, %eax
	jmp	.L14
	.cfi_endproc
.LFE60:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk7getSizeEv
	.def	_ZNK11MemoryChunk7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk7getSizeEv
_ZNK11MemoryChunk7getSizeEv:
.LFB63:
	.loc 1 46 0 is_stmt 1
	.cfi_startproc
.LVL16:
	.seh_endprologue
	.loc 1 47 0
	movzbl	1(%rcx), %eax
	movzbl	2(%rcx), %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzbl	3(%rcx), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzbl	4(%rcx), %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movzbl	5(%rcx), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	.loc 1 48 0
	ret
	.cfi_endproc
.LFE63:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk7setSizeEm
	.def	_ZN11MemoryChunk7setSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk7setSizeEm
_ZN11MemoryChunk7setSizeEm:
.LFB64:
	.loc 1 51 0
	.cfi_startproc
.LVL17:
	.seh_endprologue
	.loc 1 52 0
	movabsq	$274877906943, %rax
	andq	%rax, %rdx
.LVL18:
	movb	%dl, 1(%rcx)
	movzbl	%dh, %eax
	movb	%al, 2(%rcx)
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, 3(%rcx)
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, 4(%rcx)
	shrq	$32, %rdx
	movzbl	5(%rcx), %eax
	andl	$-64, %eax
	orl	%eax, %edx
	movb	%dl, 5(%rcx)
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk10getDataPtrEv
	.def	_ZNK11MemoryChunk10getDataPtrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk10getDataPtrEv
_ZNK11MemoryChunk10getDataPtrEv:
.LFB66:
	.loc 1 59 0
	.cfi_startproc
.LVL19:
	.seh_endprologue
	.loc 1 60 0
	leaq	8(%rcx), %rax
	.loc 1 61 0
	ret
	.cfi_endproc
.LFE66:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk10getDataPtrEv
	.def	_ZN11MemoryChunk10getDataPtrEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk10getDataPtrEv
_ZN11MemoryChunk10getDataPtrEv:
.LFB65:
	.loc 1 55 0
	.cfi_startproc
.LVL20:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 56 0
	call	_ZNK11MemoryChunk10getDataPtrEv
.LVL21:
	.loc 1 57 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE65:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk10getDataEndEv
	.def	_ZNK11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk10getDataEndEv
_ZNK11MemoryChunk10getDataEndEv:
.LFB68:
	.loc 1 67 0
	.cfi_startproc
.LVL22:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 68 0
	call	_ZNK11MemoryChunk7getSizeEv
.LVL23:
	leaq	8(%rbx,%rax), %rax
	.loc 1 69 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL24:
	ret
	.cfi_endproc
.LFE68:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk7getNextEv
	.def	_ZNK11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk7getNextEv
_ZNK11MemoryChunk7getNextEv:
.LFB61:
	.loc 1 31 0
	.cfi_startproc
.LVL25:
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 64
	.seh_endprologue
	movq	%rcx, %rdi
	.loc 1 32 0
	call	_ZNK11MemoryChunk5isEndEv
.LVL26:
	movl	%eax, %esi
	testb	%al, %al
	jne	.L26
	.loc 1 34 0
	movq	%rdi, %rcx
	call	_ZNK11MemoryChunk10getDataEndEv
.LVL27:
	movzbl	5(%rdi), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rdi), %ecx
	leaq	0(,%rcx,4), %rbx
	orq	%rbx, %rdx
	movzbl	7(%rdi), %ebx
	salq	$10, %rbx
	orq	%rdx, %rbx
	addq	%rax, %rbx
.LVL28:
	jmp	.L25
.L27:
	.loc 1 35 0
	movl	%esi, %eax
.L24:
	.loc 1 35 0 is_stmt 0 discriminator 6
	testb	%al, %al
	je	.L22
	.loc 1 36 0 is_stmt 1
	movzbl	(%rbx), %eax
	andl	$63, %eax
	addq	%rax, %rbx
.LVL29:
.L25:
	.loc 1 35 0
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk5isEndEv
.LVL30:
	testb	%al, %al
	jne	.L27
	.loc 1 35 0 is_stmt 0 discriminator 1
	testb	$63, (%rbx)
	jne	.L28
	.loc 1 35 0
	movl	%esi, %eax
	jmp	.L24
.L28:
	movl	$1, %eax
	jmp	.L24
.LVL31:
.L26:
	.loc 1 33 0 is_stmt 1
	movl	$0, %ebx
.L22:
	.loc 1 38 0
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL32:
	ret
	.cfi_endproc
.LFE61:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk7getNextEv
	.def	_ZN11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk7getNextEv
_ZN11MemoryChunk7getNextEv:
.LFB62:
	.loc 1 40 0
	.cfi_startproc
.LVL33:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 41 0
	call	_ZNK11MemoryChunk7getNextEv
.LVL34:
	.loc 1 42 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk10getDataEndEv
	.def	_ZN11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk10getDataEndEv
_ZN11MemoryChunk10getDataEndEv:
.LFB67:
	.loc 1 63 0
	.cfi_startproc
.LVL35:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 64 0
	call	_ZNK11MemoryChunk10getDataEndEv
.LVL36:
	.loc 1 65 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk18getNextBaseFromEndEv
	.def	_ZNK11MemoryChunk18getNextBaseFromEndEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk18getNextBaseFromEndEv
_ZNK11MemoryChunk18getNextBaseFromEndEv:
.LFB69:
	.loc 1 74 0
	.cfi_startproc
.LVL37:
	.seh_endprologue
	.loc 1 75 0
	movzbl	5(%rcx), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%rcx), %r8d
	leaq	0(,%r8,4), %rax
	orq	%rax, %rdx
	movzbl	7(%rcx), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	.loc 1 76 0
	ret
	.cfi_endproc
.LFE69:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk18setNextBaseFromEndEm
	.def	_ZN11MemoryChunk18setNextBaseFromEndEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk18setNextBaseFromEndEm
_ZN11MemoryChunk18setNextBaseFromEndEm:
.LFB70:
	.loc 1 78 0
	.cfi_startproc
.LVL38:
	.seh_endprologue
	.loc 1 79 0
	movl	%edx, %eax
	andl	$262143, %eax
	movl	%eax, %r8d
	sall	$6, %r8d
	movzbl	5(%rcx), %edx
.LVL39:
	andl	$63, %edx
	orl	%r8d, %edx
	movb	%dl, 5(%rcx)
	movl	%eax, %edx
	shrl	$2, %edx
	movb	%dl, 6(%rcx)
	shrl	$10, %eax
	movb	%al, 7(%rcx)
	ret
	.cfi_endproc
.LFE70:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
	.def	_ZNK11MemoryChunk23getNextValidChunkOffsetEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
_ZNK11MemoryChunk23getNextValidChunkOffsetEv:
.LFB71:
	.loc 1 82 0
	.cfi_startproc
.LVL40:
	.seh_endprologue
	.loc 1 83 0
	movzbl	(%rcx), %eax
	andl	$63, %eax
	.loc 1 84 0
	ret
	.cfi_endproc
.LFE71:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk23setNextValidChunkOffsetEm
	.def	_ZN11MemoryChunk23setNextValidChunkOffsetEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk23setNextValidChunkOffsetEm
_ZN11MemoryChunk23setNextValidChunkOffsetEm:
.LFB72:
	.loc 1 87 0
	.cfi_startproc
.LVL41:
	.seh_endprologue
	.loc 1 88 0
	movl	%edx, %eax
	andl	$63, %eax
	movzbl	(%rcx), %edx
.LVL42:
	andl	$-64, %edx
	orl	%eax, %edx
	movb	%dl, (%rcx)
	ret
	.cfi_endproc
.LFE72:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk9moveAheadEm
	.def	_ZN11MemoryChunk9moveAheadEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk9moveAheadEm
_ZN11MemoryChunk9moveAheadEm:
.LFB73:
	.loc 1 92 0
	.cfi_startproc
.LVL43:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.seh_endprologue
	.loc 1 93 0
	cmpb	$0, (%rcx)
	js	.L40
	.loc 1 93 0 is_stmt 0 discriminator 1
	movzbl	1(%rcx), %eax
	movzbl	2(%rcx), %r8d
	salq	$8, %r8
	orq	%r8, %rax
	movzbl	3(%rcx), %r8d
	salq	$16, %r8
	orq	%rax, %r8
	movzbl	4(%rcx), %eax
	salq	$24, %rax
	orq	%rax, %r8
	movzbl	5(%rcx), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%r8, %rax
	cmpq	%rdx, %rax
	jbe	.L41
	.loc 1 95 0 is_stmt 1
	testq	%rdx, %rdx
	je	.L42
	.loc 1 97 0
	leaq	(%rcx,%rdx), %rax
.LVL44:
.LBB6:
	.loc 1 99 0
	cmpq	$7, %rdx
	jbe	.L37
	.loc 1 100 0
	movq	(%rcx), %r8
	movq	%r8, (%rax)
.LVL45:
.L38:
.LBE6:
	.loc 1 105 0
	movzbl	1(%rax), %ebx
	movzbl	2(%rax), %r8d
.LVL46:
	salq	$8, %r8
	orq	%r8, %rbx
	movzbl	3(%rax), %r8d
	salq	$16, %r8
	orq	%rbx, %r8
	movzbl	4(%rax), %ebx
	salq	$24, %rbx
	orq	%rbx, %r8
	movzbl	5(%rax), %ebx
	andl	$63, %ebx
	salq	$32, %rbx
	orq	%r8, %rbx
	subq	%rdx, %rbx
	movabsq	$274877906943, %r8
	andq	%r8, %rbx
	movb	%bl, 1(%rax)
	movzbl	%bh, %esi
	movb	%sil, 2(%rax)
	movq	%rbx, %r8
	shrq	$16, %r8
	movb	%r8b, 3(%rax)
	movq	%rbx, %r8
	shrq	$24, %r8
	movb	%r8b, 4(%rax)
	shrq	$32, %rbx
	movzbl	5(%rax), %r8d
	andl	$-64, %r8d
	orl	%r8d, %ebx
	movb	%bl, 5(%rax)
	.loc 1 108 0
	cmpq	$8, %rdx
	ja	.L43
	.loc 1 114 0
	andl	$63, %edx
.LVL47:
	movzbl	(%rcx), %r8d
	andl	$-64, %r8d
	orl	%r8d, %edx
	movb	%dl, (%rcx)
	jmp	.L35
.LVL48:
.L37:
.LBB8:
.LBB7:
	.loc 1 102 0
	movq	(%rcx), %r8
.LVL49:
	.loc 1 103 0
	movq	%r8, (%rax)
	jmp	.L38
.LVL50:
.L43:
.LBE7:
.LBE8:
	.loc 1 111 0
	movb	$0, 6(%rcx)
	movb	$0, 7(%rcx)
	.loc 1 112 0
	subq	$8, %rdx
.LVL51:
	movabsq	$274877906943, %r8
	andq	%r8, %rdx
.LVL52:
	movb	%dl, 1(%rcx)
	movzbl	%dh, %ebx
	movb	%bl, 2(%rcx)
	movq	%rdx, %r8
	shrq	$16, %r8
	movb	%r8b, 3(%rcx)
	movq	%rdx, %r8
	shrq	$24, %r8
	movb	%r8b, 4(%rcx)
	shrq	$32, %rdx
	movb	%dl, 5(%rcx)
	jmp	.L35
.LVL53:
.L40:
	.loc 1 94 0
	movl	$0, %eax
	jmp	.L35
.L41:
	movl	$0, %eax
	jmp	.L35
.L42:
	.loc 1 96 0
	movq	%rcx, %rax
.LVL54:
.L35:
	.loc 1 117 0
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.seh_endproc
	.align 2
	.globl	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	.def	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm:
.LFB74:
	.loc 1 119 0
	.cfi_startproc
.LVL55:
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 64
	.seh_endprologue
	movq	%rdx, %rsi
	movq	%r8, %rdi
	.loc 1 120 0
	movzbl	1(%rcx), %ebx
	movzbl	2(%rcx), %eax
	salq	$8, %rax
	orq	%rax, %rbx
	movzbl	3(%rcx), %eax
	salq	$16, %rax
	orq	%rbx, %rax
	movzbl	4(%rcx), %ebx
	salq	$24, %rbx
	orq	%rbx, %rax
	movzbl	5(%rcx), %ebx
	andl	$63, %ebx
	salq	$32, %rbx
	orq	%rax, %rbx
	cmpq	%rdx, %rbx
	jnb	.L47
	.loc 1 121 0
	movq	$-1, %rax
.LVL56:
.L44:
	.loc 1 131 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL57:
	ret
.LVL58:
.L47:
	.cfi_restore_state
	.loc 1 122 0
	call	_ZNK11MemoryChunk10getDataPtrEv
.LVL59:
	movl	$0, %edx
	divq	%rdi
	movq	%rdx, %rax
.LVL60:
	.loc 1 123 0
	testq	%rdx, %rdx
	je	.L44
	.loc 1 125 0
	movq	%rdi, %rax
.LVL61:
	subq	%rdx, %rax
	addq	%rax, %rsi
.LVL62:
	cmpq	%rsi, %rbx
	jnb	.L44
	.loc 1 126 0
	movq	$-1, %rax
	jmp	.L44
	.cfi_endproc
.LFE74:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk5splitEm
	.def	_ZN11MemoryChunk5splitEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk5splitEm
_ZN11MemoryChunk5splitEm:
.LFB75:
	.loc 1 133 0
	.cfi_startproc
.LVL63:
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.seh_stackalloc	48
	.cfi_def_cfa_offset 96
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.loc 1 134 0
	call	_ZNK11MemoryChunk5isEndEv
.LVL64:
	movl	%eax, %edi
	testb	%al, %al
	jne	.L49
	.loc 1 134 0 is_stmt 0 discriminator 2
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL65:
	movl	%eax, %edi
	testb	%al, %al
	jne	.L49
	.loc 1 134 0 discriminator 4
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL66:
	cmpq	%rsi, %rax
	jb	.L53
	.loc 1 134 0 discriminator 6
	testq	%rsi, %rsi
	jne	.L49
	.loc 1 134 0
	movl	$1, %edi
	jmp	.L49
.L53:
	movl	$1, %edi
.L49:
	.loc 1 134 0 discriminator 10
	testb	%dil, %dil
	jne	.L55
	.loc 1 136 0 is_stmt 1
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL67:
	subq	%rsi, %rax
	movq	%rax, %rdi
.LVL68:
	.loc 1 137 0
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk10getDataPtrEv
.LVL69:
	leaq	(%rax,%rsi), %rbp
.LVL70:
	.loc 1 138 0
	cmpq	$8, %rdi
	jbe	.L51
	.loc 1 140 0
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL71:
	movzbl	%al, %r12d
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk18getNextBaseFromEndEv
.LVL72:
	testq	%rbp, %rbp
	je	.L52
	.loc 1 140 0 is_stmt 0 discriminator 1
	leaq	-8(%rdi), %rdx
	movq	%rax, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	%r12d, %r8d
	movq	%rbp, %rcx
	call	_ZN11MemoryChunkC1Embmbm
.LVL73:
.L52:
	.loc 1 142 0 is_stmt 1
	movabsq	$274877906943, %rax
	andq	%rax, %rsi
.LVL74:
	movb	%sil, 1(%rbx)
	movq	%rsi, %rax
	movzbl	%ah, %eax
	movb	%al, 2(%rbx)
	movq	%rsi, %rax
	shrq	$16, %rax
	movb	%al, 3(%rbx)
	movq	%rsi, %rax
	shrq	$24, %rax
	movb	%al, 4(%rbx)
	.loc 1 143 0
	shrq	$32, %rsi
	movb	%sil, 5(%rbx)
	movb	$0, 6(%rbx)
	movb	$0, 7(%rbx)
	.loc 1 147 0
	movl	$1, %eax
	jmp	.L48
.LVL75:
.L51:
	.loc 1 145 0
	andl	$63, %edi
.LVL76:
	movzbl	(%rbx), %eax
	andl	$-64, %eax
	orl	%eax, %edi
	movb	%dil, (%rbx)
	.loc 1 147 0
	movl	$1, %eax
	jmp	.L48
.LVL77:
.L55:
	.loc 1 135 0
	movl	$0, %eax
.LVL78:
.L48:
	.loc 1 148 0
	addq	$48, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
.LVL79:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 32
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.seh_endproc
	.align 2
	.globl	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
	.def	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
_ZN11MemoryChunk25mergeTrailingsUnallocatedEv:
.LFB76:
	.loc 1 151 0
	.cfi_startproc
.LVL80:
	pushq	%r14
	.seh_pushreg	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.seh_pushreg	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 48
	.cfi_offset 5, -48
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 56
	.cfi_offset 4, -56
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -64
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 96
	.seh_endprologue
	movq	%rcx, %rdi
	.loc 1 152 0
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL81:
	movl	%eax, %r12d
	testb	%al, %al
	jne	.L57
	.loc 1 152 0 is_stmt 0 discriminator 2
	movzbl	5(%rdi), %eax
	shrb	$6, %al
	movzbl	%al, %edx
	movzbl	6(%rdi), %eax
	salq	$2, %rax
	orq	%rdx, %rax
	movzbl	7(%rdi), %edx
	salq	$10, %rdx
	orq	%rax, %rdx
	jne	.L63
	.loc 1 152 0 discriminator 4
	movq	%rdi, %rcx
	call	_ZNK11MemoryChunk5isEndEv
.LVL82:
	movl	%eax, %r12d
	jmp	.L57
.L63:
	.loc 1 152 0
	movl	$1, %r12d
.L57:
	.loc 1 152 0 discriminator 8
	testb	%r12b, %r12b
	jne	.L56
.LVL83:
	.loc 1 155 0 is_stmt 1
	movzbl	1(%rdi), %ebp
	movzbl	2(%rdi), %eax
	salq	$8, %rax
	orq	%rax, %rbp
	movzbl	3(%rdi), %eax
	salq	$16, %rax
	orq	%rbp, %rax
	movzbl	4(%rdi), %ebp
	salq	$24, %rbp
	orq	%rbp, %rax
	movzbl	5(%rdi), %ebp
	andl	$63, %ebp
	salq	$32, %rbp
	orq	%rax, %rbp
	leaq	8(%rdi,%rbp), %rbx
.LVL84:
	.loc 1 156 0
	movl	$0, %r13d
	.loc 1 154 0
	movl	$0, %esi
	jmp	.L62
.LVL85:
.L64:
.LBB9:
	.loc 1 162 0
	movl	%r12d, %r14d
	jmp	.L60
.L65:
	movl	%eax, %r14d
.L60:
	.loc 1 162 0 is_stmt 0 discriminator 8
	testb	%r14b, %r14b
	je	.L61
	.loc 1 163 0 is_stmt 1
	movzbl	1(%rbx), %eax
	movzbl	2(%rbx), %edx
	salq	$8, %rdx
	orq	%rdx, %rax
	movzbl	3(%rbx), %edx
	salq	$16, %rdx
	orq	%rax, %rdx
	movzbl	4(%rbx), %eax
	salq	$24, %rax
	orq	%rax, %rdx
	movzbl	5(%rbx), %eax
	andl	$63, %eax
	salq	$32, %rax
	orq	%rdx, %rax
	addq	$8, %rax
.LVL86:
.L59:
	.loc 1 167 0
	addq	%rax, %rsi
.LVL87:
	.loc 1 168 0
	movq	%rbx, %r13
	.loc 1 169 0
	leaq	(%rbx,%rax), %rbx
.LVL88:
.L62:
	.loc 1 159 0
	movzbl	(%rbx), %eax
.LVL89:
	.loc 1 160 0
	andl	$63, %eax
.LVL90:
	jne	.L59
	.loc 1 162 0
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk5isEndEv
.LVL91:
	movl	%eax, %r14d
	testb	%al, %al
	jne	.L64
	.loc 1 162 0 is_stmt 0 discriminator 1
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL92:
	testb	%al, %al
	jne	.L60
	.loc 1 162 0 discriminator 3
	movzbl	5(%rbx), %edx
	shrb	$6, %dl
	movzbl	%dl, %ecx
	movzbl	6(%rbx), %edx
	salq	$2, %rdx
	orq	%rcx, %rdx
	movzbl	7(%rbx), %ecx
	salq	$10, %rcx
	orq	%rdx, %rcx
	jne	.L65
	.loc 1 162 0
	movl	$1, %r14d
	jmp	.L60
.L61:
.LBE9:
	.loc 1 172 0 is_stmt 1
	addq	%rbp, %rsi
.LVL93:
	movabsq	$274877906943, %rdx
	andq	%rdx, %rsi
	movb	%sil, 1(%rdi)
	movq	%rsi, %rax
	movzbl	%ah, %edx
	movb	%dl, 2(%rdi)
	movq	%rsi, %rdx
	shrq	$16, %rdx
	movb	%dl, 3(%rdi)
	movq	%rsi, %rdx
	shrq	$24, %rdx
	movb	%dl, 4(%rdi)
	shrq	$32, %rsi
	movzbl	5(%rdi), %eax
	andl	$-64, %eax
	orl	%eax, %esi
	movb	%sil, 5(%rdi)
	.loc 1 173 0
	movzbl	5(%r13), %edx
	shrb	$6, %dl
	movzbl	%dl, %edx
	movzbl	6(%r13), %ecx
	leaq	0(,%rcx,4), %rax
	orq	%rax, %rdx
	movzbl	7(%r13), %eax
	salq	$10, %rax
	orq	%rdx, %rax
	movl	%eax, %edx
	sall	$6, %edx
	andl	$63, %esi
	orl	%edx, %esi
	movb	%sil, 5(%rdi)
	movq	%rax, %rdx
	shrq	$2, %rdx
	movb	%dl, 6(%rdi)
	shrq	$10, %rax
	movb	%al, 7(%rdi)
.LVL94:
.L56:
	.loc 1 174 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 56
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 48
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 40
.LVL95:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.seh_endproc
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 3 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 5 "<built-in>"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_ptr.h"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.file 8 "/usr/include/machine/_default_types.h"
	.file 9 "/usr/include/sys/_stdint.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryChunk.h"
	.file 14 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/new"
	.file 15 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/type_traits"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x1bba
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti -fsigned-char -fPIC\0"
	.byte	0x4
	.ascii "../src/MemoryChunk.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/chap003/Debug-host\0"
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x2
	.byte	0xd8
	.long	0x13f
	.uleb128 0x4
	.long	0x12c
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x2
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x19c
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x2
	.word	0x1ab
	.long	0x19c
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x2
	.word	0x1ac
	.long	0x1ad
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
	.byte	0x2
	.word	0x1ad
	.long	0x154
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x5
	.byte	0
	.long	0x833
	.uleb128 0xa
	.byte	0x3
	.byte	0x38
	.long	0x1bc
	.uleb128 0xa
	.byte	0x4
	.byte	0x30
	.long	0xa20
	.uleb128 0xa
	.byte	0x4
	.byte	0x31
	.long	0xa3d
	.uleb128 0xa
	.byte	0x4
	.byte	0x32
	.long	0xa5c
	.uleb128 0xa
	.byte	0x4
	.byte	0x33
	.long	0xa7b
	.uleb128 0xa
	.byte	0x4
	.byte	0x35
	.long	0xb86
	.uleb128 0xa
	.byte	0x4
	.byte	0x36
	.long	0xbad
	.uleb128 0xa
	.byte	0x4
	.byte	0x37
	.long	0xbd6
	.uleb128 0xa
	.byte	0x4
	.byte	0x38
	.long	0xbff
	.uleb128 0xa
	.byte	0x4
	.byte	0x3a
	.long	0xadc
	.uleb128 0xa
	.byte	0x4
	.byte	0x3b
	.long	0xb05
	.uleb128 0xa
	.byte	0x4
	.byte	0x3c
	.long	0xb30
	.uleb128 0xa
	.byte	0x4
	.byte	0x3d
	.long	0xb5b
	.uleb128 0xa
	.byte	0x4
	.byte	0x3f
	.long	0xa9a
	.uleb128 0xa
	.byte	0x4
	.byte	0x40
	.long	0xabb
	.uleb128 0xa
	.byte	0x4
	.byte	0x42
	.long	0xa2e
	.uleb128 0xa
	.byte	0x4
	.byte	0x43
	.long	0xa4c
	.uleb128 0xa
	.byte	0x4
	.byte	0x44
	.long	0xa6b
	.uleb128 0xa
	.byte	0x4
	.byte	0x45
	.long	0xa8a
	.uleb128 0xa
	.byte	0x4
	.byte	0x47
	.long	0xb99
	.uleb128 0xa
	.byte	0x4
	.byte	0x48
	.long	0xbc1
	.uleb128 0xa
	.byte	0x4
	.byte	0x49
	.long	0xbea
	.uleb128 0xa
	.byte	0x4
	.byte	0x4a
	.long	0xc13
	.uleb128 0xa
	.byte	0x4
	.byte	0x4c
	.long	0xaf0
	.uleb128 0xa
	.byte	0x4
	.byte	0x4d
	.long	0xb1a
	.uleb128 0xa
	.byte	0x4
	.byte	0x4e
	.long	0xb45
	.uleb128 0xa
	.byte	0x4
	.byte	0x4f
	.long	0xb70
	.uleb128 0xa
	.byte	0x4
	.byte	0x51
	.long	0xaaa
	.uleb128 0xa
	.byte	0x4
	.byte	0x52
	.long	0xacb
	.uleb128 0x9
	.ascii "__exception_ptr\0"
	.byte	0x6
	.byte	0x35
	.long	0x736
	.uleb128 0xb
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x6
	.byte	0x4d
	.long	0x729
	.uleb128 0xc
	.ascii "_M_exception_object\0"
	.byte	0x6
	.byte	0x4f
	.long	0x134b
	.byte	0
	.uleb128 0xd
	.secrel32	.LASF0
	.byte	0x6
	.byte	0x51
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0x332
	.long	0x33d
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x134b
	.byte	0
	.uleb128 0x10
	.ascii "_M_addref\0"
	.byte	0x6
	.byte	0x53
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0x384
	.long	0x38a
	.uleb128 0xe
	.long	0x1354
	.byte	0
	.uleb128 0x10
	.ascii "_M_release\0"
	.byte	0x6
	.byte	0x54
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0x3d4
	.long	0x3da
	.uleb128 0xe
	.long	0x1354
	.byte	0
	.uleb128 0x11
	.ascii "_M_get\0"
	.byte	0x6
	.byte	0x56
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x134b
	.long	0x420
	.long	0x426
	.uleb128 0xe
	.long	0x135a
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x6
	.byte	0x5c
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.byte	0x1
	.long	0x460
	.long	0x466
	.uleb128 0xe
	.long	0x1354
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x6
	.byte	0x5e
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.byte	0x1
	.long	0x4a4
	.long	0x4af
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x1360
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x6
	.byte	0x61
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.byte	0x1
	.long	0x4ea
	.long	0x4f5
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x798
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x6
	.byte	0x65
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.byte	0x1
	.long	0x532
	.long	0x53d
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x1366
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF1
	.byte	0x6
	.byte	0x72
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x136c
	.byte	0x1
	.long	0x57f
	.long	0x58a
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x1360
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF1
	.byte	0x6
	.byte	0x76
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x136c
	.byte	0x1
	.long	0x5cb
	.long	0x5d6
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x1366
	.byte	0
	.uleb128 0x14
	.ascii "~exception_ptr\0"
	.byte	0x6
	.byte	0x7d
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.byte	0x1
	.long	0x61b
	.long	0x626
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xe
	.long	0x8cb
	.byte	0
	.uleb128 0x14
	.ascii "swap\0"
	.byte	0x6
	.byte	0x80
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.byte	0x1
	.long	0x667
	.long	0x672
	.uleb128 0xe
	.long	0x1354
	.uleb128 0xf
	.long	0x136c
	.byte	0
	.uleb128 0x15
	.ascii "operator bool\0"
	.byte	0x6
	.byte	0x8c
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x1338
	.byte	0x1
	.long	0x6bc
	.long	0x6c2
	.uleb128 0xe
	.long	0x135a
	.byte	0
	.uleb128 0x16
	.ascii "__cxa_exception_type\0"
	.byte	0x6
	.byte	0x95
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x1372
	.byte	0x1
	.long	0x722
	.uleb128 0xe
	.long	0x135a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x2d0
	.uleb128 0xa
	.byte	0x6
	.byte	0x47
	.long	0x73d
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x3a
	.long	0x2d0
	.uleb128 0x17
	.ascii "rethrow_exception\0"
	.byte	0x6
	.byte	0x43
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0x798
	.uleb128 0xf
	.long	0x2d0
	.byte	0
	.uleb128 0x3
	.ascii "nullptr_t\0"
	.byte	0x7
	.byte	0xcd
	.long	0x1d0
	.uleb128 0x18
	.ascii "type_info\0"
	.uleb128 0x4
	.long	0x7a9
	.uleb128 0x19
	.ascii "__swappable_details\0"
	.byte	0xf
	.word	0xa37
	.uleb128 0x1a
	.secrel32	.LASF2
	.byte	0x1
	.byte	0xe
	.byte	0x52
	.long	0x803
	.uleb128 0x1b
	.secrel32	.LASF2
	.byte	0xe
	.byte	0x55
	.ascii "_ZNSt9nothrow_tC4Ev\0"
	.long	0x7fc
	.uleb128 0xe
	.long	0x1392
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x7d1
	.uleb128 0x1c
	.ascii "nothrow\0"
	.byte	0xe
	.byte	0x59
	.ascii "_ZSt7nothrow\0"
	.long	0x803
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x7
	.byte	0xc9
	.long	0x13f
	.byte	0
	.uleb128 0x3
	.ascii "__int8_t\0"
	.byte	0x8
	.byte	0x29
	.long	0x843
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "__uint8_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0x863
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "__int16_t\0"
	.byte	0x8
	.byte	0x37
	.long	0x885
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "__uint16_t\0"
	.byte	0x8
	.byte	0x39
	.long	0x8a4
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "__int32_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x8cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x8cb
	.uleb128 0x3
	.ascii "__uint32_t\0"
	.byte	0x8
	.byte	0x4f
	.long	0x8e9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "__int64_t\0"
	.byte	0x8
	.byte	0x67
	.long	0x120
	.uleb128 0x3
	.ascii "__uint64_t\0"
	.byte	0x8
	.byte	0x69
	.long	0x13f
	.uleb128 0x3
	.ascii "__int_least8_t\0"
	.byte	0x8
	.byte	0x86
	.long	0x843
	.uleb128 0x3
	.ascii "__uint_least8_t\0"
	.byte	0x8
	.byte	0x88
	.long	0x863
	.uleb128 0x3
	.ascii "__int_least16_t\0"
	.byte	0x8
	.byte	0xa0
	.long	0x885
	.uleb128 0x3
	.ascii "__uint_least16_t\0"
	.byte	0x8
	.byte	0xa2
	.long	0x8a4
	.uleb128 0x3
	.ascii "__int_least32_t\0"
	.byte	0x8
	.byte	0xb6
	.long	0x8cb
	.uleb128 0x3
	.ascii "__uint_least32_t\0"
	.byte	0x8
	.byte	0xb8
	.long	0x8e9
	.uleb128 0x3
	.ascii "__int_least64_t\0"
	.byte	0x8
	.byte	0xc8
	.long	0x120
	.uleb128 0x3
	.ascii "__uint_least64_t\0"
	.byte	0x8
	.byte	0xca
	.long	0x13f
	.uleb128 0x3
	.ascii "__intmax_t\0"
	.byte	0x8
	.byte	0xd6
	.long	0x120
	.uleb128 0x3
	.ascii "__uintmax_t\0"
	.byte	0x8
	.byte	0xde
	.long	0x13f
	.uleb128 0x3
	.ascii "__intptr_t\0"
	.byte	0x8
	.byte	0xe6
	.long	0x120
	.uleb128 0x3
	.ascii "__uintptr_t\0"
	.byte	0x8
	.byte	0xe8
	.long	0x13f
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x9
	.byte	0x14
	.long	0x833
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x9
	.byte	0x18
	.long	0x852
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x9
	.byte	0x20
	.long	0x874
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x9
	.byte	0x24
	.long	0x892
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x9
	.byte	0x2c
	.long	0x8ba
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x9
	.byte	0x30
	.long	0x8d7
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x9
	.byte	0x38
	.long	0x8f9
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x9
	.byte	0x3c
	.long	0x90a
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x9
	.byte	0x43
	.long	0x9d6
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x9e8
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x9
	.byte	0x4d
	.long	0x9fb
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x9
	.byte	0x52
	.long	0xa0d
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0xa
	.byte	0x15
	.long	0x91c
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0xa
	.byte	0x16
	.long	0x932
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0xa
	.byte	0x1b
	.long	0x949
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0xa
	.byte	0x1c
	.long	0x960
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0xa
	.byte	0x21
	.long	0x978
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0xa
	.byte	0x22
	.long	0x98f
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0xa
	.byte	0x27
	.long	0x9a7
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0xa
	.byte	0x28
	.long	0x9be
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0xa
	.byte	0x33
	.long	0x843
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0xa
	.byte	0x34
	.long	0x863
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0xa
	.byte	0x3d
	.long	0x120
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0xa
	.byte	0x3e
	.long	0x13f
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0xa
	.byte	0x47
	.long	0x120
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0xa
	.byte	0x48
	.long	0x13f
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0xa
	.byte	0x51
	.long	0x120
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0xa
	.byte	0x52
	.long	0x13f
	.uleb128 0x1d
	.long	0xc51
	.long	0xc38
	.uleb128 0x1e
	.long	0xc3d
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xc28
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0xc49
	.uleb128 0x1f
	.ascii "EMPTY_STR\0"
	.byte	0xb
	.byte	0x1c
	.long	0xc38
	.uleb128 0x20
	.ascii "koutBufSize\0"
	.byte	0xb
	.byte	0x1f
	.long	0x13a
	.byte	0x41
	.uleb128 0x1d
	.long	0xc49
	.long	0xc8b
	.uleb128 0x1e
	.long	0xc3d
	.byte	0x40
	.byte	0
	.uleb128 0x1f
	.ascii "koutBuf\0"
	.byte	0xb
	.byte	0x20
	.long	0xc7b
	.uleb128 0x21
	.ascii "UNIT_K\0"
	.byte	0xb
	.byte	0x22
	.long	0x8d2
	.word	0x400
	.uleb128 0x21
	.ascii "KiB\0"
	.byte	0xb
	.byte	0x23
	.long	0x8d2
	.word	0x400
	.uleb128 0x22
	.ascii "MiB\0"
	.byte	0xb
	.byte	0x24
	.long	0x8d2
	.long	0x100000
	.uleb128 0x22
	.ascii "GiB\0"
	.byte	0xb
	.byte	0x25
	.long	0x8d2
	.long	0x40000000
	.uleb128 0x1d
	.long	0xc51
	.long	0xce0
	.uleb128 0x23
	.byte	0
	.uleb128 0x1f
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0xcd5
	.uleb128 0xb
	.secrel32	.LASF3
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.long	0x1328
	.uleb128 0x24
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x43
	.long	0xa8a
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x25
	.ascii "endMark\0"
	.byte	0xd
	.byte	0x44
	.long	0xa8a
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF5
	.byte	0xd
	.byte	0x45
	.long	0xa8a
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.ascii "size\0"
	.byte	0xd
	.byte	0x46
	.long	0xa8a
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0xd
	.byte	0x47
	.long	0xa8a
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Ev\0"
	.byte	0x1
	.long	0xd72
	.long	0xd78
	.uleb128 0xe
	.long	0x132d
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x1c
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xda1
	.long	0xdc0
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x12c
	.uleb128 0xf
	.long	0x1338
	.uleb128 0xf
	.long	0x12c
	.uleb128 0xf
	.long	0x1338
	.uleb128 0xf
	.long	0x12c
	.byte	0
	.uleb128 0x26
	.ascii "isAllocated\0"
	.byte	0xd
	.byte	0x1d
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x1338
	.byte	0x1
	.long	0xdfd
	.long	0xe03
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x14
	.ascii "setAllocated\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xe3d
	.long	0xe48
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x1338
	.byte	0
	.uleb128 0x26
	.ascii "isEnd\0"
	.byte	0xd
	.byte	0x1f
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x1338
	.byte	0x1
	.long	0xe78
	.long	0xe7e
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x14
	.ascii "setEnd\0"
	.byte	0xd
	.byte	0x20
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xeab
	.long	0xeb6
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x1338
	.byte	0
	.uleb128 0x26
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x21
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x1340
	.byte	0x1
	.long	0xeea
	.long	0xef0
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x26
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x22
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x132d
	.byte	0x1
	.long	0xf23
	.long	0xf29
	.uleb128 0xe
	.long	0x132d
	.byte	0
	.uleb128 0x26
	.ascii "getSize\0"
	.byte	0xd
	.byte	0x23
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x12c
	.byte	0x1
	.long	0xf5d
	.long	0xf63
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x14
	.ascii "setSize\0"
	.byte	0xd
	.byte	0x24
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xf92
	.long	0xf9d
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x12c
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF7
	.byte	0xd
	.byte	0x25
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x134b
	.byte	0x1
	.long	0xfd0
	.long	0xfd6
	.uleb128 0xe
	.long	0x132d
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF7
	.byte	0xd
	.byte	0x26
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x134d
	.byte	0x1
	.long	0x100a
	.long	0x1010
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF8
	.byte	0xd
	.byte	0x27
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x134b
	.byte	0x1
	.long	0x1043
	.long	0x1049
	.uleb128 0xe
	.long	0x132d
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF8
	.byte	0xd
	.byte	0x28
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x134d
	.byte	0x1
	.long	0x107d
	.long	0x1083
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x26
	.ascii "getNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x29
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0xa8a
	.byte	0x1
	.long	0x10ce
	.long	0x10d4
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x14
	.ascii "setNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x2a
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0x111a
	.long	0x1125
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0xa8a
	.byte	0
	.uleb128 0x26
	.ascii "getNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2b
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0xa8a
	.byte	0x1
	.long	0x117a
	.long	0x1180
	.uleb128 0xe
	.long	0x1340
	.byte	0
	.uleb128 0x14
	.ascii "setNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2c
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x11d0
	.long	0x11db
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0xa8a
	.byte	0
	.uleb128 0x26
	.ascii "moveAhead\0"
	.byte	0xd
	.byte	0x37
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x132d
	.byte	0x1
	.long	0x1212
	.long	0x121d
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x12c
	.byte	0
	.uleb128 0x26
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xd
	.byte	0x39
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x12c
	.byte	0x1
	.long	0x1287
	.long	0x1297
	.uleb128 0xe
	.long	0x1340
	.uleb128 0xf
	.long	0x12c
	.uleb128 0xf
	.long	0x12c
	.byte	0
	.uleb128 0x26
	.ascii "split\0"
	.byte	0xd
	.byte	0x3b
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x1338
	.byte	0x1
	.long	0x12c6
	.long	0x12d1
	.uleb128 0xe
	.long	0x132d
	.uleb128 0xf
	.long	0x12c
	.byte	0
	.uleb128 0x27
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xd
	.byte	0x3f
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x1321
	.uleb128 0xe
	.long	0x132d
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xcf1
	.uleb128 0x28
	.byte	0x8
	.long	0xcf1
	.uleb128 0x4
	.long	0x132d
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x28
	.byte	0x8
	.long	0x1328
	.uleb128 0x4
	.long	0x1340
	.uleb128 0x29
	.byte	0x8
	.uleb128 0x28
	.byte	0x8
	.long	0x1353
	.uleb128 0x2a
	.uleb128 0x28
	.byte	0x8
	.long	0x2d0
	.uleb128 0x28
	.byte	0x8
	.long	0x729
	.uleb128 0x2b
	.byte	0x8
	.long	0x729
	.uleb128 0x2c
	.byte	0x8
	.long	0x2d0
	.uleb128 0x2b
	.byte	0x8
	.long	0x2d0
	.uleb128 0x28
	.byte	0x8
	.long	0x7b4
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x28
	.byte	0x8
	.long	0x7d1
	.uleb128 0x2d
	.long	0x12d1
	.byte	0x1
	.byte	0x96
	.long	0x13bd
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x13bd
	.long	0x1492
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1333
	.secrel32	.LLST27
	.uleb128 0x2f
	.ascii "collectedSize\0"
	.byte	0x1
	.byte	0x9a
	.long	0x12c
	.secrel32	.LLST28
	.uleb128 0x2f
	.ascii "freeChunk\0"
	.byte	0x1
	.byte	0x9b
	.long	0x132d
	.secrel32	.LLST29
	.uleb128 0x2f
	.ascii "lastChunk\0"
	.byte	0x1
	.byte	0x9c
	.long	0x132d
	.secrel32	.LLST30
	.uleb128 0x30
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.long	0x1465
	.uleb128 0x2f
	.ascii "addingSize\0"
	.byte	0x1
	.byte	0x9f
	.long	0x12c
	.secrel32	.LLST31
	.uleb128 0x31
	.quad	.LVL91
	.long	0x1a26
	.long	0x1450
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL92
	.long	0x1a97
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x31
	.quad	.LVL81
	.long	0x1a97
	.long	0x147d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL82
	.long	0x1a26
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1297
	.byte	0x1
	.byte	0x84
	.long	0x14b7
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b7
	.long	0x15cc
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1333
	.secrel32	.LLST23
	.uleb128 0x34
	.ascii "splitSize\0"
	.byte	0x1
	.byte	0x84
	.long	0x12c
	.secrel32	.LLST24
	.uleb128 0x2f
	.ascii "leftSize\0"
	.byte	0x1
	.byte	0x88
	.long	0x12c
	.secrel32	.LLST25
	.uleb128 0x35
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x89
	.long	0x132d
	.secrel32	.LLST26
	.uleb128 0x31
	.quad	.LVL64
	.long	0x1a26
	.long	0x1514
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL65
	.long	0x1a97
	.long	0x152c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL66
	.long	0x18e6
	.long	0x1544
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL67
	.long	0x18e6
	.long	0x155c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL69
	.long	0x185d
	.long	0x1574
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL71
	.long	0x1a97
	.long	0x158c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL72
	.long	0x176c
	.long	0x15a4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.quad	.LVL73
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 -8
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x121d
	.byte	0x1
	.byte	0x76
	.long	0x15f1
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f1
	.long	0x1645
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1346
	.secrel32	.LLST19
	.uleb128 0x34
	.ascii "allocSize\0"
	.byte	0x1
	.byte	0x76
	.long	0x12c
	.secrel32	.LLST20
	.uleb128 0x34
	.ascii "alignment\0"
	.byte	0x1
	.byte	0x76
	.long	0x12c
	.secrel32	.LLST21
	.uleb128 0x2f
	.ascii "mod\0"
	.byte	0x1
	.byte	0x7a
	.long	0x12c
	.secrel32	.LLST22
	.uleb128 0x37
	.quad	.LVL59
	.long	0x182c
	.byte	0
	.uleb128 0x2d
	.long	0x11db
	.byte	0x1
	.byte	0x5b
	.long	0x166a
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x166a
	.long	0x16bb
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.ascii "moveSize\0"
	.byte	0x1
	.byte	0x5b
	.long	0x12c
	.secrel32	.LLST16
	.uleb128 0x35
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x61
	.long	0x132d
	.secrel32	.LLST17
	.uleb128 0x39
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x2f
	.ascii "temp\0"
	.byte	0x1
	.byte	0x66
	.long	0xcf1
	.secrel32	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1180
	.byte	0x1
	.byte	0x56
	.long	0x16e0
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e0
	.long	0x16fb
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3a
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x56
	.long	0xa8a
	.secrel32	.LLST15
	.byte	0
	.uleb128 0x2d
	.long	0x1125
	.byte	0x1
	.byte	0x52
	.long	0x1720
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1720
	.long	0x172c
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0x10d4
	.byte	0x1
	.byte	0x4d
	.long	0x1751
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x1751
	.long	0x176c
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3a
	.secrel32	.LASF6
	.byte	0x1
	.byte	0x4d
	.long	0xa8a
	.secrel32	.LLST14
	.byte	0
	.uleb128 0x2d
	.long	0x1083
	.byte	0x1
	.byte	0x49
	.long	0x1791
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x1791
	.long	0x179d
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0x1049
	.byte	0x1
	.byte	0x42
	.long	0x17c2
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c2
	.long	0x17e4
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1346
	.secrel32	.LLST9
	.uleb128 0x33
	.quad	.LVL23
	.long	0x18e6
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0x1010
	.byte	0x1
	.byte	0x3e
	.long	0x1809
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1809
	.long	0x182c
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1333
	.secrel32	.LLST13
	.uleb128 0x33
	.quad	.LVL36
	.long	0x179d
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xfd6
	.byte	0x1
	.byte	0x3a
	.long	0x1851
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1851
	.long	0x185d
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0xf9d
	.byte	0x1
	.byte	0x36
	.long	0x1882
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1882
	.long	0x18a5
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1333
	.secrel32	.LLST8
	.uleb128 0x33
	.quad	.LVL21
	.long	0x182c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xf63
	.byte	0x1
	.byte	0x32
	.long	0x18ca
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ca
	.long	0x18e6
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.ascii "size\0"
	.byte	0x1
	.byte	0x32
	.long	0x12c
	.secrel32	.LLST7
	.byte	0
	.uleb128 0x2d
	.long	0xf29
	.byte	0x1
	.byte	0x2d
	.long	0x190b
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x190b
	.long	0x1917
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0xef0
	.byte	0x1
	.byte	0x27
	.long	0x193c
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x193c
	.long	0x195f
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1333
	.secrel32	.LLST12
	.uleb128 0x33
	.quad	.LVL34
	.long	0x195f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xeb6
	.byte	0x1
	.byte	0x1e
	.long	0x1984
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1984
	.long	0x19e6
	.uleb128 0x2e
	.secrel32	.LASF9
	.long	0x1346
	.secrel32	.LLST10
	.uleb128 0x2f
	.ascii "next\0"
	.byte	0x1
	.byte	0x22
	.long	0x1340
	.secrel32	.LLST11
	.uleb128 0x31
	.quad	.LVL26
	.long	0x1a26
	.long	0x19b9
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.quad	.LVL27
	.long	0x179d
	.long	0x19d1
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.quad	.LVL30
	.long	0x1a26
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	0xe7e
	.byte	0x1
	.byte	0x1a
	.long	0x1a0b
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a0b
	.long	0x1a26
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.ascii "end\0"
	.byte	0x1
	.byte	0x1a
	.long	0x1338
	.secrel32	.LLST6
	.byte	0
	.uleb128 0x2d
	.long	0xe48
	.byte	0x1
	.byte	0x16
	.long	0x1a4b
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a4b
	.long	0x1a57
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0xe03
	.byte	0x1
	.byte	0x12
	.long	0x1a7c
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a7c
	.long	0x1a97
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3a
	.secrel32	.LASF5
	.byte	0x1
	.byte	0x12
	.long	0x1338
	.secrel32	.LLST5
	.byte	0
	.uleb128 0x2d
	.long	0xdc0
	.byte	0x1
	.byte	0xe
	.long	0x1abc
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x1abc
	.long	0x1ac8
	.uleb128 0x38
	.secrel32	.LASF9
	.long	0x1346
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3b
	.long	0xd78
	.byte	0x1
	.byte	0xc
	.byte	0
	.long	0x1ad8
	.long	0x1b1e
	.uleb128 0x3c
	.secrel32	.LASF9
	.long	0x1333
	.uleb128 0x3d
	.ascii "size\0"
	.byte	0x1
	.byte	0xc
	.long	0x12c
	.uleb128 0x3e
	.secrel32	.LASF5
	.byte	0x1
	.byte	0xc
	.long	0x1338
	.uleb128 0x3e
	.secrel32	.LASF4
	.byte	0x1
	.byte	0xc
	.long	0x12c
	.uleb128 0x3d
	.ascii "endMark\0"
	.byte	0x1
	.byte	0xc
	.long	0x1338
	.uleb128 0x3e
	.secrel32	.LASF6
	.byte	0x1
	.byte	0xc
	.long	0x12c
	.byte	0
	.uleb128 0x3f
	.long	0x1ac8
	.ascii "_ZN11MemoryChunkC2Embmbm\0"
	.long	0x1b5a
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b5a
	.long	0x1b8f
	.uleb128 0x40
	.long	0x1ad8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.long	0x1ae1
	.secrel32	.LLST0
	.uleb128 0x41
	.long	0x1aed
	.secrel32	.LLST1
	.uleb128 0x41
	.long	0x1af8
	.secrel32	.LLST2
	.uleb128 0x41
	.long	0x1b03
	.secrel32	.LLST3
	.uleb128 0x41
	.long	0x1b12
	.secrel32	.LLST4
	.byte	0
	.uleb128 0x42
	.ascii "operator new\0"
	.byte	0xe
	.byte	0x92
	.ascii "_ZnwmPv\0"
	.long	0x134b
	.byte	0x3
	.uleb128 0xf
	.long	0x824
	.uleb128 0x3d
	.ascii "__p\0"
	.byte	0xe
	.byte	0x92
	.long	0x134b
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x63
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST27:
	.quad	.LVL80-.Ltext0
	.quad	.LVL81-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL81-1-.Ltext0
	.quad	.LVL95-.Ltext0
	.word	0x1
	.byte	0x55
	.quad	.LVL95-.Ltext0
	.quad	.LFE76-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL83-.Ltext0
	.quad	.LVL85-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL93-.Ltext0
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL84-.Ltext0
	.quad	.LVL87-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-.Ltext0
	.word	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.quad	.LVL88-.Ltext0
	.quad	.LVL94-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL84-.Ltext0
	.quad	.LVL85-.Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL85-.Ltext0
	.quad	.LVL87-.Ltext0
	.word	0x1
	.byte	0x5d
	.quad	.LVL87-.Ltext0
	.quad	.LVL88-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	.LVL88-.Ltext0
	.quad	.LVL94-.Ltext0
	.word	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL86-.Ltext0
	.quad	.LVL88-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	.LVL89-.Ltext0
	.quad	.LVL90-.Ltext0
	.word	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL90-.Ltext0
	.quad	.LVL91-1-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL64-1-.Ltext0
	.quad	.LVL79-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	.LVL79-.Ltext0
	.quad	.LFE75-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL63-.Ltext0
	.quad	.LVL64-1-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL64-1-.Ltext0
	.quad	.LVL74-.Ltext0
	.word	0x1
	.byte	0x54
	.quad	.LVL74-.Ltext0
	.quad	.LVL75-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL75-.Ltext0
	.quad	.LVL78-.Ltext0
	.word	0x1
	.byte	0x54
	.quad	.LVL78-.Ltext0
	.quad	.LFE75-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL68-.Ltext0
	.quad	.LVL69-1-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	.LVL69-1-.Ltext0
	.quad	.LVL76-.Ltext0
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL70-.Ltext0
	.quad	.LVL77-.Ltext0
	.word	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL59-1-.Ltext0
	.quad	.LFE74-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL56-.Ltext0
	.quad	.LVL58-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LVL59-1-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL59-1-.Ltext0
	.quad	.LVL62-.Ltext0
	.word	0x1
	.byte	0x54
	.quad	.LVL62-.Ltext0
	.quad	.LFE74-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.word	0x1
	.byte	0x58
	.quad	.LVL56-.Ltext0
	.quad	.LVL57-.Ltext0
	.word	0x1
	.byte	0x55
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL58-.Ltext0
	.quad	.LFE74-.Ltext0
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL60-.Ltext0
	.quad	.LVL61-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	.LVL61-.Ltext0
	.quad	.LFE74-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL43-.Ltext0
	.quad	.LVL47-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL48-.Ltext0
	.quad	.LVL51-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.word	0x3
	.byte	0x71
	.sleb128 8
	.byte	0x9f
	.quad	.LVL52-.Ltext0
	.quad	.LVL53-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL54-.Ltext0
	.quad	.LFE73-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL44-.Ltext0
	.quad	.LVL53-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.word	0x1
	.byte	0x58
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.word	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL42-.Ltext0
	.quad	.LFE72-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL38-.Ltext0
	.quad	.LVL39-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL39-.Ltext0
	.quad	.LFE70-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22-.Ltext0
	.quad	.LVL23-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL23-1-.Ltext0
	.quad	.LVL24-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	.LVL24-.Ltext0
	.quad	.LFE68-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL36-1-.Ltext0
	.quad	.LFE67-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL20-.Ltext0
	.quad	.LVL21-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL21-1-.Ltext0
	.quad	.LFE65-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL18-.Ltext0
	.quad	.LFE64-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL34-1-.Ltext0
	.quad	.LFE62-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-1-.Ltext0
	.word	0x1
	.byte	0x52
	.quad	.LVL26-1-.Ltext0
	.quad	.LVL32-.Ltext0
	.word	0x1
	.byte	0x55
	.quad	.LVL32-.Ltext0
	.quad	.LFE61-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL28-.Ltext0
	.quad	.LVL31-.Ltext0
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL14-.Ltext0
	.quad	.LVL15-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LFE60-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL10-.Ltext0
	.quad	.LVL11-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LFE58-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL4-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	.LVL4-.Ltext0
	.quad	.LVL6-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LFE55-.Ltext0
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.word	0x1
	.byte	0x58
	.quad	.LVL2-.Ltext0
	.quad	.LVL6-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL6-.Ltext0
	.quad	.LVL7-.Ltext0
	.word	0x1
	.byte	0x58
	.quad	.LVL7-.Ltext0
	.quad	.LFE55-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL1-.Ltext0
	.word	0x1
	.byte	0x59
	.quad	.LVL1-.Ltext0
	.quad	.LFE55-.Ltext0
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 32
	.quad	.LVL6-.Ltext0
	.quad	.LFE55-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 32
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 40
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	.LVL6-.Ltext0
	.quad	.LFE55-.Ltext0
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x2c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
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
	.ascii "__STDC_HOSTED__ 1\0"
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
	.ascii "__OPTIMIZE__ 1\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "__FINITE_MATH_ONLY__ 0\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_LP64 1\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "__LP64__ 1\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__SIZEOF_INT__ 4\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "__SIZEOF_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__SIZEOF_SHORT__ 2\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__SIZEOF_FLOAT__ 4\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__SIZEOF_DOUBLE__ 8\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__SIZEOF_LONG_DOUBLE__ 16\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__SIZEOF_SIZE_T__ 8\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__CHAR_BIT__ 8\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__BIGGEST_ALIGNMENT__ 16\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "__SIZEOF_POINTER__ 8\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "__GNUG__ 6\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__SIZE_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__PTRDIFF_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__WCHAR_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__WINT_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__INTMAX_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__UINTMAX_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x2e
	.ascii "__CHAR32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__INT8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__INT16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__INT32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__INT64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__UINT8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__UINT16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "__UINT32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "__UINT64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "__INT_LEAST16_TYPE__ short int\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__INT_LEAST32_TYPE__ int\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__INT_LEAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "__UINT_LEAST32_TYPE__ unsigned int\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__UINT_LEAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__INT_FAST8_TYPE__ signed char\0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__INT_FAST16_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__INT_FAST32_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__INT_FAST64_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__UINT_FAST8_TYPE__ unsigned char\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__UINT_FAST16_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__UINT_FAST32_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__UINT_FAST64_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__INTPTR_TYPE__ long int\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__UINTPTR_TYPE__ long unsigned int\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__has_include(STR) __has_include__(STR)\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__GXX_WEAK__ 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__DEPRECATED 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__GXX_EXPERIMENTAL_CXX0X__ 1\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__cpp_binary_literals 201304\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__cpp_unicode_characters 200704\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__cpp_raw_strings 200710\0"
	.byte	0x1
	.uleb128 0x52
	.ascii "__cpp_unicode_literals 200710\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__cpp_user_defined_literals 200809\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "__cpp_lambdas 200907\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "__cpp_range_based_for 200907\0"
	.byte	0x1
	.uleb128 0x56
	.ascii "__cpp_static_assert 200410\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__cpp_decltype 200707\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__cpp_attributes 200809\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__cpp_rvalue_reference 200610\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__cpp_rvalue_references 200610\0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "__cpp_variadic_templates 200704\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__cpp_initializer_lists 200806\0"
	.byte	0x1
	.uleb128 0x5d
	.ascii "__cpp_delegating_constructors 200604\0"
	.byte	0x1
	.uleb128 0x5e
	.ascii "__cpp_nsdmi 200809\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__cpp_inheriting_constructors 200802\0"
	.byte	0x1
	.uleb128 0x60
	.ascii "__cpp_ref_qualifiers 200710\0"
	.byte	0x1
	.uleb128 0x61
	.ascii "__cpp_alias_templates 200704\0"
	.byte	0x1
	.uleb128 0x62
	.ascii "__cpp_return_type_deduction 201304\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "__cpp_init_captures 201304\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "__cpp_generic_lambdas 201304\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "__cpp_constexpr 201304\0"
	.byte	0x1
	.uleb128 0x66
	.ascii "__cpp_decltype_auto 201304\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__cpp_aggregate_nsdmi 201304\0"
	.byte	0x1
	.uleb128 0x68
	.ascii "__cpp_variable_templates 201304\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__cpp_digit_separators 201309\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__cpp_sized_deallocation 201309\0"
	.byte	0x1
	.uleb128 0x6b
	.ascii "__GXX_ABI_VERSION 1010\0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__SCHAR_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__SHRT_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__INT_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__LONG_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__WCHAR_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x72
	.ascii "__WCHAR_MIN__ 0\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__WINT_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x74
	.ascii "__WINT_MIN__ 0U\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__PTRDIFF_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__SIZE_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x77
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__INTMAX_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x79
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x7a
	.ascii "__UINTMAX_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x7c
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__INT8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "__INT16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "__INT32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__INT64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "__UINT8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__UINT16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "__UINT32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "__UINT64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x86
	.ascii "__INT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
	.byte	0x1
	.uleb128 0x88
	.ascii "__INT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "__INT_LEAST32_MAX__ 0x7fffffff\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__INT32_C(c) c\0"
	.byte	0x1
	.uleb128 0x8b
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "__INT64_C(c) c ## L\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__UINT8_C(c) c\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__UINT16_C(c) c\0"
	.byte	0x1
	.uleb128 0x91
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffU\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__UINT32_C(c) c ## U\0"
	.byte	0x1
	.uleb128 0x93
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__UINT64_C(c) c ## UL\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__INT_FAST8_MAX__ 0x7f\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__INT_FAST16_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__INT_FAST32_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "__UINT_FAST8_MAX__ 0xff\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__UINT_FAST16_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "__UINT_FAST32_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9d
	.ascii "__INTPTR_MAX__ 0x7fffffffffffffffL\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__UINTPTR_MAX__ 0xffffffffffffffffUL\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "__GCC_IEC_559 2\0"
	.byte	0x1
	.uleb128 0xa0
	.ascii "__GCC_IEC_559_COMPLEX 2\0"
	.byte	0x1
	.uleb128 0xa1
	.ascii "__FLT_EVAL_METHOD__ 0\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "__DEC_EVAL_METHOD__ 2\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "__FLT_RADIX__ 2\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "__FLT_MANT_DIG__ 24\0"
	.byte	0x1
	.uleb128 0xa5
	.ascii "__FLT_DIG__ 6\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "__FLT_MIN_EXP__ (-125)\0"
	.byte	0x1
	.uleb128 0xa7
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__FLT_MAX_EXP__ 128\0"
	.byte	0x1
	.uleb128 0xa9
	.ascii "__FLT_MAX_10_EXP__ 38\0"
	.byte	0x1
	.uleb128 0xaa
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
	.byte	0x1
	.uleb128 0xab
	.ascii "__FLT_MAX__ 3.40282346638528859812e+38F\0"
	.byte	0x1
	.uleb128 0xac
	.ascii "__FLT_MIN__ 1.17549435082228750797e-38F\0"
	.byte	0x1
	.uleb128 0xad
	.ascii "__FLT_EPSILON__ 1.19209289550781250000e-7F\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "__FLT_DENORM_MIN__ 1.40129846432481707092e-45F\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__FLT_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__FLT_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__DBL_MANT_DIG__ 53\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__DBL_DIG__ 15\0"
	.byte	0x1
	.uleb128 0xb4
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__DBL_MAX_EXP__ 1024\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__DBL_MAX_10_EXP__ 308\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__DBL_MAX__ double(1.79769313486231570815e+308L)\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "__DBL_MIN__ double(2.22507385850720138309e-308L)\0"
	.byte	0x1
	.uleb128 0xbb
	.ascii "__DBL_EPSILON__ double(2.22044604925031308085e-16L)\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "__DBL_DENORM_MIN__ double(4.94065645841246544177e-324L)\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "__DBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xbe
	.ascii "__DBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xbf
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "__LDBL_MANT_DIG__ 64\0"
	.byte	0x1
	.uleb128 0xc1
	.ascii "__LDBL_DIG__ 18\0"
	.byte	0x1
	.uleb128 0xc2
	.ascii "__LDBL_MIN_EXP__ (-16381)\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "__LDBL_MIN_10_EXP__ (-4931)\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "__LDBL_MAX_EXP__ 16384\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "__LDBL_MAX_10_EXP__ 4932\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "__DECIMAL_DIG__ 21\0"
	.byte	0x1
	.uleb128 0xc7
	.ascii "__LDBL_MAX__ 1.18973149535723176502e+4932L\0"
	.byte	0x1
	.uleb128 0xc8
	.ascii "__LDBL_MIN__ 3.36210314311209350626e-4932L\0"
	.byte	0x1
	.uleb128 0xc9
	.ascii "__LDBL_EPSILON__ 1.08420217248550443401e-19L\0"
	.byte	0x1
	.uleb128 0xca
	.ascii "__LDBL_DENORM_MIN__ 3.64519953188247460253e-4951L\0"
	.byte	0x1
	.uleb128 0xcb
	.ascii "__LDBL_HAS_DENORM__ 1\0"
	.byte	0x1
	.uleb128 0xcc
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
	.byte	0x1
	.uleb128 0xcd
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "__DEC32_MANT_DIG__ 7\0"
	.byte	0x1
	.uleb128 0xcf
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
	.byte	0x1
	.uleb128 0xd0
	.ascii "__DEC32_MAX_EXP__ 97\0"
	.byte	0x1
	.uleb128 0xd1
	.ascii "__DEC32_MIN__ 1E-95DF\0"
	.byte	0x1
	.uleb128 0xd2
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
	.byte	0x1
	.uleb128 0xd3
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "__DEC64_MANT_DIG__ 16\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
	.byte	0x1
	.uleb128 0xd7
	.ascii "__DEC64_MAX_EXP__ 385\0"
	.byte	0x1
	.uleb128 0xd8
	.ascii "__DEC64_MIN__ 1E-383DD\0"
	.byte	0x1
	.uleb128 0xd9
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
	.byte	0x1
	.uleb128 0xda
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
	.byte	0x1
	.uleb128 0xdb
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
	.byte	0x1
	.uleb128 0xdc
	.ascii "__DEC128_MANT_DIG__ 34\0"
	.byte	0x1
	.uleb128 0xdd
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
	.byte	0x1
	.uleb128 0xde
	.ascii "__DEC128_MAX_EXP__ 6145\0"
	.byte	0x1
	.uleb128 0xdf
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
	.byte	0x1
	.uleb128 0xe0
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
	.byte	0x1
	.uleb128 0xe1
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
	.byte	0x1
	.uleb128 0xe2
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
	.byte	0x1
	.uleb128 0xe3
	.ascii "__REGISTER_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe4
	.ascii "__USER_LABEL_PREFIX__ \0"
	.byte	0x1
	.uleb128 0xe5
	.ascii "__GNUC_STDC_INLINE__ 1\0"
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
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\Debug-host\\cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x3
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
	.uleb128 0x7
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
	.file 17 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x11
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
	.file 18 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x12
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
	.uleb128 0x2
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 19 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x2
	.uleb128 0x4
	.ascii "__STDC_LIMIT_MACROS\0"
	.byte	0x1
	.uleb128 0x5
	.ascii "__STDC_LIMIT_MACROS \0"
	.byte	0x2
	.uleb128 0x6
	.ascii "__STDC_CONSTANT_MACROS\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "__STDC_CONSTANT_MACROS \0"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x1
	.uleb128 0xa
	.ascii "_STDINT_H \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"
	.file 20 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
	.file 21 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x4
	.ascii "_NEWLIB_VERSION_H__ 1\0"
	.byte	0x1
	.uleb128 0x6
	.ascii "_NEWLIB_VERSION \"2.5.0\"\0"
	.byte	0x1
	.uleb128 0x7
	.ascii "__NEWLIB__ 2\0"
	.byte	0x1
	.uleb128 0x8
	.ascii "__NEWLIB_MINOR__ 5\0"
	.byte	0x1
	.uleb128 0x9
	.ascii "__NEWLIB_PATCHLEVEL__ 0\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x21
	.ascii "__GNUC_PREREQ(maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min))\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "__GNUC_PREREQ__(ma,mi) __GNUC_PREREQ(ma, mi)\0"
	.byte	0x1
	.uleb128 0xf4
	.ascii "__ATFILE_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0xfa
	.ascii "__BSD_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__GNU_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__ISO_C_VISIBLE 2011\0"
	.byte	0x1
	.uleb128 0x110
	.ascii "__LARGEFILE_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "__MISC_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "__POSIX_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x12c
	.ascii "__SVID_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "__XSI_VISIBLE 0\0"
	.byte	0x1
	.uleb128 0x19b
	.ascii "_POSIX_ADVISORY_INFO 200809L\0"
	.byte	0x1
	.uleb128 0x19d
	.ascii "_POSIX_BARRIERS 200809L\0"
	.byte	0x1
	.uleb128 0x19e
	.ascii "_POSIX_CHOWN_RESTRICTED 1\0"
	.byte	0x1
	.uleb128 0x19f
	.ascii "_POSIX_CLOCK_SELECTION 200809L\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "_POSIX_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x1a1
	.ascii "_POSIX_FSYNC 200809L\0"
	.byte	0x1
	.uleb128 0x1a2
	.ascii "_POSIX_IPV6 200809L\0"
	.byte	0x1
	.uleb128 0x1a3
	.ascii "_POSIX_JOB_CONTROL 1\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "_POSIX_MAPPED_FILES 200809L\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "_POSIX_MEMLOCK_RANGE 200809L\0"
	.byte	0x1
	.uleb128 0x1a7
	.ascii "_POSIX_MEMORY_PROTECTION 200809L\0"
	.byte	0x1
	.uleb128 0x1a8
	.ascii "_POSIX_MESSAGE_PASSING 200809L\0"
	.byte	0x1
	.uleb128 0x1a9
	.ascii "_POSIX_MONOTONIC_CLOCK 200809L\0"
	.byte	0x1
	.uleb128 0x1aa
	.ascii "_POSIX_NO_TRUNC 1\0"
	.byte	0x1
	.uleb128 0x1ac
	.ascii "_POSIX_PRIORITY_SCHEDULING 200809L\0"
	.byte	0x1
	.uleb128 0x1ad
	.ascii "_POSIX_RAW_SOCKETS 200809L\0"
	.byte	0x1
	.uleb128 0x1ae
	.ascii "_POSIX_READER_WRITER_LOCKS 200809L\0"
	.byte	0x1
	.uleb128 0x1af
	.ascii "_POSIX_REALTIME_SIGNALS 200809L\0"
	.byte	0x1
	.uleb128 0x1b0
	.ascii "_POSIX_REGEXP 1\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "_POSIX_SAVED_IDS 1\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "_POSIX_SEMAPHORES 200809L\0"
	.byte	0x1
	.uleb128 0x1b3
	.ascii "_POSIX_SHARED_MEMORY_OBJECTS 200809L\0"
	.byte	0x1
	.uleb128 0x1b4
	.ascii "_POSIX_SHELL 1\0"
	.byte	0x1
	.uleb128 0x1b5
	.ascii "_POSIX_SPAWN 200809L\0"
	.byte	0x1
	.uleb128 0x1b6
	.ascii "_POSIX_SPIN_LOCKS 200809L\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "_POSIX_SYNCHRONIZED_IO 200809L\0"
	.byte	0x1
	.uleb128 0x1b9
	.ascii "_POSIX_THREAD_ATTR_STACKADDR 200809L\0"
	.byte	0x1
	.uleb128 0x1ba
	.ascii "_POSIX_THREAD_ATTR_STACKSIZE 200809L\0"
	.byte	0x1
	.uleb128 0x1bb
	.ascii "_POSIX_THREAD_CPUTIME 200809L\0"
	.byte	0x1
	.uleb128 0x1be
	.ascii "_POSIX_THREAD_PRIORITY_SCHEDULING 200809L\0"
	.byte	0x1
	.uleb128 0x1bf
	.ascii "_POSIX_THREAD_PROCESS_SHARED 200809L\0"
	.byte	0x1
	.uleb128 0x1c0
	.ascii "_POSIX_THREAD_SAFE_FUNCTIONS 200809L\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "_POSIX_THREADS 200809L\0"
	.byte	0x1
	.uleb128 0x1c4
	.ascii "_POSIX_TIMERS 200809L\0"
	.byte	0x1
	.uleb128 0x1ca
	.ascii "_POSIX_VDISABLE '\\0'\0"
	.byte	0x1
	.uleb128 0x1de
	.ascii "_POSIX_V6_ILP32_OFF32 -1\0"
	.byte	0x1
	.uleb128 0x1e0
	.ascii "_POSIX_V6_ILP32_OFFBIG -1\0"
	.byte	0x1
	.uleb128 0x1e1
	.ascii "_POSIX_V6_LP64_OFF64 1\0"
	.byte	0x1
	.uleb128 0x1e2
	.ascii "_POSIX_V6_LPBIG_OFFBIG 1\0"
	.byte	0x1
	.uleb128 0x1e8
	.ascii "_POSIX_V7_ILP32_OFF32 _POSIX_V6_ILP32_OFF32\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "_POSIX_V7_ILP32_OFFBIG _POSIX_V6_ILP32_OFFBIG\0"
	.byte	0x1
	.uleb128 0x1ea
	.ascii "_POSIX_V7_LP64_OFF64 _POSIX_V6_LP64_OFF64\0"
	.byte	0x1
	.uleb128 0x1eb
	.ascii "_POSIX_V7_LPBIG_OFFBIG _POSIX_V6_LPBIG_OFFBIG\0"
	.byte	0x1
	.uleb128 0x1ec
	.ascii "_XBS5_ILP32_OFF32 _POSIX_V6_ILP32_OFF32\0"
	.byte	0x1
	.uleb128 0x1ed
	.ascii "_XBS5_ILP32_OFFBIG _POSIX_V6_ILP32_OFFBIG\0"
	.byte	0x1
	.uleb128 0x1ee
	.ascii "_XBS5_LP64_OFF64 _POSIX_V6_LP64_OFF64\0"
	.byte	0x1
	.uleb128 0x1ef
	.ascii "_XBS5_LPBIG_OFFBIG _POSIX_V6_LPBIG_OFFBIG\0"
	.byte	0x1
	.uleb128 0x1fe
	.ascii "__STDC_ISO_10646__ 200910L\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xf
	.ascii "__EXP(x) __ ##x ##__\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "__have_longlong64 1\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__have_long64 1\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "___int8_t_defined 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "___int16_t_defined 1\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "___int32_t_defined 1\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "___int64_t_defined 1\0"
	.byte	0x1
	.uleb128 0x8c
	.ascii "___int_least8_t_defined 1\0"
	.byte	0x1
	.uleb128 0xa6
	.ascii "___int_least16_t_defined 1\0"
	.byte	0x1
	.uleb128 0xbc
	.ascii "___int_least32_t_defined 1\0"
	.byte	0x1
	.uleb128 0xce
	.ascii "___int_least64_t_defined 1\0"
	.byte	0x2
	.uleb128 0xf4
	.ascii "__EXP\0"
	.byte	0x4
	.file 22 "/usr/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x16
	.byte	0x1
	.uleb128 0xa
	.ascii "_SYS__INTSUP_H \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__STDINT_EXP(x) __ ##x ##__\0"
	.byte	0x2
	.uleb128 0x2a
	.ascii "signed\0"
	.byte	0x2
	.uleb128 0x2b
	.ascii "unsigned\0"
	.byte	0x2
	.uleb128 0x2c
	.ascii "char\0"
	.byte	0x2
	.uleb128 0x2d
	.ascii "short\0"
	.byte	0x2
	.uleb128 0x2e
	.ascii "int\0"
	.byte	0x2
	.uleb128 0x2f
	.ascii "__int20\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "long\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "signed +0\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "unsigned +0\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "char +0\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "short +1\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__int20 +2\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "int +2\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "long +4\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "_INTPTR_EQ_LONG \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__INT8 \"hh\"\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__INT16 \"h\"\0"
	.byte	0x1
	.uleb128 0x63
	.ascii "__INT32 \0"
	.byte	0x1
	.uleb128 0x6c
	.ascii "__INT64 \"l\"\0"
	.byte	0x1
	.uleb128 0x71
	.ascii "__FAST8 \"hh\"\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__FAST16 \"l\"\0"
	.byte	0x1
	.uleb128 0x87
	.ascii "__FAST32 \"l\"\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__FAST64 \"l\"\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__LEAST8 \"hh\"\0"
	.byte	0x1
	.uleb128 0x9f
	.ascii "__LEAST16 \"h\"\0"
	.byte	0x1
	.uleb128 0xa8
	.ascii "__LEAST32 \0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__LEAST64 \"l\"\0"
	.byte	0x2
	.uleb128 0xb5
	.ascii "signed\0"
	.byte	0x2
	.uleb128 0xb6
	.ascii "unsigned\0"
	.byte	0x2
	.uleb128 0xb7
	.ascii "char\0"
	.byte	0x2
	.uleb128 0xb8
	.ascii "short\0"
	.byte	0x2
	.uleb128 0xb9
	.ascii "int\0"
	.byte	0x2
	.uleb128 0xba
	.ascii "long\0"
	.byte	0x2
	.uleb128 0xbf
	.ascii "__int20\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.ascii "_SYS__STDINT_H \0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_INT8_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x19
	.ascii "_UINT8_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__int8_t_defined 1\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "_INT16_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_UINT16_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__int16_t_defined 1\0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "_INT32_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "_UINT32_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x33
	.ascii "__int32_t_defined 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_INT64_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_UINT64_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__int64_t_defined 1\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_INTMAX_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_UINTMAX_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_INTPTR_T_DECLARED \0"
	.byte	0x1
	.uleb128 0x53
	.ascii "_UINTPTR_T_DECLARED \0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x17
	.ascii "__int_least8_t_defined 1\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__int_least16_t_defined 1\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__int_least32_t_defined 1\0"
	.byte	0x1
	.uleb128 0x29
	.ascii "__int_least64_t_defined 1\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "__int_fast8_t_defined 1\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__int_fast16_t_defined 1\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__int_fast32_t_defined 1\0"
	.byte	0x1
	.uleb128 0x53
	.ascii "__int_fast64_t_defined 1\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "INTPTR_MIN (-__INTPTR_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x81
	.ascii "INTPTR_MAX (__INTPTR_MAX__)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "UINTPTR_MAX (__UINTPTR_MAX__)\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "INT8_MIN (-__INT8_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "INT8_MAX (__INT8_MAX__)\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "UINT8_MAX (__UINT8_MAX__)\0"
	.byte	0x1
	.uleb128 0xa2
	.ascii "INT_LEAST8_MIN (-__INT_LEAST8_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xa3
	.ascii "INT_LEAST8_MAX (__INT_LEAST8_MAX__)\0"
	.byte	0x1
	.uleb128 0xa4
	.ascii "UINT_LEAST8_MAX (__UINT_LEAST8_MAX__)\0"
	.byte	0x1
	.uleb128 0xae
	.ascii "INT16_MIN (-__INT16_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "INT16_MAX (__INT16_MAX__)\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "UINT16_MAX (__UINT16_MAX__)\0"
	.byte	0x1
	.uleb128 0xb8
	.ascii "INT_LEAST16_MIN (-__INT_LEAST16_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "INT_LEAST16_MAX (__INT_LEAST16_MAX__)\0"
	.byte	0x1
	.uleb128 0xba
	.ascii "UINT_LEAST16_MAX (__UINT_LEAST16_MAX__)\0"
	.byte	0x1
	.uleb128 0xc4
	.ascii "INT32_MIN (-__INT32_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xc5
	.ascii "INT32_MAX (__INT32_MAX__)\0"
	.byte	0x1
	.uleb128 0xc6
	.ascii "UINT32_MAX (__UINT32_MAX__)\0"
	.byte	0x1
	.uleb128 0xd4
	.ascii "INT_LEAST32_MIN (-__INT_LEAST32_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xd5
	.ascii "INT_LEAST32_MAX (__INT_LEAST32_MAX__)\0"
	.byte	0x1
	.uleb128 0xd6
	.ascii "UINT_LEAST32_MAX (__UINT_LEAST32_MAX__)\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "INT64_MIN (-__INT64_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xe7
	.ascii "INT64_MAX (__INT64_MAX__)\0"
	.byte	0x1
	.uleb128 0xe8
	.ascii "UINT64_MAX (__UINT64_MAX__)\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "INT_LEAST64_MIN (-__INT_LEAST64_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0xf7
	.ascii "INT_LEAST64_MAX (__INT_LEAST64_MAX__)\0"
	.byte	0x1
	.uleb128 0xf8
	.ascii "UINT_LEAST64_MAX (__UINT_LEAST64_MAX__)\0"
	.byte	0x1
	.uleb128 0x106
	.ascii "INT_FAST8_MIN (-__INT_FAST8_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x107
	.ascii "INT_FAST8_MAX (__INT_FAST8_MAX__)\0"
	.byte	0x1
	.uleb128 0x108
	.ascii "UINT_FAST8_MAX (__UINT_FAST8_MAX__)\0"
	.byte	0x1
	.uleb128 0x116
	.ascii "INT_FAST16_MIN (-__INT_FAST16_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x117
	.ascii "INT_FAST16_MAX (__INT_FAST16_MAX__)\0"
	.byte	0x1
	.uleb128 0x118
	.ascii "UINT_FAST16_MAX (__UINT_FAST16_MAX__)\0"
	.byte	0x1
	.uleb128 0x126
	.ascii "INT_FAST32_MIN (-__INT_FAST32_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x127
	.ascii "INT_FAST32_MAX (__INT_FAST32_MAX__)\0"
	.byte	0x1
	.uleb128 0x128
	.ascii "UINT_FAST32_MAX (__UINT_FAST32_MAX__)\0"
	.byte	0x1
	.uleb128 0x136
	.ascii "INT_FAST64_MIN (-__INT_FAST64_MAX__ - 1)\0"
	.byte	0x1
	.uleb128 0x137
	.ascii "INT_FAST64_MAX (__INT_FAST64_MAX__)\0"
	.byte	0x1
	.uleb128 0x138
	.ascii "UINT_FAST64_MAX (__UINT_FAST64_MAX__)\0"
	.byte	0x1
	.uleb128 0x146
	.ascii "INTMAX_MAX (__INTMAX_MAX__)\0"
	.byte	0x1
	.uleb128 0x147
	.ascii "INTMAX_MIN (-INTMAX_MAX - 1)\0"
	.byte	0x1
	.uleb128 0x14f
	.ascii "UINTMAX_MAX (__UINTMAX_MAX__)\0"
	.byte	0x1
	.uleb128 0x157
	.ascii "SIZE_MAX (__SIZE_MAX__)\0"
	.byte	0x1
	.uleb128 0x15d
	.ascii "SIG_ATOMIC_MIN (-__STDINT_EXP(INT_MAX) - 1)\0"
	.byte	0x1
	.uleb128 0x15e
	.ascii "SIG_ATOMIC_MAX (__STDINT_EXP(INT_MAX))\0"
	.byte	0x1
	.uleb128 0x162
	.ascii "PTRDIFF_MAX (__PTRDIFF_MAX__)\0"
	.byte	0x1
	.uleb128 0x166
	.ascii "PTRDIFF_MIN (-PTRDIFF_MAX - 1)\0"
	.byte	0x1
	.uleb128 0x16b
	.ascii "WCHAR_MIN (__WCHAR_MIN__)\0"
	.byte	0x1
	.uleb128 0x176
	.ascii "WCHAR_MAX (__WCHAR_MAX__)\0"
	.byte	0x1
	.uleb128 0x180
	.ascii "WINT_MAX (__WINT_MAX__)\0"
	.byte	0x1
	.uleb128 0x185
	.ascii "WINT_MIN (__WINT_MIN__)\0"
	.byte	0x1
	.uleb128 0x18c
	.ascii "INT8_C(x) __INT8_C(x)\0"
	.byte	0x1
	.uleb128 0x18d
	.ascii "UINT8_C(x) __UINT8_C(x)\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "INT16_C(x) __INT16_C(x)\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "UINT16_C(x) __UINT16_C(x)\0"
	.byte	0x1
	.uleb128 0x1a4
	.ascii "INT32_C(x) __INT32_C(x)\0"
	.byte	0x1
	.uleb128 0x1a5
	.ascii "UINT32_C(x) __UINT32_C(x)\0"
	.byte	0x1
	.uleb128 0x1b1
	.ascii "INT64_C(x) __INT64_C(x)\0"
	.byte	0x1
	.uleb128 0x1b2
	.ascii "UINT64_C(x) __UINT64_C(x)\0"
	.byte	0x1
	.uleb128 0x1c1
	.ascii "INTMAX_C(x) __INTMAX_C(x)\0"
	.byte	0x1
	.uleb128 0x1c2
	.ascii "UINTMAX_C(x) __UINTMAX_C(x)\0"
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
	.uleb128 0x16
	.ascii "INFO \"[INFO] \"\0"
	.byte	0x1
	.uleb128 0x17
	.ascii "WARNING \"[WARNING] \"\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "FATAL \"[FATAL] \"\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__stringify_1(x) #x\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__stringify(x) __stringify_1(x)\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "HEX32(a,b) 0x ##a ##b\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "HEX64(a,b,c,d) 0x ##a ##b ##c ##d\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x23
	.ascii "_NEW \0"
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/exception"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x1f
	.ascii "__EXCEPTION__ \0"
	.file 24 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/atomic_lockfree_defines.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x18
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
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x20
	.ascii "_EXCEPTION_PTR_H \0"
	.file 25 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_defines.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x19
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
	.file 26 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/nested_exception.h"
	.byte	0x3
	.uleb128 0xab
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_NESTED_EXCEPTION_H 1\0"
	.file 27 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/move.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x1f
	.ascii "_MOVE_H 1\0"
	.file 28 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1c
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
	.uleb128 0xf
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
