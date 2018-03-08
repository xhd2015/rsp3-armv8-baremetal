	.file	"TestMemoryManager.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.def	_Z41__static_initialization_and_destruction_0ii;	.scl	3;	.type	32;	.endef
	.seh_proc	_Z41__static_initialization_and_destruction_0ii
_Z41__static_initialization_and_destruction_0ii:
.LFB24:
	.file 1 "../src/test/TestMemoryManager.cpp"
	.loc 1 173 0
	.cfi_startproc
.LVL0:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 173 0
	cmpl	$1, %ecx
	je	.L3
.LVL1:
.L1:
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL2:
.L3:
	.cfi_restore_state
	.loc 1 173 0 is_stmt 0 discriminator 1
	cmpl	$65535, %edx
	jne	.L1
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/mem_config.h"
	.loc 2 19 0 is_stmt 1
	movl	$1048576, %ecx
.LVL3:
	call	_Znam
.LVL4:
	.loc 1 173 0
	jmp	.L1
	.cfi_endproc
.LFE24:
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "[FATAL] \0"
.LC1:
	.ascii "baseChunk->getSize()\0"
.LC2:
	.ascii "!=\0"
.LC3:
	.ascii ",the real value is \0"
.LC4:
	.ascii "\12\0"
	.text
	.align 2
	.globl	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv
	.def	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv
_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv:
.LFB9:
	.loc 1 19 0
	.cfi_startproc
.LVL5:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$1096, %rsp
	.seh_stackalloc	1096
	.cfi_def_cfa_offset 1120
	.seh_endprologue
	.loc 1 21 0
	movq	$100, 32(%rsp)
	movq	$7, 40(%rsp)
	movq	$5, 48(%rsp)
	movq	$10, 56(%rsp)
.LVL6:
	.loc 1 24 0
	leaq	64(%rsp), %rbx
.LVL7:
	movl	$0, %edx
	movq	%rbx, %rcx
.LVL8:
	call	_ZN11MemoryChunk12setAllocatedEb
.LVL9:
	.loc 1 25 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
.LVL10:
	.loc 1 26 0
	movq	32(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk7setSizeEm
.LVL11:
	.loc 1 27 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL12:
	.loc 1 28 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL13:
	.loc 1 29 0
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL14:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	call	_ZNK11MemoryChunk18getNextBaseFromEndEv
.LVL15:
	leaq	8(%rsi,%rax), %rax
	addq	%rax, %rbx
.LVL16:
	.loc 1 30 0
	movq	40(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL17:
	.loc 1 32 0
	addq	40(%rsp), %rbx
.LVL18:
	.loc 1 33 0
	movq	48(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL19:
	.loc 1 35 0
	addq	48(%rsp), %rbx
.LVL20:
	.loc 1 36 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL21:
	.loc 1 37 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
.LVL22:
	.loc 1 38 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
.LVL23:
	.loc 1 39 0
	movq	56(%rsp), %rdx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk7setSizeEm
.LVL24:
	.loc 1 40 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL25:
	.loc 1 42 0
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
.LVL26:
	movq	%rax, %rbx
.LVL27:
	.loc 1 43 0
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL28:
	.loc 1 44 0
	movl	$1, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL29:
	.loc 1 46 0
	movl	$0, %edx
.LBB2:
	.loc 1 47 0
	leaq	32(%rsp), %rax
.LVL30:
.L6:
	.loc 1 47 0 is_stmt 0 discriminator 3
	leaq	64(%rsp), %rcx
.LVL31:
	cmpq	%rcx, %rax
	je	.L5
.LVL32:
	.loc 1 48 0 is_stmt 1 discriminator 2
	addq	(%rax), %rdx
.LVL33:
	.loc 1 47 0 discriminator 2
	addq	$8, %rax
.LVL34:
	jmp	.L6
.LVL35:
.L5:
.LBE2:
	.loc 1 49 0
	leaq	8(%rdx), %rbx
.LVL36:
	.loc 1 51 0
	leaq	64(%rsp), %rsi
	movq	%rsi, %rcx
	call	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv
.LVL37:
	.loc 1 52 0
	movq	%rsi, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL38:
	cmpq	%rax, %rbx
	je	.L7
	.loc 1 52 0 is_stmt 0 discriminator 1
	leaq	64(%rsp), %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL39:
	movq	%rax, %rsi
.LVL40:
	leaq	.LC0(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
.LVL41:
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL42:
	leaq	.LC2(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL43:
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
.LVL44:
	leaq	.LC3(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL45:
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
.LVL46:
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL47:
.L7:
	.loc 1 54 0 is_stmt 1
	leaq	64(%rsp), %rcx
.LVL48:
	call	_ZNK11MemoryChunk7getSizeEv
.LVL49:
	cmpq	%rax, %rbx
	sete	%al
	.loc 1 55 0
	addq	$1096, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE9:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv
	.def	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv
_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv:
.LFB10:
	.loc 1 58 0
	.cfi_startproc
.LVL50:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$1120, %rsp
	.seh_stackalloc	1120
	.cfi_def_cfa_offset 1136
	.seh_endprologue
.LVL51:
	.loc 1 63 0
	leaq	96(%rsp), %rbx
.LVL52:
	movl	$1015, %edx
	movq	%rbx, %rcx
.LVL53:
	call	_ZN11MemoryChunk7setSizeEm
.LVL54:
	.loc 1 64 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
.LVL55:
	.loc 1 65 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL56:
	.loc 1 66 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
.LVL57:
	.loc 1 67 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL58:
	.loc 1 69 0
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
.LVL59:
	.loc 1 70 0
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL60:
	.loc 1 72 0
	leaq	64(%rsp), %rcx
	movl	$0, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rdx
	call	_ZN13MemoryManagerC1EPvmb
.LVL61:
	.loc 1 73 0
	leaq	32(%rsp), %rcx
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rdx
	call	_ZN13MemoryManagerC1EPvmb
.LVL62:
	.loc 1 76 0
	movl	$1, %eax
	addq	$1120, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL63:
	ret
	.cfi_endproc
.LFE10:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager18nextChunkCorrectlyEv
	.def	_ZN17TestMemoryManager18nextChunkCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager18nextChunkCorrectlyEv
_ZN17TestMemoryManager18nextChunkCorrectlyEv:
.LFB16:
	.loc 1 168 0
	.cfi_startproc
.LVL64:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$1088, %rsp
	.seh_stackalloc	1088
	.cfi_def_cfa_offset 1104
	.seh_endprologue
	.loc 1 170 0
	leaq	64(%rsp), %rbx
	leaq	32(%rsp), %rcx
.LVL65:
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rdx
	call	_ZN13MemoryManagerC1EPvmb
.LVL66:
	.loc 1 172 0
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk7getNextEv
.LVL67:
	movq	%rax, %rcx
	call	_ZNK11MemoryChunk5isEndEv
.LVL68:
	movl	%eax, %ebx
.LVL69:
	testb	%al, %al
	jne	.L12
.L9:
	.loc 1 173 0
	movl	%ebx, %eax
	addq	$1088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
.L12:
	.cfi_restore_state
	.loc 1 172 0 discriminator 1
	leaq	64(%rsp), %rcx
.LVL70:
	call	_ZN11MemoryChunk7getNextEv
.LVL71:
	movq	%rax, %rcx
	call	_ZN11MemoryChunk7getNextEv
.LVL72:
	testq	%rax, %rax
	je	.L9
	.loc 1 172 0 is_stmt 0
	movl	$0, %ebx
	jmp	.L9
	.cfi_endproc
.LFE16:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPcEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPcEET_m
	.def	_ZN13MemoryManager10allocateAsIPcEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPcEET_m
_ZN13MemoryManager10allocateAsIPcEET_m:
.LFB17:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/MemoryManager.h"
	.loc 3 15 0 is_stmt 1
	.cfi_startproc
.LVL73:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 3 17 0
	call	_ZN13MemoryManager8allocateEm
.LVL74:
	.loc 3 18 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE17:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN17TestMemoryManager19deallocateCorrectlyEv
	.def	_ZN17TestMemoryManager19deallocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager19deallocateCorrectlyEv
_ZN17TestMemoryManager19deallocateCorrectlyEv:
.LFB12:
	.loc 1 108 0
	.cfi_startproc
.LVL75:
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
	subq	$1088, %rsp
	.seh_stackalloc	1088
	.cfi_def_cfa_offset 1120
	.seh_endprologue
	.loc 1 110 0
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rbx
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rcx
.LVL76:
	call	_ZN13MemoryManagerC1EPvmb
.LVL77:
	.loc 1 111 0
	movl	$100, %edx
	movq	%rbx, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL78:
	movq	%rax, %rdi
.LVL79:
	.loc 1 112 0
	leaq	-8(%rax), %rsi
.LVL80:
	.loc 1 113 0
	movq	%rsi, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL81:
	movl	%eax, %ebx
	testb	%al, %al
	jne	.L17
.L15:
.LVL82:
	.loc 1 114 0 discriminator 6
	leaq	32(%rsp), %rcx
	movq	%rdi, %rdx
	call	_ZN13MemoryManager10deallocateEPv
.LVL83:
	.loc 1 116 0 discriminator 6
	movq	%rsi, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL84:
	xorl	$1, %eax
.LVL85:
	.loc 1 117 0 discriminator 6
	andl	%ebx, %eax
.LVL86:
	.loc 1 119 0 discriminator 6
	addq	$1088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL87:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL88:
	ret
.LVL89:
.L17:
	.cfi_restore_state
	.loc 1 113 0 discriminator 1
	movq	%rsi, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL90:
	cmpq	$100, %rax
	je	.L15
	.loc 1 113 0 is_stmt 0
	movl	$0, %ebx
	jmp	.L15
	.cfi_endproc
.LFE12:
	.seh_endproc
	.section	.text$_ZN16IntegerFormatterILi16EEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16IntegerFormatterILi16EEC1Em
	.def	_ZN16IntegerFormatterILi16EEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16IntegerFormatterILi16EEC1Em
_ZN16IntegerFormatterILi16EEC1Em:
.LFB20:
	.file 4 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/IntegerFormatter.h"
	.loc 4 16 0 is_stmt 1
	.cfi_startproc
.LVL91:
	.seh_endprologue
.LBB3:
	.loc 4 17 0
	movq	%rdx, (%rcx)
	ret
.LBE3:
	.cfi_endproc
.LFE20:
	.seh_endproc
	.section	.text$_ZN13MemoryManager12reallocateAsIPcEET_Pvmm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
	.def	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
_ZN13MemoryManager12reallocateAsIPcEET_Pvmm:
.LFB22:
	.loc 3 26 0
	.cfi_startproc
.LVL92:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 3 28 0
	call	_ZN13MemoryManager10reallocateEPvmm
.LVL93:
	.loc 3 29 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv
	.def	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv
_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv:
.LFB13:
	.loc 1 123 0
	.cfi_startproc
.LVL94:
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
	subq	$1088, %rsp
	.seh_stackalloc	1088
	.cfi_def_cfa_offset 1120
	.seh_endprologue
	.loc 1 125 0
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rsi, %rcx
.LVL95:
	call	_ZN13MemoryManagerC1EPvmb
.LVL96:
	.loc 1 126 0
	movl	$100, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL97:
	movq	%rax, %rbx
.LVL98:
	.loc 1 127 0
	leaq	-8(%rax), %rdi
.LVL99:
	.loc 1 130 0
	movq	$-1, %r9
	movl	$80, %r8d
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
.LVL100:
	.loc 1 131 0
	cmpq	%rax, %rbx
	je	.L24
	movl	$0, %eax
.LVL101:
.L20:
	.loc 1 132 0
	addq	$1088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL102:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL103:
	ret
.LVL104:
.L24:
	.cfi_restore_state
	.loc 1 131 0 discriminator 1
	movq	%rdi, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL105:
	cmpq	$80, %rax
	je	.L25
	.loc 1 131 0 is_stmt 0
	movl	$0, %eax
	jmp	.L20
.L25:
	movl	$1, %eax
	jmp	.L20
	.cfi_endproc
.LFE13:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv
	.def	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv
_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv:
.LFB14:
	.loc 1 134 0 is_stmt 1
	.cfi_startproc
.LVL106:
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
	subq	$1088, %rsp
	.seh_stackalloc	1088
	.cfi_def_cfa_offset 1120
	.seh_endprologue
	.loc 1 136 0
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rsi
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rsi, %rcx
.LVL107:
	call	_ZN13MemoryManagerC1EPvmb
.LVL108:
	.loc 1 137 0
	movl	$100, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL109:
	movq	%rax, %rbx
.LVL110:
	.loc 1 138 0
	leaq	-8(%rax), %rdi
.LVL111:
	.loc 1 139 0
	leaq	100(%rax), %rcx
.LVL112:
	.loc 1 140 0
	movl	$100, %edx
	call	_ZN11MemoryChunk9moveAheadEm
.LVL113:
	.loc 1 143 0
	movq	$-1, %r9
	movl	$200, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
.LVL114:
	.loc 1 145 0
	cmpq	%rax, %rbx
	je	.L30
	movl	$0, %eax
.LVL115:
.L26:
	.loc 1 146 0
	addq	$1088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL116:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL117:
	ret
.LVL118:
.L30:
	.cfi_restore_state
	.loc 1 145 0 discriminator 1
	movq	%rdi, %rcx
	call	_ZNK11MemoryChunk7getSizeEv
.LVL119:
	cmpq	$200, %rax
	je	.L31
	.loc 1 145 0 is_stmt 0
	movl	$0, %eax
	jmp	.L26
.L31:
	movl	$1, %eax
	jmp	.L26
	.cfi_endproc
.LFE14:
	.seh_endproc
	.align 2
	.globl	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv
	.def	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv
_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv:
.LFB15:
	.loc 1 149 0 is_stmt 1
	.cfi_startproc
.LVL120:
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
	subq	$1088, %rsp
	.seh_stackalloc	1088
	.cfi_def_cfa_offset 1120
	.seh_endprologue
	.loc 1 151 0
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rbx
	movl	$1, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rcx
.LVL121:
	call	_ZN13MemoryManagerC1EPvmb
.LVL122:
	.loc 1 152 0
	movl	$100, %edx
	movq	%rbx, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL123:
	movq	%rax, %rsi
.LVL124:
	.loc 1 153 0
	leaq	-8(%rax), %rdi
.LVL125:
	.loc 1 154 0
	movl	$100, %edx
	movq	%rbx, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL126:
	.loc 1 157 0
	movb	$65, (%rsi)
	.loc 1 158 0
	movb	$98, 1(%rsi)
	.loc 1 160 0
	movq	$-1, %r9
	movl	$150, %r8d
	movq	%rsi, %rdx
	movq	%rbx, %rcx
	call	_ZN13MemoryManager12reallocateAsIPcEET_Pvmm
.LVL127:
	movq	%rax, %rsi
.LVL128:
	.loc 1 161 0
	movq	%rdi, %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL129:
	movl	%eax, %ebx
	testb	%al, %al
	je	.L36
	movl	$0, %ebx
.L32:
	.loc 1 164 0
	movl	%ebx, %eax
	addq	$1088, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL130:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL131:
	ret
.LVL132:
.L36:
	.cfi_restore_state
	.loc 1 161 0 discriminator 1
	leaq	-8(%rsi), %rcx
	call	_ZNK11MemoryChunk11isAllocatedEv
.LVL133:
	testb	%al, %al
	je	.L35
	.loc 1 161 0 is_stmt 0 discriminator 3
	cmpb	$65, (%rsi)
	jne	.L32
	.loc 1 161 0 discriminator 5
	cmpb	$98, 1(%rsi)
	jne	.L32
	.loc 1 161 0
	movl	%eax, %ebx
	jmp	.L32
.L35:
	movl	%eax, %ebx
	jmp	.L32
	.cfi_endproc
.LFE15:
	.seh_endproc
	.section	.text$_ZNK16IntegerFormatterILi16EE6formatEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK16IntegerFormatterILi16EE6formatEv
	.def	_ZNK16IntegerFormatterILi16EE6formatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK16IntegerFormatterILi16EE6formatEv
_ZNK16IntegerFormatterILi16EE6formatEv:
.LFB23:
	.loc 4 24 0 is_stmt 1
	.cfi_startproc
.LVL134:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 4 26 0
	movq	(%rcx), %rcx
.LVL135:
	movl	$65, %r9d
	movq	.refptr.koutBuf(%rip), %r8
	movl	$16, %edx
	call	_Z4itosmjPcm
.LVL136:
	.loc 4 28 0
	movq	.refptr.koutBuf(%rip), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.seh_endproc
	.section	.text$_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,"x"
	.linkonce discard
	.globl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.def	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE:
.LFB21:
	.loc 4 31 0
	.cfi_startproc
.LVL137:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 4 33 0
	movq	%rdx, %rcx
.LVL138:
	call	_ZNK16IntegerFormatterILi16EE6formatEv
.LVL139:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN6OutputlsEPKc
.LVL140:
	.loc 4 35 0
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL141:
	ret
	.cfi_endproc
.LFE21:
	.seh_endproc
	.section .rdata,"dr"
.LC5:
	.ascii ",\0"
	.text
	.align 2
	.globl	_ZN17TestMemoryManager17allocateCorrectlyEv
	.def	_ZN17TestMemoryManager17allocateCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN17TestMemoryManager17allocateCorrectlyEv
_ZN17TestMemoryManager17allocateCorrectlyEv:
.LFB11:
	.loc 1 79 0
	.cfi_startproc
.LVL142:
	pushq	%r15
	.seh_pushreg	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.seh_pushreg	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.seh_pushreg	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -72
	subq	$1144, %rsp
	.seh_stackalloc	1144
	.cfi_def_cfa_offset 1216
	.seh_endprologue
.LVL143:
	.loc 1 83 0
	leaq	64(%rsp), %rbx
.LVL144:
	movl	$1015, %edx
	movq	%rbx, %rcx
.LVL145:
	call	_ZN11MemoryChunk7setSizeEm
.LVL146:
	.loc 1 84 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk18setNextBaseFromEndEm
.LVL147:
	.loc 1 85 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk23setNextValidChunkOffsetEm
.LVL148:
	.loc 1 86 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk12setAllocatedEb
.LVL149:
	.loc 1 87 0
	movl	$0, %edx
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL150:
	.loc 1 89 0
	movq	%rbx, %rcx
	call	_ZN11MemoryChunk10getDataEndEv
.LVL151:
	.loc 1 90 0
	movl	$1, %edx
	movq	%rax, %rcx
	call	_ZN11MemoryChunk6setEndEb
.LVL152:
	.loc 1 92 0
	leaq	32(%rsp), %rsi
	movl	$0, %r9d
	movl	$1024, %r8d
	movq	%rbx, %rdx
	movq	%rsi, %rcx
	call	_ZN13MemoryManagerC1EPvmb
.LVL153:
	.loc 1 94 0
	movl	$500, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL154:
	movq	%rax, %r12
.LVL155:
	.loc 1 95 0
	movl	$100, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL156:
	movq	%rax, %r13
.LVL157:
	.loc 1 96 0
	movl	$30, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL158:
	movq	%rax, %r14
.LVL159:
	.loc 1 97 0
	movl	$400, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL160:
	movq	%rax, %rdi
.LVL161:
	.loc 1 98 0
	movl	$1000, %edx
	movq	%rsi, %rcx
	call	_ZN13MemoryManager10allocateAsIPcEET_m
.LVL162:
	movq	%rax, %rbx
.LVL163:
	.loc 1 103 0
	leaq	1096(%rsp), %rsi
	movq	%rax, %rdx
	movq	%rsi, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
.LVL164:
	.loc 1 102 0
	leaq	1104(%rsp), %rbp
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
.LVL165:
	.loc 1 101 0
	leaq	1112(%rsp), %r15
	movq	%r14, %rdx
	movq	%r15, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
.LVL166:
	.loc 1 100 0
	leaq	1120(%rsp), %r14
.LVL167:
	movq	%r13, %rdx
	movq	%r14, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
.LVL168:
	.loc 1 99 0
	leaq	1128(%rsp), %r13
.LVL169:
	movq	%r12, %rdx
	movq	%r13, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
.LVL170:
	movq	%r13, %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL171:
	.loc 1 100 0
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL172:
	movq	%r14, %rdx
	movq	%rax, %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL173:
	.loc 1 101 0
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL174:
	movq	%r15, %rdx
	movq	%rax, %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL175:
	.loc 1 102 0
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL176:
	movq	%rbp, %rdx
	movq	%rax, %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL177:
	.loc 1 103 0
	leaq	.LC5(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL178:
	movq	%rsi, %rdx
	movq	%rax, %rcx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL179:
	leaq	.LC4(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LVL180:
	.loc 1 105 0
	testq	%rdi, %rdi
	sete	%al
	testq	%rbx, %rbx
	sete	%dl
	andl	%edx, %eax
	.loc 1 106 0
	addq	$1144, %rsp
	.cfi_def_cfa_offset 72
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 64
.LVL181:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 56
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 48
.LVL182:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
.LVL183:
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.seh_endproc
	.def	_GLOBAL__sub_I_TestMemoryManager.cpp;	.scl	3;	.type	32;	.endef
	.seh_proc	_GLOBAL__sub_I_TestMemoryManager.cpp
_GLOBAL__sub_I_TestMemoryManager.cpp:
.LFB25:
	.loc 1 173 0
	.cfi_startproc
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 173 0
	movl	$65535, %edx
	movl	$1, %ecx
	call	_Z41__static_initialization_and_destruction_0ii
	nop
.LVL184:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE25:
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_GLOBAL__sub_I_TestMemoryManager.cpp
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 8 "/usr/include/machine/_default_types.h"
	.file 9 "/usr/include/sys/_stdint.h"
	.file 10 "/usr/include/stdint.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryChunk.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryManager.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/printk.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/IntegerFormatter.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/test/TestMemoryManager.h"
	.file 18 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2d0c
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti -fsigned-char -fPIC\0"
	.byte	0x4
	.ascii "../src/test/TestMemoryManager.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/chap003/Debug-host\0"
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
	.long	0x146
	.uleb128 0x4
	.long	0x133
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1a3
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x5
	.word	0x1ab
	.long	0x1a3
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x5
	.word	0x1ac
	.long	0x1b4
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
	.long	0x15b
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x12
	.byte	0
	.long	0x2c1
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x1c3
	.uleb128 0xa
	.byte	0x7
	.byte	0x30
	.long	0x4ae
	.uleb128 0xa
	.byte	0x7
	.byte	0x31
	.long	0x4cb
	.uleb128 0xa
	.byte	0x7
	.byte	0x32
	.long	0x4ea
	.uleb128 0xa
	.byte	0x7
	.byte	0x33
	.long	0x509
	.uleb128 0xa
	.byte	0x7
	.byte	0x35
	.long	0x614
	.uleb128 0xa
	.byte	0x7
	.byte	0x36
	.long	0x63b
	.uleb128 0xa
	.byte	0x7
	.byte	0x37
	.long	0x664
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x68d
	.uleb128 0xa
	.byte	0x7
	.byte	0x3a
	.long	0x56a
	.uleb128 0xa
	.byte	0x7
	.byte	0x3b
	.long	0x593
	.uleb128 0xa
	.byte	0x7
	.byte	0x3c
	.long	0x5be
	.uleb128 0xa
	.byte	0x7
	.byte	0x3d
	.long	0x5e9
	.uleb128 0xa
	.byte	0x7
	.byte	0x3f
	.long	0x528
	.uleb128 0xa
	.byte	0x7
	.byte	0x40
	.long	0x549
	.uleb128 0xa
	.byte	0x7
	.byte	0x42
	.long	0x4bc
	.uleb128 0xa
	.byte	0x7
	.byte	0x43
	.long	0x4da
	.uleb128 0xa
	.byte	0x7
	.byte	0x44
	.long	0x4f9
	.uleb128 0xa
	.byte	0x7
	.byte	0x45
	.long	0x518
	.uleb128 0xa
	.byte	0x7
	.byte	0x47
	.long	0x627
	.uleb128 0xa
	.byte	0x7
	.byte	0x48
	.long	0x64f
	.uleb128 0xa
	.byte	0x7
	.byte	0x49
	.long	0x678
	.uleb128 0xa
	.byte	0x7
	.byte	0x4a
	.long	0x6a1
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x57e
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x5a8
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x5d3
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x5fe
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x538
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x559
	.byte	0
	.uleb128 0x3
	.ascii "__int8_t\0"
	.byte	0x8
	.byte	0x29
	.long	0x2d1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "__uint8_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0x2f1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "__int16_t\0"
	.byte	0x8
	.byte	0x37
	.long	0x313
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "__uint16_t\0"
	.byte	0x8
	.byte	0x39
	.long	0x332
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "__int32_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x359
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x359
	.uleb128 0x3
	.ascii "__uint32_t\0"
	.byte	0x8
	.byte	0x4f
	.long	0x377
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "__int64_t\0"
	.byte	0x8
	.byte	0x67
	.long	0x127
	.uleb128 0x3
	.ascii "__uint64_t\0"
	.byte	0x8
	.byte	0x69
	.long	0x146
	.uleb128 0x3
	.ascii "__int_least8_t\0"
	.byte	0x8
	.byte	0x86
	.long	0x2d1
	.uleb128 0x3
	.ascii "__uint_least8_t\0"
	.byte	0x8
	.byte	0x88
	.long	0x2f1
	.uleb128 0x3
	.ascii "__int_least16_t\0"
	.byte	0x8
	.byte	0xa0
	.long	0x313
	.uleb128 0x3
	.ascii "__uint_least16_t\0"
	.byte	0x8
	.byte	0xa2
	.long	0x332
	.uleb128 0x3
	.ascii "__int_least32_t\0"
	.byte	0x8
	.byte	0xb6
	.long	0x359
	.uleb128 0x3
	.ascii "__uint_least32_t\0"
	.byte	0x8
	.byte	0xb8
	.long	0x377
	.uleb128 0x3
	.ascii "__int_least64_t\0"
	.byte	0x8
	.byte	0xc8
	.long	0x127
	.uleb128 0x3
	.ascii "__uint_least64_t\0"
	.byte	0x8
	.byte	0xca
	.long	0x146
	.uleb128 0x3
	.ascii "__intmax_t\0"
	.byte	0x8
	.byte	0xd6
	.long	0x127
	.uleb128 0x3
	.ascii "__uintmax_t\0"
	.byte	0x8
	.byte	0xde
	.long	0x146
	.uleb128 0x3
	.ascii "__intptr_t\0"
	.byte	0x8
	.byte	0xe6
	.long	0x127
	.uleb128 0x3
	.ascii "__uintptr_t\0"
	.byte	0x8
	.byte	0xe8
	.long	0x146
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x9
	.byte	0x14
	.long	0x2c1
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x9
	.byte	0x18
	.long	0x2e0
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x9
	.byte	0x20
	.long	0x302
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x9
	.byte	0x24
	.long	0x320
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x9
	.byte	0x2c
	.long	0x348
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x9
	.byte	0x30
	.long	0x365
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x9
	.byte	0x38
	.long	0x387
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x9
	.byte	0x3c
	.long	0x398
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x9
	.byte	0x43
	.long	0x464
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x476
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x9
	.byte	0x4d
	.long	0x489
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x9
	.byte	0x52
	.long	0x49b
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0xa
	.byte	0x15
	.long	0x3aa
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0xa
	.byte	0x16
	.long	0x3c0
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0xa
	.byte	0x1b
	.long	0x3d7
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0xa
	.byte	0x1c
	.long	0x3ee
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0xa
	.byte	0x21
	.long	0x406
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0xa
	.byte	0x22
	.long	0x41d
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0xa
	.byte	0x27
	.long	0x435
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0xa
	.byte	0x28
	.long	0x44c
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0xa
	.byte	0x33
	.long	0x2d1
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0xa
	.byte	0x34
	.long	0x2f1
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0xa
	.byte	0x3d
	.long	0x127
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0xa
	.byte	0x3e
	.long	0x146
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0xa
	.byte	0x47
	.long	0x127
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0xa
	.byte	0x48
	.long	0x146
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0xa
	.byte	0x51
	.long	0x127
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0xa
	.byte	0x52
	.long	0x146
	.uleb128 0xb
	.long	0x6df
	.long	0x6c6
	.uleb128 0xc
	.long	0x6cb
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x6b6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x6d7
	.uleb128 0xd
	.ascii "EMPTY_STR\0"
	.byte	0xb
	.byte	0x1c
	.long	0x6c6
	.uleb128 0xe
	.ascii "koutBufSize\0"
	.byte	0xb
	.byte	0x1f
	.long	0x141
	.byte	0x41
	.uleb128 0xb
	.long	0x6d7
	.long	0x719
	.uleb128 0xc
	.long	0x6cb
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "koutBuf\0"
	.byte	0xb
	.byte	0x20
	.long	0x709
	.uleb128 0xf
	.ascii "UNIT_K\0"
	.byte	0xb
	.byte	0x22
	.long	0x360
	.word	0x400
	.uleb128 0xf
	.ascii "KiB\0"
	.byte	0xb
	.byte	0x23
	.long	0x360
	.word	0x400
	.uleb128 0x10
	.ascii "MiB\0"
	.byte	0xb
	.byte	0x24
	.long	0x360
	.long	0x100000
	.uleb128 0x10
	.ascii "GiB\0"
	.byte	0xb
	.byte	0x25
	.long	0x360
	.long	0x40000000
	.uleb128 0xb
	.long	0x6df
	.long	0x76e
	.uleb128 0x11
	.byte	0
	.uleb128 0xd
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0x763
	.uleb128 0x12
	.secrel32	.LASF0
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.long	0xdd9
	.uleb128 0x13
	.ascii "nextValidChunkOffset\0"
	.byte	0xd
	.byte	0x43
	.long	0x518
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x13
	.ascii "endMark\0"
	.byte	0xd
	.byte	0x44
	.long	0x518
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x13
	.ascii "allocated\0"
	.byte	0xd
	.byte	0x45
	.long	0x518
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x13
	.ascii "size\0"
	.byte	0xd
	.byte	0x46
	.long	0x518
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x13
	.ascii "nextBaseFromEnd\0"
	.byte	0xd
	.byte	0x47
	.long	0x518
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF0
	.byte	0xd
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Ev\0"
	.byte	0x1
	.long	0x823
	.long	0x829
	.uleb128 0x15
	.long	0xdde
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF0
	.byte	0xd
	.byte	0x1c
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0x852
	.long	0x871
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0xde4
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0xde4
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "isAllocated\0"
	.byte	0xd
	.byte	0x1d
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x8ae
	.long	0x8b4
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x18
	.ascii "setAllocated\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0x8ee
	.long	0x8f9
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0xde4
	.byte	0
	.uleb128 0x17
	.ascii "isEnd\0"
	.byte	0xd
	.byte	0x1f
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x929
	.long	0x92f
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x18
	.ascii "setEnd\0"
	.byte	0xd
	.byte	0x20
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0x95c
	.long	0x967
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0xde4
	.byte	0
	.uleb128 0x17
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x21
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0xdec
	.byte	0x1
	.long	0x99b
	.long	0x9a1
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x17
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x22
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0xdde
	.byte	0x1
	.long	0x9d4
	.long	0x9da
	.uleb128 0x15
	.long	0xdde
	.byte	0
	.uleb128 0x17
	.ascii "getSize\0"
	.byte	0xd
	.byte	0x23
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x133
	.byte	0x1
	.long	0xa0e
	.long	0xa14
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x18
	.ascii "setSize\0"
	.byte	0xd
	.byte	0x24
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xa43
	.long	0xa4e
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF1
	.byte	0xd
	.byte	0x25
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0xdf2
	.byte	0x1
	.long	0xa81
	.long	0xa87
	.uleb128 0x15
	.long	0xdde
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF1
	.byte	0xd
	.byte	0x26
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0xdf4
	.byte	0x1
	.long	0xabb
	.long	0xac1
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF2
	.byte	0xd
	.byte	0x27
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0xdf2
	.byte	0x1
	.long	0xaf4
	.long	0xafa
	.uleb128 0x15
	.long	0xdde
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF2
	.byte	0xd
	.byte	0x28
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0xdf4
	.byte	0x1
	.long	0xb2e
	.long	0xb34
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x17
	.ascii "getNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x29
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x518
	.byte	0x1
	.long	0xb7f
	.long	0xb85
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x18
	.ascii "setNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x2a
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xbcb
	.long	0xbd6
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x518
	.byte	0
	.uleb128 0x17
	.ascii "getNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2b
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x518
	.byte	0x1
	.long	0xc2b
	.long	0xc31
	.uleb128 0x15
	.long	0xdec
	.byte	0
	.uleb128 0x18
	.ascii "setNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2c
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0xc81
	.long	0xc8c
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x518
	.byte	0
	.uleb128 0x17
	.ascii "moveAhead\0"
	.byte	0xd
	.byte	0x37
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0xdde
	.byte	0x1
	.long	0xcc3
	.long	0xcce
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xd
	.byte	0x39
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x133
	.byte	0x1
	.long	0xd38
	.long	0xd48
	.uleb128 0x15
	.long	0xdec
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "split\0"
	.byte	0xd
	.byte	0x3b
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xde4
	.byte	0x1
	.long	0xd77
	.long	0xd82
	.uleb128 0x15
	.long	0xdde
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x1a
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xd
	.byte	0x3f
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0xdd2
	.uleb128 0x15
	.long	0xdde
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x77f
	.uleb128 0x1b
	.byte	0x8
	.long	0x77f
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x1b
	.byte	0x8
	.long	0xdd9
	.uleb128 0x1c
	.byte	0x8
	.uleb128 0x1b
	.byte	0x8
	.long	0xdfa
	.uleb128 0x1d
	.uleb128 0x12
	.secrel32	.LASF3
	.byte	0x18
	.byte	0xe
	.byte	0x19
	.long	0x11ca
	.uleb128 0x1e
	.ascii "headChunk\0"
	.byte	0xe
	.byte	0x54
	.long	0xdde
	.byte	0
	.uleb128 0x1f
	.secrel32	.LASF4
	.byte	0xe
	.byte	0x55
	.long	0x11cf
	.byte	0x8
	.uleb128 0x1e
	.ascii "size\0"
	.byte	0xe
	.byte	0x56
	.long	0x141
	.byte	0x10
	.uleb128 0x20
	.secrel32	.LASF3
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0xe59
	.long	0xe5f
	.uleb128 0x15
	.long	0x11d5
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF3
	.byte	0xe
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0xe89
	.long	0xe9e
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0xde4
	.byte	0
	.uleb128 0x17
	.ascii "normalizeAllocSize\0"
	.byte	0xe
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x133
	.byte	0x1
	.long	0xeea
	.long	0xef5
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0xdf2
	.byte	0x1
	.long	0xf27
	.long	0xf32
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0xdf2
	.byte	0x1
	.long	0xf65
	.long	0xf75
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "tryIncrease\0"
	.byte	0xe
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xde4
	.byte	0x1
	.long	0xfb5
	.long	0xfc5
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "tryDecrease\0"
	.byte	0xe
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xde4
	.byte	0x1
	.long	0x1005
	.long	0x1015
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "reallocate\0"
	.byte	0xe
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0xdf2
	.byte	0x1
	.long	0x1054
	.long	0x1069
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x18
	.ascii "deallocate\0"
	.byte	0xe
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x10a2
	.long	0x10ad
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.byte	0
	.uleb128 0x17
	.ascii "getAllocatedLength\0"
	.byte	0xe
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x133
	.byte	0x1
	.long	0x10fb
	.long	0x1106
	.uleb128 0x15
	.long	0x11e0
	.uleb128 0x16
	.long	0xdf2
	.byte	0
	.uleb128 0x17
	.ascii "reallocateAs<char*>\0"
	.byte	0x3
	.byte	0x1a
	.ascii "_ZN13MemoryManager12reallocateAsIPcEET_Pvmm\0"
	.long	0x1203
	.byte	0x1
	.long	0x115d
	.long	0x1172
	.uleb128 0x21
	.ascii "T\0"
	.long	0x1203
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0xdf2
	.uleb128 0x16
	.long	0x133
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x22
	.ascii "allocateAs<char*>\0"
	.byte	0x3
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPcEET_m\0"
	.long	0x1203
	.byte	0x1
	.long	0x11be
	.uleb128 0x21
	.ascii "T\0"
	.long	0x1203
	.uleb128 0x15
	.long	0x11d5
	.uleb128 0x16
	.long	0x133
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xdfb
	.uleb128 0x1b
	.byte	0x8
	.long	0x6df
	.uleb128 0x1b
	.byte	0x8
	.long	0xdfb
	.uleb128 0x4
	.long	0x11d5
	.uleb128 0x1b
	.byte	0x8
	.long	0x11ca
	.uleb128 0xd
	.ascii "mman\0"
	.byte	0xe
	.byte	0x5a
	.long	0xdfb
	.uleb128 0x23
	.ascii "RAM_START\0"
	.byte	0x2
	.byte	0x13
	.long	0x1209
	.uleb128 0x1b
	.byte	0x8
	.long	0x6d7
	.uleb128 0x4
	.long	0x1203
	.uleb128 0x10
	.ascii "RAM_SIZE\0"
	.byte	0x2
	.byte	0x14
	.long	0x141
	.long	0x1f000
	.uleb128 0x24
	.ascii "Output\0"
	.byte	0x1
	.byte	0xf
	.byte	0x14
	.long	0x146f
	.uleb128 0x17
	.ascii "print\0"
	.byte	0xf
	.byte	0x16
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x133
	.byte	0x1
	.long	0x125d
	.long	0x126d
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x11cf
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x17
	.ascii "print\0"
	.byte	0xf
	.byte	0x17
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x133
	.byte	0x1
	.long	0x1298
	.long	0x12a3
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x11cf
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x18
	.ascii "_ZN6OutputlsEc\0"
	.long	0x1475
	.byte	0x1
	.long	0x12c6
	.long	0x12d1
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x6d7
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1a
	.ascii "_ZN6OutputlsEh\0"
	.long	0x1475
	.byte	0x1
	.long	0x12f4
	.long	0x12ff
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x4bc
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1b
	.ascii "_ZN6OutputlsEt\0"
	.long	0x1475
	.byte	0x1
	.long	0x1322
	.long	0x132d
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x4da
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN6OutputlsEj\0"
	.long	0x1475
	.byte	0x1
	.long	0x1350
	.long	0x135b
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x4f9
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1d
	.ascii "_ZN6OutputlsEs\0"
	.long	0x1475
	.byte	0x1
	.long	0x137e
	.long	0x1389
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x313
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1e
	.ascii "_ZN6OutputlsEi\0"
	.long	0x1475
	.byte	0x1
	.long	0x13ac
	.long	0x13b7
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x359
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1f
	.ascii "_ZN6OutputlsEd\0"
	.long	0x1475
	.byte	0x1
	.long	0x13da
	.long	0x13e5
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x1480
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x20
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0x1475
	.byte	0x1
	.long	0x140a
	.long	0x1415
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x11cf
	.byte	0
	.uleb128 0x19
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x21
	.ascii "_ZN6OutputlsEm\0"
	.long	0x1475
	.byte	0x1
	.long	0x1438
	.long	0x1443
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x25
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x22
	.ascii "_ZN6OutputlsEPv\0"
	.long	0x1475
	.byte	0x1
	.long	0x1463
	.uleb128 0x15
	.long	0x146f
	.uleb128 0x16
	.long	0xdf2
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.long	0x1222
	.uleb128 0x26
	.byte	0x8
	.long	0x1222
	.uleb128 0x4
	.long	0x1475
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0xd
	.ascii "kout\0"
	.byte	0xf
	.byte	0x27
	.long	0x1222
	.uleb128 0x3
	.ascii "Hex\0"
	.byte	0x10
	.byte	0x1a
	.long	0x14a1
	.uleb128 0x24
	.ascii "IntegerFormatter<16>\0"
	.byte	0x8
	.byte	0x10
	.byte	0x10
	.long	0x1593
	.uleb128 0x1e
	.ascii "num\0"
	.byte	0x10
	.byte	0x16
	.long	0x133
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF7
	.byte	0x4
	.byte	0x10
	.ascii "_ZN16IntegerFormatterILi16EEC4Em\0"
	.byte	0x1
	.long	0x14fb
	.long	0x1506
	.uleb128 0x15
	.long	0x1a4b
	.uleb128 0x16
	.long	0x133
	.byte	0
	.uleb128 0x14
	.secrel32	.LASF7
	.byte	0x4
	.byte	0x14
	.ascii "_ZN16IntegerFormatterILi16EEC4EPv\0"
	.byte	0x1
	.long	0x1538
	.long	0x1543
	.uleb128 0x15
	.long	0x1a4b
	.uleb128 0x16
	.long	0xdf2
	.byte	0
	.uleb128 0x17
	.ascii "format\0"
	.byte	0x4
	.byte	0x18
	.ascii "_ZNK16IntegerFormatterILi16EE6formatEv\0"
	.long	0x1203
	.byte	0x1
	.long	0x1581
	.long	0x1587
	.uleb128 0x15
	.long	0x1a56
	.byte	0
	.uleb128 0x27
	.ascii "Base\0"
	.long	0x359
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x14a1
	.uleb128 0x12
	.secrel32	.LASF8
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.long	0x1a40
	.uleb128 0x14
	.secrel32	.LASF8
	.byte	0x11
	.byte	0x11
	.ascii "_ZN17TestMemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x15cf
	.long	0x15d5
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "memoryChunkMergeCorrectly\0"
	.byte	0x11
	.byte	0x12
	.ascii "_ZN17TestMemoryManager25memoryChunkMergeCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1633
	.long	0x1639
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "memoryChunkSpiltCorrectly\0"
	.byte	0x11
	.byte	0x13
	.ascii "_ZN17TestMemoryManager25memoryChunkSpiltCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1697
	.long	0x169d
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "uncontiguousChunkMemoryAllocateCorrectly\0"
	.byte	0x11
	.byte	0x14
	.ascii "_ZN17TestMemoryManager40uncontiguousChunkMemoryAllocateCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1719
	.long	0x171f
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "allocateCorrectly\0"
	.byte	0x11
	.byte	0x15
	.ascii "_ZN17TestMemoryManager17allocateCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x176d
	.long	0x1773
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "alignedAllocateCorrectly\0"
	.byte	0x11
	.byte	0x16
	.ascii "_ZN17TestMemoryManager24alignedAllocateCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x17cf
	.long	0x17d5
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "deallocateCorrectly\0"
	.byte	0x11
	.byte	0x17
	.ascii "_ZN17TestMemoryManager19deallocateCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1827
	.long	0x182d
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "reallocateSmallerCorrectly\0"
	.byte	0x11
	.byte	0x18
	.ascii "_ZN17TestMemoryManager26reallocateSmallerCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x188d
	.long	0x1893
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "reallocateInPlaceCollectCorrectly\0"
	.byte	0x11
	.byte	0x19
	.ascii "_ZN17TestMemoryManager33reallocateInPlaceCollectCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1901
	.long	0x1907
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "reallocateOutOfPlaceMoveCorrectly\0"
	.byte	0x11
	.byte	0x1a
	.ascii "_ZN17TestMemoryManager33reallocateOutOfPlaceMoveCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1975
	.long	0x197b
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x17
	.ascii "criticalConditionsStillCorrectly\0"
	.byte	0x11
	.byte	0x1b
	.ascii "_ZN17TestMemoryManager32criticalConditionsStillCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x19e7
	.long	0x19ed
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.uleb128 0x22
	.ascii "nextChunkCorrectly\0"
	.byte	0x11
	.byte	0x1c
	.ascii "_ZN17TestMemoryManager18nextChunkCorrectlyEv\0"
	.long	0xde4
	.byte	0x1
	.long	0x1a39
	.uleb128 0x15
	.long	0x1a40
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x8
	.long	0x1598
	.uleb128 0x4
	.long	0x1a40
	.uleb128 0x1b
	.byte	0x8
	.long	0x14a1
	.uleb128 0x4
	.long	0x1a4b
	.uleb128 0x1b
	.byte	0x8
	.long	0x1593
	.uleb128 0x4
	.long	0x1a56
	.uleb128 0x28
	.ascii "_GLOBAL__sub_I_TestMemoryManager.cpp\0"
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ab8
	.uleb128 0x29
	.quad	.LVL184
	.long	0x1ab8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0xffff
	.byte	0
	.byte	0
	.uleb128 0x28
	.ascii "__static_initialization_and_destruction_0\0"
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b3f
	.uleb128 0x2b
	.ascii "__initialize_p\0"
	.byte	0x1
	.byte	0xad
	.long	0x359
	.secrel32	.LLST0
	.uleb128 0x2b
	.ascii "__priority\0"
	.byte	0x1
	.byte	0xad
	.long	0x359
	.secrel32	.LLST1
	.uleb128 0x29
	.quad	.LVL4
	.long	0x2ce2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x40
	.byte	0x40
	.byte	0x24
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1543
	.long	0x1b62
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b62
	.long	0x1b8c
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a5c
	.secrel32	.LLST40
	.uleb128 0x29
	.quad	.LVL136
	.long	0x2cff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x1106
	.long	0x1bb6
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bb6
	.long	0x1c26
	.uleb128 0x21
	.ascii "T\0"
	.long	0x1203
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x11db
	.secrel32	.LLST23
	.uleb128 0x2b
	.ascii "origin\0"
	.byte	0x3
	.byte	0x1a
	.long	0xdf2
	.secrel32	.LLST24
	.uleb128 0x2b
	.ascii "newSize\0"
	.byte	0x3
	.byte	0x1a
	.long	0x133
	.secrel32	.LLST25
	.uleb128 0x2b
	.ascii "oldSize\0"
	.byte	0x3
	.byte	0x1a
	.long	0x133
	.secrel32	.LLST26
	.uleb128 0x29
	.quad	.LVL93
	.long	0x1015
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0
	.byte	0
	.uleb128 0x2f
	.ascii "operator<< <16>\0"
	.byte	0x4
	.byte	0x1f
	.ascii "_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE\0"
	.long	0x1475
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x1cda
	.uleb128 0x27
	.ascii "Base\0"
	.long	0x359
	.byte	0x10
	.uleb128 0x2b
	.ascii "out\0"
	.byte	0x4
	.byte	0x1f
	.long	0x147b
	.secrel32	.LLST41
	.uleb128 0x2b
	.ascii "hf\0"
	.byte	0x4
	.byte	0x1f
	.long	0x1ce0
	.secrel32	.LLST42
	.uleb128 0x30
	.quad	.LVL139
	.long	0x1b3f
	.long	0x1cc5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x29
	.quad	.LVL140
	.long	0x13e5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.long	0x1593
	.uleb128 0x4
	.long	0x1cda
	.uleb128 0x31
	.long	0x14ca
	.byte	0
	.long	0x1cf3
	.long	0x1d08
	.uleb128 0x32
	.secrel32	.LASF9
	.long	0x1a51
	.uleb128 0x33
	.ascii "num\0"
	.byte	0x4
	.byte	0x10
	.long	0x133
	.byte	0
	.uleb128 0x34
	.long	0x1ce5
	.ascii "_ZN16IntegerFormatterILi16EEC1Em\0"
	.long	0x1d4c
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d4c
	.long	0x1d5b
	.uleb128 0x35
	.long	0x1cf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x35
	.long	0x1cfc
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2c
	.long	0x1172
	.long	0x1d85
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d85
	.long	0x1dbc
	.uleb128 0x21
	.ascii "T\0"
	.long	0x1203
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x11db
	.secrel32	.LLST17
	.uleb128 0x2b
	.ascii "n\0"
	.byte	0x3
	.byte	0xf
	.long	0x133
	.secrel32	.LLST18
	.uleb128 0x29
	.quad	.LVL74
	.long	0xef5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x19ed
	.byte	0x1
	.byte	0xa7
	.long	0x1de1
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1de1
	.long	0x1e8e
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST15
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0xa9
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0xaa
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x39
	.secrel32	.LASF10
	.byte	0x1
	.byte	0xab
	.long	0xdde
	.secrel32	.LLST16
	.uleb128 0x3a
	.quad	.LVL66
	.long	0x1e42
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL67
	.long	0x9a1
	.long	0x1e5a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL68
	.long	0x8f9
	.uleb128 0x30
	.quad	.LVL71
	.long	0x9a1
	.long	0x1e80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.byte	0
	.uleb128 0x3b
	.quad	.LVL72
	.long	0x9a1
	.byte	0
	.uleb128 0xb
	.long	0x6d7
	.long	0x1e9f
	.uleb128 0x3c
	.long	0x6cb
	.word	0x3ff
	.byte	0
	.uleb128 0x36
	.long	0x1907
	.byte	0x1
	.byte	0x94
	.long	0x1ec4
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ec4
	.long	0x1fdf
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST36
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x96
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x97
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x3d
	.ascii "p1\0"
	.byte	0x1
	.byte	0x98
	.long	0x1203
	.secrel32	.LLST37
	.uleb128 0x39
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x99
	.long	0xdde
	.secrel32	.LLST38
	.uleb128 0x23
	.ascii "p2\0"
	.byte	0x1
	.byte	0x9a
	.long	0x1203
	.uleb128 0x3d
	.ascii "rp1\0"
	.byte	0x1
	.byte	0xa0
	.long	0x1203
	.secrel32	.LLST39
	.uleb128 0x3a
	.quad	.LVL122
	.long	0x1f4c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL123
	.long	0x1d5b
	.long	0x1f6a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL126
	.long	0x1d5b
	.long	0x1f88
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL127
	.long	0x1b8c
	.long	0x1fb2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x30
	.quad	.LVL129
	.long	0x871
	.long	0x1fca
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL133
	.long	0x871
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x1893
	.byte	0x1
	.byte	0x85
	.long	0x2004
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x2004
	.long	0x2114
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST31
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x87
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x88
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x3d
	.ascii "p1\0"
	.byte	0x1
	.byte	0x89
	.long	0x1203
	.secrel32	.LLST32
	.uleb128 0x39
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x8a
	.long	0xdde
	.secrel32	.LLST33
	.uleb128 0x3d
	.ascii "freeChunk1\0"
	.byte	0x1
	.byte	0x8b
	.long	0xdde
	.secrel32	.LLST34
	.uleb128 0x3d
	.ascii "rp1\0"
	.byte	0x1
	.byte	0x8f
	.long	0x1203
	.secrel32	.LLST35
	.uleb128 0x3a
	.quad	.LVL108
	.long	0x2098
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL109
	.long	0x1d5b
	.long	0x20b6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL113
	.long	0xc8c
	.long	0x20d5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL114
	.long	0x1b8c
	.long	0x20ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.quad	.LVL119
	.long	0x9da
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x182d
	.byte	0x1
	.byte	0x7a
	.long	0x2139
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x2139
	.long	0x2214
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST27
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x7c
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x7d
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x3d
	.ascii "p1\0"
	.byte	0x1
	.byte	0x7e
	.long	0x1203
	.secrel32	.LLST28
	.uleb128 0x39
	.secrel32	.LASF11
	.byte	0x1
	.byte	0x7f
	.long	0xdde
	.secrel32	.LLST29
	.uleb128 0x3d
	.ascii "rp1\0"
	.byte	0x1
	.byte	0x82
	.long	0x1203
	.secrel32	.LLST30
	.uleb128 0x3a
	.quad	.LVL96
	.long	0x21b7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL97
	.long	0x1d5b
	.long	0x21d5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL100
	.long	0x1b8c
	.long	0x21ff
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x29
	.quad	.LVL105
	.long	0x9da
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x17d5
	.byte	0x1
	.byte	0x6b
	.long	0x2239
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x2239
	.long	0x233c
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST19
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x6d
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x6e
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x3d
	.ascii "p1\0"
	.byte	0x1
	.byte	0x6f
	.long	0x1203
	.secrel32	.LLST20
	.uleb128 0x3d
	.ascii "chunk1\0"
	.byte	0x1
	.byte	0x70
	.long	0xdde
	.secrel32	.LLST21
	.uleb128 0x3d
	.ascii "res\0"
	.byte	0x1
	.byte	0x71
	.long	0xde4
	.secrel32	.LLST22
	.uleb128 0x3a
	.quad	.LVL77
	.long	0x22ba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL78
	.long	0x1d5b
	.long	0x22d8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL81
	.long	0x871
	.long	0x22f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL83
	.long	0x1069
	.long	0x230f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL84
	.long	0x871
	.long	0x2327
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL90
	.long	0x9da
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x171f
	.byte	0x1
	.byte	0x4e
	.long	0x2361
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x2361
	.long	0x2719
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST43
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x50
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1152
	.uleb128 0x39
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x52
	.long	0xdde
	.secrel32	.LLST44
	.uleb128 0x39
	.secrel32	.LASF12
	.byte	0x1
	.byte	0x59
	.long	0xdde
	.secrel32	.LLST45
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x5c
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1184
	.uleb128 0x3d
	.ascii "p1\0"
	.byte	0x1
	.byte	0x5e
	.long	0x1203
	.secrel32	.LLST46
	.uleb128 0x3d
	.ascii "p2\0"
	.byte	0x1
	.byte	0x5f
	.long	0x1203
	.secrel32	.LLST47
	.uleb128 0x3d
	.ascii "p3\0"
	.byte	0x1
	.byte	0x60
	.long	0x1203
	.secrel32	.LLST48
	.uleb128 0x3d
	.ascii "p4\0"
	.byte	0x1
	.byte	0x61
	.long	0x1203
	.secrel32	.LLST49
	.uleb128 0x3d
	.ascii "p5\0"
	.byte	0x1
	.byte	0x62
	.long	0x1203
	.secrel32	.LLST50
	.uleb128 0x30
	.quad	.LVL146
	.long	0xa14
	.long	0x240f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0x3f7
	.byte	0
	.uleb128 0x30
	.quad	.LVL147
	.long	0xb85
	.long	0x242c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL148
	.long	0xc31
	.long	0x2449
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL149
	.long	0x8b4
	.long	0x2466
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL150
	.long	0x92f
	.long	0x2483
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL151
	.long	0xac1
	.long	0x249b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL152
	.long	0x92f
	.long	0x24b2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.quad	.LVL153
	.long	0x24d8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL154
	.long	0x1d5b
	.long	0x24f7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0x1f4
	.byte	0
	.uleb128 0x30
	.quad	.LVL156
	.long	0x1d5b
	.long	0x2515
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.uleb128 0x30
	.quad	.LVL158
	.long	0x1d5b
	.long	0x2532
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x30
	.quad	.LVL160
	.long	0x1d5b
	.long	0x2551
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0x190
	.byte	0
	.uleb128 0x30
	.quad	.LVL162
	.long	0x1d5b
	.long	0x2570
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0x3e8
	.byte	0
	.uleb128 0x30
	.quad	.LVL164
	.long	0x1d08
	.long	0x258e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL165
	.long	0x1d08
	.long	0x25ac
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL166
	.long	0x1d08
	.long	0x25ca
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL168
	.long	0x1d08
	.long	0x25e8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL170
	.long	0x1d08
	.long	0x2606
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL171
	.long	0x1c26
	.long	0x2621
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL172
	.long	0x13e5
	.long	0x2640
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x30
	.quad	.LVL173
	.long	0x1c26
	.long	0x2658
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL174
	.long	0x13e5
	.long	0x2677
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x30
	.quad	.LVL175
	.long	0x1c26
	.long	0x268f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL176
	.long	0x13e5
	.long	0x26ae
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x30
	.quad	.LVL177
	.long	0x1c26
	.long	0x26c6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL178
	.long	0x13e5
	.long	0x26e5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.byte	0
	.uleb128 0x30
	.quad	.LVL179
	.long	0x1c26
	.long	0x26fd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.quad	.LVL180
	.long	0x13e5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	0x169d
	.byte	0x1
	.byte	0x39
	.long	0x273e
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x273e
	.long	0x28a4
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST12
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x3b
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1040
	.uleb128 0x39
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x3e
	.long	0xdde
	.secrel32	.LLST13
	.uleb128 0x39
	.secrel32	.LASF12
	.byte	0x1
	.byte	0x45
	.long	0xdde
	.secrel32	.LLST14
	.uleb128 0x38
	.ascii "man\0"
	.byte	0x1
	.byte	0x48
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x38
	.ascii "man2\0"
	.byte	0x1
	.byte	0x49
	.long	0xdfb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x30
	.quad	.LVL54
	.long	0xa14
	.long	0x27b6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.word	0x3f7
	.byte	0
	.uleb128 0x30
	.quad	.LVL55
	.long	0xb85
	.long	0x27d3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL56
	.long	0xc31
	.long	0x27f0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL57
	.long	0x8b4
	.long	0x280d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL58
	.long	0x92f
	.long	0x282a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL59
	.long	0xac1
	.long	0x2842
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL60
	.long	0x92f
	.long	0x2859
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3a
	.quad	.LVL61
	.long	0x2880
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.quad	.LVL62
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1104
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x3
	.byte	0xa
	.word	0x400
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x3f
	.long	0x15d5
	.byte	0x1
	.long	0x28c8
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c8
	.long	0x2cb6
	.uleb128 0x2d
	.secrel32	.LASF9
	.long	0x1a46
	.secrel32	.LLST2
	.uleb128 0x37
	.secrel32	.LASF4
	.byte	0x1
	.byte	0x14
	.long	0x1e8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x38
	.ascii "sizes\0"
	.byte	0x1
	.byte	0x15
	.long	0x2cb6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1088
	.uleb128 0x39
	.secrel32	.LASF10
	.byte	0x1
	.byte	0x17
	.long	0xdde
	.secrel32	.LLST3
	.uleb128 0x3d
	.ascii "chunk2\0"
	.byte	0x1
	.byte	0x1d
	.long	0xdde
	.secrel32	.LLST4
	.uleb128 0x3d
	.ascii "chunk3\0"
	.byte	0x1
	.byte	0x20
	.long	0xdde
	.secrel32	.LLST5
	.uleb128 0x3d
	.ascii "chunk4\0"
	.byte	0x1
	.byte	0x23
	.long	0xdde
	.secrel32	.LLST6
	.uleb128 0x3d
	.ascii "chunk5\0"
	.byte	0x1
	.byte	0x2a
	.long	0xdde
	.secrel32	.LLST7
	.uleb128 0x3d
	.ascii "sumSize\0"
	.byte	0x1
	.byte	0x2e
	.long	0x133
	.secrel32	.LLST8
	.uleb128 0x40
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.long	0x29c0
	.uleb128 0x3d
	.ascii "i\0"
	.byte	0x1
	.byte	0x2f
	.long	0x146
	.secrel32	.LLST9
	.uleb128 0x41
	.ascii "__for_range\0"
	.long	0x2cd6
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1088
	.byte	0x9f
	.uleb128 0x42
	.ascii "__for_begin\0"
	.long	0x2cdc
	.secrel32	.LLST10
	.uleb128 0x42
	.ascii "__for_end\0"
	.long	0x2cdc
	.secrel32	.LLST11
	.byte	0
	.uleb128 0x30
	.quad	.LVL9
	.long	0x8b4
	.long	0x29dd
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL10
	.long	0xb85
	.long	0x29fa
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL11
	.long	0xa14
	.long	0x2a12
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL12
	.long	0xc31
	.long	0x2a2f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL13
	.long	0x92f
	.long	0x2a4c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL14
	.long	0x9da
	.long	0x2a64
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL15
	.long	0xb34
	.long	0x2a7c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL17
	.long	0xc31
	.long	0x2a94
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL19
	.long	0xc31
	.long	0x2aac
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL21
	.long	0xc31
	.long	0x2ac9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL22
	.long	0x8b4
	.long	0x2ae6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL23
	.long	0xb85
	.long	0x2b03
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL24
	.long	0xa14
	.long	0x2b1b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL25
	.long	0x92f
	.long	0x2b38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL26
	.long	0xac1
	.long	0x2b50
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL28
	.long	0xc31
	.long	0x2b6d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x30
	.quad	.LVL29
	.long	0x92f
	.long	0x2b8a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.quad	.LVL37
	.long	0xd82
	.long	0x2ba2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL38
	.long	0x9da
	.long	0x2bba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL39
	.long	0x9da
	.long	0x2bd2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL41
	.long	0x13e5
	.long	0x2bf4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.byte	0
	.uleb128 0x30
	.quad	.LVL42
	.long	0x13e5
	.long	0x2c13
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.byte	0
	.uleb128 0x30
	.quad	.LVL43
	.long	0x13e5
	.long	0x2c32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.byte	0
	.uleb128 0x30
	.quad	.LVL44
	.long	0x1415
	.long	0x2c4a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL45
	.long	0x13e5
	.long	0x2c69
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.byte	0
	.uleb128 0x30
	.quad	.LVL46
	.long	0x1415
	.long	0x2c81
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL47
	.long	0x13e5
	.long	0x2ca0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x29
	.quad	.LVL49
	.long	0x9da
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x133
	.long	0x2cc6
	.uleb128 0xc
	.long	0x6cb
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	0x146
	.long	0x2cd6
	.uleb128 0xc
	.long	0x6cb
	.byte	0x3
	.byte	0
	.uleb128 0x26
	.byte	0x8
	.long	0x2cc6
	.uleb128 0x1b
	.byte	0x8
	.long	0x146
	.uleb128 0x43
	.ascii "_Znam\0"
	.ascii "operator new []\0"
	.ascii "_Znam\0"
	.uleb128 0x44
	.secrel32	.LASF13
	.ascii "itos\0"
	.byte	0xc
	.byte	0x1e
	.secrel32	.LASF13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x26
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x6e
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.word	0x1
	.byte	0x52
	.quad	.LVL1
	.quad	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL3
	.word	0x1
	.byte	0x52
	.quad	.LVL3
	.quad	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL1
	.word	0x1
	.byte	0x51
	.quad	.LVL1
	.quad	.LVL2
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL2
	.quad	.LVL4-1
	.word	0x1
	.byte	0x51
	.quad	.LVL4-1
	.quad	.LFE24
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL134
	.quad	.LVL135
	.word	0x1
	.byte	0x52
	.quad	.LVL135
	.quad	.LFE23
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL92
	.quad	.LVL93-1
	.word	0x1
	.byte	0x52
	.quad	.LVL93-1
	.quad	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL92
	.quad	.LVL93-1
	.word	0x1
	.byte	0x51
	.quad	.LVL93-1
	.quad	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL92
	.quad	.LVL93-1
	.word	0x1
	.byte	0x58
	.quad	.LVL93-1
	.quad	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL92
	.quad	.LVL93-1
	.word	0x1
	.byte	0x59
	.quad	.LVL93-1
	.quad	.LFE22
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x59
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL137
	.quad	.LVL138
	.word	0x1
	.byte	0x52
	.quad	.LVL138
	.quad	.LVL141
	.word	0x1
	.byte	0x53
	.quad	.LVL141
	.quad	.LFE21
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL137
	.quad	.LVL139-1
	.word	0x1
	.byte	0x51
	.quad	.LVL139-1
	.quad	.LFE21
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL73
	.quad	.LVL74-1
	.word	0x1
	.byte	0x52
	.quad	.LVL74-1
	.quad	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL73
	.quad	.LVL74-1
	.word	0x1
	.byte	0x51
	.quad	.LVL74-1
	.quad	.LFE17
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL64
	.quad	.LVL65
	.word	0x1
	.byte	0x52
	.quad	.LVL65
	.quad	.LFE16
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL66
	.quad	.LVL69
	.word	0x1
	.byte	0x53
	.quad	.LVL69
	.quad	.LVL70
	.word	0x4
	.byte	0x91
	.sleb128 -1040
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL71-1
	.word	0x1
	.byte	0x52
	.quad	.LVL71-1
	.quad	.LFE16
	.word	0x4
	.byte	0x91
	.sleb128 -1040
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL120
	.quad	.LVL121
	.word	0x1
	.byte	0x52
	.quad	.LVL121
	.quad	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL124
	.quad	.LVL126-1
	.word	0x1
	.byte	0x50
	.quad	.LVL126-1
	.quad	.LVL128
	.word	0x1
	.byte	0x54
	.quad	.LVL128
	.quad	.LVL131
	.word	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.quad	.LVL132
	.quad	.LFE15
	.word	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL125
	.quad	.LVL131
	.word	0x1
	.byte	0x55
	.quad	.LVL132
	.quad	.LFE15
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL128
	.quad	.LVL129-1
	.word	0x1
	.byte	0x50
	.quad	.LVL129-1
	.quad	.LVL130
	.word	0x1
	.byte	0x54
	.quad	.LVL132
	.quad	.LFE15
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL106
	.quad	.LVL107
	.word	0x1
	.byte	0x52
	.quad	.LVL107
	.quad	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL110
	.quad	.LVL113-1
	.word	0x1
	.byte	0x50
	.quad	.LVL113-1
	.quad	.LVL116
	.word	0x1
	.byte	0x53
	.quad	.LVL116
	.quad	.LVL117
	.word	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.quad	.LVL118
	.quad	.LFE14
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL111
	.quad	.LVL117
	.word	0x1
	.byte	0x55
	.quad	.LVL118
	.quad	.LFE14
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL112
	.quad	.LVL113-1
	.word	0x1
	.byte	0x52
	.quad	.LVL113-1
	.quad	.LVL116
	.word	0x4
	.byte	0x73
	.sleb128 100
	.byte	0x9f
	.quad	.LVL116
	.quad	.LVL117
	.word	0x4
	.byte	0x75
	.sleb128 108
	.byte	0x9f
	.quad	.LVL118
	.quad	.LFE14
	.word	0x4
	.byte	0x73
	.sleb128 100
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL114
	.quad	.LVL115
	.word	0x1
	.byte	0x50
	.quad	.LVL118
	.quad	.LVL119-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL94
	.quad	.LVL95
	.word	0x1
	.byte	0x52
	.quad	.LVL95
	.quad	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL98
	.quad	.LVL100-1
	.word	0x1
	.byte	0x50
	.quad	.LVL100-1
	.quad	.LVL102
	.word	0x1
	.byte	0x53
	.quad	.LVL102
	.quad	.LVL103
	.word	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.quad	.LVL104
	.quad	.LFE13
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL99
	.quad	.LVL103
	.word	0x1
	.byte	0x55
	.quad	.LVL104
	.quad	.LFE13
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL100
	.quad	.LVL101
	.word	0x1
	.byte	0x50
	.quad	.LVL104
	.quad	.LVL105-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL75
	.quad	.LVL76
	.word	0x1
	.byte	0x52
	.quad	.LVL76
	.quad	.LFE12
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL79
	.quad	.LVL81-1
	.word	0x1
	.byte	0x50
	.quad	.LVL81-1
	.quad	.LVL88
	.word	0x1
	.byte	0x55
	.quad	.LVL89
	.quad	.LFE12
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL80
	.quad	.LVL87
	.word	0x1
	.byte	0x54
	.quad	.LVL87
	.quad	.LVL88
	.word	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.quad	.LVL89
	.quad	.LFE12
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL82
	.quad	.LVL85
	.word	0x1
	.byte	0x53
	.quad	.LVL85
	.quad	.LVL86
	.word	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL142
	.quad	.LVL145
	.word	0x1
	.byte	0x52
	.quad	.LVL145
	.quad	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL143
	.quad	.LVL144
	.word	0x4
	.byte	0x91
	.sleb128 -1152
	.byte	0x9f
	.quad	.LVL144
	.quad	.LVL163
	.word	0x1
	.byte	0x53
	.quad	.LVL163
	.quad	.LFE11
	.word	0x4
	.byte	0x91
	.sleb128 -1152
	.byte	0x9f
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL151
	.quad	.LVL152-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL155
	.quad	.LVL156-1
	.word	0x1
	.byte	0x50
	.quad	.LVL156-1
	.quad	.LVL183
	.word	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL157
	.quad	.LVL158-1
	.word	0x1
	.byte	0x50
	.quad	.LVL158-1
	.quad	.LVL169
	.word	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL159
	.quad	.LVL160-1
	.word	0x1
	.byte	0x50
	.quad	.LVL160-1
	.quad	.LVL167
	.word	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL161
	.quad	.LVL162-1
	.word	0x1
	.byte	0x50
	.quad	.LVL162-1
	.quad	.LVL182
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL163
	.quad	.LVL164-1
	.word	0x1
	.byte	0x50
	.quad	.LVL164-1
	.quad	.LVL181
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL50
	.quad	.LVL53
	.word	0x1
	.byte	0x52
	.quad	.LVL53
	.quad	.LFE10
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL51
	.quad	.LVL52
	.word	0x4
	.byte	0x91
	.sleb128 -1040
	.byte	0x9f
	.quad	.LVL52
	.quad	.LVL63
	.word	0x1
	.byte	0x53
	.quad	.LVL63
	.quad	.LFE10
	.word	0x4
	.byte	0x91
	.sleb128 -1040
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL59
	.quad	.LVL60-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL5
	.quad	.LVL8
	.word	0x1
	.byte	0x52
	.quad	.LVL8
	.quad	.LFE9
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL6
	.quad	.LVL7
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	.LVL7
	.quad	.LVL16
	.word	0x1
	.byte	0x53
	.quad	.LVL16
	.quad	.LVL31
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL37-1
	.word	0x1
	.byte	0x52
	.quad	.LVL37-1
	.quad	.LVL40
	.word	0x1
	.byte	0x54
	.quad	.LVL40
	.quad	.LVL48
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL49-1
	.word	0x1
	.byte	0x52
	.quad	.LVL49-1
	.quad	.LFE9
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL16
	.quad	.LVL18
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL18
	.quad	.LVL20
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL20
	.quad	.LVL27
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL27
	.quad	.LVL28-1
	.word	0x1
	.byte	0x50
	.quad	.LVL28-1
	.quad	.LVL36
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL29
	.quad	.LVL30
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL36
	.word	0x1
	.byte	0x51
	.quad	.LVL36
	.quad	.LVL49
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL32
	.quad	.LVL34
	.word	0x2
	.byte	0x70
	.sleb128 0
	.quad	.LVL34
	.quad	.LVL35
	.word	0x2
	.byte	0x70
	.sleb128 -8
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL29
	.quad	.LVL30
	.word	0x4
	.byte	0x91
	.sleb128 -1088
	.byte	0x9f
	.quad	.LVL30
	.quad	.LVL37-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL29
	.quad	.LVL31
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	.LVL31
	.quad	.LVL37-1
	.word	0x1
	.byte	0x52
	.quad	.LVL37-1
	.quad	.LVL40
	.word	0x1
	.byte	0x54
	.quad	.LVL40
	.quad	.LVL48
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	.LVL48
	.quad	.LVL49-1
	.word	0x1
	.byte	0x52
	.quad	.LVL49-1
	.quad	.LFE9
	.word	0x4
	.byte	0x91
	.sleb128 -1056
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x7c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB17
	.quad	.LFE17
	.quad	.LFB20
	.quad	.LFE20
	.quad	.LFB22
	.quad	.LFE22
	.quad	.LFB23
	.quad	.LFE23
	.quad	.LFB21
	.quad	.LFE21
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
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\Debug-host\\cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
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
	.file 20 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x14
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
	.file 21 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x15
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
	.file 22 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x16
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
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x17
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
	.file 24 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
	.file 25 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x19
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
	.file 26 "/usr/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1a
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
	.uleb128 0x5c
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x4
	.ascii "MEM_CONFIG_H__ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_PRINTK_H_ \0"
	.file 27 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_INTEGERINTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 28 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/test/test_base.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TEST_BASE_H_ \0"
	.byte	0x1
	.uleb128 0xe
	.ascii "EXPECT_EXPR_EQUAL(expr,value) {do{ if((expr)!=(value)) kout << FATAL << #expr << \"!=\"<<value<<\",the real value is \" << expr << \"\\n\"; }while(false);}\0"
	.byte	0x1
	.uleb128 0x1a
	.ascii "RUN_TEST(testCallable) if(!(testCallable())) { kout << FATAL << \" [TEST] `\"<< #testCallable << \"` failed.\\n\";}\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TESTMEMORYMANAGER_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF3:
	.ascii "MemoryManager\0"
.LASF7:
	.ascii "IntegerFormatter\0"
.LASF2:
	.ascii "getDataEnd\0"
.LASF0:
	.ascii "MemoryChunk\0"
.LASF4:
	.ascii "base\0"
.LASF1:
	.ascii "getDataPtr\0"
.LASF10:
	.ascii "baseChunk\0"
.LASF9:
	.ascii "this\0"
.LASF5:
	.ascii "allocate\0"
.LASF8:
	.ascii "TestMemoryManager\0"
.LASF11:
	.ascii "p1Chunk\0"
.LASF12:
	.ascii "endChunk\0"
.LASF13:
	.ascii "_Z4itosmjPcm\0"
.LASF6:
	.ascii "operator<<\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	__real__Znam;	.scl	2;	.type	32;	.endef
	.def	_Znam;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk12setAllocatedEb;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk18setNextBaseFromEndEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk7setSizeEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk23setNextValidChunkOffsetEm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk6setEndEb;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk7getSizeEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk18getNextBaseFromEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk10getDataEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk25mergeTrailingsUnallocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManagerC1EPvmb;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk7getNextEv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk5isEndEv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.def	_ZNK11MemoryChunk11isAllocatedEv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.def	_ZN11MemoryChunk9moveAheadEm;	.scl	2;	.type	32;	.endef
	.def	_Z4itosmjPcm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.koutBuf, "dr"
	.globl	.refptr.koutBuf
	.linkonce	discard
.refptr.koutBuf:
	.quad	koutBuf
	.section	.rdata$.refptr.kout, "dr"
	.globl	.refptr.kout
	.linkonce	discard
.refptr.kout:
	.quad	kout
