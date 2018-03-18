	.file	"MemoryManager_aarch64.cpp"
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
.LFB58:
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
.LFE58:
	.seh_endproc
	.section .rdata,"dr"
_ZStL19piecewise_construct:
	.space 1
	.align 8
_ZL11koutBufSize:
	.quad	65
	.text
	.align 2
	.globl	_ZN13MemoryManagerC2EPvmb
	.def	_ZN13MemoryManagerC2EPvmb;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManagerC2EPvmb
_ZN13MemoryManagerC2EPvmb:
.LFB839:
	.file 2 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp"
	.loc 2 14 0
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
	movl	%r9d, %eax
	movb	%al, 40(%rbp)
.LBB2:
	.loc 2 18 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rbp), %rax
	movq	32(%rbp), %rdx
	movq	%rdx, 16(%rax)
	.loc 2 20 0
	cmpb	$0, 40(%rbp)
	je	.L7
	.loc 2 22 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movl	$8, %ecx
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L6
	.loc 2 22 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rdx
	subq	$9, %rdx
	movq	$0, 40(%rsp)
	movl	$0, 32(%rsp)
	movl	$0, %r9d
	movl	$0, %r8d
	movq	%rax, %rcx
	call	_ZN11MemoryChunkC1Embmbm
.L6:
	.loc 2 23 0 is_stmt 1
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
.L7:
.LBE2:
	.loc 2 25 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE839:
	.seh_endproc
	.globl	_ZN13MemoryManagerC1EPvmb
	.def	_ZN13MemoryManagerC1EPvmb;	.scl	2;	.type	32;	.endef
	.set	_ZN13MemoryManagerC1EPvmb,_ZN13MemoryManagerC2EPvmb
	.align 2
	.globl	_ZN13MemoryManager18normalizeAllocSizeEm
	.def	_ZN13MemoryManager18normalizeAllocSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager18normalizeAllocSizeEm
_ZN13MemoryManager18normalizeAllocSizeEm:
.LFB841:
	.loc 2 28 0
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
	.loc 2 29 0
	cmpq	$7, 24(%rbp)
	ja	.L9
	.loc 2 30 0
	movq	$8, 24(%rbp)
.L9:
	.loc 2 31 0
	movq	24(%rbp), %rax
	andl	$7, %eax
	testq	%rax, %rax
	je	.L10
	.loc 2 32 0
	movq	24(%rbp), %rax
	andq	$-8, %rax
	addq	$8, %rax
	movq	%rax, 24(%rbp)
.L10:
	.loc 2 33 0
	movq	24(%rbp), %rax
	.loc 2 34 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE841:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager8allocateEm
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager8allocateEm
_ZN13MemoryManager8allocateEm:
.LFB842:
	.loc 2 36 0
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
	.loc 2 37 0
	movq	24(%rbp), %rax
	movl	$8, %r8d
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager8allocateEmm
	.loc 2 38 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE842:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager8allocateEmm
	.def	_ZN13MemoryManager8allocateEmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager8allocateEmm
_ZN13MemoryManager8allocateEmm:
.LFB843:
	.loc 2 40 0
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
	.loc 2 41 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	.loc 2 43 0
	movq	$-1, -16(%rbp)
.L24:
	.loc 2 47 0
	cmpq	$0, -8(%rbp)
	je	.L15
	.loc 2 47 0 is_stmt 0 discriminator 2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
	testb	%al, %al
	je	.L16
.L15:
	.loc 2 47 0 discriminator 3
	movl	$1, %eax
	jmp	.L17
.L16:
	.loc 2 47 0 discriminator 4
	movl	$0, %eax
.L17:
	.loc 2 47 0 discriminator 6
	testb	%al, %al
	je	.L18
	.loc 2 48 0 is_stmt 1
	movl	$0, %eax
	jmp	.L19
.L18:
	.loc 2 49 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L20
	.loc 2 49 0 is_stmt 0 discriminator 1
	movq	32(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm
	movq	%rax, -16(%rbp)
	cmpq	$-1, -16(%rbp)
	je	.L20
	.loc 2 49 0 discriminator 3
	movl	$1, %eax
	jmp	.L21
.L20:
	.loc 2 49 0 discriminator 4
	movl	$0, %eax
.L21:
	.loc 2 49 0 discriminator 6
	testb	%al, %al
	jne	.L26
	.loc 2 51 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7getNextEv
	movq	%rax, -8(%rbp)
	.loc 2 47 0
	jmp	.L24
.L26:
	.loc 2 50 0
	nop
	.loc 2 53 0
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk9moveAheadEm
	movq	%rax, -24(%rbp)
	.loc 2 54 0
	movq	24(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk5splitEm
	.loc 2 55 0
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 56 0
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk10getDataPtrEv
.L19:
	.loc 2 57 0
	addq	$64, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE843:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager10deallocateEPv
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10deallocateEPv
_ZN13MemoryManager10deallocateEPv:
.LFB844:
	.loc 2 59 0
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
.LBB3:
	.loc 2 60 0
	cmpq	$0, 24(%rbp)
	je	.L30
	.loc 2 60 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax
	cmpq	$8, %rax
	jbe	.L30
.LBB4:
	.loc 2 62 0 is_stmt 1
	movq	24(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 2 63 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	je	.L30
	.loc 2 65 0
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 66 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
.L30:
.LBE4:
.LBE3:
	.loc 2 70 0
	nop
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE844:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager11tryIncreaseEPvm
	.def	_ZN13MemoryManager11tryIncreaseEPvm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager11tryIncreaseEPvm
_ZN13MemoryManager11tryIncreaseEPvm:
.LFB845:
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
	movq	%rdx, 24(%rbp)
	movq	%r8, 32(%rbp)
	.loc 2 75 0
	movl	$0, %eax
	.loc 2 76 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE845:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager11tryDecreaseEPvm
	.def	_ZN13MemoryManager11tryDecreaseEPvm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager11tryDecreaseEPvm
_ZN13MemoryManager11tryDecreaseEPvm:
.LFB846:
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
	movq	%r8, 32(%rbp)
	.loc 2 79 0
	movl	$0, %eax
	.loc 2 80 0
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE846:
	.seh_endproc
	.align 2
	.globl	_ZN13MemoryManager10reallocateEPvmm
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10reallocateEPvmm
_ZN13MemoryManager10reallocateEPvmm:
.LFB847:
	.loc 2 82 0
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
	movq	%r9, 40(%rbp)
	.loc 2 83 0
	cmpq	$0, 24(%rbp)
	jne	.L36
	.loc 2 84 0
	movl	$0, %eax
	jmp	.L37
.L36:
	.loc 2 85 0
	cmpq	$0, 32(%rbp)
	jne	.L38
	.loc 2 87 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 2 88 0
	movl	$0, %eax
	jmp	.L37
.L38:
	.loc 2 90 0
	cmpq	$-1, 40(%rbp)
	jne	.L39
	.loc 2 91 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZNK13MemoryManager18getAllocatedLengthEPv
	movq	%rax, 40(%rbp)
.L39:
	.loc 2 92 0
	cmpq	$-1, 40(%rbp)
	jne	.L40
	.loc 2 93 0
	movl	$0, %eax
	jmp	.L37
.L40:
	.loc 2 94 0
	movq	40(%rbp), %rax
	cmpq	32(%rbp), %rax
	jne	.L41
	.loc 2 95 0
	movq	24(%rbp), %rax
	jmp	.L37
.L41:
	.loc 2 96 0
	movq	24(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 2 99 0
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 100 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
.LBB5:
	.loc 2 101 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	cmpq	32(%rbp), %rax
	setnb	%al
	testb	%al, %al
	je	.L42
	.loc 2 103 0
	movq	32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN11MemoryChunk5splitEm
	.loc 2 104 0
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 105 0
	movq	24(%rbp), %rax
	jmp	.L37
.L42:
.LBB6:
	.loc 2 107 0
	movq	-8(%rbp), %rax
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 108 0
	movq	32(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
	movq	%rax, -16(%rbp)
	.loc 2 109 0
	cmpq	$0, -16(%rbp)
	jne	.L43
	.loc 2 110 0
	movl	$0, %eax
	jmp	.L37
.L43:
	.loc 2 111 0
	movq	40(%rbp), %rcx
	movq	24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rcx, %r8
	movq	%rax, %rcx
	call	memcpy
	.loc 2 112 0
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
	.loc 2 113 0
	movq	-16(%rbp), %rax
.L37:
.LBE6:
.LBE5:
	.loc 2 115 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE847:
	.seh_endproc
	.align 2
	.globl	_ZNK13MemoryManager18getAllocatedLengthEPv
	.def	_ZNK13MemoryManager18getAllocatedLengthEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK13MemoryManager18getAllocatedLengthEPv
_ZNK13MemoryManager18getAllocatedLengthEPv:
.LFB848:
	.loc 2 117 0
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
.LBB7:
	.loc 2 118 0
	cmpq	$0, 24(%rbp)
	je	.L45
	.loc 2 118 0 is_stmt 0 discriminator 1
	movq	24(%rbp), %rax
	cmpq	$8, %rax
	jbe	.L45
.LBB8:
	.loc 2 120 0 is_stmt 1
	movq	24(%rbp), %rax
	subq	$8, %rax
	movq	%rax, -8(%rbp)
	.loc 2 121 0
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk23getNextValidChunkOffsetEv
	testq	%rax, %rax
	jne	.L46
	.loc 2 121 0 is_stmt 0 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L46
	.loc 2 121 0 discriminator 3
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
	testb	%al, %al
	je	.L46
	.loc 2 121 0 discriminator 5
	movl	$1, %eax
	jmp	.L47
.L46:
	.loc 2 121 0 discriminator 6
	movl	$0, %eax
.L47:
	.loc 2 121 0 discriminator 8
	testb	%al, %al
	je	.L45
	.loc 2 122 0 is_stmt 1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
	jmp	.L49
.L45:
.LBE8:
.LBE7:
	.loc 2 124 0
	movq	$-1, %rax
.L49:
	.loc 2 125 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE848:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPcEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPcEET_m
	.def	_ZN13MemoryManager10allocateAsIPcEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPcEET_m
_ZN13MemoryManager10allocateAsIPcEET_m:
.LFB849:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.loc 3 15 0
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
	.loc 3 17 0
	movq	24(%rbp), %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN13MemoryManager8allocateEm
	.loc 3 18 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE849:
	.seh_endproc
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 7 "<built-in>"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_ptr.h"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.file 10 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstring"
	.file 11 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_pair.h"
	.file 12 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/type_traits"
	.file 13 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/debug/debug.h"
	.file 14 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdlib"
	.file 15 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/algorithmfwd.h"
	.file 16 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_algo.h"
	.file 17 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 18 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 21 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 22 "/usr/include/sys/lock.h"
	.file 23 "/usr/include/sys/_types.h"
	.file 24 "/usr/include/sys/reent.h"
	.file 25 "/usr/include/string.h"
	.file 26 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/exception"
	.file 27 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/predefined_ops.h"
	.file 28 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/ext/numeric_traits.h"
	.file 29 "/usr/include/stdlib.h"
	.file 30 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x3396
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/memory/MemoryManager_aarch64.cpp\0"
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
	.long	0x177
	.uleb128 0x4
	.ascii "size_t\0"
	.byte	0x4
	.byte	0xd8
	.long	0x19b
	.uleb128 0x3
	.long	0x188
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x4
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1f8
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x4
	.word	0x1ab
	.long	0x1f8
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x4
	.word	0x1ac
	.long	0x209
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
	.byte	0x4
	.word	0x1ad
	.long	0x1b0
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x7
	.byte	0
	.long	0xadd
	.uleb128 0xa
	.byte	0x5
	.byte	0x38
	.long	0x218
	.uleb128 0xa
	.byte	0x6
	.byte	0x30
	.long	0xadd
	.uleb128 0xa
	.byte	0x6
	.byte	0x31
	.long	0xafa
	.uleb128 0xa
	.byte	0x6
	.byte	0x32
	.long	0xb16
	.uleb128 0xa
	.byte	0x6
	.byte	0x33
	.long	0xb31
	.uleb128 0xa
	.byte	0x6
	.byte	0x35
	.long	0xc60
	.uleb128 0xa
	.byte	0x6
	.byte	0x36
	.long	0xc73
	.uleb128 0xa
	.byte	0x6
	.byte	0x37
	.long	0xc87
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0xc9b
	.uleb128 0xa
	.byte	0x6
	.byte	0x3a
	.long	0xbb6
	.uleb128 0xa
	.byte	0x6
	.byte	0x3b
	.long	0xbca
	.uleb128 0xa
	.byte	0x6
	.byte	0x3c
	.long	0xbdf
	.uleb128 0xa
	.byte	0x6
	.byte	0x3d
	.long	0xbf4
	.uleb128 0xa
	.byte	0x6
	.byte	0x3f
	.long	0xd23
	.uleb128 0xa
	.byte	0x6
	.byte	0x40
	.long	0xd02
	.uleb128 0xa
	.byte	0x6
	.byte	0x42
	.long	0xb40
	.uleb128 0xa
	.byte	0x6
	.byte	0x43
	.long	0xb60
	.uleb128 0xa
	.byte	0x6
	.byte	0x44
	.long	0xb86
	.uleb128 0xa
	.byte	0x6
	.byte	0x45
	.long	0xba6
	.uleb128 0xa
	.byte	0x6
	.byte	0x47
	.long	0xcaf
	.uleb128 0xa
	.byte	0x6
	.byte	0x48
	.long	0xcc3
	.uleb128 0xa
	.byte	0x6
	.byte	0x49
	.long	0xcd8
	.uleb128 0xa
	.byte	0x6
	.byte	0x4a
	.long	0xced
	.uleb128 0xa
	.byte	0x6
	.byte	0x4c
	.long	0xc09
	.uleb128 0xa
	.byte	0x6
	.byte	0x4d
	.long	0xc1e
	.uleb128 0xa
	.byte	0x6
	.byte	0x4e
	.long	0xc34
	.uleb128 0xa
	.byte	0x6
	.byte	0x4f
	.long	0xc4a
	.uleb128 0xa
	.byte	0x6
	.byte	0x51
	.long	0xd33
	.uleb128 0xa
	.byte	0x6
	.byte	0x52
	.long	0xd12
	.uleb128 0x9
	.ascii "__exception_ptr\0"
	.byte	0x8
	.byte	0x35
	.long	0x792
	.uleb128 0xb
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x8
	.byte	0x4d
	.long	0x785
	.uleb128 0xc
	.ascii "_M_exception_object\0"
	.byte	0x8
	.byte	0x4f
	.long	0x1443
	.byte	0
	.uleb128 0xd
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x51
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EPv\0"
	.long	0x38e
	.long	0x399
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x1443
	.byte	0
	.uleb128 0x10
	.ascii "_M_addref\0"
	.byte	0x8
	.byte	0x53
	.ascii "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv\0"
	.long	0x3e0
	.long	0x3e6
	.uleb128 0xe
	.long	0x1821
	.byte	0
	.uleb128 0x10
	.ascii "_M_release\0"
	.byte	0x8
	.byte	0x54
	.ascii "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv\0"
	.long	0x430
	.long	0x436
	.uleb128 0xe
	.long	0x1821
	.byte	0
	.uleb128 0x11
	.ascii "_M_get\0"
	.byte	0x8
	.byte	0x56
	.ascii "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv\0"
	.long	0x1443
	.long	0x47c
	.long	0x482
	.uleb128 0xe
	.long	0x1827
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x5c
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4Ev\0"
	.byte	0x1
	.long	0x4bc
	.long	0x4c2
	.uleb128 0xe
	.long	0x1821
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x5e
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4ERKS0_\0"
	.byte	0x1
	.long	0x500
	.long	0x50b
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x182d
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x61
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EDn\0"
	.byte	0x1
	.long	0x546
	.long	0x551
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x7f4
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x8
	.byte	0x65
	.ascii "_ZNSt15__exception_ptr13exception_ptrC4EOS0_\0"
	.byte	0x1
	.long	0x58e
	.long	0x599
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x1833
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF1
	.byte	0x8
	.byte	0x72
	.ascii "_ZNSt15__exception_ptr13exception_ptraSERKS0_\0"
	.long	0x1839
	.byte	0x1
	.long	0x5db
	.long	0x5e6
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x182d
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF1
	.byte	0x8
	.byte	0x76
	.ascii "_ZNSt15__exception_ptr13exception_ptraSEOS0_\0"
	.long	0x1839
	.byte	0x1
	.long	0x627
	.long	0x632
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x1833
	.byte	0
	.uleb128 0x14
	.ascii "~exception_ptr\0"
	.byte	0x8
	.byte	0x7d
	.ascii "_ZNSt15__exception_ptr13exception_ptrD4Ev\0"
	.byte	0x1
	.long	0x677
	.long	0x682
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xe
	.long	0xb25
	.byte	0
	.uleb128 0x14
	.ascii "swap\0"
	.byte	0x8
	.byte	0x80
	.ascii "_ZNSt15__exception_ptr13exception_ptr4swapERS0_\0"
	.byte	0x1
	.long	0x6c3
	.long	0x6ce
	.uleb128 0xe
	.long	0x1821
	.uleb128 0xf
	.long	0x1839
	.byte	0
	.uleb128 0x15
	.ascii "operator bool\0"
	.byte	0x8
	.byte	0x8c
	.ascii "_ZNKSt15__exception_ptr13exception_ptrcvbEv\0"
	.long	0x1430
	.byte	0x1
	.long	0x718
	.long	0x71e
	.uleb128 0xe
	.long	0x1827
	.byte	0
	.uleb128 0x16
	.ascii "__cxa_exception_type\0"
	.byte	0x8
	.byte	0x95
	.ascii "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv\0"
	.long	0x183f
	.byte	0x1
	.long	0x77e
	.uleb128 0xe
	.long	0x1827
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x32c
	.uleb128 0xa
	.byte	0x8
	.byte	0x47
	.long	0x799
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.byte	0x3a
	.long	0x32c
	.uleb128 0x17
	.ascii "rethrow_exception\0"
	.byte	0x8
	.byte	0x43
	.ascii "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE\0"
	.long	0x7f4
	.uleb128 0xf
	.long	0x32c
	.byte	0
	.uleb128 0x4
	.ascii "nullptr_t\0"
	.byte	0x9
	.byte	0xcd
	.long	0x22c
	.uleb128 0x18
	.ascii "type_info\0"
	.uleb128 0x3
	.long	0x805
	.uleb128 0x19
	.ascii "__swappable_details\0"
	.byte	0xc
	.word	0xa37
	.uleb128 0x1a
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x1
	.byte	0x52
	.long	0x85f
	.uleb128 0x1b
	.secrel32	.LASF2
	.byte	0x1
	.byte	0x55
	.ascii "_ZNSt9nothrow_tC4Ev\0"
	.long	0x858
	.uleb128 0xe
	.long	0x185f
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x82d
	.uleb128 0x1c
	.ascii "nothrow\0"
	.byte	0x1
	.byte	0x59
	.ascii "_ZSt7nothrow\0"
	.long	0x85f
	.uleb128 0xa
	.byte	0xa
	.byte	0x4b
	.long	0x2302
	.uleb128 0xa
	.byte	0xa
	.byte	0x4c
	.long	0x2324
	.uleb128 0xa
	.byte	0xa
	.byte	0x4d
	.long	0x2346
	.uleb128 0xa
	.byte	0xa
	.byte	0x4e
	.long	0x2368
	.uleb128 0xa
	.byte	0xa
	.byte	0x4f
	.long	0x238b
	.uleb128 0xa
	.byte	0xa
	.byte	0x50
	.long	0x23ad
	.uleb128 0xa
	.byte	0xa
	.byte	0x51
	.long	0x23ca
	.uleb128 0xa
	.byte	0xa
	.byte	0x52
	.long	0x23e7
	.uleb128 0xa
	.byte	0xa
	.byte	0x53
	.long	0x2405
	.uleb128 0xa
	.byte	0xa
	.byte	0x54
	.long	0x2422
	.uleb128 0xa
	.byte	0xa
	.byte	0x55
	.long	0x2440
	.uleb128 0xa
	.byte	0xa
	.byte	0x56
	.long	0x245a
	.uleb128 0xa
	.byte	0xa
	.byte	0x57
	.long	0x2472
	.uleb128 0xa
	.byte	0xa
	.byte	0x58
	.long	0x2495
	.uleb128 0xa
	.byte	0xa
	.byte	0x59
	.long	0x24b8
	.uleb128 0xa
	.byte	0xa
	.byte	0x5a
	.long	0x24db
	.uleb128 0xa
	.byte	0xa
	.byte	0x5b
	.long	0x24f8
	.uleb128 0xa
	.byte	0xa
	.byte	0x5c
	.long	0x2515
	.uleb128 0xa
	.byte	0xa
	.byte	0x5d
	.long	0x2538
	.uleb128 0xa
	.byte	0xa
	.byte	0x5e
	.long	0x2555
	.uleb128 0xa
	.byte	0xa
	.byte	0x5f
	.long	0x2573
	.uleb128 0xa
	.byte	0xa
	.byte	0x60
	.long	0x2591
	.uleb128 0x1a
	.secrel32	.LASF3
	.byte	0x1
	.byte	0xb
	.byte	0x4c
	.long	0x959
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0xb
	.byte	0x4c
	.ascii "_ZNSt21piecewise_construct_tC4Ev\0"
	.long	0x952
	.uleb128 0xe
	.long	0x25ae
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x91a
	.uleb128 0x1d
	.ascii "piecewise_construct\0"
	.byte	0xb
	.byte	0x4f
	.long	0x959
	.byte	0x1
	.byte	0
	.uleb128 0x1e
	.ascii "__debug\0"
	.byte	0xd
	.byte	0x32
	.uleb128 0xa
	.byte	0xe
	.byte	0x7c
	.long	0x270a
	.uleb128 0xa
	.byte	0xe
	.byte	0x7d
	.long	0x2741
	.uleb128 0xa
	.byte	0xe
	.byte	0x7f
	.long	0x27b8
	.uleb128 0xa
	.byte	0xe
	.byte	0x80
	.long	0x27c1
	.uleb128 0xa
	.byte	0xe
	.byte	0x81
	.long	0x27d6
	.uleb128 0xa
	.byte	0xe
	.byte	0x84
	.long	0x27ee
	.uleb128 0xa
	.byte	0xe
	.byte	0x87
	.long	0x280e
	.uleb128 0xa
	.byte	0xe
	.byte	0x88
	.long	0x2824
	.uleb128 0xa
	.byte	0xe
	.byte	0x89
	.long	0x283a
	.uleb128 0xa
	.byte	0xe
	.byte	0x8a
	.long	0x2850
	.uleb128 0xa
	.byte	0xe
	.byte	0x8b
	.long	0x287d
	.uleb128 0xa
	.byte	0xe
	.byte	0x8c
	.long	0x289a
	.uleb128 0xa
	.byte	0xe
	.byte	0x8d
	.long	0x28b4
	.uleb128 0xa
	.byte	0xe
	.byte	0x8e
	.long	0x28c6
	.uleb128 0xa
	.byte	0xe
	.byte	0x8f
	.long	0x28d8
	.uleb128 0xa
	.byte	0xe
	.byte	0x90
	.long	0x28f0
	.uleb128 0xa
	.byte	0xe
	.byte	0x91
	.long	0x2906
	.uleb128 0xa
	.byte	0xe
	.byte	0x92
	.long	0x2921
	.uleb128 0xa
	.byte	0xe
	.byte	0x94
	.long	0x2939
	.uleb128 0xa
	.byte	0xe
	.byte	0x95
	.long	0x2955
	.uleb128 0xa
	.byte	0xe
	.byte	0x96
	.long	0x298f
	.uleb128 0xa
	.byte	0xe
	.byte	0x98
	.long	0x29b1
	.uleb128 0xa
	.byte	0xe
	.byte	0x9b
	.long	0x29d3
	.uleb128 0xa
	.byte	0xe
	.byte	0x9e
	.long	0x29ec
	.uleb128 0xa
	.byte	0xe
	.byte	0x9f
	.long	0x29f8
	.uleb128 0xa
	.byte	0xe
	.byte	0xa0
	.long	0x2a16
	.uleb128 0xa
	.byte	0xe
	.byte	0xa1
	.long	0x2a29
	.uleb128 0xa
	.byte	0xe
	.byte	0xa2
	.long	0x2a4c
	.uleb128 0xa
	.byte	0xe
	.byte	0xa3
	.long	0x2a6e
	.uleb128 0xa
	.byte	0xe
	.byte	0xa4
	.long	0x2a91
	.uleb128 0xa
	.byte	0xe
	.byte	0xa6
	.long	0x2aa9
	.uleb128 0xa
	.byte	0xe
	.byte	0xa7
	.long	0x2ad3
	.uleb128 0x1f
	.byte	0xe
	.word	0x104
	.long	0x277a
	.uleb128 0x1f
	.byte	0xe
	.word	0x106
	.long	0x2af0
	.uleb128 0x1f
	.byte	0xe
	.word	0x108
	.long	0x2b03
	.uleb128 0x1f
	.byte	0xe
	.word	0x109
	.long	0x2612
	.uleb128 0x1f
	.byte	0xe
	.word	0x10a
	.long	0x2b1b
	.uleb128 0x1f
	.byte	0xe
	.word	0x10c
	.long	0x2b38
	.uleb128 0x1f
	.byte	0xe
	.word	0x10d
	.long	0x2b99
	.uleb128 0x1f
	.byte	0xe
	.word	0x10e
	.long	0x2b50
	.uleb128 0x1f
	.byte	0xe
	.word	0x10f
	.long	0x2b74
	.uleb128 0x1f
	.byte	0xe
	.word	0x110
	.long	0x2bb6
	.uleb128 0x19
	.ascii "_V2\0"
	.byte	0xf
	.word	0x215
	.uleb128 0x20
	.byte	0xf
	.word	0x216
	.long	0xab6
	.uleb128 0x20
	.byte	0x10
	.word	0x4d9
	.long	0xab6
	.uleb128 0x4
	.ascii "size_t\0"
	.byte	0x9
	.byte	0xc9
	.long	0x19b
	.byte	0
	.uleb128 0x4
	.ascii "int8_t\0"
	.byte	0x11
	.byte	0x22
	.long	0xaeb
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x4
	.ascii "int16_t\0"
	.byte	0x11
	.byte	0x25
	.long	0xb09
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x4
	.ascii "int32_t\0"
	.byte	0x11
	.byte	0x28
	.long	0xb25
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x3
	.long	0xb25
	.uleb128 0x4
	.ascii "int64_t\0"
	.byte	0x11
	.byte	0x2b
	.long	0x177
	.uleb128 0x4
	.ascii "uint8_t\0"
	.byte	0x11
	.byte	0x2e
	.long	0xb4f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x4
	.ascii "uint16_t\0"
	.byte	0x11
	.byte	0x31
	.long	0xb70
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x4
	.ascii "uint32_t\0"
	.byte	0x11
	.byte	0x34
	.long	0xb96
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x4
	.ascii "uint64_t\0"
	.byte	0x11
	.byte	0x37
	.long	0x19b
	.uleb128 0x4
	.ascii "int_least8_t\0"
	.byte	0x11
	.byte	0x3c
	.long	0xaeb
	.uleb128 0x4
	.ascii "int_least16_t\0"
	.byte	0x11
	.byte	0x3d
	.long	0xb09
	.uleb128 0x4
	.ascii "int_least32_t\0"
	.byte	0x11
	.byte	0x3e
	.long	0xb25
	.uleb128 0x4
	.ascii "int_least64_t\0"
	.byte	0x11
	.byte	0x3f
	.long	0x177
	.uleb128 0x4
	.ascii "uint_least8_t\0"
	.byte	0x11
	.byte	0x40
	.long	0xb4f
	.uleb128 0x4
	.ascii "uint_least16_t\0"
	.byte	0x11
	.byte	0x41
	.long	0xb70
	.uleb128 0x4
	.ascii "uint_least32_t\0"
	.byte	0x11
	.byte	0x42
	.long	0xb96
	.uleb128 0x4
	.ascii "uint_least64_t\0"
	.byte	0x11
	.byte	0x43
	.long	0x19b
	.uleb128 0x4
	.ascii "int_fast8_t\0"
	.byte	0x11
	.byte	0x47
	.long	0xaeb
	.uleb128 0x4
	.ascii "int_fast16_t\0"
	.byte	0x11
	.byte	0x48
	.long	0x177
	.uleb128 0x4
	.ascii "int_fast32_t\0"
	.byte	0x11
	.byte	0x49
	.long	0x177
	.uleb128 0x4
	.ascii "int_fast64_t\0"
	.byte	0x11
	.byte	0x4a
	.long	0x177
	.uleb128 0x4
	.ascii "uint_fast8_t\0"
	.byte	0x11
	.byte	0x4b
	.long	0xb4f
	.uleb128 0x4
	.ascii "uint_fast16_t\0"
	.byte	0x11
	.byte	0x4c
	.long	0x19b
	.uleb128 0x4
	.ascii "uint_fast32_t\0"
	.byte	0x11
	.byte	0x4d
	.long	0x19b
	.uleb128 0x4
	.ascii "uint_fast64_t\0"
	.byte	0x11
	.byte	0x4e
	.long	0x19b
	.uleb128 0x4
	.ascii "intptr_t\0"
	.byte	0x11
	.byte	0x53
	.long	0x177
	.uleb128 0x4
	.ascii "uintptr_t\0"
	.byte	0x11
	.byte	0x56
	.long	0x19b
	.uleb128 0x4
	.ascii "intmax_t\0"
	.byte	0x11
	.byte	0x5b
	.long	0x177
	.uleb128 0x4
	.ascii "uintmax_t\0"
	.byte	0x11
	.byte	0x5c
	.long	0x19b
	.uleb128 0x21
	.long	0xd6d
	.long	0xd54
	.uleb128 0x22
	.long	0xd59
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xd44
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.long	0xd65
	.uleb128 0x23
	.ascii "EMPTY_STR\0"
	.byte	0x12
	.byte	0x16
	.long	0xd54
	.uleb128 0x24
	.ascii "UNIT_K\0"
	.byte	0x12
	.byte	0x1a
	.long	0xb2c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0x24
	.ascii "KiB\0"
	.byte	0x12
	.byte	0x1b
	.long	0xb2c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0x24
	.ascii "MiB\0"
	.byte	0x12
	.byte	0x1c
	.long	0xb2c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0x24
	.ascii "GiB\0"
	.byte	0x12
	.byte	0x1d
	.long	0xb2c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0x21
	.long	0xd6d
	.long	0xde5
	.uleb128 0x25
	.byte	0
	.uleb128 0x23
	.ascii "digitsMap\0"
	.byte	0x13
	.byte	0x16
	.long	0xdda
	.uleb128 0xb
	.secrel32	.LASF4
	.byte	0x8
	.byte	0x14
	.byte	0x16
	.long	0x1425
	.uleb128 0x26
	.ascii "nextValidChunkOffset\0"
	.byte	0x14
	.byte	0x42
	.long	0xba6
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x26
	.ascii "endMark\0"
	.byte	0x14
	.byte	0x43
	.long	0xba6
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x26
	.ascii "allocated\0"
	.byte	0x14
	.byte	0x44
	.long	0xba6
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x26
	.ascii "size\0"
	.byte	0x14
	.byte	0x45
	.long	0xba6
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x26
	.ascii "nextBaseFromEnd\0"
	.byte	0x14
	.byte	0x46
	.long	0xba6
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF4
	.byte	0x14
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xe9e
	.long	0xebd
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x1430
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x1430
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "isAllocated\0"
	.byte	0x14
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x1430
	.byte	0x1
	.long	0xefa
	.long	0xf00
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x14
	.ascii "setAllocated\0"
	.byte	0x14
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xf3a
	.long	0xf45
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x1430
	.byte	0
	.uleb128 0x27
	.ascii "isEnd\0"
	.byte	0x14
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x1430
	.byte	0x1
	.long	0xf75
	.long	0xf7b
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x14
	.ascii "setEnd\0"
	.byte	0x14
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xfa8
	.long	0xfb3
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x1430
	.byte	0
	.uleb128 0x27
	.ascii "getNext\0"
	.byte	0x14
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x143d
	.byte	0x1
	.long	0xfe7
	.long	0xfed
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x27
	.ascii "getNext\0"
	.byte	0x14
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x142a
	.byte	0x1
	.long	0x1020
	.long	0x1026
	.uleb128 0xe
	.long	0x142a
	.byte	0
	.uleb128 0x27
	.ascii "getSize\0"
	.byte	0x14
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x188
	.byte	0x1
	.long	0x105a
	.long	0x1060
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x14
	.ascii "setSize\0"
	.byte	0x14
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0x108f
	.long	0x109a
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF5
	.byte	0x14
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x1443
	.byte	0x1
	.long	0x10cd
	.long	0x10d3
	.uleb128 0xe
	.long	0x142a
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF5
	.byte	0x14
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x1445
	.byte	0x1
	.long	0x1107
	.long	0x110d
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0x14
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x1443
	.byte	0x1
	.long	0x1140
	.long	0x1146
	.uleb128 0xe
	.long	0x142a
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0x14
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x1445
	.byte	0x1
	.long	0x117a
	.long	0x1180
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x27
	.ascii "getNextBaseFromEnd\0"
	.byte	0x14
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0xba6
	.byte	0x1
	.long	0x11cb
	.long	0x11d1
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x14
	.ascii "setNextBaseFromEnd\0"
	.byte	0x14
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0x1217
	.long	0x1222
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0xba6
	.byte	0
	.uleb128 0x27
	.ascii "getNextValidChunkOffset\0"
	.byte	0x14
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0xba6
	.byte	0x1
	.long	0x1277
	.long	0x127d
	.uleb128 0xe
	.long	0x143d
	.byte	0
	.uleb128 0x14
	.ascii "setNextValidChunkOffset\0"
	.byte	0x14
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x12cd
	.long	0x12d8
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0xba6
	.byte	0
	.uleb128 0x27
	.ascii "moveAhead\0"
	.byte	0x14
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x142a
	.byte	0x1
	.long	0x130f
	.long	0x131a
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0x14
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x188
	.byte	0x1
	.long	0x1384
	.long	0x1394
	.uleb128 0xe
	.long	0x143d
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "split\0"
	.byte	0x14
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x1430
	.byte	0x1
	.long	0x13c3
	.long	0x13ce
	.uleb128 0xe
	.long	0x142a
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x28
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0x14
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x141e
	.uleb128 0xe
	.long	0x142a
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0xdf6
	.uleb128 0x29
	.byte	0x8
	.long	0xdf6
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x3
	.long	0x1430
	.uleb128 0x29
	.byte	0x8
	.long	0x1425
	.uleb128 0x2a
	.byte	0x8
	.uleb128 0x29
	.byte	0x8
	.long	0x144b
	.uleb128 0x2b
	.uleb128 0xb
	.secrel32	.LASF7
	.byte	0x18
	.byte	0x15
	.byte	0x19
	.long	0x17f4
	.uleb128 0x2c
	.byte	0x4
	.long	0xb96
	.byte	0x15
	.byte	0x1b
	.byte	0x1
	.long	0x149c
	.uleb128 0x2d
	.ascii "CHUNK_SIZE\0"
	.byte	0x8
	.uleb128 0x2d
	.ascii "MINIMAL_ALLOC_SIZE\0"
	.byte	0x8
	.uleb128 0x2d
	.ascii "MINIMAL_ALIGNMENT\0"
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.ascii "headChunk\0"
	.byte	0x15
	.byte	0x54
	.long	0x142a
	.byte	0
	.uleb128 0xc
	.ascii "base\0"
	.byte	0x15
	.byte	0x55
	.long	0x17f9
	.byte	0x8
	.uleb128 0xc
	.ascii "size\0"
	.byte	0x15
	.byte	0x56
	.long	0x196
	.byte	0x10
	.uleb128 0x2e
	.secrel32	.LASF7
	.byte	0x15
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x14ef
	.long	0x14f5
	.uleb128 0xe
	.long	0x17ff
	.byte	0
	.uleb128 0x12
	.secrel32	.LASF7
	.byte	0x15
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x151f
	.long	0x1534
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x1430
	.byte	0
	.uleb128 0x27
	.ascii "normalizeAllocSize\0"
	.byte	0x15
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x188
	.byte	0x1
	.long	0x1580
	.long	0x158b
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF8
	.byte	0x15
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x1443
	.byte	0x1
	.long	0x15bd
	.long	0x15c8
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF8
	.byte	0x15
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x1443
	.byte	0x1
	.long	0x15fb
	.long	0x160b
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "tryIncrease\0"
	.byte	0x15
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0x1430
	.byte	0x1
	.long	0x164b
	.long	0x165b
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "tryDecrease\0"
	.byte	0x15
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0x1430
	.byte	0x1
	.long	0x169b
	.long	0x16ab
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "reallocate\0"
	.byte	0x15
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x1443
	.byte	0x1
	.long	0x16ea
	.long	0x16ff
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x14
	.ascii "deallocate\0"
	.byte	0x15
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x1738
	.long	0x1743
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x1443
	.byte	0
	.uleb128 0x27
	.ascii "getAllocatedLength\0"
	.byte	0x15
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x188
	.byte	0x1
	.long	0x1791
	.long	0x179c
	.uleb128 0xe
	.long	0x180a
	.uleb128 0xf
	.long	0x1443
	.byte	0
	.uleb128 0x16
	.ascii "allocateAs<char*>\0"
	.byte	0x3
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPcEET_m\0"
	.long	0x194f
	.byte	0x1
	.long	0x17e8
	.uleb128 0x2f
	.ascii "T\0"
	.long	0x194f
	.uleb128 0xe
	.long	0x17ff
	.uleb128 0xf
	.long	0x188
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x144c
	.uleb128 0x29
	.byte	0x8
	.long	0xd6d
	.uleb128 0x29
	.byte	0x8
	.long	0x144c
	.uleb128 0x3
	.long	0x17ff
	.uleb128 0x29
	.byte	0x8
	.long	0x17f4
	.uleb128 0x3
	.long	0x180a
	.uleb128 0x23
	.ascii "mman\0"
	.byte	0x15
	.byte	0x5b
	.long	0x144c
	.uleb128 0x29
	.byte	0x8
	.long	0x32c
	.uleb128 0x29
	.byte	0x8
	.long	0x785
	.uleb128 0x30
	.byte	0x8
	.long	0x785
	.uleb128 0x31
	.byte	0x8
	.long	0x32c
	.uleb128 0x30
	.byte	0x8
	.long	0x32c
	.uleb128 0x29
	.byte	0x8
	.long	0x810
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x29
	.byte	0x8
	.long	0x82d
	.uleb128 0x4
	.ascii "_LOCK_T\0"
	.byte	0x16
	.byte	0xc
	.long	0x1443
	.uleb128 0x4
	.ascii "_off64_t\0"
	.byte	0x17
	.byte	0x5e
	.long	0x1f8
	.uleb128 0x4
	.ascii "_fpos_t\0"
	.byte	0x17
	.byte	0x72
	.long	0x177
	.uleb128 0x4
	.ascii "_fpos64_t\0"
	.byte	0x17
	.byte	0x78
	.long	0x1874
	.uleb128 0x4
	.ascii "_ssize_t\0"
	.byte	0x17
	.byte	0x91
	.long	0x177
	.uleb128 0x7
	.ascii "wint_t\0"
	.byte	0x4
	.word	0x165
	.long	0xb96
	.uleb128 0x32
	.byte	0x8
	.byte	0x17
	.byte	0xa4
	.ascii "10_mbstate_t\0"
	.long	0x191d
	.uleb128 0x33
	.byte	0x4
	.byte	0x17
	.byte	0xa7
	.long	0x18fc
	.uleb128 0x34
	.ascii "__wch\0"
	.byte	0x17
	.byte	0xa8
	.long	0x18b4
	.uleb128 0x34
	.ascii "__wchb\0"
	.byte	0x17
	.byte	0xa9
	.long	0x191d
	.byte	0
	.uleb128 0xc
	.ascii "__count\0"
	.byte	0x17
	.byte	0xa5
	.long	0xb25
	.byte	0
	.uleb128 0xc
	.ascii "__value\0"
	.byte	0x17
	.byte	0xaa
	.long	0x18d8
	.byte	0x4
	.byte	0
	.uleb128 0x21
	.long	0xb4f
	.long	0x192d
	.uleb128 0x22
	.long	0xd59
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.ascii "_mbstate_t\0"
	.byte	0x17
	.byte	0xab
	.long	0x18c3
	.uleb128 0x4
	.ascii "_flock_t\0"
	.byte	0x17
	.byte	0xaf
	.long	0x1865
	.uleb128 0x29
	.byte	0x8
	.long	0xd65
	.uleb128 0x4
	.ascii "__ULong\0"
	.byte	0x18
	.byte	0x19
	.long	0xb96
	.uleb128 0x35
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0x18
	.byte	0x2f
	.long	0x19c4
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x18
	.byte	0x31
	.long	0x19c4
	.byte	0
	.uleb128 0xc
	.ascii "_k\0"
	.byte	0x18
	.byte	0x32
	.long	0xb25
	.byte	0x8
	.uleb128 0xc
	.ascii "_maxwds\0"
	.byte	0x18
	.byte	0x32
	.long	0xb25
	.byte	0xc
	.uleb128 0xc
	.ascii "_sign\0"
	.byte	0x18
	.byte	0x32
	.long	0xb25
	.byte	0x10
	.uleb128 0xc
	.ascii "_wds\0"
	.byte	0x18
	.byte	0x32
	.long	0xb25
	.byte	0x14
	.uleb128 0xc
	.ascii "_x\0"
	.byte	0x18
	.byte	0x33
	.long	0x19ca
	.byte	0x18
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1964
	.uleb128 0x21
	.long	0x1955
	.long	0x19da
	.uleb128 0x22
	.long	0xd59
	.byte	0
	.byte	0
	.uleb128 0x35
	.ascii "__tm\0"
	.byte	0x24
	.byte	0x18
	.byte	0x37
	.long	0x1a88
	.uleb128 0xc
	.ascii "__tm_sec\0"
	.byte	0x18
	.byte	0x39
	.long	0xb25
	.byte	0
	.uleb128 0xc
	.ascii "__tm_min\0"
	.byte	0x18
	.byte	0x3a
	.long	0xb25
	.byte	0x4
	.uleb128 0xc
	.ascii "__tm_hour\0"
	.byte	0x18
	.byte	0x3b
	.long	0xb25
	.byte	0x8
	.uleb128 0xc
	.ascii "__tm_mday\0"
	.byte	0x18
	.byte	0x3c
	.long	0xb25
	.byte	0xc
	.uleb128 0xc
	.ascii "__tm_mon\0"
	.byte	0x18
	.byte	0x3d
	.long	0xb25
	.byte	0x10
	.uleb128 0xc
	.ascii "__tm_year\0"
	.byte	0x18
	.byte	0x3e
	.long	0xb25
	.byte	0x14
	.uleb128 0xc
	.ascii "__tm_wday\0"
	.byte	0x18
	.byte	0x3f
	.long	0xb25
	.byte	0x18
	.uleb128 0xc
	.ascii "__tm_yday\0"
	.byte	0x18
	.byte	0x40
	.long	0xb25
	.byte	0x1c
	.uleb128 0xc
	.ascii "__tm_isdst\0"
	.byte	0x18
	.byte	0x41
	.long	0xb25
	.byte	0x20
	.byte	0
	.uleb128 0x36
	.secrel32	.LASF9
	.word	0x208
	.byte	0x18
	.byte	0x4a
	.long	0x1ade
	.uleb128 0xc
	.ascii "_fnargs\0"
	.byte	0x18
	.byte	0x4b
	.long	0x1ade
	.byte	0
	.uleb128 0x37
	.ascii "_dso_handle\0"
	.byte	0x18
	.byte	0x4c
	.long	0x1ade
	.word	0x100
	.uleb128 0x37
	.ascii "_fntypes\0"
	.byte	0x18
	.byte	0x4e
	.long	0x1955
	.word	0x200
	.uleb128 0x37
	.ascii "_is_cxa\0"
	.byte	0x18
	.byte	0x51
	.long	0x1955
	.word	0x204
	.byte	0
	.uleb128 0x21
	.long	0x1443
	.long	0x1aee
	.uleb128 0x22
	.long	0xd59
	.byte	0x1f
	.byte	0
	.uleb128 0x38
	.ascii "_atexit\0"
	.word	0x318
	.byte	0x18
	.byte	0x5d
	.long	0x1b35
	.uleb128 0xc
	.ascii "_next\0"
	.byte	0x18
	.byte	0x5e
	.long	0x1b35
	.byte	0
	.uleb128 0xc
	.ascii "_ind\0"
	.byte	0x18
	.byte	0x5f
	.long	0xb25
	.byte	0x8
	.uleb128 0xc
	.ascii "_fns\0"
	.byte	0x18
	.byte	0x61
	.long	0x1b3b
	.byte	0x10
	.uleb128 0x39
	.secrel32	.LASF9
	.byte	0x18
	.byte	0x62
	.long	0x1a88
	.word	0x110
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1aee
	.uleb128 0x21
	.long	0x1b4b
	.long	0x1b4b
	.uleb128 0x22
	.long	0xd59
	.byte	0x1f
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1b51
	.uleb128 0x3a
	.uleb128 0x35
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0x18
	.byte	0x75
	.long	0x1b7e
	.uleb128 0xc
	.ascii "_base\0"
	.byte	0x18
	.byte	0x76
	.long	0x1b7e
	.byte	0
	.uleb128 0xc
	.ascii "_size\0"
	.byte	0x18
	.byte	0x77
	.long	0xb25
	.byte	0x8
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0xb4f
	.uleb128 0x3b
	.long	0x18a4
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1bad
	.uleb128 0x3
	.long	0x1ba2
	.uleb128 0x3c
	.ascii "_reent\0"
	.word	0x760
	.byte	0x18
	.word	0x239
	.long	0x1f50
	.uleb128 0x3d
	.word	0x168
	.byte	0x18
	.word	0x258
	.long	0x1dc2
	.uleb128 0x3e
	.byte	0xd8
	.byte	0x18
	.word	0x25a
	.long	0x1d75
	.uleb128 0x6
	.ascii "_unused_rand\0"
	.byte	0x18
	.word	0x25b
	.long	0xb96
	.byte	0
	.uleb128 0x6
	.ascii "_strtok_last\0"
	.byte	0x18
	.word	0x25c
	.long	0x194f
	.byte	0x8
	.uleb128 0x6
	.ascii "_asctime_buf\0"
	.byte	0x18
	.word	0x25d
	.long	0x2223
	.byte	0x10
	.uleb128 0x6
	.ascii "_localtime_buf\0"
	.byte	0x18
	.word	0x25e
	.long	0x19da
	.byte	0x2c
	.uleb128 0x6
	.ascii "_gamma_signgam\0"
	.byte	0x18
	.word	0x25f
	.long	0xb25
	.byte	0x50
	.uleb128 0x6
	.ascii "_rand_next\0"
	.byte	0x18
	.word	0x260
	.long	0x1845
	.byte	0x58
	.uleb128 0x6
	.ascii "_r48\0"
	.byte	0x18
	.word	0x261
	.long	0x21d5
	.byte	0x60
	.uleb128 0x6
	.ascii "_mblen_state\0"
	.byte	0x18
	.word	0x262
	.long	0x192d
	.byte	0x70
	.uleb128 0x6
	.ascii "_mbtowc_state\0"
	.byte	0x18
	.word	0x263
	.long	0x192d
	.byte	0x78
	.uleb128 0x6
	.ascii "_wctomb_state\0"
	.byte	0x18
	.word	0x264
	.long	0x192d
	.byte	0x80
	.uleb128 0x6
	.ascii "_l64a_buf\0"
	.byte	0x18
	.word	0x265
	.long	0x2233
	.byte	0x88
	.uleb128 0x6
	.ascii "_signal_buf\0"
	.byte	0x18
	.word	0x266
	.long	0x2243
	.byte	0x90
	.uleb128 0x6
	.ascii "_getdate_err\0"
	.byte	0x18
	.word	0x267
	.long	0xb25
	.byte	0xa8
	.uleb128 0x6
	.ascii "_mbrlen_state\0"
	.byte	0x18
	.word	0x268
	.long	0x192d
	.byte	0xac
	.uleb128 0x6
	.ascii "_mbrtowc_state\0"
	.byte	0x18
	.word	0x269
	.long	0x192d
	.byte	0xb4
	.uleb128 0x6
	.ascii "_mbsrtowcs_state\0"
	.byte	0x18
	.word	0x26a
	.long	0x192d
	.byte	0xbc
	.uleb128 0x6
	.ascii "_wcrtomb_state\0"
	.byte	0x18
	.word	0x26b
	.long	0x192d
	.byte	0xc4
	.uleb128 0x6
	.ascii "_wcsrtombs_state\0"
	.byte	0x18
	.word	0x26c
	.long	0x192d
	.byte	0xcc
	.uleb128 0x6
	.ascii "_h_errno\0"
	.byte	0x18
	.word	0x26d
	.long	0xb25
	.byte	0xd4
	.byte	0
	.uleb128 0x3f
	.word	0x168
	.byte	0x18
	.word	0x273
	.long	0x1da2
	.uleb128 0x6
	.ascii "_nextf\0"
	.byte	0x18
	.word	0x275
	.long	0x2253
	.byte	0
	.uleb128 0x6
	.ascii "_nmalloc\0"
	.byte	0x18
	.word	0x276
	.long	0x2263
	.byte	0xf0
	.byte	0
	.uleb128 0x40
	.ascii "_reent\0"
	.byte	0x18
	.word	0x26e
	.long	0x1bc8
	.uleb128 0x40
	.ascii "_unused\0"
	.byte	0x18
	.word	0x277
	.long	0x1d75
	.byte	0
	.uleb128 0x6
	.ascii "_errno\0"
	.byte	0x18
	.word	0x23b
	.long	0xb25
	.byte	0
	.uleb128 0x6
	.ascii "_stdin\0"
	.byte	0x18
	.word	0x240
	.long	0x21cf
	.byte	0x8
	.uleb128 0x6
	.ascii "_stdout\0"
	.byte	0x18
	.word	0x240
	.long	0x21cf
	.byte	0x10
	.uleb128 0x6
	.ascii "_stderr\0"
	.byte	0x18
	.word	0x240
	.long	0x21cf
	.byte	0x18
	.uleb128 0x6
	.ascii "_inc\0"
	.byte	0x18
	.word	0x242
	.long	0xb25
	.byte	0x20
	.uleb128 0x6
	.ascii "_emergency\0"
	.byte	0x18
	.word	0x243
	.long	0x2273
	.byte	0x24
	.uleb128 0x6
	.ascii "_unspecified_locale_info\0"
	.byte	0x18
	.word	0x246
	.long	0xb25
	.byte	0x40
	.uleb128 0x6
	.ascii "_locale\0"
	.byte	0x18
	.word	0x247
	.long	0x228f
	.byte	0x48
	.uleb128 0x6
	.ascii "__sdidinit\0"
	.byte	0x18
	.word	0x249
	.long	0xb25
	.byte	0x50
	.uleb128 0x6
	.ascii "__cleanup\0"
	.byte	0x18
	.word	0x24b
	.long	0x22a0
	.byte	0x58
	.uleb128 0x6
	.ascii "_result\0"
	.byte	0x18
	.word	0x24e
	.long	0x19c4
	.byte	0x60
	.uleb128 0x6
	.ascii "_result_k\0"
	.byte	0x18
	.word	0x24f
	.long	0xb25
	.byte	0x68
	.uleb128 0x6
	.ascii "_p5s\0"
	.byte	0x18
	.word	0x250
	.long	0x19c4
	.byte	0x70
	.uleb128 0x6
	.ascii "_freelist\0"
	.byte	0x18
	.word	0x251
	.long	0x22a6
	.byte	0x78
	.uleb128 0x6
	.ascii "_cvtlen\0"
	.byte	0x18
	.word	0x254
	.long	0xb25
	.byte	0x80
	.uleb128 0x6
	.ascii "_cvtbuf\0"
	.byte	0x18
	.word	0x255
	.long	0x194f
	.byte	0x88
	.uleb128 0x6
	.ascii "_new\0"
	.byte	0x18
	.word	0x278
	.long	0x1bbe
	.byte	0x90
	.uleb128 0x41
	.ascii "_atexit\0"
	.byte	0x18
	.word	0x27c
	.long	0x1b35
	.word	0x1f8
	.uleb128 0x41
	.ascii "_atexit0\0"
	.byte	0x18
	.word	0x27d
	.long	0x1aee
	.word	0x200
	.uleb128 0x41
	.ascii "_sig_func\0"
	.byte	0x18
	.word	0x281
	.long	0x22b7
	.word	0x518
	.uleb128 0x41
	.ascii "__sglue\0"
	.byte	0x18
	.word	0x286
	.long	0x218b
	.word	0x520
	.uleb128 0x41
	.ascii "__sf\0"
	.byte	0x18
	.word	0x288
	.long	0x22c3
	.word	0x538
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1b84
	.uleb128 0x3b
	.long	0x18a4
	.long	0x1f74
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1f56
	.uleb128 0x3b
	.long	0x1884
	.long	0x1f98
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x1884
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1f7a
	.uleb128 0x3b
	.long	0xb25
	.long	0x1fb2
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1443
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x1f9e
	.uleb128 0x21
	.long	0xb4f
	.long	0x1fc8
	.uleb128 0x22
	.long	0xd59
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.long	0xb4f
	.long	0x1fd8
	.uleb128 0x22
	.long	0xd59
	.byte	0
	.byte	0
	.uleb128 0x35
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0x18
	.byte	0xef
	.long	0x2158
	.uleb128 0xc
	.ascii "_p\0"
	.byte	0x18
	.byte	0xf0
	.long	0x1b7e
	.byte	0
	.uleb128 0xc
	.ascii "_r\0"
	.byte	0x18
	.byte	0xf1
	.long	0xb25
	.byte	0x8
	.uleb128 0xc
	.ascii "_w\0"
	.byte	0x18
	.byte	0xf2
	.long	0xb25
	.byte	0xc
	.uleb128 0xc
	.ascii "_flags\0"
	.byte	0x18
	.byte	0xf3
	.long	0xb09
	.byte	0x10
	.uleb128 0xc
	.ascii "_file\0"
	.byte	0x18
	.byte	0xf4
	.long	0xb09
	.byte	0x12
	.uleb128 0xc
	.ascii "_bf\0"
	.byte	0x18
	.byte	0xf5
	.long	0x1b52
	.byte	0x18
	.uleb128 0xc
	.ascii "_lbfsize\0"
	.byte	0x18
	.byte	0xf6
	.long	0xb25
	.byte	0x28
	.uleb128 0xc
	.ascii "_data\0"
	.byte	0x18
	.byte	0xf8
	.long	0x1ba2
	.byte	0x30
	.uleb128 0xc
	.ascii "_cookie\0"
	.byte	0x18
	.byte	0xfb
	.long	0x1443
	.byte	0x38
	.uleb128 0xc
	.ascii "_read\0"
	.byte	0x18
	.byte	0xfd
	.long	0x1f50
	.byte	0x40
	.uleb128 0xc
	.ascii "_write\0"
	.byte	0x18
	.byte	0xff
	.long	0x1f74
	.byte	0x48
	.uleb128 0x6
	.ascii "_seek\0"
	.byte	0x18
	.word	0x102
	.long	0x1f98
	.byte	0x50
	.uleb128 0x6
	.ascii "_close\0"
	.byte	0x18
	.word	0x103
	.long	0x1fb2
	.byte	0x58
	.uleb128 0x6
	.ascii "_ub\0"
	.byte	0x18
	.word	0x106
	.long	0x1b52
	.byte	0x60
	.uleb128 0x6
	.ascii "_up\0"
	.byte	0x18
	.word	0x107
	.long	0x1b7e
	.byte	0x70
	.uleb128 0x6
	.ascii "_ur\0"
	.byte	0x18
	.word	0x108
	.long	0xb25
	.byte	0x78
	.uleb128 0x6
	.ascii "_ubuf\0"
	.byte	0x18
	.word	0x10b
	.long	0x1fb8
	.byte	0x7c
	.uleb128 0x6
	.ascii "_nbuf\0"
	.byte	0x18
	.word	0x10c
	.long	0x1fc8
	.byte	0x7f
	.uleb128 0x6
	.ascii "_lb\0"
	.byte	0x18
	.word	0x10f
	.long	0x1b52
	.byte	0x80
	.uleb128 0x6
	.ascii "_blksize\0"
	.byte	0x18
	.word	0x112
	.long	0xb25
	.byte	0x90
	.uleb128 0x6
	.ascii "_flags2\0"
	.byte	0x18
	.word	0x113
	.long	0xb25
	.byte	0x94
	.uleb128 0x6
	.ascii "_offset\0"
	.byte	0x18
	.word	0x115
	.long	0x1874
	.byte	0x98
	.uleb128 0x6
	.ascii "_seek64\0"
	.byte	0x18
	.word	0x116
	.long	0x2176
	.byte	0xa0
	.uleb128 0x6
	.ascii "_lock\0"
	.byte	0x18
	.word	0x119
	.long	0x193f
	.byte	0xa8
	.uleb128 0x6
	.ascii "_mbstate\0"
	.byte	0x18
	.word	0x11b
	.long	0x192d
	.byte	0xb0
	.byte	0
	.uleb128 0x3b
	.long	0x1893
	.long	0x2176
	.uleb128 0xf
	.long	0x1ba2
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x1893
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x2158
	.uleb128 0x7
	.ascii "__FILE\0"
	.byte	0x18
	.word	0x11d
	.long	0x1fd8
	.uleb128 0x42
	.ascii "_glue\0"
	.byte	0x18
	.byte	0x18
	.word	0x123
	.long	0x21c9
	.uleb128 0x6
	.ascii "_next\0"
	.byte	0x18
	.word	0x125
	.long	0x21c9
	.byte	0
	.uleb128 0x6
	.ascii "_niobs\0"
	.byte	0x18
	.word	0x126
	.long	0xb25
	.byte	0x8
	.uleb128 0x6
	.ascii "_iobs\0"
	.byte	0x18
	.word	0x127
	.long	0x21cf
	.byte	0x10
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x218b
	.uleb128 0x29
	.byte	0x8
	.long	0x217c
	.uleb128 0x42
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0x18
	.word	0x13f
	.long	0x2213
	.uleb128 0x6
	.ascii "_seed\0"
	.byte	0x18
	.word	0x140
	.long	0x2213
	.byte	0
	.uleb128 0x6
	.ascii "_mult\0"
	.byte	0x18
	.word	0x141
	.long	0x2213
	.byte	0x6
	.uleb128 0x6
	.ascii "_add\0"
	.byte	0x18
	.word	0x142
	.long	0xb70
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.long	0xb70
	.long	0x2223
	.uleb128 0x22
	.long	0xd59
	.byte	0x2
	.byte	0
	.uleb128 0x21
	.long	0xd65
	.long	0x2233
	.uleb128 0x22
	.long	0xd59
	.byte	0x19
	.byte	0
	.uleb128 0x21
	.long	0xd65
	.long	0x2243
	.uleb128 0x22
	.long	0xd59
	.byte	0x7
	.byte	0
	.uleb128 0x21
	.long	0xd65
	.long	0x2253
	.uleb128 0x22
	.long	0xd59
	.byte	0x17
	.byte	0
	.uleb128 0x21
	.long	0x1b7e
	.long	0x2263
	.uleb128 0x22
	.long	0xd59
	.byte	0x1d
	.byte	0
	.uleb128 0x21
	.long	0xb96
	.long	0x2273
	.uleb128 0x22
	.long	0xd59
	.byte	0x1d
	.byte	0
	.uleb128 0x21
	.long	0xd65
	.long	0x2283
	.uleb128 0x22
	.long	0xd59
	.byte	0x18
	.byte	0
	.uleb128 0x43
	.ascii "__locale_t\0"
	.uleb128 0x29
	.byte	0x8
	.long	0x2283
	.uleb128 0x44
	.long	0x22a0
	.uleb128 0xf
	.long	0x1ba2
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x2295
	.uleb128 0x29
	.byte	0x8
	.long	0x19c4
	.uleb128 0x44
	.long	0x22b7
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x22bd
	.uleb128 0x29
	.byte	0x8
	.long	0x22ac
	.uleb128 0x21
	.long	0x217c
	.long	0x22d3
	.uleb128 0x22
	.long	0xd59
	.byte	0x2
	.byte	0
	.uleb128 0x45
	.ascii "_impure_ptr\0"
	.byte	0x18
	.word	0x307
	.long	0x1ba2
	.uleb128 0x45
	.ascii "_global_impure_ptr\0"
	.byte	0x18
	.word	0x308
	.long	0x1ba8
	.uleb128 0x46
	.ascii "memchr\0"
	.byte	0x19
	.byte	0x1d
	.long	0x1443
	.long	0x2324
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0xb25
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "memcmp\0"
	.byte	0x19
	.byte	0x1e
	.long	0xb25
	.long	0x2346
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "memcpy\0"
	.byte	0x19
	.byte	0x1f
	.long	0x1443
	.long	0x2368
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "memmove\0"
	.byte	0x19
	.byte	0x20
	.long	0x1443
	.long	0x238b
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "memset\0"
	.byte	0x19
	.byte	0x21
	.long	0x1443
	.long	0x23ad
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0xb25
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "strcat\0"
	.byte	0x19
	.byte	0x22
	.long	0x194f
	.long	0x23ca
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strcmp\0"
	.byte	0x19
	.byte	0x24
	.long	0xb25
	.long	0x23e7
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strcoll\0"
	.byte	0x19
	.byte	0x25
	.long	0xb25
	.long	0x2405
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strcpy\0"
	.byte	0x19
	.byte	0x26
	.long	0x194f
	.long	0x2422
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strcspn\0"
	.byte	0x19
	.byte	0x27
	.long	0x188
	.long	0x2440
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strerror\0"
	.byte	0x19
	.byte	0x28
	.long	0x194f
	.long	0x245a
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "strlen\0"
	.byte	0x19
	.byte	0x29
	.long	0x188
	.long	0x2472
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strncat\0"
	.byte	0x19
	.byte	0x2a
	.long	0x194f
	.long	0x2495
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "strncmp\0"
	.byte	0x19
	.byte	0x2b
	.long	0xb25
	.long	0x24b8
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "strncpy\0"
	.byte	0x19
	.byte	0x2c
	.long	0x194f
	.long	0x24db
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "strspn\0"
	.byte	0x19
	.byte	0x2f
	.long	0x188
	.long	0x24f8
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strtok\0"
	.byte	0x19
	.byte	0x32
	.long	0x194f
	.long	0x2515
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strxfrm\0"
	.byte	0x19
	.byte	0x34
	.long	0x188
	.long	0x2538
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "strchr\0"
	.byte	0x19
	.byte	0x23
	.long	0x194f
	.long	0x2555
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "strpbrk\0"
	.byte	0x19
	.byte	0x2d
	.long	0x194f
	.long	0x2573
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "strrchr\0"
	.byte	0x19
	.byte	0x2e
	.long	0x194f
	.long	0x2591
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "strstr\0"
	.byte	0x19
	.byte	0x30
	.long	0x194f
	.long	0x25ae
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x91a
	.uleb128 0x47
	.long	0x95e
	.uleb128 0x9
	.ascii "__gnu_cxx\0"
	.byte	0x1a
	.byte	0x8c
	.long	0x26b3
	.uleb128 0x1e
	.ascii "__ops\0"
	.byte	0x1b
	.byte	0x23
	.uleb128 0xa
	.byte	0xe
	.byte	0xdc
	.long	0x277a
	.uleb128 0xa
	.byte	0xe
	.byte	0xe2
	.long	0x2af0
	.uleb128 0xa
	.byte	0xe
	.byte	0xe6
	.long	0x2b03
	.uleb128 0xa
	.byte	0xe
	.byte	0xec
	.long	0x2b1b
	.uleb128 0xa
	.byte	0xe
	.byte	0xf7
	.long	0x2b38
	.uleb128 0xa
	.byte	0xe
	.byte	0xf8
	.long	0x2b50
	.uleb128 0xa
	.byte	0xe
	.byte	0xf9
	.long	0x2b74
	.uleb128 0xa
	.byte	0xe
	.byte	0xfb
	.long	0x2b99
	.uleb128 0xa
	.byte	0xe
	.byte	0xfc
	.long	0x2bb6
	.uleb128 0x48
	.ascii "div\0"
	.byte	0xe
	.byte	0xe9
	.ascii "_ZN9__gnu_cxx3divExx\0"
	.long	0x277a
	.long	0x2641
	.uleb128 0xf
	.long	0x1f8
	.uleb128 0xf
	.long	0x1f8
	.byte	0
	.uleb128 0x49
	.ascii "__numeric_traits_integer<long int>\0"
	.byte	0x1
	.byte	0x1c
	.byte	0x37
	.uleb128 0x4a
	.ascii "__min\0"
	.byte	0x1c
	.byte	0x3a
	.long	0x183
	.uleb128 0x4a
	.ascii "__max\0"
	.byte	0x1c
	.byte	0x3b
	.long	0x183
	.uleb128 0x4a
	.ascii "__is_signed\0"
	.byte	0x1c
	.byte	0x3f
	.long	0x1438
	.uleb128 0x4a
	.ascii "__digits\0"
	.byte	0x1c
	.byte	0x40
	.long	0xb2c
	.uleb128 0x2f
	.ascii "_Value\0"
	.long	0x177
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x9
	.ascii "__gnu_debug\0"
	.byte	0xd
	.byte	0x38
	.long	0x26e1
	.uleb128 0x4b
	.byte	0xd
	.byte	0x3a
	.long	0x97b
	.byte	0
	.uleb128 0x32
	.byte	0x8
	.byte	0x1d
	.byte	0x24
	.ascii "5div_t\0"
	.long	0x270a
	.uleb128 0xc
	.ascii "quot\0"
	.byte	0x1d
	.byte	0x25
	.long	0xb25
	.byte	0
	.uleb128 0xc
	.ascii "rem\0"
	.byte	0x1d
	.byte	0x26
	.long	0xb25
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.ascii "div_t\0"
	.byte	0x1d
	.byte	0x27
	.long	0x26e1
	.uleb128 0x32
	.byte	0x10
	.byte	0x1d
	.byte	0x2a
	.ascii "6ldiv_t\0"
	.long	0x2741
	.uleb128 0xc
	.ascii "quot\0"
	.byte	0x1d
	.byte	0x2b
	.long	0x177
	.byte	0
	.uleb128 0xc
	.ascii "rem\0"
	.byte	0x1d
	.byte	0x2c
	.long	0x177
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.ascii "ldiv_t\0"
	.byte	0x1d
	.byte	0x2d
	.long	0x2717
	.uleb128 0x32
	.byte	0x10
	.byte	0x1d
	.byte	0x31
	.ascii "7lldiv_t\0"
	.long	0x277a
	.uleb128 0xc
	.ascii "quot\0"
	.byte	0x1d
	.byte	0x32
	.long	0x1f8
	.byte	0
	.uleb128 0xc
	.ascii "rem\0"
	.byte	0x1d
	.byte	0x33
	.long	0x1f8
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.ascii "lldiv_t\0"
	.byte	0x1d
	.byte	0x34
	.long	0x274f
	.uleb128 0x4
	.ascii "__compar_fn_t\0"
	.byte	0x1d
	.byte	0x39
	.long	0x279e
	.uleb128 0x29
	.byte	0x8
	.long	0x27a4
	.uleb128 0x3b
	.long	0xb25
	.long	0x27b8
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x1445
	.byte	0
	.uleb128 0x4c
	.ascii "abort\0"
	.byte	0x1d
	.byte	0x45
	.uleb128 0x46
	.ascii "abs\0"
	.byte	0x1d
	.byte	0x46
	.long	0xb25
	.long	0x27d6
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "atexit\0"
	.byte	0x1d
	.byte	0x4c
	.long	0xb25
	.long	0x27ee
	.uleb128 0xf
	.long	0x1b4b
	.byte	0
	.uleb128 0x4d
	.ascii "at_quick_exit\0"
	.byte	0x1d
	.word	0x14a
	.long	0xb25
	.long	0x280e
	.uleb128 0xf
	.long	0x1b4b
	.byte	0
	.uleb128 0x46
	.ascii "atof\0"
	.byte	0x1d
	.byte	0x4d
	.long	0x26b3
	.long	0x2824
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "atoi\0"
	.byte	0x1d
	.byte	0x51
	.long	0xb25
	.long	0x283a
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "atol\0"
	.byte	0x1d
	.byte	0x53
	.long	0x177
	.long	0x2850
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "bsearch\0"
	.byte	0x1d
	.byte	0x55
	.long	0x1443
	.long	0x287d
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x1445
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x2789
	.byte	0
	.uleb128 0x46
	.ascii "calloc\0"
	.byte	0x1d
	.byte	0x5a
	.long	0x1443
	.long	0x289a
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "div\0"
	.byte	0x1d
	.byte	0x5b
	.long	0x270a
	.long	0x28b4
	.uleb128 0xf
	.long	0xb25
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x4e
	.ascii "exit\0"
	.byte	0x1d
	.byte	0x5c
	.long	0x28c6
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x4f
	.ascii "free\0"
	.byte	0x1d
	.byte	0x5d
	.long	0x28d8
	.uleb128 0xf
	.long	0x1443
	.byte	0
	.uleb128 0x46
	.ascii "getenv\0"
	.byte	0x1d
	.byte	0x5e
	.long	0x194f
	.long	0x28f0
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "labs\0"
	.byte	0x1d
	.byte	0x66
	.long	0x177
	.long	0x2906
	.uleb128 0xf
	.long	0x177
	.byte	0
	.uleb128 0x46
	.ascii "ldiv\0"
	.byte	0x1d
	.byte	0x67
	.long	0x2741
	.long	0x2921
	.uleb128 0xf
	.long	0x177
	.uleb128 0xf
	.long	0x177
	.byte	0
	.uleb128 0x46
	.ascii "malloc\0"
	.byte	0x1d
	.byte	0x68
	.long	0x1443
	.long	0x2939
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "mblen\0"
	.byte	0x1d
	.byte	0x69
	.long	0xb25
	.long	0x2955
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x46
	.ascii "mbstowcs\0"
	.byte	0x1d
	.byte	0x6f
	.long	0x188
	.long	0x2979
	.uleb128 0xf
	.long	0x2979
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x297f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "wchar_t\0"
	.uleb128 0x3
	.long	0x297f
	.uleb128 0x46
	.ascii "mbtowc\0"
	.byte	0x1d
	.byte	0x6b
	.long	0xb25
	.long	0x29b1
	.uleb128 0xf
	.long	0x2979
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x4f
	.ascii "qsort\0"
	.byte	0x1d
	.byte	0x8b
	.long	0x29d3
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x188
	.uleb128 0xf
	.long	0x2789
	.byte	0
	.uleb128 0x50
	.ascii "quick_exit\0"
	.byte	0x1d
	.word	0x14c
	.long	0x29ec
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x51
	.ascii "rand\0"
	.byte	0x1d
	.byte	0x8c
	.long	0xb25
	.uleb128 0x46
	.ascii "realloc\0"
	.byte	0x1d
	.byte	0x8d
	.long	0x1443
	.long	0x2a16
	.uleb128 0xf
	.long	0x1443
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x4f
	.ascii "srand\0"
	.byte	0x1d
	.byte	0x9c
	.long	0x2a29
	.uleb128 0xf
	.long	0xb96
	.byte	0
	.uleb128 0x46
	.ascii "strtod\0"
	.byte	0x1d
	.byte	0x9d
	.long	0x26b3
	.long	0x2a46
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x194f
	.uleb128 0x46
	.ascii "strtol\0"
	.byte	0x1d
	.byte	0xa8
	.long	0x177
	.long	0x2a6e
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "strtoul\0"
	.byte	0x1d
	.byte	0xaa
	.long	0x19b
	.long	0x2a91
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "system\0"
	.byte	0x1d
	.byte	0xbc
	.long	0xb25
	.long	0x2aa9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x46
	.ascii "wcstombs\0"
	.byte	0x1d
	.byte	0x71
	.long	0x188
	.long	0x2acd
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x2acd
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x298a
	.uleb128 0x46
	.ascii "wctomb\0"
	.byte	0x1d
	.byte	0x6d
	.long	0xb25
	.long	0x2af0
	.uleb128 0xf
	.long	0x194f
	.uleb128 0xf
	.long	0x297f
	.byte	0
	.uleb128 0x4e
	.ascii "_Exit\0"
	.byte	0x1d
	.byte	0xc7
	.long	0x2b03
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x4d
	.ascii "llabs\0"
	.byte	0x1d
	.word	0x108
	.long	0x1f8
	.long	0x2b1b
	.uleb128 0xf
	.long	0x1f8
	.byte	0
	.uleb128 0x4d
	.ascii "lldiv\0"
	.byte	0x1d
	.word	0x109
	.long	0x277a
	.long	0x2b38
	.uleb128 0xf
	.long	0x1f8
	.uleb128 0xf
	.long	0x1f8
	.byte	0
	.uleb128 0x4d
	.ascii "atoll\0"
	.byte	0x1d
	.word	0x104
	.long	0x1f8
	.long	0x2b50
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x4d
	.ascii "strtoll\0"
	.byte	0x1d
	.word	0x10a
	.long	0x1f8
	.long	0x2b74
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x4d
	.ascii "strtoull\0"
	.byte	0x1d
	.word	0x10e
	.long	0x1845
	.long	0x2b99
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x46
	.ascii "strtof\0"
	.byte	0x1d
	.byte	0xa0
	.long	0x26bd
	.long	0x2bb6
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.byte	0
	.uleb128 0x4d
	.ascii "strtold\0"
	.byte	0x1d
	.word	0x140
	.long	0x209
	.long	0x2bd5
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x2a46
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x10
	.ascii "char16_t\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x10
	.ascii "char32_t\0"
	.uleb128 0x52
	.ascii "Output\0"
	.byte	0x1
	.byte	0x1e
	.byte	0xd
	.long	0x2ec9
	.uleb128 0x27
	.ascii "print\0"
	.byte	0x1e
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x188
	.byte	0x1
	.long	0x2c28
	.long	0x2c38
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x17f9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x27
	.ascii "print\0"
	.byte	0x1e
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x188
	.byte	0x1
	.long	0x2c63
	.long	0x2c6e
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2c91
	.long	0x2c9c
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xd65
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2cbf
	.long	0x2cca
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xb40
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2ced
	.long	0x2cf8
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xb60
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2d1b
	.long	0x2d26
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xb86
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2d49
	.long	0x2d54
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x1430
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2d77
	.long	0x2d82
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xb09
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2da5
	.long	0x2db0
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0xb25
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2dd3
	.long	0x2dde
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x26b3
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2e03
	.long	0x2e0e
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x17f9
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2e31
	.long	0x2e3c
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x188
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2e61
	.long	0x2e6c
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x1445
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF10
	.byte	0x1e
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2e92
	.long	0x2e9d
	.uleb128 0xe
	.long	0x2ec9
	.uleb128 0xf
	.long	0x2ed5
	.byte	0
	.uleb128 0x16
	.ascii "flush\0"
	.byte	0x1e
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0x2ecf
	.byte	0x1
	.long	0x2ec2
	.uleb128 0xe
	.long	0x2ec9
	.byte	0
	.byte	0
	.uleb128 0x29
	.byte	0x8
	.long	0x2bed
	.uleb128 0x30
	.byte	0x8
	.long	0x2bed
	.uleb128 0x29
	.byte	0x8
	.long	0x2edc
	.uleb128 0x53
	.uleb128 0x3
	.long	0x2edb
	.uleb128 0x23
	.ascii "kout\0"
	.byte	0x1e
	.byte	0x22
	.long	0x2bed
	.uleb128 0x24
	.ascii "koutBufSize\0"
	.byte	0x1e
	.byte	0x25
	.long	0x196
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0x21
	.long	0xd65
	.long	0x2f1a
	.uleb128 0x22
	.long	0xd59
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.ascii "koutBuf\0"
	.byte	0x1e
	.byte	0x26
	.long	0x2f0a
	.uleb128 0x54
	.ascii "_ZN9__gnu_cxx24__numeric_traits_integerIlE5__maxE\0"
	.long	0x2675
	.quad	0x7fffffffffffffff
	.uleb128 0x55
	.long	0x179c
	.long	0x2f92
	.quad	.LFB849
	.quad	.LFE849-.LFB849
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f92
	.long	0x2fab
	.uleb128 0x2f
	.ascii "T\0"
	.long	0x194f
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "n\0"
	.byte	0x3
	.byte	0xf
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x58
	.long	0x1743
	.byte	0x2
	.byte	0x74
	.long	0x2fd0
	.quad	.LFB848
	.quad	.LFE848-.LFB848
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fd0
	.long	0x300d
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1810
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x59
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x74
	.long	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5a
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x24
	.ascii "chunk\0"
	.byte	0x2
	.byte	0x78
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x58
	.long	0x16ab
	.byte	0x2
	.byte	0x51
	.long	0x3032
	.quad	.LFB847
	.quad	.LFE847-.LFB847
	.uleb128 0x1
	.byte	0x9c
	.long	0x3032
	.long	0x30a1
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x59
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x51
	.long	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x57
	.ascii "newSize\0"
	.byte	0x2
	.byte	0x51
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x57
	.ascii "oldSize\0"
	.byte	0x2
	.byte	0x51
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x24
	.ascii "chunk\0"
	.byte	0x2
	.byte	0x60
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5a
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x24
	.ascii "ptr\0"
	.byte	0x2
	.byte	0x6c
	.long	0x194f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x5b
	.long	0x165b
	.byte	0x2
	.byte	0x4d
	.long	0x30c6
	.quad	.LFB846
	.quad	.LFE846-.LFB846
	.uleb128 0x1
	.byte	0x9c
	.long	0x30c6
	.long	0x30f3
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x59
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x4d
	.long	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x57
	.ascii "decSize\0"
	.byte	0x2
	.byte	0x4d
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x5b
	.long	0x160b
	.byte	0x2
	.byte	0x49
	.long	0x3118
	.quad	.LFB845
	.quad	.LFE845-.LFB845
	.uleb128 0x1
	.byte	0x9c
	.long	0x3118
	.long	0x3145
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x59
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x49
	.long	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x57
	.ascii "incSize\0"
	.byte	0x2
	.byte	0x49
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x58
	.long	0x16ff
	.byte	0x2
	.byte	0x3a
	.long	0x316a
	.quad	.LFB844
	.quad	.LFE844-.LFB844
	.uleb128 0x1
	.byte	0x9c
	.long	0x316a
	.long	0x31a5
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "p\0"
	.byte	0x2
	.byte	0x3a
	.long	0x1443
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x5a
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x24
	.ascii "chunk\0"
	.byte	0x2
	.byte	0x3e
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x58
	.long	0x15c8
	.byte	0x2
	.byte	0x27
	.long	0x31ca
	.quad	.LFB843
	.quad	.LFE843-.LFB843
	.uleb128 0x1
	.byte	0x9c
	.long	0x31ca
	.long	0x3236
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "n\0"
	.byte	0x2
	.byte	0x27
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x57
	.ascii "alignment\0"
	.byte	0x2
	.byte	0x27
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.ascii "foundChunk\0"
	.byte	0x2
	.byte	0x29
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x24
	.ascii "moveOffset\0"
	.byte	0x2
	.byte	0x2b
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x24
	.ascii "movedChunk\0"
	.byte	0x2
	.byte	0x35
	.long	0x142a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x58
	.long	0x158b
	.byte	0x2
	.byte	0x23
	.long	0x325b
	.quad	.LFB842
	.quad	.LFE842-.LFB842
	.uleb128 0x1
	.byte	0x9c
	.long	0x325b
	.long	0x3274
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "n\0"
	.byte	0x2
	.byte	0x23
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x5b
	.long	0x1534
	.byte	0x2
	.byte	0x1b
	.long	0x3299
	.quad	.LFB841
	.quad	.LFE841-.LFB841
	.uleb128 0x1
	.byte	0x9c
	.long	0x3299
	.long	0x32b2
	.uleb128 0x56
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "n\0"
	.byte	0x2
	.byte	0x1b
	.long	0x188
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x5c
	.long	0x14f5
	.byte	0x2
	.byte	0xe
	.byte	0
	.long	0x32c2
	.long	0x32f6
	.uleb128 0x5d
	.secrel32	.LASF11
	.long	0x1805
	.uleb128 0x5e
	.ascii "base\0"
	.byte	0x2
	.byte	0xe
	.long	0x1443
	.uleb128 0x5e
	.ascii "size\0"
	.byte	0x2
	.byte	0xe
	.long	0x188
	.uleb128 0x5e
	.ascii "initChunks\0"
	.byte	0x2
	.byte	0xe
	.long	0x1430
	.byte	0
	.uleb128 0x5f
	.long	0x32b2
	.ascii "_ZN13MemoryManagerC2EPvmb\0"
	.long	0x3333
	.quad	.LFB839
	.quad	.LFE839-.LFB839
	.uleb128 0x1
	.byte	0x9c
	.long	0x3333
	.long	0x3354
	.uleb128 0x60
	.long	0x32c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x60
	.long	0x32cb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x60
	.long	0x32d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x60
	.long	0x32e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x61
	.ascii "operator new\0"
	.byte	0x1
	.byte	0x92
	.ascii "_ZnwmPv\0"
	.long	0x1443
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x62
	.long	0xace
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x57
	.ascii "__p\0"
	.byte	0x1
	.byte	0x92
	.long	0x1443
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x1e
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x8
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x17
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x13
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
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x3f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x3a
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x34
	.byte	0
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x60
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0x62
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
	.long	0x4c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	.LFB849
	.quad	.LFE849-.LFB849
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB58
	.quad	.LFE58
	.quad	.LFB849
	.quad	.LFE849
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
	.file 31 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1f
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
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
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
	.file 32 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x20
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
	.file 33 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x21
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
	.uleb128 0x4
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
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 34 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x22
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x11
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
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x23
	.ascii "_NEW \0"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x1f
	.ascii "__EXCEPTION__ \0"
	.file 35 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/atomic_lockfree_defines.h"
	.byte	0x3
	.uleb128 0x26
	.uleb128 0x23
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
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x20
	.ascii "_EXCEPTION_PTR_H \0"
	.file 36 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/exception_defines.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x24
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
	.file 37 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/nested_exception.h"
	.byte	0x3
	.uleb128 0xab
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_NESTED_EXCEPTION_H 1\0"
	.file 38 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/move.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x1f
	.ascii "_MOVE_H 1\0"
	.file 39 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/concept_check.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x27
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
	.uleb128 0xc
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
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x8
	.ascii "_STRING_H_ \0"
	.file 40 "/usr/include/_ansi.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x28
	.byte	0x1
	.uleb128 0xd
	.ascii "_ANSIDECL_H_ \0"
	.file 41 "/usr/include/newlib.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x8
	.ascii "__NEWLIB_H__ 1\0"
	.file 42 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x2a
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
	.uleb128 0x12
	.ascii "_WANT_IO_C99_FORMATS 1\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "_WANT_IO_LONG_LONG 1\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "_WANT_IO_LONG_DOUBLE 1\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "_WANT_IO_POS_ARGS 1\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "_MB_CAPABLE 1\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "_MB_LEN_MAX 8\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_ATEXIT_DYNAMIC_ALLOC 1\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_HAVE_LONG_DOUBLE 1\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "_HAVE_CC_INHIBIT_LOOP_TO_LIBCALL 1\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_FVWRITE_IN_STREAMIO 1\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_FSEEK_OPTIMIZATION 1\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_WIDE_ORIENT 1\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "_UNBUF_STREAM_OPT 1\0"
	.byte	0x4
	.file 43 "/usr/include/sys/config.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x2b
	.byte	0x1
	.uleb128 0x2
	.ascii "__SYS_CONFIG_H__ \0"
	.file 44 "/usr/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x16b
	.ascii "__IEEE_LITTLE_ENDIAN \0"
	.byte	0x4
	.file 45 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2d
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
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
	.uleb128 0xdc
	.ascii "_POINTER_INT long\0"
	.byte	0x2
	.uleb128 0xe2
	.ascii "__RAND_MAX\0"
	.byte	0x1
	.uleb128 0xe6
	.ascii "__RAND_MAX 0x7fffffff\0"
	.file 46 "/usr/include/cygwin/config.h"
	.byte	0x3
	.uleb128 0xea
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x12
	.ascii "_CYGWIN_CONFIG_H \0"
	.byte	0x1
	.uleb128 0x14
	.ascii "__DYNAMIC_REENT__ \0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__SYMBOL_PREFIX \0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_SYMSTR(x) __SYMBOL_PREFIX #x\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__FILENAME_MAX__ 4096\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_READ_WRITE_RETURN_TYPE _ssize_t\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_READ_WRITE_BUFSIZE_TYPE size_t\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__LARGE64_FILES 1\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__USE_INTERNAL_STAT64 1\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__LINUX_ERRNO_EXTENSIONS__ 1\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_MB_EXTENDED_CHARSETS_ALL 1\0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__HAVE_LOCALE_INFO__ 1\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__HAVE_LOCALE_INFO_EXTENDED__ 1\0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "_WANT_C99_TIME_FORMATS 1\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_GLIBC_EXTENSION 1\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "_STDIO_BSD_SEMANTICS 1\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__TM_GMTOFF tm_gmtoff\0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__TM_ZONE tm_zone\0"
	.byte	0x1
	.uleb128 0x57
	.ascii "__EXPORT \0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__IMPORT __declspec(dllimport)\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "DEFAULT_LOCALE \"C.UTF-8\"\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x122
	.ascii "_MB_EXTENDED_CHARSETS_ISO 1\0"
	.byte	0x1
	.uleb128 0x123
	.ascii "_MB_EXTENDED_CHARSETS_WINDOWS 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x17
	.ascii "_HAVE_STDC \0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_BEGIN_STD_C extern \"C\" {\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_END_STD_C }\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "_NOTHROW __attribute__ ((__nothrow__))\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "_PTR void *\0"
	.byte	0x1
	.uleb128 0x33
	.ascii "_AND ,\0"
	.byte	0x1
	.uleb128 0x34
	.ascii "_NOARGS void\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "_CONST const\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_VOLATILE volatile\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "_SIGNED signed\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_DOTS , ...\0"
	.byte	0x1
	.uleb128 0x39
	.ascii "_VOID void\0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "_EXFUN_NOTHROW(name,proto) __cdecl name proto _NOTHROW\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "_EXFUN(name,proto) __cdecl name proto\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "_EXPARM(name,proto) (* __cdecl name) proto\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_EXFNPTR(name,proto) (__cdecl * name) proto\0"
	.byte	0x1
	.uleb128 0x45
	.ascii "_DEFUN(name,arglist,args) name(args)\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_DEFUN_VOID(name) name(_NOARGS)\0"
	.byte	0x1
	.uleb128 0x47
	.ascii "_CAST_VOID (void)\0"
	.byte	0x1
	.uleb128 0x49
	.ascii "_LONG_DOUBLE long double\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_PARAMS(paramlist) paramlist\0"
	.byte	0x1
	.uleb128 0x65
	.ascii "_ATTRIBUTE(attrs) __attribute__ (attrs)\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "_ELIDABLE_INLINE static __inline__\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "_NOINLINE __attribute__ ((__noinline__))\0"
	.byte	0x1
	.uleb128 0x84
	.ascii "_NOINLINE_STATIC _NOINLINE static\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x18
	.byte	0x1
	.uleb128 0xb
	.ascii "_SYS_REENT_H_ \0"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x14
	.ascii "_SYS__TYPES_H \0"
	.file 47 "/usr/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x4
	.ascii "_MACHINE__TYPES_H \0"
	.file 48 "/usr/include/machine/_default_types.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"
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
	.byte	0x1
	.uleb128 0x10
	.ascii "__machine_blkcnt_t_defined \0"
	.byte	0x1
	.uleb128 0x13
	.ascii "__machine_blksize_t_defined \0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__machine_dev_t_defined \0"
	.byte	0x1
	.uleb128 0x19
	.ascii "__machine_fsblkcnt_t_defined \0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__machine_fsfilcnt_t_defined \0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__machine_uid_t_defined \0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__machine_gid_t_defined \0"
	.byte	0x1
	.uleb128 0x27
	.ascii "__machine_ino_t_defined \0"
	.byte	0x1
	.uleb128 0x2a
	.ascii "__machine_key_t_defined \0"
	.byte	0x1
	.uleb128 0x2d
	.ascii "__machine_sa_family_t_defined \0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__machine_socklen_t_defined \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x16
	.byte	0x1
	.uleb128 0xa
	.ascii "_SYS_LOCK_H_ \0"
	.byte	0x1
	.uleb128 0xd
	.ascii "_LOCK_RECURSIVE_T _LOCK_T\0"
	.byte	0x1
	.uleb128 0x13
	.ascii "_LOCK_T_RECURSIVE_INITIALIZER ((_LOCK_T)18)\0"
	.byte	0x1
	.uleb128 0x14
	.ascii "_LOCK_T_INITIALIZER ((_LOCK_T)19)\0"
	.byte	0x1
	.uleb128 0x16
	.ascii "__LOCK_INIT(CLASS,NAME) CLASS _LOCK_T NAME = _LOCK_T_INITIALIZER;\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__LOCK_INIT_RECURSIVE(CLASS,NAME) CLASS _LOCK_T NAME = _LOCK_T_RECURSIVE_INITIALIZER;\0"
	.byte	0x1
	.uleb128 0x1b
	.ascii "__lock_init(__lock) __cygwin_lock_init(&__lock)\0"
	.byte	0x1
	.uleb128 0x1c
	.ascii "__lock_init_recursive(__lock) __cygwin_lock_init_recursive(&__lock)\0"
	.byte	0x1
	.uleb128 0x1d
	.ascii "__lock_close(__lock) __cygwin_lock_fini(&__lock)\0"
	.byte	0x1
	.uleb128 0x1e
	.ascii "__lock_close_recursive(__lock) __cygwin_lock_fini(&__lock)\0"
	.byte	0x1
	.uleb128 0x1f
	.ascii "__lock_acquire(__lock) __cygwin_lock_lock(&__lock)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "__lock_acquire_recursive(__lock) __cygwin_lock_lock(&__lock)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "__lock_try_acquire(lock) __cygwin_lock_trylock(&__lock)\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "__lock_try_acquire_recursive(lock) __cygwin_lock_trylock(&__lock)\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "__lock_release(__lock) __cygwin_lock_unlock(&__lock)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "__lock_release_recursive(__lock) __cygwin_lock_unlock(&__lock)\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x7d
	.ascii "__size_t\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "unsigned signed\0"
	.byte	0x2
	.uleb128 0x92
	.ascii "unsigned\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__need_wint_t \0"
	.byte	0x3
	.uleb128 0x9f
	.uleb128 0x4
	.byte	0x2
	.uleb128 0xa1
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
	.byte	0x2
	.uleb128 0x15b
	.ascii "__need_wchar_t\0"
	.byte	0x1
	.uleb128 0x160
	.ascii "_WINT_T \0"
	.byte	0x2
	.uleb128 0x167
	.ascii "__need_wint_t\0"
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
	.byte	0x4
	.byte	0x1
	.uleb128 0xb8
	.ascii "_CLOCK_T_ unsigned long\0"
	.byte	0x1
	.uleb128 0xbd
	.ascii "_TIME_T_ long\0"
	.byte	0x1
	.uleb128 0xc0
	.ascii "_CLOCKID_T_ unsigned long\0"
	.byte	0x1
	.uleb128 0xc3
	.ascii "_TIMER_T_ unsigned long\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x11
	.ascii "_NULL 0\0"
	.byte	0x1
	.uleb128 0x18
	.ascii "__Long int\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_ATEXIT_SIZE 32\0"
	.byte	0x1
	.uleb128 0x64
	.ascii "_ATEXIT_INIT {_NULL, 0, {_NULL}, {{_NULL}, {_NULL}, 0, 0}}\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "_REENT_INIT_ATEXIT _NULL, _ATEXIT_INIT,\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "_REENT_SMALL_CHECK_INIT(ptr) \0"
	.byte	0x1
	.uleb128 0x138
	.ascii "_RAND48_SEED_0 (0x330e)\0"
	.byte	0x1
	.uleb128 0x139
	.ascii "_RAND48_SEED_1 (0xabcd)\0"
	.byte	0x1
	.uleb128 0x13a
	.ascii "_RAND48_SEED_2 (0x1234)\0"
	.byte	0x1
	.uleb128 0x13b
	.ascii "_RAND48_MULT_0 (0xe66d)\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "_RAND48_MULT_1 (0xdeec)\0"
	.byte	0x1
	.uleb128 0x13d
	.ascii "_RAND48_MULT_2 (0x0005)\0"
	.byte	0x1
	.uleb128 0x13e
	.ascii "_RAND48_ADD (0x000b)\0"
	.byte	0x1
	.uleb128 0x14a
	.ascii "_REENT_EMERGENCY_SIZE 25\0"
	.byte	0x1
	.uleb128 0x14b
	.ascii "_REENT_ASCTIME_SIZE 26\0"
	.byte	0x1
	.uleb128 0x14c
	.ascii "_REENT_SIGNAL_SIZE 24\0"
	.byte	0x1
	.uleb128 0x274
	.ascii "_N_LISTS 30\0"
	.byte	0x1
	.uleb128 0x290
	.ascii "_REENT_STDIO_STREAM(var,index) &(var)->__sf[index]\0"
	.byte	0x1
	.uleb128 0x293
	.ascii "_REENT_INIT(var) { 0, _REENT_STDIO_STREAM(&(var), 0), _REENT_STDIO_STREAM(&(var), 1), _REENT_STDIO_STREAM(&(var), 2), 0, \"\", 0, _NULL, 0, _NULL, _NULL, 0, _NULL, _NULL, 0, _NULL, { { 0, _NULL, \"\", {0, 0, 0, 0, 0, 0, 0, 0, 0}, 0, 1, { {_RAND48_SEED_0, _RAND48_SEED_1, _RAND48_SEED_2}, {_RAND48_MULT_0, _RAND48_MULT_1, _RAND48_MULT_2}, _RAND48_ADD }, {0, {0}}, {0, {0}}, {0, {0}}, \"\", \"\", 0, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}}, {0, {0}} } }, _REENT_INIT_ATEXIT _NULL, {_NULL, 0, _NULL} }\0"
	.byte	0x1
	.uleb128 0x2c3
	.ascii "_REENT_INIT_PTR_ZEROED(var) { (var)->_stdin = _REENT_STDIO_STREAM(var, 0); (var)->_stdout = _REENT_STDIO_STREAM(var, 1); (var)->_stderr = _REENT_STDIO_STREAM(var, 2); (var)->_new._reent._rand_next = 1; (var)->_new._reent._r48._seed[0] = _RAND48_SEED_0; (var)->_new._reent._r48._seed[1] = _RAND48_SEED_1; (var)->_new._reent._r48._seed[2] = _RAND48_SEED_2; (var)->_new._reent._r48._mult[0] = _RAND48_MULT_0; (var)->_new._reent._r48._mult[1] = _RAND48_MULT_1; (var)->_new._reent._r48._mult[2] = _RAND48_MULT_2; (var)->_new._reent._r48._add = _RAND48_ADD; }\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "_REENT_CHECK_RAND48(ptr) \0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "_REENT_CHECK_MP(ptr) \0"
	.byte	0x1
	.uleb128 0x2d3
	.ascii "_REENT_CHECK_TM(ptr) \0"
	.byte	0x1
	.uleb128 0x2d4
	.ascii "_REENT_CHECK_ASCTIME_BUF(ptr) \0"
	.byte	0x1
	.uleb128 0x2d5
	.ascii "_REENT_CHECK_EMERGENCY(ptr) \0"
	.byte	0x1
	.uleb128 0x2d6
	.ascii "_REENT_CHECK_MISC(ptr) \0"
	.byte	0x1
	.uleb128 0x2d7
	.ascii "_REENT_CHECK_SIGNAL_BUF(ptr) \0"
	.byte	0x1
	.uleb128 0x2d9
	.ascii "_REENT_SIGNGAM(ptr) ((ptr)->_new._reent._gamma_signgam)\0"
	.byte	0x1
	.uleb128 0x2da
	.ascii "_REENT_RAND_NEXT(ptr) ((ptr)->_new._reent._rand_next)\0"
	.byte	0x1
	.uleb128 0x2db
	.ascii "_REENT_RAND48_SEED(ptr) ((ptr)->_new._reent._r48._seed)\0"
	.byte	0x1
	.uleb128 0x2dc
	.ascii "_REENT_RAND48_MULT(ptr) ((ptr)->_new._reent._r48._mult)\0"
	.byte	0x1
	.uleb128 0x2dd
	.ascii "_REENT_RAND48_ADD(ptr) ((ptr)->_new._reent._r48._add)\0"
	.byte	0x1
	.uleb128 0x2de
	.ascii "_REENT_MP_RESULT(ptr) ((ptr)->_result)\0"
	.byte	0x1
	.uleb128 0x2df
	.ascii "_REENT_MP_RESULT_K(ptr) ((ptr)->_result_k)\0"
	.byte	0x1
	.uleb128 0x2e0
	.ascii "_REENT_MP_P5S(ptr) ((ptr)->_p5s)\0"
	.byte	0x1
	.uleb128 0x2e1
	.ascii "_REENT_MP_FREELIST(ptr) ((ptr)->_freelist)\0"
	.byte	0x1
	.uleb128 0x2e2
	.ascii "_REENT_ASCTIME_BUF(ptr) ((ptr)->_new._reent._asctime_buf)\0"
	.byte	0x1
	.uleb128 0x2e3
	.ascii "_REENT_TM(ptr) (&(ptr)->_new._reent._localtime_buf)\0"
	.byte	0x1
	.uleb128 0x2e4
	.ascii "_REENT_EMERGENCY(ptr) ((ptr)->_emergency)\0"
	.byte	0x1
	.uleb128 0x2e5
	.ascii "_REENT_STRTOK_LAST(ptr) ((ptr)->_new._reent._strtok_last)\0"
	.byte	0x1
	.uleb128 0x2e6
	.ascii "_REENT_MBLEN_STATE(ptr) ((ptr)->_new._reent._mblen_state)\0"
	.byte	0x1
	.uleb128 0x2e7
	.ascii "_REENT_MBTOWC_STATE(ptr) ((ptr)->_new._reent._mbtowc_state)\0"
	.byte	0x1
	.uleb128 0x2e8
	.ascii "_REENT_WCTOMB_STATE(ptr) ((ptr)->_new._reent._wctomb_state)\0"
	.byte	0x1
	.uleb128 0x2e9
	.ascii "_REENT_MBRLEN_STATE(ptr) ((ptr)->_new._reent._mbrlen_state)\0"
	.byte	0x1
	.uleb128 0x2ea
	.ascii "_REENT_MBRTOWC_STATE(ptr) ((ptr)->_new._reent._mbrtowc_state)\0"
	.byte	0x1
	.uleb128 0x2eb
	.ascii "_REENT_MBSRTOWCS_STATE(ptr) ((ptr)->_new._reent._mbsrtowcs_state)\0"
	.byte	0x1
	.uleb128 0x2ec
	.ascii "_REENT_WCRTOMB_STATE(ptr) ((ptr)->_new._reent._wcrtomb_state)\0"
	.byte	0x1
	.uleb128 0x2ed
	.ascii "_REENT_WCSRTOMBS_STATE(ptr) ((ptr)->_new._reent._wcsrtombs_state)\0"
	.byte	0x1
	.uleb128 0x2ee
	.ascii "_REENT_L64A_BUF(ptr) ((ptr)->_new._reent._l64a_buf)\0"
	.byte	0x1
	.uleb128 0x2ef
	.ascii "_REENT_SIGNAL_BUF(ptr) ((ptr)->_new._reent._signal_buf)\0"
	.byte	0x1
	.uleb128 0x2f0
	.ascii "_REENT_GETDATE_ERR_P(ptr) (&((ptr)->_new._reent._getdate_err))\0"
	.byte	0x1
	.uleb128 0x2f4
	.ascii "_REENT_INIT_PTR(var) { memset((var), 0, sizeof(*(var))); _REENT_INIT_PTR_ZEROED(var); }\0"
	.byte	0x1
	.uleb128 0x2fc
	.ascii "_Kmax (sizeof (size_t) << 3)\0"
	.byte	0x1
	.uleb128 0x304
	.ascii "__ATTRIBUTE_IMPURE_PTR__ \0"
	.byte	0x1
	.uleb128 0x312
	.ascii "_REENT (__getreent())\0"
	.byte	0x1
	.uleb128 0x317
	.ascii "_GLOBAL_REENT _global_impure_ptr\0"
	.byte	0x1
	.uleb128 0x31d
	.ascii "_GLOBAL_ATEXIT (_GLOBAL_REENT->_atexit)\0"
	.byte	0x4
	.file 49 "/usr/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x29
	.ascii "_SYS_CDEFS_H_ \0"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2f
	.ascii "__PMT(args) args\0"
	.byte	0x1
	.uleb128 0x30
	.ascii "__DOTS , ...\0"
	.byte	0x1
	.uleb128 0x31
	.ascii "__THROW \0"
	.byte	0x1
	.uleb128 0x34
	.ascii "__ASMNAME(cname) __XSTRING (__USER_LABEL_PREFIX__) cname\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "__ptr_t void *\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "__long_double_t long double\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "__attribute_malloc__ \0"
	.byte	0x1
	.uleb128 0x3b
	.ascii "__attribute_pure__ \0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "__attribute_format_strfmon__(a,b) \0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "__flexarr [0]\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__bounded \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__unbounded \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__ptrvalue \0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__has_extension __has_feature\0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__has_feature(x) 0\0"
	.byte	0x1
	.uleb128 0x55
	.ascii "__has_builtin(x) 0\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__BEGIN_DECLS extern \"C\" {\0"
	.byte	0x1
	.uleb128 0x5a
	.ascii "__END_DECLS }\0"
	.byte	0x1
	.uleb128 0x69
	.ascii "__GNUCLIKE_ASM 3\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__GNUCLIKE_MATH_BUILTIN_CONSTANTS \0"
	.byte	0x1
	.uleb128 0x6e
	.ascii "__GNUCLIKE___TYPEOF 1\0"
	.byte	0x1
	.uleb128 0x6f
	.ascii "__GNUCLIKE___OFFSETOF 1\0"
	.byte	0x1
	.uleb128 0x70
	.ascii "__GNUCLIKE___SECTION 1\0"
	.byte	0x1
	.uleb128 0x73
	.ascii "__GNUCLIKE_CTOR_SECTION_HANDLING 1\0"
	.byte	0x1
	.uleb128 0x76
	.ascii "__GNUCLIKE_BUILTIN_CONSTANT_P 1\0"
	.byte	0x1
	.uleb128 0x7d
	.ascii "__GNUCLIKE_BUILTIN_VARARGS 1\0"
	.byte	0x1
	.uleb128 0x7e
	.ascii "__GNUCLIKE_BUILTIN_STDARG 1\0"
	.byte	0x1
	.uleb128 0x7f
	.ascii "__GNUCLIKE_BUILTIN_VAALIST 1\0"
	.byte	0x1
	.uleb128 0x83
	.ascii "__GNUC_VA_LIST_COMPATIBILITY 1\0"
	.byte	0x1
	.uleb128 0x8a
	.ascii "__compiler_membar() __asm __volatile(\" \" : : : \"memory\")\0"
	.byte	0x1
	.uleb128 0x8e
	.ascii "__GNUCLIKE_BUILTIN_NEXT_ARG 1\0"
	.byte	0x1
	.uleb128 0x8f
	.ascii "__GNUCLIKE_MATH_BUILTIN_RELOPS \0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__GNUCLIKE_BUILTIN_MEMCPY 1\0"
	.byte	0x1
	.uleb128 0x95
	.ascii "__CC_SUPPORTS_INLINE 1\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__CC_SUPPORTS___INLINE 1\0"
	.byte	0x1
	.uleb128 0x97
	.ascii "__CC_SUPPORTS___INLINE__ 1\0"
	.byte	0x1
	.uleb128 0x99
	.ascii "__CC_SUPPORTS___FUNC__ 1\0"
	.byte	0x1
	.uleb128 0x9a
	.ascii "__CC_SUPPORTS_WARNING 1\0"
	.byte	0x1
	.uleb128 0x9c
	.ascii "__CC_SUPPORTS_VARADIC_XXX 1\0"
	.byte	0x1
	.uleb128 0x9e
	.ascii "__CC_SUPPORTS_DYNAMIC_ARRAY_INIT 1\0"
	.byte	0x1
	.uleb128 0xaf
	.ascii "__P(protos) protos\0"
	.byte	0x1
	.uleb128 0xb0
	.ascii "__CONCAT1(x,y) x ## y\0"
	.byte	0x1
	.uleb128 0xb1
	.ascii "__CONCAT(x,y) __CONCAT1(x,y)\0"
	.byte	0x1
	.uleb128 0xb2
	.ascii "__STRING(x) #x\0"
	.byte	0x1
	.uleb128 0xb3
	.ascii "__XSTRING(x) __STRING(x)\0"
	.byte	0x1
	.uleb128 0xb5
	.ascii "__const const\0"
	.byte	0x1
	.uleb128 0xb6
	.ascii "__signed signed\0"
	.byte	0x1
	.uleb128 0xb7
	.ascii "__volatile volatile\0"
	.byte	0x1
	.uleb128 0xb9
	.ascii "__inline inline\0"
	.byte	0x1
	.uleb128 0xef
	.ascii "__weak_symbol __attribute__((__weak__))\0"
	.byte	0x1
	.uleb128 0xfc
	.ascii "__dead2 __attribute__((__noreturn__))\0"
	.byte	0x1
	.uleb128 0xfd
	.ascii "__pure2 __attribute__((__const__))\0"
	.byte	0x1
	.uleb128 0xfe
	.ascii "__unused __attribute__((__unused__))\0"
	.byte	0x1
	.uleb128 0xff
	.ascii "__used __attribute__((__used__))\0"
	.byte	0x1
	.uleb128 0x100
	.ascii "__packed __attribute__((__packed__))\0"
	.byte	0x1
	.uleb128 0x101
	.ascii "__aligned(x) __attribute__((__aligned__(x)))\0"
	.byte	0x1
	.uleb128 0x102
	.ascii "__section(x) __attribute__((__section__(x)))\0"
	.byte	0x1
	.uleb128 0x105
	.ascii "__alloc_size(x) __attribute__((__alloc_size__(x)))\0"
	.byte	0x1
	.uleb128 0x10a
	.ascii "__alloc_align(x) __attribute__((__alloc_align__(x)))\0"
	.byte	0x1
	.uleb128 0x11d
	.ascii "_Alignas(x) alignas(x)\0"
	.byte	0x1
	.uleb128 0x125
	.ascii "_Alignof(x) alignof(x)\0"
	.byte	0x1
	.uleb128 0x134
	.ascii "_Noreturn [[noreturn]]\0"
	.byte	0x1
	.uleb128 0x13c
	.ascii "_Static_assert(x,y) static_assert(x, y)\0"
	.byte	0x1
	.uleb128 0x153
	.ascii "_Thread_local __thread\0"
	.byte	0x1
	.uleb128 0x178
	.ascii "__min_size(x) (x)\0"
	.byte	0x1
	.uleb128 0x17c
	.ascii "__malloc_like __attribute__((__malloc__))\0"
	.byte	0x1
	.uleb128 0x17d
	.ascii "__pure __attribute__((__pure__))\0"
	.byte	0x1
	.uleb128 0x184
	.ascii "__always_inline __attribute__((__always_inline__))\0"
	.byte	0x1
	.uleb128 0x18a
	.ascii "__noinline __attribute__ ((__noinline__))\0"
	.byte	0x1
	.uleb128 0x190
	.ascii "__nonnull(x) __attribute__((__nonnull__(x)))\0"
	.byte	0x1
	.uleb128 0x191
	.ascii "__nonnull_all __attribute__((__nonnull__))\0"
	.byte	0x1
	.uleb128 0x198
	.ascii "__fastcall __attribute__((__fastcall__))\0"
	.byte	0x1
	.uleb128 0x199
	.ascii "__result_use_check __attribute__((__warn_unused_result__))\0"
	.byte	0x1
	.uleb128 0x1a0
	.ascii "__returns_twice __attribute__((__returns_twice__))\0"
	.byte	0x1
	.uleb128 0x1a6
	.ascii "__unreachable() __builtin_unreachable()\0"
	.byte	0x1
	.uleb128 0x1b8
	.ascii "__restrict \0"
	.byte	0x1
	.uleb128 0x1db
	.ascii "__predict_true(exp) __builtin_expect((exp), 1)\0"
	.byte	0x1
	.uleb128 0x1dc
	.ascii "__predict_false(exp) __builtin_expect((exp), 0)\0"
	.byte	0x1
	.uleb128 0x1e3
	.ascii "__null_sentinel __attribute__((__sentinel__))\0"
	.byte	0x1
	.uleb128 0x1e4
	.ascii "__exported __attribute__((__visibility__(\"default\")))\0"
	.byte	0x1
	.uleb128 0x1e9
	.ascii "__hidden \0"
	.byte	0x1
	.uleb128 0x1f1
	.ascii "__offsetof(type,field) offsetof(type, field)\0"
	.byte	0x1
	.uleb128 0x1f2
	.ascii "__rangeof(type,start,end) (__offsetof(type, end) - __offsetof(type, start))\0"
	.byte	0x1
	.uleb128 0x1fc
	.ascii "__containerof(x,s,m) ({ const volatile __typeof(((s *)0)->m) *__x = (x); __DEQUALIFY(s *, (const volatile char *)__x - __offsetof(s, m));})\0"
	.byte	0x1
	.uleb128 0x212
	.ascii "__printflike(fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x214
	.ascii "__scanflike(fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x216
	.ascii "__format_arg(fmtarg) __attribute__((__format_arg__ (fmtarg)))\0"
	.byte	0x1
	.uleb128 0x217
	.ascii "__strfmonlike(fmtarg,firstvararg) __attribute__((__format__ (__strfmon__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x219
	.ascii "__strftimelike(fmtarg,firstvararg) __attribute__((__format__ (__strftime__, fmtarg, firstvararg)))\0"
	.byte	0x1
	.uleb128 0x223
	.ascii "__printf0like(fmtarg,firstvararg) \0"
	.byte	0x1
	.uleb128 0x228
	.ascii "__strong_reference(sym,aliassym) extern __typeof (sym) aliassym __attribute__ ((__alias__ (#sym)))\0"
	.byte	0x1
	.uleb128 0x247
	.ascii "__weak_reference(sym,alias) __asm__(\".stabs \\\"_\" #alias \"\\\",11,0,0,0\"); __asm__(\".stabs \\\"_\" #sym \"\\\",1,0,0,0\")\0"
	.byte	0x1
	.uleb128 0x24a
	.ascii "__warn_references(sym,msg) __asm__(\".stabs \\\"\" msg \"\\\",30,0,0,0\"); __asm__(\".stabs \\\"_\" #sym \"\\\",1,0,0,0\")\0"
	.byte	0x1
	.uleb128 0x259
	.ascii "__FBSDID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x25d
	.ascii "__RCSID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x261
	.ascii "__RCSID_SOURCE(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x265
	.ascii "__SCCSID(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x269
	.ascii "__COPYRIGHT(s) struct __hack\0"
	.byte	0x1
	.uleb128 0x26d
	.ascii "__DECONST(type,var) ((type)(__uintptr_t)(const void *)(var))\0"
	.byte	0x1
	.uleb128 0x271
	.ascii "__DEVOLATILE(type,var) ((type)(__uintptr_t)(volatile void *)(var))\0"
	.byte	0x1
	.uleb128 0x275
	.ascii "__DEQUALIFY(type,var) ((type)(__uintptr_t)(const volatile void *)(var))\0"
	.byte	0x1
	.uleb128 0x27c
	.ascii "_Nonnull \0"
	.byte	0x1
	.uleb128 0x27d
	.ascii "_Nullable \0"
	.byte	0x1
	.uleb128 0x27e
	.ascii "_Null_unspecified \0"
	.byte	0x1
	.uleb128 0x27f
	.ascii "__NULLABILITY_PRAGMA_PUSH \0"
	.byte	0x1
	.uleb128 0x280
	.ascii "__NULLABILITY_PRAGMA_POP \0"
	.byte	0x1
	.uleb128 0x295
	.ascii "__arg_type_tag(arg_kind,arg_idx,type_tag_idx) \0"
	.byte	0x1
	.uleb128 0x296
	.ascii "__datatype_type_tag(kind,type) \0"
	.byte	0x1
	.uleb128 0x2a8
	.ascii "__lock_annotate(x) \0"
	.byte	0x1
	.uleb128 0x2ae
	.ascii "__lockable __lock_annotate(lockable)\0"
	.byte	0x1
	.uleb128 0x2b1
	.ascii "__locks_exclusive(...) __lock_annotate(exclusive_lock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b3
	.ascii "__locks_shared(...) __lock_annotate(shared_lock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b7
	.ascii "__trylocks_exclusive(...) __lock_annotate(exclusive_trylock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2b9
	.ascii "__trylocks_shared(...) __lock_annotate(shared_trylock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2bd
	.ascii "__unlocks(...) __lock_annotate(unlock_function(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c0
	.ascii "__asserts_exclusive(...) __lock_annotate(assert_exclusive_lock(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c2
	.ascii "__asserts_shared(...) __lock_annotate(assert_shared_lock(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c6
	.ascii "__requires_exclusive(...) __lock_annotate(exclusive_locks_required(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2c8
	.ascii "__requires_shared(...) __lock_annotate(shared_locks_required(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2ca
	.ascii "__requires_unlocked(...) __lock_annotate(locks_excluded(__VA_ARGS__))\0"
	.byte	0x1
	.uleb128 0x2ce
	.ascii "__no_lock_analysis __lock_annotate(no_thread_safety_analysis)\0"
	.byte	0x1
	.uleb128 0x2d1
	.ascii "__guarded_by(x) __lock_annotate(guarded_by(x))\0"
	.byte	0x1
	.uleb128 0x2d2
	.ascii "__pt_guarded_by(x) __lock_annotate(pt_guarded_by(x))\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0xf
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0x10
	.ascii "__need_NULL \0"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x2
	.uleb128 0xa1
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
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
	.byte	0x4
	.file 50 "/usr/include/sys/string.h"
	.byte	0x3
	.uleb128 0xaf
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii "_GLIBCXX_CSTRING 1\0"
	.byte	0x2
	.uleb128 0x30
	.ascii "memchr\0"
	.byte	0x2
	.uleb128 0x31
	.ascii "memcmp\0"
	.byte	0x2
	.uleb128 0x32
	.ascii "memcpy\0"
	.byte	0x2
	.uleb128 0x33
	.ascii "memmove\0"
	.byte	0x2
	.uleb128 0x34
	.ascii "memset\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "strcat\0"
	.byte	0x2
	.uleb128 0x36
	.ascii "strchr\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "strcmp\0"
	.byte	0x2
	.uleb128 0x38
	.ascii "strcoll\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "strcpy\0"
	.byte	0x2
	.uleb128 0x3a
	.ascii "strcspn\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "strerror\0"
	.byte	0x2
	.uleb128 0x3c
	.ascii "strlen\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "strncat\0"
	.byte	0x2
	.uleb128 0x3e
	.ascii "strncmp\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "strncpy\0"
	.byte	0x2
	.uleb128 0x40
	.ascii "strpbrk\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "strrchr\0"
	.byte	0x2
	.uleb128 0x42
	.ascii "strspn\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "strstr\0"
	.byte	0x2
	.uleb128 0x44
	.ascii "strtok\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "strxfrm\0"
	.byte	0x4
	.file 51 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/algorithm"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x33
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_ALGORITHM 1\0"
	.file 52 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/utility"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_UTILITY 1\0"
	.file 53 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_relops.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x35
	.byte	0x1
	.uleb128 0x41
	.ascii "_STL_RELOPS_H 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_PAIR_H 1\0"
	.byte	0x4
	.file 54 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.byte	0x3
	.uleb128 0x4c
	.uleb128 0x36
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
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
	.file 55 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_algobase.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x37
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_ALGOBASE_H 1\0"
	.file 56 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/functexcept.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x38
	.byte	0x1
	.uleb128 0x25
	.ascii "_FUNCTEXCEPT_H 1\0"
	.byte	0x4
	.file 57 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/cpp_type_traits.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x21
	.ascii "_CPP_TYPE_TRAITS_H 1\0"
	.byte	0x1
	.uleb128 0xf6
	.ascii "__INT_N(TYPE) template<> struct __is_integer<TYPE> { enum { __value = 1 }; typedef __true_type __type; }; template<> struct __is_integer<unsigned TYPE> { enum { __value = 1 }; typedef __true_type __type; };\0"
	.byte	0x2
	.uleb128 0x111
	.ascii "__INT_N\0"
	.byte	0x4
	.file 58 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/ext/type_traits.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x3a
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_TYPE_TRAITS 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_NUMERIC_TRAITS 1\0"
	.byte	0x1
	.uleb128 0x2b
	.ascii "__glibcxx_signed(_Tp) ((_Tp)(-1) < 0)\0"
	.byte	0x1
	.uleb128 0x2c
	.ascii "__glibcxx_digits(_Tp) (sizeof(_Tp) * __CHAR_BIT__ - __glibcxx_signed(_Tp))\0"
	.byte	0x1
	.uleb128 0x2f
	.ascii "__glibcxx_min(_Tp) (__glibcxx_signed(_Tp) ? (_Tp)1 << __glibcxx_digits(_Tp) : (_Tp)0)\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "__glibcxx_max(_Tp) (__glibcxx_signed(_Tp) ? (((((_Tp)1 << (__glibcxx_digits(_Tp) - 1)) - 1) << 1) + 1) : ~(_Tp)0)\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "__glibcxx_signed\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "__glibcxx_digits\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "__glibcxx_min\0"
	.byte	0x2
	.uleb128 0x52
	.ascii "__glibcxx_max\0"
	.byte	0x1
	.uleb128 0x54
	.ascii "__glibcxx_floating(_Tp,_Fval,_Dval,_LDval) (std::__are_same<_Tp, float>::__value ? _Fval : std::__are_same<_Tp, double>::__value ? _Dval : _LDval)\0"
	.byte	0x1
	.uleb128 0x58
	.ascii "__glibcxx_max_digits10(_Tp) (2 + __glibcxx_floating(_Tp, __FLT_MANT_DIG__, __DBL_MANT_DIG__, __LDBL_MANT_DIG__) * 643L / 2136)\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__glibcxx_digits10(_Tp) __glibcxx_floating(_Tp, __FLT_DIG__, __DBL_DIG__, __LDBL_DIG__)\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__glibcxx_max_exponent10(_Tp) __glibcxx_floating(_Tp, __FLT_MAX_10_EXP__, __DBL_MAX_10_EXP__, __LDBL_MAX_10_EXP__)\0"
	.byte	0x2
	.uleb128 0x85
	.ascii "__glibcxx_floating\0"
	.byte	0x2
	.uleb128 0x86
	.ascii "__glibcxx_max_digits10\0"
	.byte	0x2
	.uleb128 0x87
	.ascii "__glibcxx_digits10\0"
	.byte	0x2
	.uleb128 0x88
	.ascii "__glibcxx_max_exponent10\0"
	.byte	0x4
	.file 59 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_iterator_base_types.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x3c
	.ascii "_STL_ITERATOR_BASE_TYPES_H 1\0"
	.byte	0x4
	.file 60 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_iterator_base_funcs.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x3c
	.byte	0x1
	.uleb128 0x3c
	.ascii "_STL_ITERATOR_BASE_FUNCS_H 1\0"
	.file 61 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/debug/assertions.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_DEBUG_ASSERTIONS_H 1\0"
	.byte	0x1
	.uleb128 0x22
	.ascii "_GLIBCXX_DEBUG_ASSERT(_Condition) \0"
	.byte	0x1
	.uleb128 0x23
	.ascii "_GLIBCXX_DEBUG_PEDASSERT(_Condition) \0"
	.byte	0x1
	.uleb128 0x24
	.ascii "_GLIBCXX_DEBUG_ONLY(_Statement) ;\0"
	.byte	0x4
	.byte	0x4
	.file 62 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_iterator.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x3d
	.ascii "_STL_ITERATOR_H 1\0"
	.file 63 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/ptr_traits.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x3f
	.byte	0x1
	.uleb128 0x1f
	.ascii "_PTR_TRAITS_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x196
	.ascii "__cpp_lib_make_reverse_iterator 201402\0"
	.byte	0x1
	.uleb128 0x4e2
	.ascii "_GLIBCXX_MAKE_MOVE_ITERATOR(_Iter) std::make_move_iterator(_Iter)\0"
	.byte	0x1
	.uleb128 0x4e3
	.ascii "_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(_Iter) std::__make_move_if_noexcept_iterator(_Iter)\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x45
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_DEBUG_MACRO_SWITCH_H 1\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "__glibcxx_requires_cond(_Cond,_Msg) \0"
	.byte	0x1
	.uleb128 0x40
	.ascii "__glibcxx_requires_valid_range(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x41
	.ascii "__glibcxx_requires_sorted(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x42
	.ascii "__glibcxx_requires_sorted_pred(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x43
	.ascii "__glibcxx_requires_sorted_set(_First1,_Last1,_First2) \0"
	.byte	0x1
	.uleb128 0x44
	.ascii "__glibcxx_requires_sorted_set_pred(_First1,_Last1,_First2,_Pred) \0"
	.byte	0x1
	.uleb128 0x45
	.ascii "__glibcxx_requires_partitioned_lower(_First,_Last,_Value) \0"
	.byte	0x1
	.uleb128 0x46
	.ascii "__glibcxx_requires_partitioned_upper(_First,_Last,_Value) \0"
	.byte	0x1
	.uleb128 0x47
	.ascii "__glibcxx_requires_partitioned_lower_pred(_First,_Last,_Value,_Pred) \0"
	.byte	0x1
	.uleb128 0x48
	.ascii "__glibcxx_requires_partitioned_upper_pred(_First,_Last,_Value,_Pred) \0"
	.byte	0x1
	.uleb128 0x49
	.ascii "__glibcxx_requires_heap(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "__glibcxx_requires_heap_pred(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x4b
	.ascii "__glibcxx_requires_string(_String) \0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "__glibcxx_requires_string_len(_String,_Len) \0"
	.byte	0x1
	.uleb128 0x4d
	.ascii "__glibcxx_requires_subscript(_N) \0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "__glibcxx_requires_irreflexive(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x4f
	.ascii "__glibcxx_requires_irreflexive2(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__glibcxx_requires_irreflexive_pred(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x51
	.ascii "__glibcxx_requires_irreflexive_pred2(_First,_Last,_Pred) \0"
	.byte	0x1
	.uleb128 0x5b
	.ascii "__glibcxx_requires_non_empty_range(_First,_Last) \0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__glibcxx_requires_nonempty() \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_PREDEFINED_OPS_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1eb
	.ascii "_GLIBCXX_MOVE3(_Tp,_Up,_Vp) std::move(_Tp, _Up, _Vp)\0"
	.byte	0x1
	.uleb128 0x2a1
	.ascii "_GLIBCXX_MOVE_BACKWARD3(_Tp,_Up,_Vp) std::move_backward(_Tp, _Up, _Vp)\0"
	.byte	0x1
	.uleb128 0x441
	.ascii "__cpp_lib_robust_nonmodifying_seq_ops 201304\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_ALGO_H 1\0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x2c
	.ascii "_GLIBCXX_CSTDLIB 1\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_GLIBCXX_INCLUDE_NEXT_C_HEADERS \0"
	.byte	0x3
	.uleb128 0x4b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x8
	.ascii "_STDLIB_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x2c
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.ascii "__need_size_t \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "__need_wchar_t \0"
	.byte	0x1
	.uleb128 0xf
	.ascii "__need_NULL \0"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x2
	.uleb128 0xa1
	.ascii "__need_ptrdiff_t\0"
	.byte	0x2
	.uleb128 0xee
	.ascii "__need_size_t\0"
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
	.byte	0x4
	.file 64 "/usr/include/machine/stdlib.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x40
	.byte	0x1
	.uleb128 0xa
	.ascii "_MACHSTDLIB_H_ \0"
	.byte	0x4
	.file 65 "/usr/include/cygwin/stdlib.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x41
	.byte	0x1
	.uleb128 0xa
	.ascii "_CYGWIN_STDLIB_H \0"
	.file 66 "/usr/include/cygwin/wait.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x42
	.byte	0x1
	.uleb128 0xa
	.ascii "_CYGWIN_WAIT_H \0"
	.byte	0x1
	.uleb128 0xc
	.ascii "WAIT_ANY (pid_t)-1\0"
	.byte	0x1
	.uleb128 0xd
	.ascii "WAIT_MYPGRP (pid_t)0\0"
	.byte	0x1
	.uleb128 0xf
	.ascii "WNOHANG 1\0"
	.byte	0x1
	.uleb128 0x10
	.ascii "WUNTRACED 2\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "WCONTINUED 8\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "__W_CONTINUED 0xffff\0"
	.byte	0x1
	.uleb128 0x15
	.ascii "__wait_status_to_int(w) (w)\0"
	.byte	0x1
	.uleb128 0x20
	.ascii "WIFEXITED(w) ((__wait_status_to_int(w) & 0xff) == 0)\0"
	.byte	0x1
	.uleb128 0x21
	.ascii "WIFSIGNALED(w) ((__wait_status_to_int(w) & 0x7f) > 0 && ((__wait_status_to_int(w) & 0x7f) < 0x7f))\0"
	.byte	0x1
	.uleb128 0x23
	.ascii "WIFSTOPPED(w) ((__wait_status_to_int(w) & 0xff) == 0x7f)\0"
	.byte	0x1
	.uleb128 0x24
	.ascii "WIFCONTINUED(w) ((__wait_status_to_int(w) & 0xffff) == __W_CONTINUED)\0"
	.byte	0x1
	.uleb128 0x25
	.ascii "WEXITSTATUS(w) ((__wait_status_to_int(w) >> 8) & 0xff)\0"
	.byte	0x1
	.uleb128 0x26
	.ascii "WTERMSIG(w) (__wait_status_to_int(w) & 0x7f)\0"
	.byte	0x1
	.uleb128 0x27
	.ascii "WSTOPSIG WEXITSTATUS\0"
	.byte	0x1
	.uleb128 0x28
	.ascii "WCOREDUMP(w) (WIFSIGNALED(w) && (__wait_status_to_int(w) & 0x80))\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x35
	.ascii "_malloc_r\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "_malloc_r(r,s) malloc (s)\0"
	.byte	0x2
	.uleb128 0x37
	.ascii "_free_r\0"
	.byte	0x1
	.uleb128 0x38
	.ascii "_free_r(r,p) free (p)\0"
	.byte	0x2
	.uleb128 0x39
	.ascii "_realloc_r\0"
	.byte	0x1
	.uleb128 0x3a
	.ascii "_realloc_r(r,p,s) realloc (p, s)\0"
	.byte	0x2
	.uleb128 0x3b
	.ascii "_calloc_r\0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "_calloc_r(r,s1,s2) calloc (s1, s2);\0"
	.byte	0x2
	.uleb128 0x3d
	.ascii "_memalign_r\0"
	.byte	0x1
	.uleb128 0x3e
	.ascii "_memalign_r(r,s1,s2) memalign (s1, s2);\0"
	.byte	0x2
	.uleb128 0x3f
	.ascii "_mallinfo_r\0"
	.byte	0x1
	.uleb128 0x40
	.ascii "_mallinfo_r(r) mallinfo ()\0"
	.byte	0x2
	.uleb128 0x41
	.ascii "_malloc_stats_r\0"
	.byte	0x1
	.uleb128 0x42
	.ascii "_malloc_stats_r(r) malloc_stats ()\0"
	.byte	0x2
	.uleb128 0x43
	.ascii "_mallopt_r\0"
	.byte	0x1
	.uleb128 0x44
	.ascii "_mallopt_r(i1,i2) mallopt (i1, i2)\0"
	.byte	0x2
	.uleb128 0x45
	.ascii "_malloc_usable_size_r\0"
	.byte	0x1
	.uleb128 0x46
	.ascii "_malloc_usable_size_r(r,p) malloc_usable_size (p)\0"
	.byte	0x2
	.uleb128 0x47
	.ascii "_valloc_r\0"
	.byte	0x1
	.uleb128 0x48
	.ascii "_valloc_r(r,s) valloc (s)\0"
	.byte	0x2
	.uleb128 0x49
	.ascii "_pvalloc_r\0"
	.byte	0x1
	.uleb128 0x4a
	.ascii "_pvalloc_r(r,s) pvalloc (s)\0"
	.byte	0x2
	.uleb128 0x4b
	.ascii "_malloc_trim_r\0"
	.byte	0x1
	.uleb128 0x4c
	.ascii "_malloc_trim_r(r,s) malloc_trim (s)\0"
	.byte	0x2
	.uleb128 0x4d
	.ascii "_mstats_r\0"
	.byte	0x1
	.uleb128 0x4e
	.ascii "_mstats_r(r,p) mstats (p)\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x38
	.ascii "__compar_fn_t_defined \0"
	.byte	0x1
	.uleb128 0x3c
	.ascii "EXIT_FAILURE 1\0"
	.byte	0x1
	.uleb128 0x3d
	.ascii "EXIT_SUCCESS 0\0"
	.byte	0x1
	.uleb128 0x3f
	.ascii "RAND_MAX __RAND_MAX\0"
	.byte	0x1
	.uleb128 0x43
	.ascii "MB_CUR_MAX __locale_mb_cur_max()\0"
	.byte	0x4
	.byte	0x2
	.uleb128 0x4c
	.ascii "_GLIBCXX_INCLUDE_NEXT_C_HEADERS\0"
	.byte	0x2
	.uleb128 0x4f
	.ascii "abort\0"
	.byte	0x2
	.uleb128 0x50
	.ascii "abs\0"
	.byte	0x2
	.uleb128 0x51
	.ascii "atexit\0"
	.byte	0x2
	.uleb128 0x54
	.ascii "at_quick_exit\0"
	.byte	0x2
	.uleb128 0x57
	.ascii "atof\0"
	.byte	0x2
	.uleb128 0x58
	.ascii "atoi\0"
	.byte	0x2
	.uleb128 0x59
	.ascii "atol\0"
	.byte	0x2
	.uleb128 0x5a
	.ascii "bsearch\0"
	.byte	0x2
	.uleb128 0x5b
	.ascii "calloc\0"
	.byte	0x2
	.uleb128 0x5c
	.ascii "div\0"
	.byte	0x2
	.uleb128 0x5d
	.ascii "exit\0"
	.byte	0x2
	.uleb128 0x5e
	.ascii "free\0"
	.byte	0x2
	.uleb128 0x5f
	.ascii "getenv\0"
	.byte	0x2
	.uleb128 0x60
	.ascii "labs\0"
	.byte	0x2
	.uleb128 0x61
	.ascii "ldiv\0"
	.byte	0x2
	.uleb128 0x62
	.ascii "malloc\0"
	.byte	0x2
	.uleb128 0x63
	.ascii "mblen\0"
	.byte	0x2
	.uleb128 0x64
	.ascii "mbstowcs\0"
	.byte	0x2
	.uleb128 0x65
	.ascii "mbtowc\0"
	.byte	0x2
	.uleb128 0x66
	.ascii "qsort\0"
	.byte	0x2
	.uleb128 0x69
	.ascii "quick_exit\0"
	.byte	0x2
	.uleb128 0x6c
	.ascii "rand\0"
	.byte	0x2
	.uleb128 0x6d
	.ascii "realloc\0"
	.byte	0x2
	.uleb128 0x6e
	.ascii "srand\0"
	.byte	0x2
	.uleb128 0x6f
	.ascii "strtod\0"
	.byte	0x2
	.uleb128 0x70
	.ascii "strtol\0"
	.byte	0x2
	.uleb128 0x71
	.ascii "strtoul\0"
	.byte	0x2
	.uleb128 0x72
	.ascii "system\0"
	.byte	0x2
	.uleb128 0x73
	.ascii "wcstombs\0"
	.byte	0x2
	.uleb128 0x74
	.ascii "wctomb\0"
	.byte	0x2
	.uleb128 0xce
	.ascii "_Exit\0"
	.byte	0x2
	.uleb128 0xcf
	.ascii "llabs\0"
	.byte	0x2
	.uleb128 0xd0
	.ascii "lldiv\0"
	.byte	0x2
	.uleb128 0xd1
	.ascii "atoll\0"
	.byte	0x2
	.uleb128 0xd2
	.ascii "strtoll\0"
	.byte	0x2
	.uleb128 0xd3
	.ascii "strtoull\0"
	.byte	0x2
	.uleb128 0xd4
	.ascii "strtof\0"
	.byte	0x2
	.uleb128 0xd5
	.ascii "strtold\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x1f
	.ascii "_GLIBCXX_ALGORITHMFWD_H 1\0"
	.byte	0x4
	.file 67 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_heap.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x43
	.byte	0x1
	.uleb128 0x38
	.ascii "_STL_HEAP_H 1\0"
	.byte	0x4
	.file 68 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_tempbuf.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x44
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_TEMPBUF_H 1\0"
	.file 69 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_construct.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x45
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_CONSTRUCT_H 1\0"
	.file 70 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/ext/alloc_traits.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x46
	.byte	0x1
	.uleb128 0x1e
	.ascii "_EXT_ALLOC_TRAITS_H 1\0"
	.file 71 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/alloc_traits.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x47
	.byte	0x1
	.uleb128 0x1f
	.ascii "_ALLOC_TRAITS_H 1\0"
	.file 72 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/memoryfwd.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x2c
	.ascii "_MEMORYFWD_H 1\0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x27
	.ascii "__cpp_lib_allocator_traits_is_always_equal 201411\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 73 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/uniform_int_dist.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x49
	.byte	0x1
	.uleb128 0x20
	.ascii "_GLIBCXX_BITS_UNIFORM_INT_DIST_H \0"
	.file 74 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/limits"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x4a
	.byte	0x1
	.uleb128 0x26
	.ascii "_GLIBCXX_NUMERIC_LIMITS 1\0"
	.byte	0x1
	.uleb128 0x50
	.ascii "__glibcxx_integral_traps true\0"
	.byte	0x1
	.uleb128 0x59
	.ascii "__glibcxx_float_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x5c
	.ascii "__glibcxx_float_traps false\0"
	.byte	0x1
	.uleb128 0x5f
	.ascii "__glibcxx_float_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x67
	.ascii "__glibcxx_double_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x6a
	.ascii "__glibcxx_double_traps false\0"
	.byte	0x1
	.uleb128 0x6d
	.ascii "__glibcxx_double_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x75
	.ascii "__glibcxx_long_double_has_denorm_loss false\0"
	.byte	0x1
	.uleb128 0x78
	.ascii "__glibcxx_long_double_traps false\0"
	.byte	0x1
	.uleb128 0x7b
	.ascii "__glibcxx_long_double_tinyness_before false\0"
	.byte	0x1
	.uleb128 0x80
	.ascii "__glibcxx_signed_b(T,B) ((T)(-1) < 0)\0"
	.byte	0x1
	.uleb128 0x82
	.ascii "__glibcxx_min_b(T,B) (__glibcxx_signed_b (T,B) ? -__glibcxx_max_b (T,B) - 1 : (T)0)\0"
	.byte	0x1
	.uleb128 0x85
	.ascii "__glibcxx_max_b(T,B) (__glibcxx_signed_b (T,B) ? (((((T)1 << (__glibcxx_digits_b (T,B) - 1)) - 1) << 1) + 1) : ~(T)0)\0"
	.byte	0x1
	.uleb128 0x89
	.ascii "__glibcxx_digits_b(T,B) (B - __glibcxx_signed_b (T,B))\0"
	.byte	0x1
	.uleb128 0x8d
	.ascii "__glibcxx_digits10_b(T,B) (__glibcxx_digits_b (T,B) * 643L / 2136)\0"
	.byte	0x1
	.uleb128 0x90
	.ascii "__glibcxx_signed(T) __glibcxx_signed_b (T, sizeof(T) * __CHAR_BIT__)\0"
	.byte	0x1
	.uleb128 0x92
	.ascii "__glibcxx_min(T) __glibcxx_min_b (T, sizeof(T) * __CHAR_BIT__)\0"
	.byte	0x1
	.uleb128 0x94
	.ascii "__glibcxx_max(T) __glibcxx_max_b (T, sizeof(T) * __CHAR_BIT__)\0"
	.byte	0x1
	.uleb128 0x96
	.ascii "__glibcxx_digits(T) __glibcxx_digits_b (T, sizeof(T) * __CHAR_BIT__)\0"
	.byte	0x1
	.uleb128 0x98
	.ascii "__glibcxx_digits10(T) __glibcxx_digits10_b (T, sizeof(T) * __CHAR_BIT__)\0"
	.byte	0x1
	.uleb128 0x9b
	.ascii "__glibcxx_max_digits10(T) (2 + (T) * 643L / 2136)\0"
	.byte	0x2
	.uleb128 0x67e
	.ascii "__glibcxx_float_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x67f
	.ascii "__glibcxx_float_traps\0"
	.byte	0x2
	.uleb128 0x680
	.ascii "__glibcxx_float_tinyness_before\0"
	.byte	0x2
	.uleb128 0x6c9
	.ascii "__glibcxx_double_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x6ca
	.ascii "__glibcxx_double_traps\0"
	.byte	0x2
	.uleb128 0x6cb
	.ascii "__glibcxx_double_tinyness_before\0"
	.byte	0x2
	.uleb128 0x714
	.ascii "__glibcxx_long_double_has_denorm_loss\0"
	.byte	0x2
	.uleb128 0x715
	.ascii "__glibcxx_long_double_traps\0"
	.byte	0x2
	.uleb128 0x716
	.ascii "__glibcxx_long_double_tinyness_before\0"
	.byte	0x2
	.uleb128 0x71b
	.ascii "__glibcxx_signed\0"
	.byte	0x2
	.uleb128 0x71c
	.ascii "__glibcxx_min\0"
	.byte	0x2
	.uleb128 0x71d
	.ascii "__glibcxx_max\0"
	.byte	0x2
	.uleb128 0x71e
	.ascii "__glibcxx_digits\0"
	.byte	0x2
	.uleb128 0x71f
	.ascii "__glibcxx_digits10\0"
	.byte	0x2
	.uleb128 0x720
	.ascii "__glibcxx_max_digits10\0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_OUTPUT_H_ \0"
	.file 75 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4b
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.file 76 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x4c
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF7:
	.ascii "MemoryManager\0"
.LASF5:
	.ascii "getDataPtr\0"
.LASF6:
	.ascii "getDataEnd\0"
.LASF1:
	.ascii "operator=\0"
.LASF4:
	.ascii "MemoryChunk\0"
.LASF12:
	.ascii "origin\0"
.LASF11:
	.ascii "this\0"
.LASF8:
	.ascii "allocate\0"
.LASF0:
	.ascii "exception_ptr\0"
.LASF9:
	.ascii "_on_exit_args\0"
.LASF2:
	.ascii "nothrow_t\0"
.LASF10:
	.ascii "operator<<\0"
.LASF3:
	.ascii "piecewise_construct_t\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZN11MemoryChunkC1Embmbm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk6setEndEb;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk5isEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk11isAllocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk9moveAheadEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk5splitEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk12setAllocatedEb;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk10getDataPtrEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk7getSizeEv;	.scl	2;	.type	32;	.endef
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk23getNextValidChunkOffsetEv;	.scl	2;	.type	32;	.endef
