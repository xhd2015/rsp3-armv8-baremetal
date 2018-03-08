	.file	"FATDirEntry.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl	_ZN11FATDirEntry6chksumEPc
	.def	_ZN11FATDirEntry6chksumEPc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry6chksumEPc
_ZN11FATDirEntry6chksumEPc:
.LFB119:
	.file 1 "../src/filesystem/fat/FATDirEntry.cpp"
	.loc 1 14 0
	.cfi_startproc
.LVL0:
	.seh_endprologue
.LVL1:
.LBB20:
	.loc 1 16 0
	movl	$11, %eax
.LVL2:
.L3:
	.loc 1 16 0 is_stmt 0 discriminator 2
	testq	%rax, %rax
	je	.L2
	.loc 1 16 0 discriminator 4
	subq	$1, %rax
.LVL3:
	jmp	.L3
.L2:
.LBE20:
	.loc 1 19 0 is_stmt 1
	movl	$0, %eax
.LVL4:
	ret
	.cfi_endproc
.LFE119:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.def	_ZNK11FATDirEntry19uni_isLongNameEntryEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry19uni_isLongNameEntryEv
_ZNK11FATDirEntry19uni_isLongNameEntryEv:
.LFB120:
	.loc 1 21 0
	.cfi_startproc
.LVL5:
	.seh_endprologue
	.loc 1 22 0
	movzbl	11(%rcx), %eax
	andl	$63, %eax
	cmpb	$15, %al
	sete	%al
	.loc 1 23 0
	ret
	.cfi_endproc
.LFE120:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry10isVolumeIDEv
	.def	_ZNK11FATDirEntry10isVolumeIDEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry10isVolumeIDEv
_ZNK11FATDirEntry10isVolumeIDEv:
.LFB121:
	.loc 1 25 0
	.cfi_startproc
.LVL6:
	.seh_endprologue
	.loc 1 26 0
	movzbl	11(%rcx), %eax
	andl	$63, %eax
	cmpb	$8, %al
	sete	%al
	.loc 1 27 0
	ret
	.cfi_endproc
.LFE121:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry17getFirstClusIndexEv
	.def	_ZNK11FATDirEntry17getFirstClusIndexEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry17getFirstClusIndexEv
_ZNK11FATDirEntry17getFirstClusIndexEv:
.LFB123:
	.loc 1 35 0
	.cfi_startproc
.LVL7:
	.seh_endprologue
	.loc 1 36 0
	movzwl	20(%rcx), %eax
	sall	$16, %eax
	movzwl	26(%rcx), %edx
	orl	%edx, %eax
	.loc 1 37 0
	ret
	.cfi_endproc
.LFE123:
	.seh_endproc
	.align 2
	.globl	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
	.def	_ZN11FATDirEntry17findFirstNonSpaceEPKcm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
_ZN11FATDirEntry17findFirstNonSpaceEPKcm:
.LFB131:
	.loc 1 88 0
	.cfi_startproc
.LVL8:
	.seh_endprologue
	movq	%rdx, %rax
.LVL9:
.LBB21:
	.loc 1 89 0
	movl	$0, %r8d
.LVL10:
.L9:
	.loc 1 89 0 is_stmt 0 discriminator 1
	cmpq	%rax, %r8
	je	.L8
	.loc 1 90 0 is_stmt 1
	cmpb	$32, (%rcx,%r8)
	jne	.L10
	.loc 1 89 0 discriminator 2
	addq	$1, %r8
.LVL11:
	jmp	.L9
.L10:
	.loc 1 91 0
	movq	%r8, %rax
.L8:
.LBE21:
	.loc 1 93 0
	rep ret
	.cfi_endproc
.LFE131:
	.seh_endproc
	.align 2
	.globl	_ZN11FATDirEntry16findLastNonSpaceEPKcm
	.def	_ZN11FATDirEntry16findLastNonSpaceEPKcm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry16findLastNonSpaceEPKcm
_ZN11FATDirEntry16findLastNonSpaceEPKcm:
.LFB132:
	.loc 1 95 0
	.cfi_startproc
.LVL12:
	.seh_endprologue
	movq	%rdx, %rax
.LVL13:
.LBB22:
	.loc 1 96 0
	movq	%rdx, %r8
.LVL14:
.L13:
	.loc 1 96 0 is_stmt 0 discriminator 1
	testq	%r8, %r8
	je	.L12
	.loc 1 97 0 is_stmt 1
	leaq	-1(%r8), %r9
	movzbl	-1(%rcx,%r8), %r10d
	.loc 1 96 0
	movq	%r9, %r8
.LVL15:
	.loc 1 97 0
	cmpb	$32, %r10b
	je	.L13
	.loc 1 98 0
	movq	%r9, %rax
.LVL16:
.L12:
.LBE22:
	.loc 1 100 0
	rep ret
	.cfi_endproc
.LFE132:
	.seh_endproc
	.section	.text$_ZN6VectorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcED2Ev
	.def	_ZN6VectorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcED2Ev
_ZN6VectorIcED2Ev:
.LFB134:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/data_structures/Vector.h"
	.loc 2 53 0
	.cfi_startproc
.LVL17:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
.LBB23:
	.loc 2 55 0
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L14
	.loc 2 57 0
	movq	.refptr.mman(%rip), %rcx
.LVL18:
	call	_ZN13MemoryManager10deallocateEPv
	nop
.LVL19:
.L14:
.LBE23:
	.loc 2 60 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE134:
	.seh_endproc
	.section	.text$_ZNK9VectorRefIcEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9VectorRefIcEixEm
	.def	_ZNK9VectorRefIcEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9VectorRefIcEixEm
_ZNK9VectorRefIcEixEm:
.LFB138:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/data_structures/VectorRef.h"
	.loc 3 47 0
	.cfi_startproc
.LVL20:
	.seh_endprologue
	.loc 3 49 0
	movq	%rdx, %rax
	addq	(%rcx), %rax
	.loc 3 50 0
	ret
	.cfi_endproc
.LFE138:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
	.def	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_:
.LFB130:
	.loc 1 71 0
	.cfi_startproc
.LVL21:
	pushq	%r13
	.seh_pushreg	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 40
	.cfi_offset 5, -40
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 48
	.cfi_offset 4, -48
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 96
	.seh_endprologue
	movq	%rcx, %r13
	movq	%rdx, %rbp
	movq	%r8, %r12
.LVL22:
	.loc 1 73 0
	movl	$0, %ebx
	.loc 1 72 0
	movl	$0, %esi
	jmp	.L23
.LVL23:
.L25:
.LBB24:
.LBB25:
	.loc 1 76 0
	movl	$0, %eax
.L19:
	.loc 1 76 0 is_stmt 0 discriminator 6
	testb	%al, %al
	je	.L20
	.loc 1 77 0 is_stmt 1
	movl	%eax, %esi
.LVL24:
.L20:
	.loc 1 78 0
	testb	%sil, %sil
	jne	.L28
	.loc 1 78 0 is_stmt 0 discriminator 2
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNK9VectorRefIcEixEm
.LVL25:
	movzbl	(%rax), %edi
.L21:
.LVL26:
	.loc 1 79 0 is_stmt 1 discriminator 4
	movq	%rbx, %rdx
	movq	%r13, %rcx
	call	_ZNK9VectorRefIcEixEm
.LVL27:
	cmpb	(%rax), %dil
	jne	.L29
.LBE25:
	.loc 1 74 0
	addq	$1, %rbx
.LVL28:
.L23:
	.loc 1 74 0 is_stmt 0 discriminator 1
	cmpq	%rbp, %rbx
	je	.L18
.LBB26:
	.loc 1 76 0 is_stmt 1
	testb	%sil, %sil
	jne	.L25
	.loc 1 76 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNK9VectorRefIcEixEm
.LVL29:
	cmpb	$0, (%rax)
	jne	.L26
	.loc 1 76 0
	movl	$1, %eax
	jmp	.L19
.L26:
	movl	%esi, %eax
	jmp	.L19
.L28:
	.loc 1 78 0 is_stmt 1
	movl	$32, %edi
	jmp	.L21
.L18:
.LBE26:
.LBE24:
	.loc 1 83 0
	testb	%sil, %sil
	jne	.L30
	.loc 1 83 0 is_stmt 0 discriminator 1
	movq	%rbx, %rdx
	movq	%r12, %rcx
	call	_ZNK9VectorRefIcEixEm
.LVL30:
	cmpb	$0, (%rax)
	je	.L24
	.loc 1 83 0
	movl	$1, %esi
.LVL31:
	jmp	.L24
.LVL32:
.L30:
	movl	$0, %esi
.LVL33:
.L24:
	.loc 1 83 0 discriminator 6
	testb	%sil, %sil
	jne	.L32
	.loc 1 85 0 is_stmt 1
	movl	$1, %eax
	jmp	.L17
.L32:
	.loc 1 84 0
	movl	$0, %eax
	jmp	.L17
.LVL34:
.L29:
.LBB28:
.LBB27:
	.loc 1 80 0
	movl	$0, %eax
.LVL35:
.L17:
.LBE27:
.LBE28:
	.loc 1 86 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
.LVL36:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 40
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 24
.LVL37:
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 16
.LVL38:
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 8
.LVL39:
	ret
	.cfi_endproc
.LFE130:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
	.def	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_
_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_:
.LFB122:
	.loc 1 31 0
	.cfi_startproc
.LVL40:
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 112
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movq	%r8, %rbp
	.loc 1 32 0
	leaq	32(%rsp), %rbx
	movq	%rcx, %rdx
.LVL41:
	movq	%rbx, %rcx
.LVL42:
	call	_ZN9StringRefC1EPKv
.LVL43:
	movq	%rdi, %r8
	movl	$8, %edx
	movq	%rbx, %rcx
	call	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
.LVL44:
	testb	%al, %al
	jne	.L37
.L34:
	.loc 1 33 0 discriminator 6
	addq	$72, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 24
.LVL45:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 16
.LVL46:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.LVL47:
	ret
.LVL48:
.L37:
	.cfi_restore_state
	.loc 1 32 0 discriminator 1
	leaq	8(%rsi), %rdx
	leaq	48(%rsp), %rbx
	movq	%rbx, %rcx
	call	_ZN9StringRefC1EPKv
.LVL49:
	movq	%rbp, %r8
	movl	$3, %edx
	movq	%rbx, %rcx
	call	_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_
.LVL50:
	jmp	.L34
	.cfi_endproc
.LFE122:
	.seh_endproc
	.section	.text$_ZNK6VectorIcE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcE7getSizeEv
	.def	_ZNK6VectorIcE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcE7getSizeEv
_ZNK6VectorIcE7getSizeEv:
.LFB139:
	.loc 2 103 0
	.cfi_startproc
.LVL51:
	.seh_endprologue
	.loc 2 105 0
	movq	16(%rcx), %rax
	.loc 2 106 0
	ret
	.cfi_endproc
.LFE139:
	.seh_endproc
	.section	.text$_ZNK6VectorIcEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcEixEm
	.def	_ZNK6VectorIcEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcEixEm
_ZNK6VectorIcEixEm:
.LFB140:
	.loc 2 63 0
	.cfi_startproc
.LVL52:
	.seh_endprologue
	.loc 2 65 0
	movq	%rdx, %rax
	addq	(%rcx), %rax
	.loc 2 66 0
	ret
	.cfi_endproc
.LFE140:
	.seh_endproc
	.section	.text$_ZN6VectorIcE18getIncrementalSizeEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE18getIncrementalSizeEm
	.def	_ZN6VectorIcE18getIncrementalSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE18getIncrementalSizeEm
_ZN6VectorIcE18getIncrementalSizeEm:
.LFB143:
	.loc 2 209 0
	.cfi_startproc
.LVL53:
	.seh_endprologue
	.loc 2 211 0
	leaq	(%rcx,%rcx,2), %rax
	shrq	%rax
	.loc 2 212 0
	ret
	.cfi_endproc
.LFE143:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPcEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPcEET_m
	.def	_ZN13MemoryManager10allocateAsIPcEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPcEET_m
_ZN13MemoryManager10allocateAsIPcEET_m:
.LFB144:
	.file 4 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/MemoryManager.h"
	.loc 4 15 0
	.cfi_startproc
.LVL54:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 4 17 0
	call	_ZN13MemoryManager8allocateEm
.LVL55:
	.loc 4 18 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE144:
	.seh_endproc
	.section	.text$_ZN6VectorIcE14resizeCapacityEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE14resizeCapacityEm
	.def	_ZN6VectorIcE14resizeCapacityEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE14resizeCapacityEm
_ZN6VectorIcE14resizeCapacityEm:
.LFB142:
	.loc 2 167 0
	.cfi_startproc
.LVL56:
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
	movq	%rcx, %rbx
	movq	%rdx, %rdi
	.loc 2 169 0
	cmpq	%rdx, 8(%rcx)
	je	.L46
	.loc 2 171 0
	movq	(%rcx), %rdx
.LVL57:
	movq	$-1, %r9
	movq	%rdi, %r8
	movq	.refptr.mman(%rip), %rcx
.LVL58:
	call	_ZN13MemoryManager10reallocateEPvmm
.LVL59:
	.loc 2 172 0
	movq	%rdi, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL60:
	movq	%rax, %rsi
.LVL61:
	.loc 2 173 0
	testq	%rax, %rax
	je	.L47
	movl	$0, %eax
.LVL62:
.L45:
.LBB29:
	.loc 2 176 0 discriminator 3
	cmpq	16(%rbx), %rax
	je	.L44
	.loc 2 177 0 discriminator 2
	movq	(%rbx), %rdx
	movzbl	(%rdx,%rax), %edx
	movb	%dl, (%rsi,%rax)
	.loc 2 176 0 discriminator 2
	addq	$1, %rax
.LVL63:
	jmp	.L45
.L44:
.LBE29:
	.loc 2 178 0
	movq	(%rbx), %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
.LVL64:
	.loc 2 181 0
	movq	%rsi, (%rbx)
	.loc 2 182 0
	movq	%rdi, 8(%rbx)
	.loc 2 183 0
	movl	$1, %eax
.LVL65:
.L42:
	.loc 2 184 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL66:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL67:
	ret
.LVL68:
.L46:
	.cfi_restore_state
	.loc 2 170 0
	movl	$1, %eax
	jmp	.L42
.LVL69:
.L47:
	.loc 2 174 0
	movl	$0, %eax
.LVL70:
	jmp	.L42
	.cfi_endproc
.LFE142:
	.seh_endproc
	.section	.text$_ZN6VectorIcE24adjustCapacityForOneMoreEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE24adjustCapacityForOneMoreEv
	.def	_ZN6VectorIcE24adjustCapacityForOneMoreEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE24adjustCapacityForOneMoreEv
_ZN6VectorIcE24adjustCapacityForOneMoreEv:
.LFB141:
	.loc 2 187 0
	.cfi_startproc
.LVL71:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 2 189 0
	movq	16(%rcx), %rax
	addq	$1, %rax
	movq	8(%rcx), %rcx
.LVL72:
	cmpq	%rcx, %rax
	ja	.L51
	.loc 2 191 0
	movl	$1, %eax
.L48:
	.loc 2 192 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL73:
	ret
.LVL74:
.L51:
	.cfi_restore_state
	.loc 2 190 0
	call	_ZN6VectorIcE18getIncrementalSizeEm
.LVL75:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN6VectorIcE14resizeCapacityEm
.LVL76:
	jmp	.L48
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
.LFB137:
	.loc 2 81 0
	.cfi_startproc
.LVL77:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 64
	.seh_endprologue
	movq	%rcx, %rbx
	movl	%edx, %esi
	.loc 2 83 0
	call	_ZN6VectorIcE24adjustCapacityForOneMoreEv
.LVL78:
	testb	%al, %al
	je	.L52
	.loc 2 85 0
	movq	16(%rbx), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, 16(%rbx)
	.loc 2 86 0
	addq	(%rbx), %rax
	movb	%sil, (%rax)
.L52:
	.loc 2 88 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL79:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE137:
	.seh_endproc
	.section	.text$_ZN6VectorIcE6appendERKS0_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcE6appendERKS0_m
	.def	_ZN6VectorIcE6appendERKS0_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcE6appendERKS0_m
_ZN6VectorIcE6appendERKS0_m:
.LFB136:
	.loc 2 138 0
	.cfi_startproc
.LVL80:
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
	movq	%rdx, %rsi
.LVL81:
.LBB30:
	.loc 2 141 0
	movl	$0, %ebx
.LVL82:
.L56:
	.loc 2 141 0 is_stmt 0 discriminator 3
	movq	%rsi, %rcx
	call	_ZNK6VectorIcE7getSizeEv
.LVL83:
	cmpq	%rax, %rbx
	je	.L55
	.loc 2 142 0 is_stmt 1 discriminator 2
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNK6VectorIcEixEm
.LVL84:
	movsbl	(%rax), %edx
	movq	%rdi, %rcx
	call	_ZN6VectorIcE8pushBackEc
.LVL85:
	.loc 2 141 0 discriminator 2
	addq	$1, %rbx
.LVL86:
	jmp	.L56
.L55:
.LBE30:
	.loc 2 144 0
	movq	%rdi, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL87:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL88:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL89:
	ret
	.cfi_endproc
.LFE136:
	.seh_endproc
	.text
	.align 2
	.globl	_ZNK11FATDirEntry11getLongNameEv
	.def	_ZNK11FATDirEntry11getLongNameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry11getLongNameEv
_ZNK11FATDirEntry11getLongNameEv:
.LFB124:
	.loc 1 39 0
	.cfi_startproc
.LVL90:
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$136, %rsp
	.seh_stackalloc	136
	.cfi_def_cfa_offset 176
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rbx
	.loc 1 40 0
	leaq	32(%rsp), %rcx
.LVL91:
	movl	$0, %edx
.LVL92:
	call	_ZN6StringC1Em
.LVL93:
	.loc 1 41 0
	leaq	-32(%rbx), %rsi
.LVL94:
.LBB31:
	.loc 1 42 0
	movq	%rsi, %rcx
	call	_ZNK11FATDirEntry19uni_isLongNameEntryEv
.LVL95:
	testb	%al, %al
	jne	.L60
.LVL96:
.L58:
.LBE31:
	.loc 1 53 0
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN6StringC1EOS_
.LVL97:
.LBB37:
.LBB38:
	.file 5 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/String.h"
	.loc 5 14 0
	movq	%rbx, %rcx
	call	_ZN6VectorIcED2Ev
.LVL98:
.LBE38:
.LBE37:
	.loc 1 54 0
	movq	%rdi, %rax
	addq	$136, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 24
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 16
.LVL99:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
.LVL100:
.L60:
	.cfi_restore_state
.LBB39:
.LBB32:
	.loc 1 45 0
	leaq	64(%rsp), %rbp
	movl	$1, %r8d
	movq	%rsi, %rdx
	movq	%rbp, %rcx
	call	_ZNK16FATLongNameEntry14getAsAsciiNameEb
.LVL101:
	leaq	32(%rsp), %rcx
	movq	$-1, %r8
	movq	%rbp, %rdx
	call	_ZN6VectorIcE6appendERKS0_m
.LVL102:
.LBB33:
.LBB34:
	.loc 5 14 0
	movq	%rbp, %rcx
	call	_ZN6VectorIcED2Ev
.LVL103:
.LBE34:
.LBE33:
	.loc 1 46 0
	subq	$64, %rbx
.LVL104:
.L59:
	.loc 1 47 0
	movq	%rbx, %rcx
	call	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv
.LVL105:
	testb	%al, %al
	je	.L58
	.loc 1 49 0
	leaq	96(%rsp), %rsi
	movl	$0, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZNK16FATLongNameEntry14getAsAsciiNameEb
.LVL106:
	leaq	32(%rsp), %rcx
	movq	$-1, %r8
	movq	%rsi, %rdx
	call	_ZN6VectorIcE6appendERKS0_m
.LVL107:
.LBB35:
.LBB36:
	.loc 5 14 0
	movq	%rsi, %rcx
	call	_ZN6VectorIcED2Ev
.LVL108:
.LBE36:
.LBE35:
	.loc 1 50 0
	subq	$32, %rbx
.LVL109:
	.loc 1 47 0
	jmp	.L59
.LBE32:
.LBE39:
	.cfi_endproc
.LFE124:
	.seh_endproc
	.align 2
	.globl	_ZNK11FATDirEntry12getShortNameEv
	.def	_ZNK11FATDirEntry12getShortNameEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK11FATDirEntry12getShortNameEv
_ZNK11FATDirEntry12getShortNameEv:
.LFB129:
	.loc 1 56 0
	.cfi_startproc
.LVL110:
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 24
	.cfi_offset 5, -24
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 32
	.cfi_offset 4, -32
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 112
	.seh_endprologue
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	.loc 1 57 0
	leaq	32(%rsp), %rcx
.LVL111:
	movl	$0, %edx
.LVL112:
	call	_ZN6StringC1Em
.LVL113:
	.loc 1 58 0
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
.LVL114:
	movq	%rax, %rbx
.LVL115:
	.loc 1 59 0
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZN11FATDirEntry16findLastNonSpaceEPKcm
.LVL116:
	movq	%rax, %rbp
.LVL117:
.L63:
	.loc 1 60 0 discriminator 2
	cmpq	%rbp, %rbx
	ja	.L62
	.loc 1 61 0 discriminator 1
	movsbl	(%rsi,%rbx), %edx
	leaq	32(%rsp), %rcx
	call	_ZN6VectorIcE8pushBackEc
.LVL118:
	.loc 1 60 0 discriminator 1
	addq	$1, %rbx
.LVL119:
	jmp	.L63
.L62:
	.loc 1 62 0
	leaq	32(%rsp), %rcx
	movl	$46, %edx
	call	_ZN6VectorIcE8pushBackEc
.LVL120:
	.loc 1 63 0
	leaq	8(%rsi), %rbp
.LVL121:
	movl	$3, %edx
	movq	%rbp, %rcx
	call	_ZN11FATDirEntry17findFirstNonSpaceEPKcm
.LVL122:
	leaq	8(%rax), %rbx
.LVL123:
	.loc 1 64 0
	movl	$3, %edx
	movq	%rbp, %rcx
	call	_ZN11FATDirEntry16findLastNonSpaceEPKcm
.LVL124:
	leaq	8(%rax), %rbp
.LVL125:
.L65:
	.loc 1 65 0 discriminator 2
	cmpq	%rbp, %rbx
	ja	.L64
	.loc 1 66 0 discriminator 1
	movsbl	(%rsi,%rbx), %edx
	leaq	32(%rsp), %rcx
	call	_ZN6VectorIcE8pushBackEc
.LVL126:
	.loc 1 65 0 discriminator 1
	addq	$1, %rbx
.LVL127:
	jmp	.L65
.L64:
	.loc 1 67 0
	leaq	32(%rsp), %rbx
.LVL128:
	movq	%rbx, %rdx
	movq	%rdi, %rcx
	call	_ZN6StringC1EOS_
.LVL129:
.LBB40:
.LBB41:
	.loc 5 14 0
	movq	%rbx, %rcx
	call	_ZN6VectorIcED2Ev
.LVL130:
.LBE41:
.LBE40:
	.loc 1 68 0
	movq	%rdi, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 32
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 24
.LVL131:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 16
.LVL132:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.LVL133:
	ret
	.cfi_endproc
.LFE129:
	.seh_endproc
.Letext0:
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/type_traits"
	.file 10 "/usr/include/machine/_default_types.h"
	.file 11 "/usr/include/sys/_stdint.h"
	.file 12 "/usr/include/stdint.h"
	.file 13 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_pair.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/printk.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryChunk.h"
	.file 18 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryManager.h"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/Vector.h"
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/VectorRef.h"
	.file 21 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/StringRef.h"
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/filesystem/fat/FATDirEntry.h"
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/move.h"
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/filesystem/fat/FATLongNameEntry.h"
	.file 25 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x34fc
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti -fsigned-char -fPIC\0"
	.byte	0x4
	.ascii "../src/filesystem/fat/FATDirEntry.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/chap003/Debug-host\0"
	.secrel32	.Ldebug_ranges0+0x40
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x6
	.byte	0xd8
	.long	0x14a
	.uleb128 0x4
	.long	0x137
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x6
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1a7
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x6
	.word	0x1ab
	.long	0x1a7
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x6
	.word	0x1ac
	.long	0x1b8
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
	.byte	0x6
	.word	0x1ad
	.long	0x15f
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x19
	.byte	0
	.long	0x3e8
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x1c7
	.uleb128 0xa
	.byte	0x8
	.byte	0x30
	.long	0x5d5
	.uleb128 0xa
	.byte	0x8
	.byte	0x31
	.long	0x5f2
	.uleb128 0xa
	.byte	0x8
	.byte	0x32
	.long	0x611
	.uleb128 0xa
	.byte	0x8
	.byte	0x33
	.long	0x630
	.uleb128 0xa
	.byte	0x8
	.byte	0x35
	.long	0x73b
	.uleb128 0xa
	.byte	0x8
	.byte	0x36
	.long	0x762
	.uleb128 0xa
	.byte	0x8
	.byte	0x37
	.long	0x78b
	.uleb128 0xa
	.byte	0x8
	.byte	0x38
	.long	0x7b4
	.uleb128 0xa
	.byte	0x8
	.byte	0x3a
	.long	0x691
	.uleb128 0xa
	.byte	0x8
	.byte	0x3b
	.long	0x6ba
	.uleb128 0xa
	.byte	0x8
	.byte	0x3c
	.long	0x6e5
	.uleb128 0xa
	.byte	0x8
	.byte	0x3d
	.long	0x710
	.uleb128 0xa
	.byte	0x8
	.byte	0x3f
	.long	0x64f
	.uleb128 0xa
	.byte	0x8
	.byte	0x40
	.long	0x670
	.uleb128 0xa
	.byte	0x8
	.byte	0x42
	.long	0x5e3
	.uleb128 0xa
	.byte	0x8
	.byte	0x43
	.long	0x601
	.uleb128 0xa
	.byte	0x8
	.byte	0x44
	.long	0x620
	.uleb128 0xa
	.byte	0x8
	.byte	0x45
	.long	0x63f
	.uleb128 0xa
	.byte	0x8
	.byte	0x47
	.long	0x74e
	.uleb128 0xa
	.byte	0x8
	.byte	0x48
	.long	0x776
	.uleb128 0xa
	.byte	0x8
	.byte	0x49
	.long	0x79f
	.uleb128 0xa
	.byte	0x8
	.byte	0x4a
	.long	0x7c8
	.uleb128 0xa
	.byte	0x8
	.byte	0x4c
	.long	0x6a5
	.uleb128 0xa
	.byte	0x8
	.byte	0x4d
	.long	0x6cf
	.uleb128 0xa
	.byte	0x8
	.byte	0x4e
	.long	0x6fa
	.uleb128 0xa
	.byte	0x8
	.byte	0x4f
	.long	0x725
	.uleb128 0xa
	.byte	0x8
	.byte	0x51
	.long	0x65f
	.uleb128 0xa
	.byte	0x8
	.byte	0x52
	.long	0x680
	.uleb128 0xb
	.ascii "initializer_list<char>\0"
	.uleb128 0x4
	.long	0x2c4
	.uleb128 0xc
	.ascii "__swappable_details\0"
	.byte	0x9
	.word	0xa37
	.uleb128 0xd
	.secrel32	.LASF0
	.byte	0x1
	.byte	0xd
	.byte	0x4c
	.long	0x338
	.uleb128 0xe
	.secrel32	.LASF0
	.byte	0xd
	.byte	0x4c
	.ascii "_ZNSt21piecewise_construct_tC4Ev\0"
	.long	0x331
	.uleb128 0xf
	.long	0x29af
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x2f9
	.uleb128 0x10
	.ascii "piecewise_construct\0"
	.byte	0xd
	.byte	0x4f
	.long	0x338
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.ascii "remove_reference<String&>\0"
	.byte	0x1
	.byte	0x9
	.word	0x66e
	.long	0x38b
	.uleb128 0x7
	.ascii "type\0"
	.byte	0x9
	.word	0x66f
	.long	0x1b98
	.byte	0
	.uleb128 0x12
	.ascii "move<String&>\0"
	.byte	0x17
	.byte	0x65
	.ascii "_ZSt4moveIR6StringEONSt16remove_referenceIT_E4typeEOS3_\0"
	.long	0x32d4
	.uleb128 0x13
	.ascii "_Tp\0"
	.long	0x1ce1
	.uleb128 0x14
	.long	0x1ce1
	.byte	0
	.byte	0
	.uleb128 0x3
	.ascii "__int8_t\0"
	.byte	0xa
	.byte	0x29
	.long	0x3f8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "__uint8_t\0"
	.byte	0xa
	.byte	0x2b
	.long	0x418
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "__int16_t\0"
	.byte	0xa
	.byte	0x37
	.long	0x43a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "__uint16_t\0"
	.byte	0xa
	.byte	0x39
	.long	0x459
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "__int32_t\0"
	.byte	0xa
	.byte	0x4d
	.long	0x480
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x480
	.uleb128 0x3
	.ascii "__uint32_t\0"
	.byte	0xa
	.byte	0x4f
	.long	0x49e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "__int64_t\0"
	.byte	0xa
	.byte	0x67
	.long	0x12b
	.uleb128 0x3
	.ascii "__uint64_t\0"
	.byte	0xa
	.byte	0x69
	.long	0x14a
	.uleb128 0x3
	.ascii "__int_least8_t\0"
	.byte	0xa
	.byte	0x86
	.long	0x3f8
	.uleb128 0x3
	.ascii "__uint_least8_t\0"
	.byte	0xa
	.byte	0x88
	.long	0x418
	.uleb128 0x3
	.ascii "__int_least16_t\0"
	.byte	0xa
	.byte	0xa0
	.long	0x43a
	.uleb128 0x3
	.ascii "__uint_least16_t\0"
	.byte	0xa
	.byte	0xa2
	.long	0x459
	.uleb128 0x3
	.ascii "__int_least32_t\0"
	.byte	0xa
	.byte	0xb6
	.long	0x480
	.uleb128 0x3
	.ascii "__uint_least32_t\0"
	.byte	0xa
	.byte	0xb8
	.long	0x49e
	.uleb128 0x3
	.ascii "__int_least64_t\0"
	.byte	0xa
	.byte	0xc8
	.long	0x12b
	.uleb128 0x3
	.ascii "__uint_least64_t\0"
	.byte	0xa
	.byte	0xca
	.long	0x14a
	.uleb128 0x3
	.ascii "__intmax_t\0"
	.byte	0xa
	.byte	0xd6
	.long	0x12b
	.uleb128 0x3
	.ascii "__uintmax_t\0"
	.byte	0xa
	.byte	0xde
	.long	0x14a
	.uleb128 0x3
	.ascii "__intptr_t\0"
	.byte	0xa
	.byte	0xe6
	.long	0x12b
	.uleb128 0x3
	.ascii "__uintptr_t\0"
	.byte	0xa
	.byte	0xe8
	.long	0x14a
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0xb
	.byte	0x14
	.long	0x3e8
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0xb
	.byte	0x18
	.long	0x407
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0xb
	.byte	0x20
	.long	0x429
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0xb
	.byte	0x24
	.long	0x447
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0xb
	.byte	0x2c
	.long	0x46f
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0xb
	.byte	0x30
	.long	0x48c
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0xb
	.byte	0x38
	.long	0x4ae
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0xb
	.byte	0x3c
	.long	0x4bf
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0xb
	.byte	0x43
	.long	0x58b
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0xb
	.byte	0x48
	.long	0x59d
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0xb
	.byte	0x4d
	.long	0x5b0
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0xb
	.byte	0x52
	.long	0x5c2
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0xc
	.byte	0x15
	.long	0x4d1
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0xc
	.byte	0x16
	.long	0x4e7
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0xc
	.byte	0x1b
	.long	0x4fe
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0xc
	.byte	0x1c
	.long	0x515
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0xc
	.byte	0x21
	.long	0x52d
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0xc
	.byte	0x22
	.long	0x544
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0xc
	.byte	0x27
	.long	0x55c
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0xc
	.byte	0x28
	.long	0x573
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0xc
	.byte	0x33
	.long	0x3f8
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0xc
	.byte	0x34
	.long	0x418
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0xc
	.byte	0x3d
	.long	0x12b
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0xc
	.byte	0x3e
	.long	0x14a
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0xc
	.byte	0x47
	.long	0x12b
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0xc
	.byte	0x48
	.long	0x14a
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0xc
	.byte	0x51
	.long	0x12b
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0xc
	.byte	0x52
	.long	0x14a
	.uleb128 0x15
	.long	0x806
	.long	0x7ed
	.uleb128 0x16
	.long	0x7f2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x7dd
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x7fe
	.uleb128 0x17
	.ascii "EMPTY_STR\0"
	.byte	0xe
	.byte	0x1c
	.long	0x7ed
	.uleb128 0x18
	.ascii "koutBufSize\0"
	.byte	0xe
	.byte	0x1f
	.long	0x145
	.byte	0x41
	.uleb128 0x15
	.long	0x7fe
	.long	0x840
	.uleb128 0x16
	.long	0x7f2
	.byte	0x40
	.byte	0
	.uleb128 0x17
	.ascii "koutBuf\0"
	.byte	0xe
	.byte	0x20
	.long	0x830
	.uleb128 0x19
	.ascii "UNIT_K\0"
	.byte	0xe
	.byte	0x22
	.long	0x487
	.word	0x400
	.uleb128 0x19
	.ascii "KiB\0"
	.byte	0xe
	.byte	0x23
	.long	0x487
	.word	0x400
	.uleb128 0x1a
	.ascii "MiB\0"
	.byte	0xe
	.byte	0x24
	.long	0x487
	.long	0x100000
	.uleb128 0x1a
	.ascii "GiB\0"
	.byte	0xe
	.byte	0x25
	.long	0x487
	.long	0x40000000
	.uleb128 0x1b
	.ascii "Output\0"
	.byte	0x1
	.byte	0xf
	.byte	0x14
	.long	0xad7
	.uleb128 0x1c
	.ascii "print\0"
	.byte	0xf
	.byte	0x16
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x137
	.byte	0x1
	.long	0x8c5
	.long	0x8d5
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "print\0"
	.byte	0xf
	.byte	0x17
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x137
	.byte	0x1
	.long	0x900
	.long	0x90b
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0xadd
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x18
	.ascii "_ZN6OutputlsEc\0"
	.long	0xae3
	.byte	0x1
	.long	0x92e
	.long	0x939
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x7fe
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1a
	.ascii "_ZN6OutputlsEh\0"
	.long	0xae3
	.byte	0x1
	.long	0x95c
	.long	0x967
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x5e3
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1b
	.ascii "_ZN6OutputlsEt\0"
	.long	0xae3
	.byte	0x1
	.long	0x98a
	.long	0x995
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x601
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN6OutputlsEj\0"
	.long	0xae3
	.byte	0x1
	.long	0x9b8
	.long	0x9c3
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x620
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1d
	.ascii "_ZN6OutputlsEs\0"
	.long	0xae3
	.byte	0x1
	.long	0x9e6
	.long	0x9f1
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x43a
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1e
	.ascii "_ZN6OutputlsEi\0"
	.long	0xae3
	.byte	0x1
	.long	0xa14
	.long	0xa1f
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x480
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x1f
	.ascii "_ZN6OutputlsEd\0"
	.long	0xae3
	.byte	0x1
	.long	0xa42
	.long	0xa4d
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0xae9
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x20
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0xae3
	.byte	0x1
	.long	0xa72
	.long	0xa7d
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0xadd
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x21
	.ascii "_ZN6OutputlsEm\0"
	.long	0xae3
	.byte	0x1
	.long	0xaa0
	.long	0xaab
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1e
	.secrel32	.LASF1
	.byte	0xf
	.byte	0x22
	.ascii "_ZN6OutputlsEPv\0"
	.long	0xae3
	.byte	0x1
	.long	0xacb
	.uleb128 0xf
	.long	0xad7
	.uleb128 0x14
	.long	0xaf3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.long	0x88a
	.uleb128 0x1f
	.byte	0x8
	.long	0x806
	.uleb128 0x20
	.byte	0x8
	.long	0x88a
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x21
	.byte	0x8
	.uleb128 0x17
	.ascii "kout\0"
	.byte	0xf
	.byte	0x27
	.long	0x88a
	.uleb128 0x1f
	.byte	0x8
	.long	0xb07
	.uleb128 0x22
	.uleb128 0x15
	.long	0x806
	.long	0xb13
	.uleb128 0x23
	.byte	0
	.uleb128 0x17
	.ascii "digitsMap\0"
	.byte	0x10
	.byte	0x16
	.long	0xb08
	.uleb128 0x24
	.secrel32	.LASF2
	.byte	0x8
	.byte	0x11
	.byte	0x16
	.long	0x117a
	.uleb128 0x25
	.ascii "nextValidChunkOffset\0"
	.byte	0x11
	.byte	0x43
	.long	0x63f
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x25
	.ascii "endMark\0"
	.byte	0x11
	.byte	0x44
	.long	0x63f
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x25
	.ascii "allocated\0"
	.byte	0x11
	.byte	0x45
	.long	0x63f
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.ascii "size\0"
	.byte	0x11
	.byte	0x46
	.long	0x63f
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x25
	.ascii "nextBaseFromEnd\0"
	.byte	0x11
	.byte	0x47
	.long	0x63f
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF2
	.byte	0x11
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Ev\0"
	.byte	0x1
	.long	0xbc8
	.long	0xbce
	.uleb128 0xf
	.long	0x117f
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF2
	.byte	0x11
	.byte	0x1c
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xbf7
	.long	0xc16
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x1185
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x1185
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "isAllocated\0"
	.byte	0x11
	.byte	0x1d
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x1185
	.byte	0x1
	.long	0xc53
	.long	0xc59
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x27
	.ascii "setAllocated\0"
	.byte	0x11
	.byte	0x1e
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xc93
	.long	0xc9e
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x1c
	.ascii "isEnd\0"
	.byte	0x11
	.byte	0x1f
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x1185
	.byte	0x1
	.long	0xcce
	.long	0xcd4
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x27
	.ascii "setEnd\0"
	.byte	0x11
	.byte	0x20
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xd01
	.long	0xd0c
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x1c
	.ascii "getNext\0"
	.byte	0x11
	.byte	0x21
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x118d
	.byte	0x1
	.long	0xd40
	.long	0xd46
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x1c
	.ascii "getNext\0"
	.byte	0x11
	.byte	0x22
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x117f
	.byte	0x1
	.long	0xd79
	.long	0xd7f
	.uleb128 0xf
	.long	0x117f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF3
	.byte	0x11
	.byte	0x23
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x137
	.byte	0x1
	.long	0xdaf
	.long	0xdb5
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x27
	.ascii "setSize\0"
	.byte	0x11
	.byte	0x24
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xde4
	.long	0xdef
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF4
	.byte	0x11
	.byte	0x25
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0xaf3
	.byte	0x1
	.long	0xe22
	.long	0xe28
	.uleb128 0xf
	.long	0x117f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF4
	.byte	0x11
	.byte	0x26
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0xb01
	.byte	0x1
	.long	0xe5c
	.long	0xe62
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF5
	.byte	0x11
	.byte	0x27
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0xaf3
	.byte	0x1
	.long	0xe95
	.long	0xe9b
	.uleb128 0xf
	.long	0x117f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF5
	.byte	0x11
	.byte	0x28
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0xb01
	.byte	0x1
	.long	0xecf
	.long	0xed5
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x1c
	.ascii "getNextBaseFromEnd\0"
	.byte	0x11
	.byte	0x29
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x63f
	.byte	0x1
	.long	0xf20
	.long	0xf26
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x27
	.ascii "setNextBaseFromEnd\0"
	.byte	0x11
	.byte	0x2a
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xf6c
	.long	0xf77
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x63f
	.byte	0
	.uleb128 0x1c
	.ascii "getNextValidChunkOffset\0"
	.byte	0x11
	.byte	0x2b
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x63f
	.byte	0x1
	.long	0xfcc
	.long	0xfd2
	.uleb128 0xf
	.long	0x118d
	.byte	0
	.uleb128 0x27
	.ascii "setNextValidChunkOffset\0"
	.byte	0x11
	.byte	0x2c
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x1022
	.long	0x102d
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x63f
	.byte	0
	.uleb128 0x1c
	.ascii "moveAhead\0"
	.byte	0x11
	.byte	0x37
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x117f
	.byte	0x1
	.long	0x1064
	.long	0x106f
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0x11
	.byte	0x39
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x137
	.byte	0x1
	.long	0x10d9
	.long	0x10e9
	.uleb128 0xf
	.long	0x118d
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "split\0"
	.byte	0x11
	.byte	0x3b
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x1185
	.byte	0x1
	.long	0x1118
	.long	0x1123
	.uleb128 0xf
	.long	0x117f
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x28
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0x11
	.byte	0x3f
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x1173
	.uleb128 0xf
	.long	0x117f
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xb24
	.uleb128 0x1f
	.byte	0x8
	.long	0xb24
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x1f
	.byte	0x8
	.long	0x117a
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0x18
	.byte	0x12
	.byte	0x19
	.long	0x14f7
	.uleb128 0x29
	.ascii "headChunk\0"
	.byte	0x12
	.byte	0x54
	.long	0x117f
	.byte	0
	.uleb128 0x29
	.ascii "base\0"
	.byte	0x12
	.byte	0x55
	.long	0xadd
	.byte	0x8
	.uleb128 0x29
	.ascii "size\0"
	.byte	0x12
	.byte	0x56
	.long	0x145
	.byte	0x10
	.uleb128 0x2a
	.secrel32	.LASF6
	.byte	0x12
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x11f2
	.long	0x11f8
	.uleb128 0xf
	.long	0x14fc
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF6
	.byte	0x12
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x1222
	.long	0x1237
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0xaf3
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x1c
	.ascii "normalizeAllocSize\0"
	.byte	0x12
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x137
	.byte	0x1
	.long	0x1283
	.long	0x128e
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF7
	.byte	0x12
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0xaf3
	.byte	0x1
	.long	0x12c0
	.long	0x12cb
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF7
	.byte	0x12
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0xaf3
	.byte	0x1
	.long	0x12fe
	.long	0x130e
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "tryIncrease\0"
	.byte	0x12
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0x1185
	.byte	0x1
	.long	0x134e
	.long	0x135e
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0xaf3
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "tryDecrease\0"
	.byte	0x12
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0x1185
	.byte	0x1
	.long	0x139e
	.long	0x13ae
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0xaf3
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "reallocate\0"
	.byte	0x12
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0xaf3
	.byte	0x1
	.long	0x13ed
	.long	0x1402
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0xaf3
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x27
	.ascii "deallocate\0"
	.byte	0x12
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x143b
	.long	0x1446
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0xaf3
	.byte	0
	.uleb128 0x1c
	.ascii "getAllocatedLength\0"
	.byte	0x12
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x137
	.byte	0x1
	.long	0x1494
	.long	0x149f
	.uleb128 0xf
	.long	0x1507
	.uleb128 0x14
	.long	0xaf3
	.byte	0
	.uleb128 0x2b
	.ascii "allocateAs<char*>\0"
	.byte	0x4
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPcEET_m\0"
	.long	0x1b53
	.byte	0x1
	.long	0x14eb
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b53
	.uleb128 0xf
	.long	0x14fc
	.uleb128 0x14
	.long	0x137
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1193
	.uleb128 0x1f
	.byte	0x8
	.long	0x1193
	.uleb128 0x4
	.long	0x14fc
	.uleb128 0x1f
	.byte	0x8
	.long	0x14f7
	.uleb128 0x17
	.ascii "mman\0"
	.byte	0x12
	.byte	0x5a
	.long	0x1193
	.uleb128 0x1b
	.ascii "Vector<char>\0"
	.byte	0x18
	.byte	0x13
	.byte	0x13
	.long	0x1b4e
	.uleb128 0x29
	.ascii "data\0"
	.byte	0x13
	.byte	0x45
	.long	0x1b53
	.byte	0
	.uleb128 0x2c
	.secrel32	.LASF8
	.byte	0x13
	.byte	0x46
	.long	0x137
	.byte	0x8
	.uleb128 0x29
	.ascii "size\0"
	.byte	0x13
	.byte	0x47
	.long	0x137
	.byte	0x10
	.uleb128 0x26
	.secrel32	.LASF9
	.byte	0x2
	.byte	0xf
	.ascii "_ZN6VectorIcEC4Em\0"
	.byte	0x1
	.long	0x1576
	.long	0x1581
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x18
	.ascii "_ZN6VectorIcEC4ERKSt16initializer_listIcE\0"
	.byte	0x1
	.long	0x15bb
	.long	0x15c6
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b64
	.byte	0
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x13
	.byte	0x1b
	.ascii "_ZN6VectorIcEaSERKSt16initializer_listIcE\0"
	.long	0x1b6a
	.byte	0x1
	.long	0x1604
	.long	0x160f
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b64
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF9
	.byte	0x13
	.byte	0x1c
	.ascii "_ZN6VectorIcEC4ERKS0_\0"
	.byte	0x1
	.long	0x1635
	.long	0x1640
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b70
	.byte	0
	.uleb128 0x2d
	.secrel32	.LASF10
	.byte	0x13
	.byte	0x1d
	.ascii "_ZN6VectorIcEaSERKS0_\0"
	.long	0x1b6a
	.byte	0x1
	.long	0x166a
	.long	0x1675
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b70
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x20
	.ascii "_ZN6VectorIcEC4EOS0_\0"
	.byte	0x1
	.long	0x169a
	.long	0x16a5
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b7b
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x29
	.ascii "_ZN6VectorIcEaSEOS0_\0"
	.long	0x1b6a
	.byte	0x1
	.long	0x16ce
	.long	0x16d9
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b7b
	.byte	0
	.uleb128 0x27
	.ascii "~Vector\0"
	.byte	0x2
	.byte	0x35
	.ascii "_ZN6VectorIcED4Ev\0"
	.byte	0x1
	.long	0x16ff
	.long	0x170a
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0xf
	.long	0x480
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF11
	.byte	0x2
	.byte	0x3f
	.ascii "_ZNK6VectorIcEixEm\0"
	.long	0x1b81
	.byte	0x1
	.long	0x1731
	.long	0x173c
	.uleb128 0xf
	.long	0x1b87
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF11
	.byte	0x2
	.byte	0x44
	.ascii "_ZN6VectorIcEixEm\0"
	.long	0x1b92
	.byte	0x1
	.long	0x1762
	.long	0x176d
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "popBack\0"
	.byte	0x2
	.byte	0x49
	.ascii "_ZN6VectorIcE7popBackEv\0"
	.long	0x7fe
	.byte	0x1
	.long	0x179d
	.long	0x17a3
	.uleb128 0xf
	.long	0x1b59
	.byte	0
	.uleb128 0x27
	.ascii "pushBack\0"
	.byte	0x2
	.byte	0x51
	.ascii "_ZN6VectorIcE8pushBackEc\0"
	.byte	0x1
	.long	0x17d1
	.long	0x17dc
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x7fe
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x5b
	.ascii "_ZN6VectorIcE7getDataEv\0"
	.long	0x1b53
	.byte	0x1
	.long	0x1808
	.long	0x180e
	.uleb128 0xf
	.long	0x1b59
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x61
	.ascii "_ZNK6VectorIcE7getDataEv\0"
	.long	0xadd
	.byte	0x1
	.long	0x183b
	.long	0x1841
	.uleb128 0xf
	.long	0x1b87
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF3
	.byte	0x2
	.byte	0x67
	.ascii "_ZNK6VectorIcE7getSizeEv\0"
	.long	0x137
	.byte	0x1
	.long	0x186e
	.long	0x1874
	.uleb128 0xf
	.long	0x1b87
	.byte	0
	.uleb128 0x1c
	.ascii "getCapacity\0"
	.byte	0x2
	.byte	0x6d
	.ascii "_ZNK6VectorIcE11getCapacityEv\0"
	.long	0x137
	.byte	0x1
	.long	0x18ae
	.long	0x18b4
	.uleb128 0xf
	.long	0x1b87
	.byte	0
	.uleb128 0x1c
	.ascii "empty\0"
	.byte	0x2
	.byte	0x73
	.ascii "_ZNK6VectorIcE5emptyEv\0"
	.long	0x1185
	.byte	0x1
	.long	0x18e1
	.long	0x18e7
	.uleb128 0xf
	.long	0x1b87
	.byte	0
	.uleb128 0x27
	.ascii "clear\0"
	.byte	0x2
	.byte	0x79
	.ascii "_ZN6VectorIcE5clearEv\0"
	.byte	0x1
	.long	0x190f
	.long	0x1915
	.uleb128 0xf
	.long	0x1b59
	.byte	0
	.uleb128 0x27
	.ascii "erase\0"
	.byte	0x2
	.byte	0x7f
	.ascii "_ZN6VectorIcE5eraseEm\0"
	.byte	0x1
	.long	0x193d
	.long	0x1948
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "append\0"
	.byte	0x2
	.byte	0x8a
	.ascii "_ZN6VectorIcE6appendERKS0_m\0"
	.long	0x1b6a
	.byte	0x1
	.long	0x197b
	.long	0x198b
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x1b70
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1c
	.ascii "insert\0"
	.byte	0x2
	.byte	0x92
	.ascii "_ZN6VectorIcE6insertEmRKc\0"
	.long	0x137
	.byte	0x1
	.long	0x19bc
	.long	0x19cc
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x1b81
	.byte	0
	.uleb128 0x1c
	.ascii "resize\0"
	.byte	0x2
	.byte	0x9e
	.ascii "_ZN6VectorIcE6resizeEm\0"
	.long	0x1185
	.byte	0x1
	.long	0x19fa
	.long	0x1a05
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x2e
	.ascii "resizeCapacity\0"
	.byte	0x2
	.byte	0xa7
	.ascii "_ZN6VectorIcE14resizeCapacityEm\0"
	.long	0x1185
	.long	0x1a43
	.long	0x1a4e
	.uleb128 0xf
	.long	0x1b59
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x2e
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x2
	.byte	0xbb
	.ascii "_ZN6VectorIcE24adjustCapacityForOneMoreEv\0"
	.long	0x1185
	.long	0x1aa0
	.long	0x1aa6
	.uleb128 0xf
	.long	0x1b59
	.byte	0
	.uleb128 0x2e
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x2
	.byte	0xc3
	.ascii "_ZN6VectorIcE24adjustCapacityForOneLessEv\0"
	.long	0x1185
	.long	0x1af8
	.long	0x1afe
	.uleb128 0xf
	.long	0x1b59
	.byte	0
	.uleb128 0x2f
	.ascii "getIncrementalSize\0"
	.byte	0x2
	.byte	0xd1
	.ascii "_ZN6VectorIcE18getIncrementalSizeEm\0"
	.long	0x137
	.long	0x1b46
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x7fe
	.byte	0
	.uleb128 0x4
	.long	0x1519
	.uleb128 0x1f
	.byte	0x8
	.long	0x7fe
	.uleb128 0x1f
	.byte	0x8
	.long	0x1519
	.uleb128 0x4
	.long	0x1b59
	.uleb128 0x20
	.byte	0x8
	.long	0x2dc
	.uleb128 0x20
	.byte	0x8
	.long	0x1519
	.uleb128 0x20
	.byte	0x8
	.long	0x1b4e
	.uleb128 0x4
	.long	0x1b70
	.uleb128 0x30
	.byte	0x8
	.long	0x1519
	.uleb128 0x20
	.byte	0x8
	.long	0x806
	.uleb128 0x1f
	.byte	0x8
	.long	0x1b4e
	.uleb128 0x4
	.long	0x1b87
	.uleb128 0x20
	.byte	0x8
	.long	0x7fe
	.uleb128 0x24
	.secrel32	.LASF13
	.byte	0x18
	.byte	0x5
	.byte	0xe
	.long	0x1ccb
	.uleb128 0xa
	.byte	0x5
	.byte	0xe
	.long	0x1948
	.uleb128 0x31
	.long	0x1519
	.byte	0
	.byte	0x1
	.uleb128 0x26
	.secrel32	.LASF13
	.byte	0x5
	.byte	0x15
	.ascii "_ZN6StringC4Em\0"
	.byte	0x1
	.long	0x1bd1
	.long	0x1bdc
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF13
	.byte	0x5
	.byte	0x16
	.ascii "_ZN6StringC4EOS_\0"
	.byte	0x1
	.long	0x1bfd
	.long	0x1c08
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0x14
	.long	0x1cdb
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF13
	.byte	0x5
	.byte	0x18
	.ascii "_ZN6StringC4EPKc\0"
	.byte	0x1
	.long	0x1c29
	.long	0x1c34
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0x14
	.long	0xadd
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF10
	.byte	0x5
	.byte	0x19
	.ascii "_ZN6StringaSEPKc\0"
	.long	0x1ce1
	.byte	0x1
	.long	0x1c59
	.long	0x1c64
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0x14
	.long	0xadd
	.byte	0
	.uleb128 0x1c
	.ascii "append\0"
	.byte	0x5
	.byte	0x1a
	.ascii "_ZN6String6appendEPKcm\0"
	.long	0x1ce1
	.byte	0x1
	.long	0x1c92
	.long	0x1ca2
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x32
	.ascii "~String\0"
	.ascii "_ZN6StringD4Ev\0"
	.byte	0x1
	.long	0x1cbf
	.uleb128 0xf
	.long	0x1cd0
	.uleb128 0xf
	.long	0x480
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1b98
	.uleb128 0x1f
	.byte	0x8
	.long	0x1b98
	.uleb128 0x4
	.long	0x1cd0
	.uleb128 0x30
	.byte	0x8
	.long	0x1b98
	.uleb128 0x20
	.byte	0x8
	.long	0x1b98
	.uleb128 0x4
	.long	0x1ce1
	.uleb128 0x1b
	.ascii "VectorRef<char>\0"
	.byte	0x10
	.byte	0x14
	.byte	0x10
	.long	0x1ee5
	.uleb128 0x29
	.ascii "data\0"
	.byte	0x14
	.byte	0x1c
	.long	0xadd
	.byte	0
	.uleb128 0x29
	.ascii "size\0"
	.byte	0x14
	.byte	0x1d
	.long	0x137
	.byte	0x8
	.uleb128 0x2a
	.secrel32	.LASF14
	.byte	0x14
	.byte	0x12
	.ascii "_ZN9VectorRefIcEC4Ev\0"
	.byte	0x1
	.long	0x1d43
	.long	0x1d49
	.uleb128 0xf
	.long	0x1eea
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF14
	.byte	0x3
	.byte	0xf
	.ascii "_ZN9VectorRefIcEC4EPKcm\0"
	.byte	0x1
	.long	0x1d71
	.long	0x1d81
	.uleb128 0xf
	.long	0x1eea
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF14
	.byte	0x3
	.byte	0x13
	.ascii "_ZN9VectorRefIcEC4E6VectorIcEmm\0"
	.byte	0x1
	.long	0x1db1
	.long	0x1dc6
	.uleb128 0xf
	.long	0x1eea
	.uleb128 0x14
	.long	0x1519
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x3
	.byte	0x17
	.ascii "_ZNK9VectorRefIcE7getDataEv\0"
	.long	0xadd
	.byte	0x1
	.long	0x1df6
	.long	0x1dfc
	.uleb128 0xf
	.long	0x1ef0
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF3
	.byte	0x3
	.byte	0x1d
	.ascii "_ZNK9VectorRefIcE7getSizeEv\0"
	.long	0x137
	.byte	0x1
	.long	0x1e2c
	.long	0x1e32
	.uleb128 0xf
	.long	0x1ef0
	.byte	0
	.uleb128 0x27
	.ascii "setData\0"
	.byte	0x3
	.byte	0x24
	.ascii "_ZN9VectorRefIcE7setDataEPKc\0"
	.byte	0x1
	.long	0x1e63
	.long	0x1e6e
	.uleb128 0xf
	.long	0x1eea
	.uleb128 0x14
	.long	0xadd
	.byte	0
	.uleb128 0x27
	.ascii "setSize\0"
	.byte	0x3
	.byte	0x29
	.ascii "_ZN9VectorRefIcE7setSizeEm\0"
	.byte	0x1
	.long	0x1e9d
	.long	0x1ea8
	.uleb128 0xf
	.long	0x1eea
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF11
	.byte	0x3
	.byte	0x2f
	.ascii "_ZNK9VectorRefIcEixEm\0"
	.long	0x1b81
	.byte	0x1
	.long	0x1ed2
	.long	0x1edd
	.uleb128 0xf
	.long	0x1ef0
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x7fe
	.byte	0
	.uleb128 0x4
	.long	0x1cec
	.uleb128 0x1f
	.byte	0x8
	.long	0x1cec
	.uleb128 0x1f
	.byte	0x8
	.long	0x1ee5
	.uleb128 0x4
	.long	0x1ef0
	.uleb128 0x24
	.secrel32	.LASF15
	.byte	0x10
	.byte	0x15
	.byte	0x10
	.long	0x1fa4
	.uleb128 0x31
	.long	0x1cec
	.byte	0
	.byte	0x1
	.uleb128 0x26
	.secrel32	.LASF15
	.byte	0x15
	.byte	0x14
	.ascii "_ZN9StringRefC4EPKv\0"
	.byte	0x1
	.long	0x1f32
	.long	0x1f3d
	.uleb128 0xf
	.long	0x1fa9
	.uleb128 0x14
	.long	0xb01
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF15
	.byte	0x15
	.byte	0x15
	.ascii "_ZN9StringRefC4EPKvm\0"
	.byte	0x1
	.long	0x1f62
	.long	0x1f72
	.uleb128 0xf
	.long	0x1fa9
	.uleb128 0x14
	.long	0xb01
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x33
	.secrel32	.LASF15
	.byte	0x15
	.byte	0x16
	.ascii "_ZN9StringRefC4ERK6String\0"
	.byte	0x1
	.long	0x1f98
	.uleb128 0xf
	.long	0x1fa9
	.uleb128 0x14
	.long	0x1faf
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1efb
	.uleb128 0x1f
	.byte	0x8
	.long	0x1efb
	.uleb128 0x20
	.byte	0x8
	.long	0x1ccb
	.uleb128 0x1b
	.ascii "FATDirEntry\0"
	.byte	0x20
	.byte	0x16
	.byte	0xf
	.long	0x2428
	.uleb128 0x34
	.byte	0x1
	.long	0x7fe
	.byte	0x16
	.byte	0x11
	.byte	0x1
	.long	0x1fe3
	.uleb128 0x35
	.ascii "ATTR_MASK\0"
	.byte	0x3f
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.long	0x7fe
	.byte	0x16
	.byte	0x12
	.byte	0x1
	.long	0x2060
	.uleb128 0x35
	.ascii "ATTR_READ_ONLY\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "ATTR_HIDDEN\0"
	.byte	0x2
	.uleb128 0x35
	.ascii "ATTR_SYSTEM\0"
	.byte	0x4
	.uleb128 0x35
	.ascii "ATTR_VOLUME_ID\0"
	.byte	0x8
	.uleb128 0x35
	.ascii "ATTR_DIRECTORY\0"
	.byte	0x10
	.uleb128 0x35
	.ascii "ATTR_ARCHIVE\0"
	.byte	0x20
	.uleb128 0x35
	.ascii "ATTR_LONG_NAME\0"
	.byte	0xf
	.byte	0
	.uleb128 0x36
	.ascii "name\0"
	.byte	0x16
	.byte	0x18
	.long	0x242d
	.byte	0
	.byte	0x1
	.uleb128 0x36
	.ascii "attr\0"
	.byte	0x16
	.byte	0x19
	.long	0x5e3
	.byte	0xb
	.byte	0x1
	.uleb128 0x36
	.ascii "NTRes\0"
	.byte	0x16
	.byte	0x1a
	.long	0x5e3
	.byte	0xc
	.byte	0x1
	.uleb128 0x36
	.ascii "crtTimeTenth\0"
	.byte	0x16
	.byte	0x1b
	.long	0x5e3
	.byte	0xd
	.byte	0x1
	.uleb128 0x36
	.ascii "crtTime\0"
	.byte	0x16
	.byte	0x1c
	.long	0x601
	.byte	0xe
	.byte	0x1
	.uleb128 0x36
	.ascii "crtDate\0"
	.byte	0x16
	.byte	0x1d
	.long	0x601
	.byte	0x10
	.byte	0x1
	.uleb128 0x36
	.ascii "lstAccData\0"
	.byte	0x16
	.byte	0x1e
	.long	0x601
	.byte	0x12
	.byte	0x1
	.uleb128 0x36
	.ascii "fstClusHI\0"
	.byte	0x16
	.byte	0x1f
	.long	0x601
	.byte	0x14
	.byte	0x1
	.uleb128 0x36
	.ascii "wrtTime\0"
	.byte	0x16
	.byte	0x20
	.long	0x601
	.byte	0x16
	.byte	0x1
	.uleb128 0x36
	.ascii "wrtDate\0"
	.byte	0x16
	.byte	0x21
	.long	0x601
	.byte	0x18
	.byte	0x1
	.uleb128 0x37
	.secrel32	.LASF16
	.byte	0x16
	.byte	0x22
	.long	0x601
	.byte	0x1a
	.byte	0x1
	.uleb128 0x36
	.ascii "fileSize\0"
	.byte	0x16
	.byte	0x23
	.long	0x620
	.byte	0x1c
	.byte	0x1
	.uleb128 0x38
	.ascii "chksum\0"
	.byte	0x16
	.byte	0x25
	.ascii "_ZN11FATDirEntry6chksumEPc\0"
	.long	0x5e3
	.byte	0x1
	.long	0x215f
	.uleb128 0x14
	.long	0x1b53
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF17
	.byte	0x16
	.byte	0x26
	.ascii "_ZNK11FATDirEntry19uni_isLongNameEntryEv\0"
	.long	0x1185
	.byte	0x1
	.long	0x219c
	.long	0x21a2
	.uleb128 0xf
	.long	0x243d
	.byte	0
	.uleb128 0x1c
	.ascii "isVolumeID\0"
	.byte	0x16
	.byte	0x27
	.ascii "_ZNK11FATDirEntry10isVolumeIDEv\0"
	.long	0x1185
	.byte	0x1
	.long	0x21dd
	.long	0x21e3
	.uleb128 0xf
	.long	0x243d
	.byte	0
	.uleb128 0x1c
	.ascii "shortNameEquals\0"
	.byte	0x16
	.byte	0x2a
	.ascii "_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_\0"
	.long	0x1185
	.byte	0x1
	.long	0x2236
	.long	0x2246
	.uleb128 0xf
	.long	0x243d
	.uleb128 0x14
	.long	0x2448
	.uleb128 0x14
	.long	0x2448
	.byte	0
	.uleb128 0x1c
	.ascii "getFirstClusIndex\0"
	.byte	0x16
	.byte	0x2c
	.ascii "_ZNK11FATDirEntry17getFirstClusIndexEv\0"
	.long	0x620
	.byte	0x1
	.long	0x228f
	.long	0x2295
	.uleb128 0xf
	.long	0x243d
	.byte	0
	.uleb128 0x1c
	.ascii "getLongName\0"
	.byte	0x16
	.byte	0x33
	.ascii "_ZNK11FATDirEntry11getLongNameEv\0"
	.long	0x1b98
	.byte	0x1
	.long	0x22d2
	.long	0x22d8
	.uleb128 0xf
	.long	0x243d
	.byte	0
	.uleb128 0x1c
	.ascii "getShortName\0"
	.byte	0x16
	.byte	0x34
	.ascii "_ZNK11FATDirEntry12getShortNameEv\0"
	.long	0x1b98
	.byte	0x1
	.long	0x2317
	.long	0x231d
	.uleb128 0xf
	.long	0x243d
	.byte	0
	.uleb128 0x2f
	.ascii "trailingSpaceNameEquals\0"
	.byte	0x16
	.byte	0x37
	.ascii "_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_\0"
	.long	0x1185
	.long	0x238b
	.uleb128 0x14
	.long	0x2448
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x2448
	.byte	0
	.uleb128 0x2f
	.ascii "findFirstNonSpace\0"
	.byte	0x16
	.byte	0x38
	.ascii "_ZN11FATDirEntry17findFirstNonSpaceEPKcm\0"
	.long	0x137
	.long	0x23dc
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.byte	0
	.uleb128 0x12
	.ascii "findLastNonSpace\0"
	.byte	0x16
	.byte	0x39
	.ascii "_ZN11FATDirEntry16findLastNonSpaceEPKcm\0"
	.long	0x137
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1fb5
	.uleb128 0x15
	.long	0x7fe
	.long	0x243d
	.uleb128 0x16
	.long	0x7f2
	.byte	0xa
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.long	0x2428
	.uleb128 0x4
	.long	0x243d
	.uleb128 0x20
	.byte	0x8
	.long	0x1fa4
	.uleb128 0x4
	.long	0x2448
	.uleb128 0x1b
	.ascii "FATLongNameEntry\0"
	.byte	0x20
	.byte	0x18
	.byte	0x10
	.long	0x294e
	.uleb128 0x36
	.ascii "ord\0"
	.byte	0x18
	.byte	0x12
	.long	0x5e3
	.byte	0
	.byte	0x1
	.uleb128 0x36
	.ascii "name1\0"
	.byte	0x18
	.byte	0x13
	.long	0x2953
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.ascii "attr\0"
	.byte	0x18
	.byte	0x14
	.long	0x5e3
	.byte	0xb
	.byte	0x1
	.uleb128 0x36
	.ascii "type\0"
	.byte	0x18
	.byte	0x15
	.long	0x5e3
	.byte	0xc
	.byte	0x1
	.uleb128 0x36
	.ascii "chksum\0"
	.byte	0x18
	.byte	0x16
	.long	0x5e3
	.byte	0xd
	.byte	0x1
	.uleb128 0x36
	.ascii "name2\0"
	.byte	0x18
	.byte	0x17
	.long	0x2963
	.byte	0xe
	.byte	0x1
	.uleb128 0x37
	.secrel32	.LASF16
	.byte	0x18
	.byte	0x18
	.long	0x601
	.byte	0x1a
	.byte	0x1
	.uleb128 0x36
	.ascii "name3\0"
	.byte	0x18
	.byte	0x19
	.long	0x2973
	.byte	0x1c
	.byte	0x1
	.uleb128 0x39
	.ascii "getNameRequiredCapacity\0"
	.byte	0x18
	.byte	0x1b
	.ascii "_ZN16FATLongNameEntry23getNameRequiredCapacityEv\0"
	.long	0x137
	.byte	0x1
	.uleb128 0x1c
	.ascii "getAsAsciiName\0"
	.byte	0x18
	.byte	0x1d
	.ascii "_ZNK16FATLongNameEntry14getAsAsciiNameEb\0"
	.long	0x1b98
	.byte	0x1
	.long	0x2578
	.long	0x2583
	.uleb128 0xf
	.long	0x2983
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF17
	.byte	0x18
	.byte	0x1e
	.ascii "_ZNK16FATLongNameEntry19uni_isLongNameEntryEv\0"
	.long	0x1185
	.byte	0x1
	.long	0x25c5
	.long	0x25cb
	.uleb128 0xf
	.long	0x2983
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF18
	.byte	0x18
	.byte	0x1f
	.ascii "_ZNK16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x2983
	.byte	0x1
	.long	0x260c
	.long	0x2612
	.uleb128 0xf
	.long	0x2983
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF19
	.byte	0x18
	.byte	0x20
	.ascii "_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x243d
	.byte	0x1
	.long	0x2657
	.long	0x265d
	.uleb128 0xf
	.long	0x2983
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF18
	.byte	0x18
	.byte	0x21
	.ascii "_ZN16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x2989
	.byte	0x1
	.long	0x269d
	.long	0x26a3
	.uleb128 0xf
	.long	0x2989
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF19
	.byte	0x18
	.byte	0x22
	.ascii "_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x298f
	.byte	0x1
	.long	0x26e7
	.long	0x26ed
	.uleb128 0xf
	.long	0x2989
	.byte	0
	.uleb128 0x1c
	.ascii "nameEqulasAsciiName\0"
	.byte	0x18
	.byte	0x24
	.ascii "_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb\0"
	.long	0x1185
	.byte	0x1
	.long	0x274b
	.long	0x275b
	.uleb128 0xf
	.long	0x2983
	.uleb128 0x14
	.long	0x2448
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x1c
	.ascii "nameEqulasAsciiNameUpto\0"
	.byte	0x18
	.byte	0x25
	.ascii "_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb\0"
	.long	0x1185
	.byte	0x1
	.long	0x27c5
	.long	0x27da
	.uleb128 0xf
	.long	0x2983
	.uleb128 0x14
	.long	0x2983
	.uleb128 0x14
	.long	0x2448
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x39
	.ascii "getNameBytesCount\0"
	.byte	0x18
	.byte	0x26
	.ascii "_ZN16FATLongNameEntry17getNameBytesCountEv\0"
	.long	0x137
	.byte	0x1
	.uleb128 0x2e
	.ascii "lookupFirstNullChar\0"
	.byte	0x18
	.byte	0x2a
	.ascii "_ZNK16FATLongNameEntry19lookupFirstNullCharEv\0"
	.long	0x137
	.long	0x2870
	.long	0x2876
	.uleb128 0xf
	.long	0x2983
	.byte	0
	.uleb128 0x2f
	.ascii "unicodeNameMatchesAsciiName\0"
	.byte	0x18
	.byte	0x2f
	.ascii "_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb\0"
	.long	0x1185
	.long	0x28f7
	.uleb128 0x14
	.long	0xadd
	.uleb128 0x14
	.long	0x137
	.uleb128 0x14
	.long	0x2448
	.uleb128 0x14
	.long	0x1185
	.byte	0
	.uleb128 0x12
	.ascii "unicodeCharToAsciiChar\0"
	.byte	0x18
	.byte	0x30
	.ascii "_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv\0"
	.long	0x7fe
	.uleb128 0x14
	.long	0xb01
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x2453
	.uleb128 0x15
	.long	0x7fe
	.long	0x2963
	.uleb128 0x16
	.long	0x7f2
	.byte	0x9
	.byte	0
	.uleb128 0x15
	.long	0x7fe
	.long	0x2973
	.uleb128 0x16
	.long	0x7f2
	.byte	0xb
	.byte	0
	.uleb128 0x15
	.long	0x7fe
	.long	0x2983
	.uleb128 0x16
	.long	0x7f2
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.byte	0x8
	.long	0x294e
	.uleb128 0x1f
	.byte	0x8
	.long	0x2453
	.uleb128 0x1f
	.byte	0x8
	.long	0x1fb5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x1f
	.byte	0x8
	.long	0x2f9
	.uleb128 0x3a
	.long	0x33d
	.uleb128 0x3b
	.long	0x149f
	.long	0x29e4
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e4
	.long	0x2a1b
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b53
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x1502
	.secrel32	.LLST14
	.uleb128 0x3d
	.ascii "n\0"
	.byte	0x4
	.byte	0xf
	.long	0x137
	.secrel32	.LLST15
	.uleb128 0x3e
	.quad	.LVL55
	.long	0x128e
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1afe
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a48
	.uleb128 0x41
	.ascii "curSize\0"
	.byte	0x2
	.byte	0xd1
	.long	0x137
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3b
	.long	0x1a05
	.long	0x2a6b
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a6b
	.long	0x2b0b
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x1b5f
	.secrel32	.LLST16
	.uleb128 0x42
	.secrel32	.LASF8
	.byte	0x2
	.byte	0xa7
	.long	0x137
	.secrel32	.LLST17
	.uleb128 0x43
	.ascii "newData\0"
	.byte	0x2
	.byte	0xac
	.long	0x1b53
	.secrel32	.LLST18
	.uleb128 0x44
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2abd
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x2
	.byte	0xb0
	.long	0x137
	.secrel32	.LLST19
	.byte	0
	.uleb128 0x45
	.quad	.LVL59
	.long	0x13ae
	.long	0x2ade
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x45
	.quad	.LVL60
	.long	0x29ba
	.long	0x2af9
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL64
	.long	0x1402
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x1a4e
	.long	0x2b2e
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b2e
	.long	0x2b5d
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x1b5f
	.secrel32	.LLST20
	.uleb128 0x47
	.quad	.LVL75
	.long	0x2a1b
	.uleb128 0x3e
	.quad	.LVL76
	.long	0x2a48
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x170a
	.long	0x2b80
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b80
	.long	0x2b97
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x1b8d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.ascii "i\0"
	.byte	0x2
	.byte	0x3f
	.long	0x137
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3b
	.long	0x1841
	.long	0x2bba
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bba
	.long	0x2bc6
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x1b8d
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3b
	.long	0x1ea8
	.long	0x2be9
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x2be9
	.long	0x2c00
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x1ef6
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.ascii "i\0"
	.byte	0x3
	.byte	0x2f
	.long	0x137
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3b
	.long	0x17a3
	.long	0x2c23
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c23
	.long	0x2c52
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x1b5f
	.secrel32	.LLST21
	.uleb128 0x3d
	.ascii "t\0"
	.byte	0x2
	.byte	0x51
	.long	0x7fe
	.secrel32	.LLST22
	.uleb128 0x3e
	.quad	.LVL78
	.long	0x2b0b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	0x1948
	.long	0x2c75
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c75
	.long	0x2d0a
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x1b5f
	.secrel32	.LLST23
	.uleb128 0x3d
	.ascii "vec\0"
	.byte	0x2
	.byte	0x8a
	.long	0x1b76
	.secrel32	.LLST24
	.uleb128 0x3d
	.ascii "len\0"
	.byte	0x2
	.byte	0x8a
	.long	0x137
	.secrel32	.LLST25
	.uleb128 0x49
	.quad	.LBB30
	.quad	.LBE30-.LBB30
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x2
	.byte	0x8d
	.long	0x137
	.secrel32	.LLST26
	.uleb128 0x45
	.quad	.LVL83
	.long	0x2b97
	.long	0x2cd6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.quad	.LVL84
	.long	0x2b5d
	.long	0x2cf4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL85
	.long	0x2c00
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x16d9
	.byte	0
	.long	0x2d18
	.long	0x2d2b
	.uleb128 0x4b
	.secrel32	.LASF20
	.long	0x1b5f
	.uleb128 0x4b
	.secrel32	.LASF21
	.long	0x487
	.byte	0
	.uleb128 0x4c
	.long	0x2d0a
	.ascii "_ZN6VectorIcED2Ev\0"
	.long	0x2d60
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d60
	.long	0x2d7b
	.uleb128 0x4d
	.long	0x2d18
	.secrel32	.LLST4
	.uleb128 0x3e
	.quad	.LVL19
	.long	0x1402
	.uleb128 0x46
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	0x23dc
	.byte	0x1
	.byte	0x5e
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd2
	.uleb128 0x41
	.ascii "s\0"
	.byte	0x1
	.byte	0x5e
	.long	0xadd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3d
	.ascii "len\0"
	.byte	0x1
	.byte	0x5e
	.long	0x137
	.secrel32	.LLST2
	.uleb128 0x49
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x1
	.byte	0x60
	.long	0x137
	.secrel32	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	0x238b
	.byte	0x1
	.byte	0x57
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e27
	.uleb128 0x41
	.ascii "s\0"
	.byte	0x1
	.byte	0x57
	.long	0xadd
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x41
	.ascii "len\0"
	.byte	0x1
	.byte	0x57
	.long	0x137
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x49
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x1
	.byte	0x59
	.long	0x137
	.secrel32	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	0x231d
	.byte	0x1
	.byte	0x46
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f3b
	.uleb128 0x3d
	.ascii "hasSpaceStr\0"
	.byte	0x1
	.byte	0x46
	.long	0x244e
	.secrel32	.LLST5
	.uleb128 0x3d
	.ascii "hasSpaceStrLen\0"
	.byte	0x1
	.byte	0x46
	.long	0x137
	.secrel32	.LLST6
	.uleb128 0x3d
	.ascii "nullTermStr\0"
	.byte	0x1
	.byte	0x46
	.long	0x244e
	.secrel32	.LLST7
	.uleb128 0x43
	.ascii "meetTerm\0"
	.byte	0x1
	.byte	0x48
	.long	0x1185
	.secrel32	.LLST8
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x1
	.byte	0x49
	.long	0x137
	.secrel32	.LLST9
	.uleb128 0x4f
	.secrel32	.Ldebug_ranges0+0
	.long	0x2f20
	.uleb128 0x43
	.ascii "thisChr\0"
	.byte	0x1
	.byte	0x4e
	.long	0x7fe
	.secrel32	.LLST10
	.uleb128 0x45
	.quad	.LVL25
	.long	0x2bc6
	.long	0x2ee7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.quad	.LVL27
	.long	0x2bc6
	.long	0x2f05
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL29
	.long	0x2bc6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.quad	.LVL30
	.long	0x2bc6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x22d8
	.byte	0x1
	.byte	0x37
	.long	0x2f60
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f60
	.long	0x30c7
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x2443
	.secrel32	.LLST33
	.uleb128 0x51
	.ascii "sname\0"
	.byte	0x1
	.byte	0x39
	.long	0x1b98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x43
	.ascii "i\0"
	.byte	0x1
	.byte	0x3a
	.long	0x137
	.secrel32	.LLST34
	.uleb128 0x43
	.ascii "j\0"
	.byte	0x1
	.byte	0x3b
	.long	0x137
	.secrel32	.LLST35
	.uleb128 0x52
	.long	0x32f9
	.quad	.LBB40
	.quad	.LBE40-.LBB40
	.byte	0x1
	.byte	0x39
	.long	0x2fd1
	.uleb128 0x4d
	.long	0x3309
	.secrel32	.LLST36
	.uleb128 0x3e
	.quad	.LVL130
	.long	0x2d2b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LVL113
	.long	0x2feb
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x45
	.quad	.LVL114
	.long	0x2dd2
	.long	0x3008
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x45
	.quad	.LVL116
	.long	0x2d7b
	.long	0x3025
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x45
	.quad	.LVL118
	.long	0x2c00
	.long	0x303e
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x45
	.quad	.LVL120
	.long	0x2c00
	.long	0x305d
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2e
	.byte	0
	.uleb128 0x45
	.quad	.LVL122
	.long	0x2dd2
	.long	0x307a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x45
	.quad	.LVL124
	.long	0x2d7b
	.long	0x3097
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x45
	.quad	.LVL126
	.long	0x2c00
	.long	0x30b0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x54
	.quad	.LVL129
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x2295
	.byte	0x1
	.byte	0x26
	.long	0x30ec
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ec
	.long	0x32d4
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x2443
	.secrel32	.LLST27
	.uleb128 0x51
	.ascii "res\0"
	.byte	0x1
	.byte	0x28
	.long	0x1b98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x43
	.ascii "p\0"
	.byte	0x1
	.byte	0x29
	.long	0x243d
	.secrel32	.LLST28
	.uleb128 0x44
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x3252
	.uleb128 0x43
	.ascii "entry\0"
	.byte	0x1
	.byte	0x2c
	.long	0x2983
	.secrel32	.LLST29
	.uleb128 0x52
	.long	0x32f9
	.quad	.LBB33
	.quad	.LBE33-.LBB33
	.byte	0x1
	.byte	0x2d
	.long	0x3174
	.uleb128 0x4d
	.long	0x3309
	.secrel32	.LLST30
	.uleb128 0x3e
	.quad	.LVL103
	.long	0x2d2b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	0x32f9
	.quad	.LBB35
	.quad	.LBE35-.LBB35
	.byte	0x1
	.byte	0x31
	.long	0x31ad
	.uleb128 0x4d
	.long	0x3309
	.secrel32	.LLST31
	.uleb128 0x3e
	.quad	.LVL108
	.long	0x2d2b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x45
	.quad	.LVL101
	.long	0x2530
	.long	0x31d0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x45
	.quad	.LVL102
	.long	0x2c52
	.long	0x31f5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x45
	.quad	.LVL105
	.long	0x2583
	.long	0x320d
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.quad	.LVL106
	.long	0x2530
	.long	0x3230
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.quad	.LVL107
	.long	0x2c52
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	0x32f9
	.quad	.LBB37
	.quad	.LBE37-.LBB37
	.byte	0x1
	.byte	0x28
	.long	0x328b
	.uleb128 0x4d
	.long	0x3309
	.secrel32	.LLST32
	.uleb128 0x3e
	.quad	.LVL98
	.long	0x2d2b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x53
	.quad	.LVL93
	.long	0x32a5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x45
	.quad	.LVL95
	.long	0x3470
	.long	0x32bd
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x54
	.quad	.LVL97
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.byte	0x8
	.long	0x37d
	.uleb128 0x55
	.long	0x38b
	.byte	0x3
	.long	0x32f9
	.uleb128 0x13
	.ascii "_Tp\0"
	.long	0x1ce1
	.uleb128 0x56
	.ascii "__t\0"
	.byte	0x17
	.byte	0x65
	.long	0x1ce7
	.byte	0
	.uleb128 0x57
	.long	0x1ca2
	.byte	0x5
	.byte	0xe
	.byte	0x2
	.long	0x3309
	.long	0x331c
	.uleb128 0x4b
	.secrel32	.LASF20
	.long	0x1cd6
	.uleb128 0x4b
	.secrel32	.LASF21
	.long	0x487
	.byte	0
	.uleb128 0x58
	.long	0x32f9
	.ascii "_ZN6StringD1Ev\0"
	.long	0x3338
	.long	0x333e
	.uleb128 0x59
	.long	0x3309
	.byte	0
	.uleb128 0x50
	.long	0x2246
	.byte	0x1
	.byte	0x22
	.long	0x3363
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x3363
	.long	0x336f
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x2443
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x50
	.long	0x21e3
	.byte	0x1
	.byte	0x1e
	.long	0x3394
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x3394
	.long	0x343f
	.uleb128 0x3c
	.secrel32	.LASF20
	.long	0x2443
	.secrel32	.LLST11
	.uleb128 0x3d
	.ascii "mainPart\0"
	.byte	0x1
	.byte	0x1e
	.long	0x244e
	.secrel32	.LLST12
	.uleb128 0x3d
	.ascii "extPart\0"
	.byte	0x1
	.byte	0x1e
	.long	0x244e
	.secrel32	.LLST13
	.uleb128 0x53
	.quad	.LVL43
	.long	0x33e2
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x45
	.quad	.LVL44
	.long	0x2e27
	.long	0x3405
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x53
	.quad	.LVL49
	.long	0x341f
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x3e
	.quad	.LVL50
	.long	0x2e27
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	0x21a2
	.byte	0x1
	.byte	0x18
	.long	0x3464
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x3464
	.long	0x3470
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x2443
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x50
	.long	0x215f
	.byte	0x1
	.byte	0x14
	.long	0x3495
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x3495
	.long	0x34a1
	.uleb128 0x48
	.secrel32	.LASF20
	.long	0x2443
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5a
	.long	0x212b
	.byte	0x1
	.byte	0xd
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x41
	.ascii "shortName\0"
	.byte	0x1
	.byte	0xd
	.long	0x1b53
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x18
	.ascii "sum\0"
	.byte	0x1
	.byte	0xf
	.long	0x5e3
	.byte	0
	.uleb128 0x49
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.uleb128 0x43
	.ascii "nameLen\0"
	.byte	0x1
	.byte	0x10
	.long	0x137
	.secrel32	.LLST0
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x42
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x52
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
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
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST14:
	.quad	.LVL54
	.quad	.LVL55-1
	.word	0x1
	.byte	0x52
	.quad	.LVL55-1
	.quad	.LFE144
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL54
	.quad	.LVL55-1
	.word	0x1
	.byte	0x51
	.quad	.LVL55-1
	.quad	.LFE144
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL56
	.quad	.LVL58
	.word	0x1
	.byte	0x52
	.quad	.LVL58
	.quad	.LVL66
	.word	0x1
	.byte	0x53
	.quad	.LVL66
	.quad	.LVL68
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL68
	.quad	.LVL69
	.word	0x1
	.byte	0x52
	.quad	.LVL69
	.quad	.LFE142
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL56
	.quad	.LVL57
	.word	0x1
	.byte	0x51
	.quad	.LVL57
	.quad	.LVL67
	.word	0x1
	.byte	0x55
	.quad	.LVL67
	.quad	.LVL68
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL68
	.quad	.LVL69
	.word	0x1
	.byte	0x51
	.quad	.LVL69
	.quad	.LFE142
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL61
	.quad	.LVL62
	.word	0x1
	.byte	0x50
	.quad	.LVL62
	.quad	.LVL65
	.word	0x1
	.byte	0x54
	.quad	.LVL69
	.quad	.LVL70
	.word	0x1
	.byte	0x50
	.quad	.LVL70
	.quad	.LFE142
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL62
	.quad	.LVL64-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL71
	.quad	.LVL72
	.word	0x1
	.byte	0x52
	.quad	.LVL72
	.quad	.LVL73
	.word	0x1
	.byte	0x53
	.quad	.LVL73
	.quad	.LVL74
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL74
	.quad	.LFE141
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL77
	.quad	.LVL78-1
	.word	0x1
	.byte	0x52
	.quad	.LVL78-1
	.quad	.LVL79
	.word	0x1
	.byte	0x53
	.quad	.LVL79
	.quad	.LFE137
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL77
	.quad	.LVL78-1
	.word	0x1
	.byte	0x51
	.quad	.LVL78-1
	.quad	.LFE137
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL80
	.quad	.LVL82
	.word	0x1
	.byte	0x52
	.quad	.LVL82
	.quad	.LVL89
	.word	0x1
	.byte	0x55
	.quad	.LVL89
	.quad	.LFE136
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL80
	.quad	.LVL82
	.word	0x1
	.byte	0x51
	.quad	.LVL82
	.quad	.LVL88
	.word	0x1
	.byte	0x54
	.quad	.LVL88
	.quad	.LFE136
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL80
	.quad	.LVL82
	.word	0x1
	.byte	0x58
	.quad	.LVL82
	.quad	.LFE136
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL81
	.quad	.LVL82
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL82
	.quad	.LVL87
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL17
	.quad	.LVL18
	.word	0x1
	.byte	0x52
	.quad	.LVL18
	.quad	.LFE134
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL12
	.quad	.LVL14
	.word	0x1
	.byte	0x51
	.quad	.LVL14
	.quad	.LVL16
	.word	0x1
	.byte	0x50
	.quad	.LVL16
	.quad	.LFE132
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL13
	.quad	.LVL14
	.word	0x1
	.byte	0x51
	.quad	.LVL14
	.quad	.LVL15
	.word	0x1
	.byte	0x58
	.quad	.LVL15
	.quad	.LVL16
	.word	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL9
	.quad	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL10
	.quad	.LFE131
	.word	0x1
	.byte	0x58
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL21
	.quad	.LVL23
	.word	0x1
	.byte	0x52
	.quad	.LVL23
	.quad	.LVL39
	.word	0x1
	.byte	0x5d
	.quad	.LVL39
	.quad	.LFE130
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL21
	.quad	.LVL23
	.word	0x1
	.byte	0x51
	.quad	.LVL23
	.quad	.LVL37
	.word	0x1
	.byte	0x56
	.quad	.LVL37
	.quad	.LFE130
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL21
	.quad	.LVL23
	.word	0x1
	.byte	0x58
	.quad	.LVL23
	.quad	.LVL38
	.word	0x1
	.byte	0x5c
	.quad	.LVL38
	.quad	.LFE130
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL22
	.quad	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL31
	.word	0x1
	.byte	0x54
	.quad	.LVL32
	.quad	.LVL33
	.word	0x1
	.byte	0x54
	.quad	.LVL34
	.quad	.LVL35
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL22
	.quad	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL23
	.quad	.LVL36
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL26
	.quad	.LVL28
	.word	0x1
	.byte	0x55
	.quad	.LVL34
	.quad	.LVL35
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL110
	.quad	.LVL112
	.word	0x1
	.byte	0x51
	.quad	.LVL112
	.quad	.LVL131
	.word	0x1
	.byte	0x54
	.quad	.LVL131
	.quad	.LFE129
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL115
	.quad	.LVL116-1
	.word	0x1
	.byte	0x50
	.quad	.LVL116-1
	.quad	.LVL128
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL117
	.quad	.LVL121
	.word	0x1
	.byte	0x56
	.quad	.LVL125
	.quad	.LVL133
	.word	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL129
	.quad	.LVL130
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL90
	.quad	.LVL92
	.word	0x1
	.byte	0x51
	.quad	.LVL92
	.quad	.LVL96
	.word	0x1
	.byte	0x53
	.quad	.LVL96
	.quad	.LVL100
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL100
	.quad	.LVL104
	.word	0x1
	.byte	0x53
	.quad	.LVL104
	.quad	.LFE124
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL94
	.quad	.LVL96
	.word	0x1
	.byte	0x54
	.quad	.LVL96
	.quad	.LVL100
	.word	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL100
	.quad	.LVL104
	.word	0x1
	.byte	0x54
	.quad	.LVL104
	.quad	.LFE124
	.word	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x20
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL100
	.quad	.LVL104
	.word	0x1
	.byte	0x54
	.quad	.LVL104
	.quad	.LFE124
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL102
	.quad	.LVL103
	.word	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL107
	.quad	.LVL108
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL97
	.quad	.LVL98
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL40
	.quad	.LVL42
	.word	0x1
	.byte	0x52
	.quad	.LVL42
	.quad	.LVL43-1
	.word	0x1
	.byte	0x51
	.quad	.LVL43-1
	.quad	.LVL45
	.word	0x1
	.byte	0x54
	.quad	.LVL45
	.quad	.LVL48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL48
	.quad	.LFE122
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL40
	.quad	.LVL41
	.word	0x1
	.byte	0x51
	.quad	.LVL41
	.quad	.LVL46
	.word	0x1
	.byte	0x55
	.quad	.LVL46
	.quad	.LVL48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL48
	.quad	.LFE122
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL40
	.quad	.LVL43-1
	.word	0x1
	.byte	0x58
	.quad	.LVL43-1
	.quad	.LVL47
	.word	0x1
	.byte	0x56
	.quad	.LVL47
	.quad	.LVL48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL48
	.quad	.LFE122
	.word	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL1
	.quad	.LVL2
	.word	0x2
	.byte	0x3b
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL4
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0xcc
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB25
	.quad	.LBE25
	.quad	.LBB26
	.quad	.LBE26
	.quad	.LBB27
	.quad	.LBE27
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB134
	.quad	.LFE134
	.quad	.LFB138
	.quad	.LFE138
	.quad	.LFB139
	.quad	.LFE139
	.quad	.LFB140
	.quad	.LFE140
	.quad	.LFB143
	.quad	.LFE143
	.quad	.LFB144
	.quad	.LFE144
	.quad	.LFB142
	.quad	.LFE142
	.quad	.LFB141
	.quad	.LFE141
	.quad	.LFB137
	.quad	.LFE137
	.quad	.LFB136
	.quad	.LFE136
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
	.file 26 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\Debug-host\\cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x3
	.ascii "DEF_H__ \0"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x7
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
	.file 27 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1b
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
	.file 28 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x1c
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
	.file 29 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x1d
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
	.uleb128 0x6
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
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x1e
	.ascii "_GLIBCXX_CSTDINT 1\0"
	.file 30 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1e
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
	.uleb128 0xc
	.byte	0x1
	.uleb128 0xa
	.ascii "_STDINT_H \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"
	.file 31 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
	.file 32 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x20
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
	.file 33 "/usr/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x21
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRING_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_VECTOR_H_ \0"
	.file 34 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_PRINTK_H_ \0"
	.file 35 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 36 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_SECTORREADER_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x8
	.ascii "INCLUDE_DATA_STRUCTURES_VECTOR_TEMPLATE_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRINGREF_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_ \0"
	.byte	0x4
	.file 37 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/utility"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x38
	.ascii "_GLIBCXX_UTILITY 1\0"
	.file 38 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/bits/stl_relops.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x41
	.ascii "_STL_RELOPS_H 1\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x46
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x39
	.ascii "_STL_PAIR_H 1\0"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x17
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
	.uleb128 0x9
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
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN9StringRefC1EPKv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.def	_ZN6StringC1Em;	.scl	2;	.type	32;	.endef
	.def	_ZN6StringC1EOS_;	.scl	2;	.type	32;	.endef
	.def	_ZNK16FATLongNameEntry14getAsAsciiNameEb;	.scl	2;	.type	32;	.endef
	.def	_ZNK16FATLongNameEntry19uni_isLongNameEntryEv;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.mman, "dr"
	.globl	.refptr.mman
	.linkonce	discard
.refptr.mman:
	.quad	mman
