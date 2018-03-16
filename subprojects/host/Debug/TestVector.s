	.file	"TestVector.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl	_ZN10TestVector5setupEv
	.def	_ZN10TestVector5setupEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector5setupEv
_ZN10TestVector5setupEv:
.LFB39:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp"
	.loc 1 12 0
	.cfi_startproc
.LVL0:
	.seh_endprologue
	ret
	.cfi_endproc
.LFE39:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector8teardownEv
	.def	_ZN10TestVector8teardownEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector8teardownEv
_ZN10TestVector8teardownEv:
.LFB40:
	.loc 1 16 0
	.cfi_startproc
.LVL1:
	.loc 1 16 0
	.seh_endprologue
	ret
	.cfi_endproc
.LFE40:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector19initializeCorrectlyEv
	.def	_ZN10TestVector19initializeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector19initializeCorrectlyEv
_ZN10TestVector19initializeCorrectlyEv:
.LFB41:
	.loc 1 21 0
	.cfi_startproc
.LVL2:
	.loc 1 21 0
	.seh_endprologue
	.loc 1 23 0
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE41:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector26capacityDecreasedCorrectlyEv
	.def	_ZN10TestVector26capacityDecreasedCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector26capacityDecreasedCorrectlyEv
_ZN10TestVector26capacityDecreasedCorrectlyEv:
.LFB44:
	.loc 1 43 0
	.cfi_startproc
.LVL3:
	.seh_endprologue
	.loc 1 45 0
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE44:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector17pushBackCorrectlyEv
	.def	_ZN10TestVector17pushBackCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector17pushBackCorrectlyEv
_ZN10TestVector17pushBackCorrectlyEv:
.LFB46:
	.loc 1 54 0
	.cfi_startproc
.LVL4:
	.seh_endprologue
	.loc 1 56 0
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE46:
	.seh_endproc
	.align 2
	.globl	_ZN10TestVector15resizeCorrectlyEv
	.def	_ZN10TestVector15resizeCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector15resizeCorrectlyEv
_ZN10TestVector15resizeCorrectlyEv:
.LFB49:
	.loc 1 82 0
	.cfi_startproc
.LVL5:
	.seh_endprologue
	.loc 1 84 0
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE49:
	.seh_endproc
	.section	.text$_ZN6VectorIiED1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiED1Ev
	.def	_ZN6VectorIiED1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiED1Ev
_ZN6VectorIiED1Ev:
.LFB55:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/data_structures/Vector.h"
	.loc 2 53 0
	.cfi_startproc
.LVL6:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
.LBB16:
	.loc 2 55 0
	movq	(%rcx), %rdx
	testq	%rdx, %rdx
	je	.L7
	.loc 2 57 0
	movq	.refptr.mman(%rip), %rcx
.LVL7:
	call	_ZN13MemoryManager10deallocateEPv
	nop
.LVL8:
.L7:
.LBE16:
	.loc 2 60 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.seh_endproc
	.section	.text$_ZNK6VectorIiE11getCapacityEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIiE11getCapacityEv
	.def	_ZNK6VectorIiE11getCapacityEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIiE11getCapacityEv
_ZNK6VectorIiE11getCapacityEv:
.LFB56:
	.loc 2 109 0
	.cfi_startproc
.LVL9:
	.seh_endprologue
	.loc 2 111 0
	movq	8(%rcx), %rax
	.loc 2 112 0
	ret
	.cfi_endproc
.LFE56:
	.seh_endproc
	.section	.text$_ZNK6VectorIiE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIiE7getSizeEv
	.def	_ZNK6VectorIiE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIiE7getSizeEv
_ZNK6VectorIiE7getSizeEv:
.LFB66:
	.loc 2 103 0
	.cfi_startproc
.LVL10:
	.seh_endprologue
	.loc 2 105 0
	movq	16(%rcx), %rax
	.loc 2 106 0
	ret
	.cfi_endproc
.LFE66:
	.seh_endproc
	.section	.text$_ZN6VectorIiEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEixEm
	.def	_ZN6VectorIiEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEixEm
_ZN6VectorIiEixEm:
.LFB67:
	.loc 2 68 0
	.cfi_startproc
.LVL11:
	.seh_endprologue
	.loc 2 70 0
	leaq	0(,%rdx,4), %rax
	addq	(%rcx), %rax
	.loc 2 71 0
	ret
	.cfi_endproc
.LFE67:
	.seh_endproc
	.section	.text$_ZN13MemoryManager10allocateAsIPiEET_m,"x"
	.linkonce discard
	.align 2
	.globl	_ZN13MemoryManager10allocateAsIPiEET_m
	.def	_ZN13MemoryManager10allocateAsIPiEET_m;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13MemoryManager10allocateAsIPiEET_m
_ZN13MemoryManager10allocateAsIPiEET_m:
.LFB72:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.loc 3 15 0
	.cfi_startproc
.LVL12:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 3 17 0
	call	_ZN13MemoryManager8allocateEm
.LVL13:
	.loc 3 18 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:
	.seh_endproc
	.section	.text$_ZN6VectorIiE14resizeCapacityEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE14resizeCapacityEm
	.def	_ZN6VectorIiE14resizeCapacityEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE14resizeCapacityEm
_ZN6VectorIiE14resizeCapacityEm:
.LFB69:
	.loc 2 167 0
	.cfi_startproc
.LVL14:
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
	je	.L17
	.loc 2 171 0
	leaq	0(,%rdx,4), %rsi
	movq	(%rcx), %rdx
.LVL15:
	movq	$-1, %r9
	movq	%rsi, %r8
	movq	.refptr.mman(%rip), %rcx
.LVL16:
	call	_ZN13MemoryManager10reallocateEPvmm
.LVL17:
	.loc 2 172 0
	movq	%rsi, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10allocateAsIPiEET_m
.LVL18:
	movq	%rax, %rsi
.LVL19:
	.loc 2 173 0
	testq	%rax, %rax
	je	.L18
	movl	$0, %eax
.LVL20:
.L16:
.LBB17:
	.loc 2 176 0 discriminator 3
	cmpq	16(%rbx), %rax
	je	.L15
	.loc 2 177 0 discriminator 2
	movq	(%rbx), %rdx
	movl	(%rdx,%rax,4), %edx
	movl	%edx, (%rsi,%rax,4)
	.loc 2 176 0 discriminator 2
	addq	$1, %rax
.LVL21:
	jmp	.L16
.L15:
.LBE17:
	.loc 2 178 0
	movq	(%rbx), %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
.LVL22:
	.loc 2 181 0
	movq	%rsi, (%rbx)
	.loc 2 182 0
	movq	%rdi, 8(%rbx)
	.loc 2 183 0
	movl	$1, %eax
.LVL23:
.L13:
	.loc 2 184 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL24:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL25:
	ret
.LVL26:
.L17:
	.cfi_restore_state
	.loc 2 170 0
	movl	$1, %eax
	jmp	.L13
.LVL27:
.L18:
	.loc 2 174 0
	movl	$0, %eax
.LVL28:
	jmp	.L13
	.cfi_endproc
.LFE69:
	.seh_endproc
	.section	.text$_ZN6VectorIiEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEC1Em
	.def	_ZN6VectorIiEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEC1Em
_ZN6VectorIiEC1Em:
.LFB52:
	.loc 2 15 0
	.cfi_startproc
.LVL29:
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
	movq	%rdx, %rsi
.LBB18:
	.loc 2 16 0
	movq	$0, (%rcx)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	.loc 2 18 0
	cmpq	$8, %rdx
	movl	$8, %edx
.LVL30:
	cmovnb	%rsi, %rdx
	call	_ZN6VectorIiE14resizeCapacityEm
.LVL31:
	testb	%al, %al
	je	.L19
	.loc 2 20 0
	movq	%rsi, 16(%rbx)
.L19:
.LBE18:
	.loc 2 22 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL32:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL33:
	ret
	.cfi_endproc
.LFE52:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN10TestVector22minimalCapacityEnsuredEv
	.def	_ZN10TestVector22minimalCapacityEnsuredEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector22minimalCapacityEnsuredEv
_ZN10TestVector22minimalCapacityEnsuredEv:
.LFB42:
	.loc 1 25 0
	.cfi_startproc
.LVL34:
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
	subq	$192, %rsp
	.seh_stackalloc	192
	.cfi_def_cfa_offset 256
	.seh_endprologue
	.loc 1 26 0
	leaq	160(%rsp), %rsi
	movl	$0, %edx
	movq	%rsi, %rcx
.LVL35:
	call	_ZN6VectorIiEC1Em
.LVL36:
	.loc 1 27 0
	leaq	128(%rsp), %rdi
	movl	$0, %edx
	movq	%rdi, %rcx
	call	_ZN6VectorIiEC1Em
.LVL37:
	.loc 1 28 0
	leaq	96(%rsp), %rbp
	movl	$7, %edx
	movq	%rbp, %rcx
	call	_ZN6VectorIiEC1Em
.LVL38:
	.loc 1 29 0
	leaq	64(%rsp), %r12
	movl	$8, %edx
	movq	%r12, %rcx
	call	_ZN6VectorIiEC1Em
.LVL39:
	.loc 1 30 0
	leaq	32(%rsp), %r13
	movl	$9, %edx
	movq	%r13, %rcx
	call	_ZN6VectorIiEC1Em
.LVL40:
	.loc 1 32 0
	movq	%rsi, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL41:
	movq	%rax, %rbx
	movq	%rdi, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL42:
	cmpq	$8, %rbx
	sete	%bl
	cmpq	$8, %rax
	sete	%r14b
	andl	%r14d, %ebx
	movq	%rbp, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL43:
	cmpq	$8, %rax
	sete	%r14b
	andl	%ebx, %r14d
	movq	%r12, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL44:
	cmpq	$8, %rax
	sete	%bl
	andl	%r14d, %ebx
	movq	%r13, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL45:
	cmpq	$8, %rax
	seta	%al
	andl	%eax, %ebx
.LVL46:
	.loc 1 30 0
	movq	%r13, %rcx
	call	_ZN6VectorIiED1Ev
.LVL47:
	.loc 1 29 0
	movq	%r12, %rcx
	call	_ZN6VectorIiED1Ev
.LVL48:
	.loc 1 28 0
	movq	%rbp, %rcx
	call	_ZN6VectorIiED1Ev
.LVL49:
	.loc 1 27 0
	movq	%rdi, %rcx
	call	_ZN6VectorIiED1Ev
.LVL50:
	.loc 1 26 0
	movq	%rsi, %rcx
	call	_ZN6VectorIiED1Ev
.LVL51:
	.loc 1 35 0
	movl	%ebx, %eax
	addq	$192, %rsp
	.cfi_def_cfa_offset 64
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 56
.LVL52:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 48
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 40
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
.LFE42:
	.seh_endproc
	.section	.text$_ZN6VectorIiE18getIncrementalSizeEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE18getIncrementalSizeEm
	.def	_ZN6VectorIiE18getIncrementalSizeEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE18getIncrementalSizeEm
_ZN6VectorIiE18getIncrementalSizeEm:
.LFB73:
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
.LFE73:
	.seh_endproc
	.section	.text$_ZN6VectorIiE24adjustCapacityForOneMoreEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE24adjustCapacityForOneMoreEv
	.def	_ZN6VectorIiE24adjustCapacityForOneMoreEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE24adjustCapacityForOneMoreEv
_ZN6VectorIiE24adjustCapacityForOneMoreEv:
.LFB70:
	.loc 2 187 0
	.cfi_startproc
.LVL54:
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
.LVL55:
	cmpq	%rcx, %rax
	ja	.L26
	.loc 2 191 0
	movl	$1, %eax
.L23:
	.loc 2 192 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL56:
	ret
.LVL57:
.L26:
	.cfi_restore_state
	.loc 2 190 0
	call	_ZN6VectorIiE18getIncrementalSizeEm
.LVL58:
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN6VectorIiE14resizeCapacityEm
.LVL59:
	jmp	.L23
	.cfi_endproc
.LFE70:
	.seh_endproc
	.section	.text$_ZN6VectorIiE8pushBackEi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE8pushBackEi
	.def	_ZN6VectorIiE8pushBackEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE8pushBackEi
_ZN6VectorIiE8pushBackEi:
.LFB57:
	.loc 2 81 0
	.cfi_startproc
.LVL60:
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
	call	_ZN6VectorIiE24adjustCapacityForOneMoreEv
.LVL61:
	testb	%al, %al
	je	.L27
	.loc 2 85 0
	movq	16(%rbx), %rax
	addq	$1, %rax
	movq	%rax, 16(%rbx)
	.loc 2 86 0
	leaq	-4(,%rax,4), %rax
	addq	(%rbx), %rax
	movl	%esi, (%rax)
.L27:
	.loc 2 88 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL62:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL63:
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN10TestVector26capacityIncreasedCorrectlyEv
	.def	_ZN10TestVector26capacityIncreasedCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector26capacityIncreasedCorrectlyEv
_ZN10TestVector26capacityIncreasedCorrectlyEv:
.LFB43:
	.loc 1 37 0
	.cfi_startproc
.LVL64:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.seh_stackalloc	72
	.cfi_def_cfa_offset 96
	.seh_endprologue
	.loc 1 38 0
	leaq	32(%rsp), %rbx
	movl	$8, %edx
	movq	%rbx, %rcx
.LVL65:
	call	_ZN6VectorIiEC1Em
.LVL66:
	.loc 1 39 0
	movl	$10, %edx
	movq	%rbx, %rcx
	call	_ZN6VectorIiE8pushBackEi
.LVL67:
	.loc 1 40 0
	movq	%rbx, %rcx
	call	_ZNK6VectorIiE11getCapacityEv
.LVL68:
	movq	%rax, %rsi
	.loc 1 38 0
	movq	%rbx, %rcx
	call	_ZN6VectorIiED1Ev
.LVL69:
	.loc 1 40 0
	cmpq	$12, %rsi
	sete	%al
	.loc 1 41 0
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.seh_endproc
	.section	.text$_ZN6VectorIiEC1ERKSt16initializer_listIiE,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiEC1ERKSt16initializer_listIiE
	.def	_ZN6VectorIiEC1ERKSt16initializer_listIiE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiEC1ERKSt16initializer_listIiE
_ZN6VectorIiEC1ERKSt16initializer_listIiE:
.LFB64:
	.loc 2 24 0
	.cfi_startproc
.LVL70:
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
.LBB19:
	.loc 2 25 0
	movl	$0, %edx
.LVL71:
	call	_ZN6VectorIiEC1Em
.LVL72:
.LBB20:
.LBB21:
.LBB22:
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.loc 4 75 0
	movq	(%rsi), %rbx
.LVL73:
.LBE22:
.LBE21:
.LBB23:
.LBB24:
.LBB25:
.LBB26:
	.loc 4 71 0
	movq	8(%rsi), %rax
.LVL74:
.LBE26:
.LBE25:
	.loc 4 79 0
	leaq	(%rbx,%rax,4), %rsi
.LVL75:
.L32:
.LBE24:
.LBE23:
	.loc 2 27 0 discriminator 3
	cmpq	%rsi, %rbx
	je	.L30
.LVL76:
	.loc 2 28 0 discriminator 2
	movl	(%rbx), %edx
	movq	%rdi, %rcx
	call	_ZN6VectorIiE8pushBackEi
.LVL77:
	.loc 2 27 0 discriminator 2
	addq	$4, %rbx
.LVL78:
	jmp	.L32
.LVL79:
.L30:
.LBE20:
.LBE19:
	.loc 2 29 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL80:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL81:
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.section	.text$_ZN6VectorIiE24adjustCapacityForOneLessEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE24adjustCapacityForOneLessEv
	.def	_ZN6VectorIiE24adjustCapacityForOneLessEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE24adjustCapacityForOneLessEv
_ZN6VectorIiE24adjustCapacityForOneLessEv:
.LFB71:
	.loc 2 195 0
	.cfi_startproc
.LVL82:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 2 199 0
	movq	16(%rcx), %rcx
.LVL83:
	testq	%rcx, %rcx
	je	.L37
	.loc 2 199 0 is_stmt 0 discriminator 1
	subq	$1, %rcx
	call	_ZN6VectorIiE18getIncrementalSizeEm
.LVL84:
.L34:
	.loc 2 200 0 is_stmt 1 discriminator 4
	cmpq	$7, %rax
	ja	.L35
	.loc 2 201 0
	movl	$8, %eax
.LVL85:
.L35:
	.loc 2 202 0
	cmpq	8(%rbx), %rax
	jb	.L40
	.loc 2 204 0
	movl	$1, %eax
.LVL86:
.L33:
	.loc 2 206 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL87:
	ret
.LVL88:
.L37:
	.cfi_restore_state
	.loc 2 199 0
	movl	$8, %eax
	jmp	.L34
.LVL89:
.L40:
	.loc 2 203 0
	movq	%rax, %rdx
	movq	%rbx, %rcx
	call	_ZN6VectorIiE14resizeCapacityEm
.LVL90:
	jmp	.L33
	.cfi_endproc
.LFE71:
	.seh_endproc
	.section	.text$_ZN6VectorIiE7popBackEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE7popBackEv
	.def	_ZN6VectorIiE7popBackEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE7popBackEv
_ZN6VectorIiE7popBackEv:
.LFB58:
	.loc 2 73 0
	.cfi_startproc
.LVL91:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 2 75 0
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
.LVL92:
	testb	%al, %al
	je	.L42
	.loc 2 76 0
	movq	16(%rbx), %rax
	testq	%rax, %rax
	jne	.L44
.L42:
	.loc 2 78 0
	movq	(%rbx), %rax
	movl	(%rax), %eax
.L41:
	.loc 2 79 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL93:
	ret
.LVL94:
.L44:
	.cfi_restore_state
	.loc 2 77 0
	movq	(%rbx), %rdx
	subq	$1, %rax
	movq	%rax, 16(%rbx)
	movl	(%rdx,%rax,4), %eax
	jmp	.L41
	.cfi_endproc
.LFE58:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN10TestVector27popBackWhenEmptyNoExceptionEv
	.def	_ZN10TestVector27popBackWhenEmptyNoExceptionEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector27popBackWhenEmptyNoExceptionEv
_ZN10TestVector27popBackWhenEmptyNoExceptionEv:
.LFB45:
	.loc 1 47 0
	.cfi_startproc
.LVL95:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.seh_stackalloc	64
	.cfi_def_cfa_offset 80
	.seh_endprologue
	.loc 1 48 0
	leaq	32(%rsp), %rbx
	movl	$0, %edx
	movq	%rbx, %rcx
.LVL96:
	call	_ZN6VectorIiEC1Em
.LVL97:
	.loc 1 49 0
	movq	%rbx, %rcx
	call	_ZN6VectorIiE7popBackEv
.LVL98:
	.loc 1 48 0
	movq	%rbx, %rcx
	call	_ZN6VectorIiED1Ev
.LVL99:
	.loc 1 52 0
	movl	$1, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.seh_endproc
	.section	.text$_ZN6VectorIiE5eraseEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE5eraseEm
	.def	_ZN6VectorIiE5eraseEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE5eraseEm
_ZN6VectorIiE5eraseEm:
.LFB65:
	.loc 2 127 0
	.cfi_startproc
.LVL100:
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
	movq	%rcx, %rsi
	movq	%rdx, %rbx
.LBB27:
	.loc 2 129 0
	cmpq	%rdx, 16(%rcx)
	ja	.L51
	movl	$0, %eax
.LVL101:
.L47:
	.loc 2 129 0 is_stmt 0 discriminator 6
	testb	%al, %al
	je	.L46
.LBB28:
	.loc 2 131 0 is_stmt 1
	movq	16(%rsi), %rax
	subq	$1, %rax
	movq	%rax, 16(%rsi)
.LVL102:
.L49:
.LBB29:
	.loc 2 132 0 discriminator 3
	cmpq	16(%rsi), %rbx
	je	.L46
	.loc 2 133 0 discriminator 2
	movq	(%rsi), %rdx
	leaq	1(%rbx), %rax
	movl	(%rdx,%rax,4), %ecx
	movl	%ecx, (%rdx,%rbx,4)
.LVL103:
	.loc 2 132 0 discriminator 2
	movq	%rax, %rbx
	jmp	.L49
.LVL104:
.L51:
.LBE29:
.LBE28:
	.loc 2 129 0 discriminator 1
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
.LVL105:
	jmp	.L47
.LVL106:
.L46:
.LBE27:
	.loc 2 135 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL107:
	ret
	.cfi_endproc
.LFE65:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN10TestVector14eraseCorrectlyEv
	.def	_ZN10TestVector14eraseCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector14eraseCorrectlyEv
_ZN10TestVector14eraseCorrectlyEv:
.LFB47:
	.loc 1 58 0
	.cfi_startproc
.LVL108:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 96
	.seh_endprologue
	.loc 1 59 0
	leaq	._5(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$9, 72(%rsp)
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rbx
	movq	%rbx, %rcx
.LVL109:
	call	_ZN6VectorIiEC1ERKSt16initializer_listIiE
.LVL110:
	.loc 1 60 0
	movl	$4, %edx
	movq	%rbx, %rcx
	call	_ZN6VectorIiE5eraseEm
.LVL111:
.LBB30:
	.loc 1 61 0
	movl	$0, %ebx
.LVL112:
.L54:
	.loc 1 61 0 is_stmt 0 discriminator 1
	leaq	32(%rsp), %rcx
	call	_ZNK6VectorIiE7getSizeEv
.LVL113:
	cmpq	%rax, %rbx
	je	.L55
	.loc 1 62 0 is_stmt 1
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdx
	call	_ZN6VectorIiEixEm
.LVL114:
	movslq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L56
	.loc 1 61 0 discriminator 2
	addq	$1, %rbx
.LVL115:
	jmp	.L54
.L55:
.LBE30:
	.loc 1 64 0
	movl	$1, %ebx
.LVL116:
.L53:
	.loc 1 59 0
	leaq	32(%rsp), %rcx
	call	_ZN6VectorIiED1Ev
.LVL117:
	.loc 1 66 0
	movl	%ebx, %eax
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
.LVL118:
.L56:
	.cfi_restore_state
.LBB31:
	.loc 1 63 0
	movl	$0, %ebx
.LVL119:
	jmp	.L53
.LBE31:
	.cfi_endproc
.LFE47:
	.seh_endproc
	.section	.text$_ZN6VectorIiE6insertEmRKi,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIiE6insertEmRKi
	.def	_ZN6VectorIiE6insertEmRKi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIiE6insertEmRKi
_ZN6VectorIiE6insertEmRKi:
.LFB68:
	.loc 2 146 0
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
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 64
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rbx
	movq	%r8, %rdi
	.loc 2 148 0
	cmpq	%rdx, 16(%rcx)
	jnb	.L65
	movl	$1, %eax
.LVL121:
.L58:
	.loc 2 148 0 is_stmt 0 discriminator 6
	testb	%al, %al
	je	.L66
	.loc 2 149 0 is_stmt 1
	movq	$-1, %rax
.L57:
	.loc 2 155 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL122:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL123:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL124:
	ret
.LVL125:
.L65:
	.cfi_restore_state
	.loc 2 148 0 discriminator 2
	call	_ZN6VectorIiE24adjustCapacityForOneLessEv
.LVL126:
	testb	%al, %al
	je	.L63
	.loc 2 148 0 is_stmt 0
	movl	$0, %eax
	jmp	.L58
.L63:
	movl	$1, %eax
	jmp	.L58
.L66:
	.loc 2 150 0 is_stmt 1
	movq	16(%rsi), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, 16(%rsi)
.LVL127:
.L61:
.LBB32:
	.loc 2 151 0 discriminator 3
	cmpq	%rbx, %rdx
	je	.L60
	.loc 2 152 0 discriminator 2
	movq	(%rsi), %r8
	leaq	0(,%rdx,4), %rcx
	movl	-4(%r8,%rcx), %eax
	movl	%eax, (%r8,%rcx)
	.loc 2 151 0 discriminator 2
	subq	$1, %rdx
.LVL128:
	jmp	.L61
.L60:
.LBE32:
	.loc 2 153 0
	leaq	0(,%rbx,4), %rax
	addq	(%rsi), %rax
	movl	(%rdi), %edx
.LVL129:
	movl	%edx, (%rax)
	.loc 2 154 0
	movq	%rbx, %rax
	jmp	.L57
	.cfi_endproc
.LFE68:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN10TestVector15insertCorrectlyEv
	.def	_ZN10TestVector15insertCorrectlyEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10TestVector15insertCorrectlyEv
_ZN10TestVector15insertCorrectlyEv:
.LFB48:
	.loc 1 68 0
	.cfi_startproc
.LVL130:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 128
	.seh_endprologue
	.loc 1 69 0
	leaq	._6(%rip), %rax
	movq	%rax, 64(%rsp)
	movq	$7, 72(%rsp)
	leaq	64(%rsp), %rdx
	leaq	32(%rsp), %rbx
	movq	%rbx, %rcx
.LVL131:
	call	_ZN6VectorIiEC1ERKSt16initializer_listIiE
.LVL132:
	.loc 1 70 0
	movq	%rbx, %rcx
	call	_ZNK6VectorIiE7getSizeEv
.LVL133:
	movq	%rax, %rsi
.LVL134:
	.loc 1 71 0
	movl	$0, 88(%rsp)
	leaq	1(%rax), %rdx
	leaq	88(%rsp), %r8
	movq	%rbx, %rcx
	call	_ZN6VectorIiE6insertEmRKi
.LVL135:
	.loc 1 72 0
	movq	%rbx, %rcx
	call	_ZNK6VectorIiE7getSizeEv
.LVL136:
	cmpq	%rax, %rsi
	je	.L73
	.loc 1 73 0
	movl	$0, %ebx
.L68:
	.loc 1 69 0
	leaq	32(%rsp), %rcx
	call	_ZN6VectorIiED1Ev
.LVL137:
	.loc 1 80 0
	movl	%ebx, %eax
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL138:
	ret
.LVL139:
.L73:
	.cfi_restore_state
	.loc 1 75 0
	movl	$4, 92(%rsp)
	leaq	32(%rsp), %rcx
	leaq	92(%rsp), %r8
	movl	$4, %edx
	call	_ZN6VectorIiE6insertEmRKi
.LVL140:
.LBB33:
	.loc 1 76 0
	movl	$0, %ebx
.LVL141:
.L69:
	.loc 1 76 0 is_stmt 0 discriminator 1
	leaq	32(%rsp), %rcx
	call	_ZNK6VectorIiE7getSizeEv
.LVL142:
	cmpq	%rax, %rbx
	je	.L71
	.loc 1 77 0 is_stmt 1
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdx
	call	_ZN6VectorIiEixEm
.LVL143:
	movslq	(%rax), %rax
	cmpq	%rax, %rbx
	jne	.L72
	.loc 1 76 0 discriminator 2
	addq	$1, %rbx
.LVL144:
	jmp	.L69
.L71:
.LBE33:
	.loc 1 79 0
	movl	$1, %ebx
.LVL145:
	jmp	.L68
.LVL146:
.L72:
.LBB34:
	.loc 1 78 0
	movl	$0, %ebx
.LVL147:
	jmp	.L68
.LBE34:
	.cfi_endproc
.LFE48:
	.seh_endproc
	.section .rdata,"dr"
	.align 16
._6:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	5
	.long	6
	.long	7
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
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.file 9 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/printk.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/kernel.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/Vector.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/test/TestVector.h"
	.file 18 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2cf6
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -g3 -O0 -Og -O0 -Og -pedantic-errors -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/test/TestVector.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subporjects/host/Debug\0"
	.secrel32	.Ldebug_ranges0+0x60
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
	.long	0x1cd
	.uleb128 0x4
	.long	0x1ba
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x22a
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x5
	.word	0x1ab
	.long	0x22a
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x5
	.word	0x1ac
	.long	0x23b
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
	.long	0x1e2
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x12
	.byte	0
	.long	0x50c
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x24a
	.uleb128 0xa
	.byte	0x7
	.byte	0x30
	.long	0x50c
	.uleb128 0xa
	.byte	0x7
	.byte	0x31
	.long	0x529
	.uleb128 0xa
	.byte	0x7
	.byte	0x32
	.long	0x545
	.uleb128 0xa
	.byte	0x7
	.byte	0x33
	.long	0x560
	.uleb128 0xa
	.byte	0x7
	.byte	0x35
	.long	0x68f
	.uleb128 0xa
	.byte	0x7
	.byte	0x36
	.long	0x6a2
	.uleb128 0xa
	.byte	0x7
	.byte	0x37
	.long	0x6b6
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x6ca
	.uleb128 0xa
	.byte	0x7
	.byte	0x3a
	.long	0x5e5
	.uleb128 0xa
	.byte	0x7
	.byte	0x3b
	.long	0x5f9
	.uleb128 0xa
	.byte	0x7
	.byte	0x3c
	.long	0x60e
	.uleb128 0xa
	.byte	0x7
	.byte	0x3d
	.long	0x623
	.uleb128 0xa
	.byte	0x7
	.byte	0x3f
	.long	0x752
	.uleb128 0xa
	.byte	0x7
	.byte	0x40
	.long	0x731
	.uleb128 0xa
	.byte	0x7
	.byte	0x42
	.long	0x56f
	.uleb128 0xa
	.byte	0x7
	.byte	0x43
	.long	0x58f
	.uleb128 0xa
	.byte	0x7
	.byte	0x44
	.long	0x5b5
	.uleb128 0xa
	.byte	0x7
	.byte	0x45
	.long	0x5d5
	.uleb128 0xa
	.byte	0x7
	.byte	0x47
	.long	0x6de
	.uleb128 0xa
	.byte	0x7
	.byte	0x48
	.long	0x6f2
	.uleb128 0xa
	.byte	0x7
	.byte	0x49
	.long	0x707
	.uleb128 0xa
	.byte	0x7
	.byte	0x4a
	.long	0x71c
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x638
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x64d
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x663
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x679
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x762
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x741
	.uleb128 0xb
	.ascii "initializer_list<int>\0"
	.byte	0x10
	.byte	0x4
	.byte	0x2f
	.long	0x4f8
	.uleb128 0xc
	.ascii "iterator\0"
	.byte	0x4
	.byte	0x36
	.long	0x1ba3
	.byte	0x1
	.uleb128 0xd
	.ascii "_M_array\0"
	.byte	0x4
	.byte	0x3a
	.long	0x365
	.byte	0
	.uleb128 0xc
	.ascii "size_type\0"
	.byte	0x4
	.byte	0x35
	.long	0x4fd
	.byte	0x1
	.uleb128 0xd
	.ascii "_M_len\0"
	.byte	0x4
	.byte	0x3b
	.long	0x387
	.byte	0x8
	.uleb128 0xc
	.ascii "const_iterator\0"
	.byte	0x4
	.byte	0x37
	.long	0x1ba3
	.byte	0x1
	.uleb128 0xe
	.secrel32	.LASF1
	.byte	0x4
	.byte	0x3e
	.ascii "_ZNSt16initializer_listIiEC4EPKim\0"
	.long	0x3f0
	.long	0x400
	.uleb128 0xf
	.long	0x1f1d
	.uleb128 0x10
	.long	0x3a8
	.uleb128 0x10
	.long	0x387
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF1
	.byte	0x4
	.byte	0x42
	.ascii "_ZNSt16initializer_listIiEC4Ev\0"
	.byte	0x1
	.long	0x42f
	.long	0x435
	.uleb128 0xf
	.long	0x1f1d
	.byte	0
	.uleb128 0x12
	.ascii "size\0"
	.byte	0x4
	.byte	0x47
	.ascii "_ZNKSt16initializer_listIiE4sizeEv\0"
	.long	0x387
	.byte	0x1
	.long	0x46d
	.long	0x473
	.uleb128 0xf
	.long	0x1f23
	.byte	0
	.uleb128 0x12
	.ascii "begin\0"
	.byte	0x4
	.byte	0x4b
	.ascii "_ZNKSt16initializer_listIiE5beginEv\0"
	.long	0x3a8
	.byte	0x1
	.long	0x4ad
	.long	0x4b3
	.uleb128 0xf
	.long	0x1f23
	.byte	0
	.uleb128 0x12
	.ascii "end\0"
	.byte	0x4
	.byte	0x4f
	.ascii "_ZNKSt16initializer_listIiE3endEv\0"
	.long	0x3a8
	.byte	0x1
	.long	0x4e9
	.long	0x4ef
	.uleb128 0xf
	.long	0x1f23
	.byte	0
	.uleb128 0x13
	.ascii "_E\0"
	.long	0x554
	.byte	0
	.uleb128 0x4
	.long	0x347
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x8
	.byte	0xc9
	.long	0x1cd
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x9
	.byte	0x22
	.long	0x51a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x9
	.byte	0x25
	.long	0x538
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x9
	.byte	0x28
	.long	0x554
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x554
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x9
	.byte	0x2b
	.long	0x1ae
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x9
	.byte	0x2e
	.long	0x57e
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x9
	.byte	0x31
	.long	0x59f
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x9
	.byte	0x34
	.long	0x5c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x9
	.byte	0x37
	.long	0x1cd
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x9
	.byte	0x3c
	.long	0x51a
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x9
	.byte	0x3d
	.long	0x538
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x9
	.byte	0x3e
	.long	0x554
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x9
	.byte	0x3f
	.long	0x1ae
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x9
	.byte	0x40
	.long	0x57e
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x9
	.byte	0x41
	.long	0x59f
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x9
	.byte	0x42
	.long	0x5c5
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x9
	.byte	0x43
	.long	0x1cd
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x9
	.byte	0x47
	.long	0x51a
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x1ae
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x9
	.byte	0x49
	.long	0x1ae
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x9
	.byte	0x4a
	.long	0x1ae
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x9
	.byte	0x4b
	.long	0x57e
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x9
	.byte	0x4c
	.long	0x1cd
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x9
	.byte	0x4d
	.long	0x1cd
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x9
	.byte	0x4e
	.long	0x1cd
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x9
	.byte	0x53
	.long	0x1ae
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x9
	.byte	0x56
	.long	0x1cd
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x9
	.byte	0x5b
	.long	0x1ae
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x9
	.byte	0x5c
	.long	0x1cd
	.uleb128 0x14
	.long	0x79c
	.long	0x783
	.uleb128 0x15
	.long	0x788
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x773
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x794
	.uleb128 0x16
	.ascii "EMPTY_STR\0"
	.byte	0xa
	.byte	0x1c
	.long	0x783
	.uleb128 0x17
	.ascii "koutBufSize\0"
	.byte	0xa
	.byte	0x1f
	.long	0x1c8
	.byte	0x41
	.uleb128 0x14
	.long	0x794
	.long	0x7d6
	.uleb128 0x15
	.long	0x788
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.ascii "koutBuf\0"
	.byte	0xa
	.byte	0x20
	.long	0x7c6
	.uleb128 0x18
	.ascii "UNIT_K\0"
	.byte	0xa
	.byte	0x22
	.long	0x55b
	.word	0x400
	.uleb128 0x18
	.ascii "KiB\0"
	.byte	0xa
	.byte	0x23
	.long	0x55b
	.word	0x400
	.uleb128 0x19
	.ascii "MiB\0"
	.byte	0xa
	.byte	0x24
	.long	0x55b
	.long	0x100000
	.uleb128 0x19
	.ascii "GiB\0"
	.byte	0xa
	.byte	0x25
	.long	0x55b
	.long	0x40000000
	.uleb128 0xb
	.ascii "Output\0"
	.byte	0x1
	.byte	0xb
	.byte	0x15
	.long	0xacd
	.uleb128 0x12
	.ascii "print\0"
	.byte	0xb
	.byte	0x17
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x1ba
	.byte	0x1
	.long	0x85b
	.long	0x86b
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xad3
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "print\0"
	.byte	0xb
	.byte	0x18
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x1ba
	.byte	0x1
	.long	0x896
	.long	0x8a1
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xad3
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x19
	.ascii "_ZN6OutputlsEc\0"
	.long	0xad9
	.byte	0x1
	.long	0x8c4
	.long	0x8cf
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x794
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN6OutputlsEh\0"
	.long	0xad9
	.byte	0x1
	.long	0x8f2
	.long	0x8fd
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x56f
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1c
	.ascii "_ZN6OutputlsEt\0"
	.long	0xad9
	.byte	0x1
	.long	0x920
	.long	0x92b
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x58f
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN6OutputlsEj\0"
	.long	0xad9
	.byte	0x1
	.long	0x94e
	.long	0x959
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x5b5
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1e
	.ascii "_ZN6OutputlsEb\0"
	.long	0xad9
	.byte	0x1
	.long	0x97c
	.long	0x987
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xadf
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1f
	.ascii "_ZN6OutputlsEs\0"
	.long	0xad9
	.byte	0x1
	.long	0x9aa
	.long	0x9b5
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x538
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x20
	.ascii "_ZN6OutputlsEi\0"
	.long	0xad9
	.byte	0x1
	.long	0x9d8
	.long	0x9e3
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x554
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x21
	.ascii "_ZN6OutputlsEd\0"
	.long	0xad9
	.byte	0x1
	.long	0xa06
	.long	0xa11
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xae7
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x22
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0xad9
	.byte	0x1
	.long	0xa36
	.long	0xa41
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xad3
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x23
	.ascii "_ZN6OutputlsEm\0"
	.long	0xad9
	.byte	0x1
	.long	0xa64
	.long	0xa6f
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x24
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0xad9
	.byte	0x1
	.long	0xa94
	.long	0xa9f
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xaf1
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x25
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0xad9
	.byte	0x1
	.long	0xac1
	.uleb128 0xf
	.long	0xacd
	.uleb128 0x10
	.long	0xaf8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.long	0x820
	.uleb128 0x1c
	.byte	0x8
	.long	0x79c
	.uleb128 0x1d
	.byte	0x8
	.long	0x820
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x1c
	.byte	0x8
	.long	0xaf7
	.uleb128 0x1e
	.uleb128 0x1c
	.byte	0x8
	.long	0xaff
	.uleb128 0x1f
	.uleb128 0x4
	.long	0xafe
	.uleb128 0x20
	.byte	0x8
	.uleb128 0x14
	.long	0x79c
	.long	0xb11
	.uleb128 0x21
	.byte	0
	.uleb128 0x16
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0xb06
	.uleb128 0x22
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.long	0x1151
	.uleb128 0x23
	.ascii "nextValidChunkOffset\0"
	.byte	0xd
	.byte	0x42
	.long	0x5d5
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x23
	.ascii "endMark\0"
	.byte	0xd
	.byte	0x43
	.long	0x5d5
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x23
	.ascii "allocated\0"
	.byte	0xd
	.byte	0x44
	.long	0x5d5
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x23
	.ascii "size\0"
	.byte	0xd
	.byte	0x45
	.long	0x5d5
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x23
	.ascii "nextBaseFromEnd\0"
	.byte	0xd
	.byte	0x46
	.long	0x5d5
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
	.long	0xbca
	.long	0xbe9
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0xadf
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0xadf
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "isAllocated\0"
	.byte	0xd
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xadf
	.byte	0x1
	.long	0xc26
	.long	0xc2c
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x24
	.ascii "setAllocated\0"
	.byte	0xd
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xc66
	.long	0xc71
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0xadf
	.byte	0
	.uleb128 0x12
	.ascii "isEnd\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xadf
	.byte	0x1
	.long	0xca1
	.long	0xca7
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x24
	.ascii "setEnd\0"
	.byte	0xd
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xcd4
	.long	0xcdf
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0xadf
	.byte	0
	.uleb128 0x12
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x115c
	.byte	0x1
	.long	0xd13
	.long	0xd19
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x12
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x1156
	.byte	0x1
	.long	0xd4c
	.long	0xd52
	.uleb128 0xf
	.long	0x1156
	.byte	0
	.uleb128 0x12
	.ascii "getSize\0"
	.byte	0xd
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x1ba
	.byte	0x1
	.long	0xd86
	.long	0xd8c
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x24
	.ascii "setSize\0"
	.byte	0xd
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xdbb
	.long	0xdc6
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0xb04
	.byte	0x1
	.long	0xdf9
	.long	0xdff
	.uleb128 0xf
	.long	0x1156
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0xaf1
	.byte	0x1
	.long	0xe33
	.long	0xe39
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0xb04
	.byte	0x1
	.long	0xe6c
	.long	0xe72
	.uleb128 0xf
	.long	0x1156
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0xaf1
	.byte	0x1
	.long	0xea6
	.long	0xeac
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x12
	.ascii "getNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x5d5
	.byte	0x1
	.long	0xef7
	.long	0xefd
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x24
	.ascii "setNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xf43
	.long	0xf4e
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x5d5
	.byte	0
	.uleb128 0x12
	.ascii "getNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x5d5
	.byte	0x1
	.long	0xfa3
	.long	0xfa9
	.uleb128 0xf
	.long	0x115c
	.byte	0
	.uleb128 0x24
	.ascii "setNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0xff9
	.long	0x1004
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x5d5
	.byte	0
	.uleb128 0x12
	.ascii "moveAhead\0"
	.byte	0xd
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x1156
	.byte	0x1
	.long	0x103b
	.long	0x1046
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xd
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x1ba
	.byte	0x1
	.long	0x10b0
	.long	0x10c0
	.uleb128 0xf
	.long	0x115c
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "split\0"
	.byte	0xd
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xadf
	.byte	0x1
	.long	0x10ef
	.long	0x10fa
	.uleb128 0xf
	.long	0x1156
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x25
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xd
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x114a
	.uleb128 0xf
	.long	0x1156
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xb22
	.uleb128 0x1c
	.byte	0x8
	.long	0xb22
	.uleb128 0x1c
	.byte	0x8
	.long	0x1151
	.uleb128 0x22
	.secrel32	.LASF5
	.byte	0x18
	.byte	0xe
	.byte	0x19
	.long	0x14c5
	.uleb128 0xd
	.ascii "headChunk\0"
	.byte	0xe
	.byte	0x54
	.long	0x1156
	.byte	0
	.uleb128 0xd
	.ascii "base\0"
	.byte	0xe
	.byte	0x55
	.long	0xad3
	.byte	0x8
	.uleb128 0xd
	.ascii "size\0"
	.byte	0xe
	.byte	0x56
	.long	0x1c8
	.byte	0x10
	.uleb128 0x26
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x11c1
	.long	0x11c7
	.uleb128 0xf
	.long	0x14ca
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x11f1
	.long	0x1206
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0xb04
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0xadf
	.byte	0
	.uleb128 0x12
	.ascii "normalizeAllocSize\0"
	.byte	0xe
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x1ba
	.byte	0x1
	.long	0x1252
	.long	0x125d
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0xb04
	.byte	0x1
	.long	0x128f
	.long	0x129a
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0xb04
	.byte	0x1
	.long	0x12cd
	.long	0x12dd
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "tryIncrease\0"
	.byte	0xe
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xadf
	.byte	0x1
	.long	0x131d
	.long	0x132d
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0xb04
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "tryDecrease\0"
	.byte	0xe
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xadf
	.byte	0x1
	.long	0x136d
	.long	0x137d
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0xb04
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "reallocate\0"
	.byte	0xe
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0xb04
	.byte	0x1
	.long	0x13bc
	.long	0x13d1
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0xb04
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x24
	.ascii "deallocate\0"
	.byte	0xe
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x140a
	.long	0x1415
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0xb04
	.byte	0
	.uleb128 0x12
	.ascii "getAllocatedLength\0"
	.byte	0xe
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x1ba
	.byte	0x1
	.long	0x1463
	.long	0x146e
	.uleb128 0xf
	.long	0x14d5
	.uleb128 0x10
	.long	0xb04
	.byte	0
	.uleb128 0x27
	.ascii "allocateAs<int*>\0"
	.byte	0x3
	.byte	0xf
	.ascii "_ZN13MemoryManager10allocateAsIPiEET_m\0"
	.long	0x1b59
	.byte	0x1
	.long	0x14b9
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b59
	.uleb128 0xf
	.long	0x14ca
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1162
	.uleb128 0x1c
	.byte	0x8
	.long	0x1162
	.uleb128 0x4
	.long	0x14ca
	.uleb128 0x1c
	.byte	0x8
	.long	0x14c5
	.uleb128 0x16
	.ascii "kout\0"
	.byte	0xf
	.byte	0xf
	.long	0x820
	.uleb128 0x16
	.ascii "mman\0"
	.byte	0xf
	.byte	0x12
	.long	0x1162
	.uleb128 0xb
	.ascii "Vector<int>\0"
	.byte	0x18
	.byte	0x10
	.byte	0x13
	.long	0x1b54
	.uleb128 0x28
	.byte	0x4
	.long	0x5c5
	.byte	0x10
	.byte	0x15
	.byte	0x1
	.long	0x1528
	.uleb128 0x29
	.ascii "MINIMAL_CAPACITY\0"
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.ascii "data\0"
	.byte	0x10
	.byte	0x45
	.long	0x1b59
	.byte	0
	.uleb128 0x2a
	.secrel32	.LASF7
	.byte	0x10
	.byte	0x46
	.long	0x1ba
	.byte	0x8
	.uleb128 0xd
	.ascii "size\0"
	.byte	0x10
	.byte	0x47
	.long	0x1ba
	.byte	0x10
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0xf
	.ascii "_ZN6VectorIiEC4Em\0"
	.byte	0x1
	.long	0x1570
	.long	0x157b
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x18
	.ascii "_ZN6VectorIiEC4ERKSt16initializer_listIiE\0"
	.byte	0x1
	.long	0x15b5
	.long	0x15c0
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b6a
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF9
	.byte	0x10
	.byte	0x1b
	.ascii "_ZN6VectorIiEaSERKSt16initializer_listIiE\0"
	.long	0x1b75
	.byte	0x1
	.long	0x15fe
	.long	0x1609
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b6a
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0x10
	.byte	0x1c
	.ascii "_ZN6VectorIiEC4ERKS0_\0"
	.byte	0x1
	.long	0x162f
	.long	0x163a
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b7b
	.byte	0
	.uleb128 0x2b
	.secrel32	.LASF9
	.byte	0x10
	.byte	0x1d
	.ascii "_ZN6VectorIiEaSERKS0_\0"
	.long	0x1b75
	.byte	0x1
	.long	0x1664
	.long	0x166f
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b7b
	.byte	0
	.uleb128 0x11
	.secrel32	.LASF8
	.byte	0x2
	.byte	0x20
	.ascii "_ZN6VectorIiEC4EOS0_\0"
	.byte	0x1
	.long	0x1694
	.long	0x169f
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b81
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x29
	.ascii "_ZN6VectorIiEaSEOS0_\0"
	.long	0x1b75
	.byte	0x1
	.long	0x16c8
	.long	0x16d3
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b81
	.byte	0
	.uleb128 0x24
	.ascii "~Vector\0"
	.byte	0x2
	.byte	0x35
	.ascii "_ZN6VectorIiED4Ev\0"
	.byte	0x1
	.long	0x16f9
	.long	0x1704
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0xf
	.long	0x554
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x3f
	.ascii "_ZNK6VectorIiEixEm\0"
	.long	0x1b87
	.byte	0x1
	.long	0x172b
	.long	0x1736
	.uleb128 0xf
	.long	0x1b92
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF10
	.byte	0x2
	.byte	0x44
	.ascii "_ZN6VectorIiEixEm\0"
	.long	0x1b9d
	.byte	0x1
	.long	0x175c
	.long	0x1767
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "popBack\0"
	.byte	0x2
	.byte	0x49
	.ascii "_ZN6VectorIiE7popBackEv\0"
	.long	0x554
	.byte	0x1
	.long	0x1797
	.long	0x179d
	.uleb128 0xf
	.long	0x1b5f
	.byte	0
	.uleb128 0x24
	.ascii "pushBack\0"
	.byte	0x2
	.byte	0x51
	.ascii "_ZN6VectorIiE8pushBackEi\0"
	.byte	0x1
	.long	0x17cb
	.long	0x17d6
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x554
	.byte	0
	.uleb128 0x12
	.ascii "getData\0"
	.byte	0x2
	.byte	0x5b
	.ascii "_ZN6VectorIiE7getDataEv\0"
	.long	0x1b59
	.byte	0x1
	.long	0x1806
	.long	0x180c
	.uleb128 0xf
	.long	0x1b5f
	.byte	0
	.uleb128 0x12
	.ascii "getData\0"
	.byte	0x2
	.byte	0x61
	.ascii "_ZNK6VectorIiE7getDataEv\0"
	.long	0x1ba3
	.byte	0x1
	.long	0x183d
	.long	0x1843
	.uleb128 0xf
	.long	0x1b92
	.byte	0
	.uleb128 0x12
	.ascii "getSize\0"
	.byte	0x2
	.byte	0x67
	.ascii "_ZNK6VectorIiE7getSizeEv\0"
	.long	0x1ba
	.byte	0x1
	.long	0x1874
	.long	0x187a
	.uleb128 0xf
	.long	0x1b92
	.byte	0
	.uleb128 0x12
	.ascii "getCapacity\0"
	.byte	0x2
	.byte	0x6d
	.ascii "_ZNK6VectorIiE11getCapacityEv\0"
	.long	0x1ba
	.byte	0x1
	.long	0x18b4
	.long	0x18ba
	.uleb128 0xf
	.long	0x1b92
	.byte	0
	.uleb128 0x12
	.ascii "empty\0"
	.byte	0x2
	.byte	0x73
	.ascii "_ZNK6VectorIiE5emptyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x18e7
	.long	0x18ed
	.uleb128 0xf
	.long	0x1b92
	.byte	0
	.uleb128 0x24
	.ascii "clear\0"
	.byte	0x2
	.byte	0x79
	.ascii "_ZN6VectorIiE5clearEv\0"
	.byte	0x1
	.long	0x1915
	.long	0x191b
	.uleb128 0xf
	.long	0x1b5f
	.byte	0
	.uleb128 0x24
	.ascii "erase\0"
	.byte	0x2
	.byte	0x7f
	.ascii "_ZN6VectorIiE5eraseEm\0"
	.byte	0x1
	.long	0x1943
	.long	0x194e
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "append\0"
	.byte	0x2
	.byte	0x8a
	.ascii "_ZN6VectorIiE6appendERKS0_m\0"
	.long	0x1b75
	.byte	0x1
	.long	0x1981
	.long	0x1991
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1b7b
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x12
	.ascii "insert\0"
	.byte	0x2
	.byte	0x92
	.ascii "_ZN6VectorIiE6insertEmRKi\0"
	.long	0x1ba
	.byte	0x1
	.long	0x19c2
	.long	0x19d2
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.uleb128 0x10
	.long	0x1b87
	.byte	0
	.uleb128 0x12
	.ascii "resize\0"
	.byte	0x2
	.byte	0x9e
	.ascii "_ZN6VectorIiE6resizeEm\0"
	.long	0xadf
	.byte	0x1
	.long	0x1a00
	.long	0x1a0b
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x2c
	.ascii "resizeCapacity\0"
	.byte	0x2
	.byte	0xa7
	.ascii "_ZN6VectorIiE14resizeCapacityEm\0"
	.long	0xadf
	.long	0x1a49
	.long	0x1a54
	.uleb128 0xf
	.long	0x1b5f
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x2c
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x2
	.byte	0xbb
	.ascii "_ZN6VectorIiE24adjustCapacityForOneMoreEv\0"
	.long	0xadf
	.long	0x1aa6
	.long	0x1aac
	.uleb128 0xf
	.long	0x1b5f
	.byte	0
	.uleb128 0x2c
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x2
	.byte	0xc3
	.ascii "_ZN6VectorIiE24adjustCapacityForOneLessEv\0"
	.long	0xadf
	.long	0x1afe
	.long	0x1b04
	.uleb128 0xf
	.long	0x1b5f
	.byte	0
	.uleb128 0x2d
	.ascii "getIncrementalSize\0"
	.byte	0x2
	.byte	0xd1
	.ascii "_ZN6VectorIiE18getIncrementalSizeEm\0"
	.long	0x1ba
	.long	0x1b4c
	.uleb128 0x10
	.long	0x1ba
	.byte	0
	.uleb128 0x13
	.ascii "T\0"
	.long	0x554
	.byte	0
	.uleb128 0x4
	.long	0x14f3
	.uleb128 0x1c
	.byte	0x8
	.long	0x554
	.uleb128 0x1c
	.byte	0x8
	.long	0x14f3
	.uleb128 0x4
	.long	0x1b5f
	.uleb128 0x1d
	.byte	0x8
	.long	0x4f8
	.uleb128 0x4
	.long	0x1b6a
	.uleb128 0x1d
	.byte	0x8
	.long	0x14f3
	.uleb128 0x1d
	.byte	0x8
	.long	0x1b54
	.uleb128 0x2e
	.byte	0x8
	.long	0x14f3
	.uleb128 0x1d
	.byte	0x8
	.long	0x55b
	.uleb128 0x4
	.long	0x1b87
	.uleb128 0x1c
	.byte	0x8
	.long	0x1b54
	.uleb128 0x4
	.long	0x1b92
	.uleb128 0x1d
	.byte	0x8
	.long	0x554
	.uleb128 0x1c
	.byte	0x8
	.long	0x55b
	.uleb128 0xb
	.ascii "TestVector\0"
	.byte	0x18
	.byte	0x11
	.byte	0xc
	.long	0x1f12
	.uleb128 0x2f
	.long	0x14f3
	.byte	0
	.uleb128 0x24
	.ascii "setup\0"
	.byte	0x11
	.byte	0x10
	.ascii "_ZN10TestVector5setupEv\0"
	.byte	0x1
	.long	0x1bec
	.long	0x1bf2
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x24
	.ascii "teardown\0"
	.byte	0x11
	.byte	0x11
	.ascii "_ZN10TestVector8teardownEv\0"
	.byte	0x1
	.long	0x1c22
	.long	0x1c28
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "initializeCorrectly\0"
	.byte	0x11
	.byte	0x13
	.ascii "_ZN10TestVector19initializeCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1c73
	.long	0x1c79
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "minimalCapacityEnsured\0"
	.byte	0x11
	.byte	0x14
	.ascii "_ZN10TestVector22minimalCapacityEnsuredEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1cca
	.long	0x1cd0
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "capacityIncreasedCorrectly\0"
	.byte	0x11
	.byte	0x15
	.ascii "_ZN10TestVector26capacityIncreasedCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1d29
	.long	0x1d2f
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "capacityDecreasedCorrectly\0"
	.byte	0x11
	.byte	0x16
	.ascii "_ZN10TestVector26capacityDecreasedCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1d88
	.long	0x1d8e
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "popBackWhenEmptyNoException\0"
	.byte	0x11
	.byte	0x17
	.ascii "_ZN10TestVector27popBackWhenEmptyNoExceptionEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1de9
	.long	0x1def
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "pushBackCorrectly\0"
	.byte	0x11
	.byte	0x18
	.ascii "_ZN10TestVector17pushBackCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1e36
	.long	0x1e3c
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "eraseCorrectly\0"
	.byte	0x11
	.byte	0x19
	.ascii "_ZN10TestVector14eraseCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1e7d
	.long	0x1e83
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x12
	.ascii "insertCorrectly\0"
	.byte	0x11
	.byte	0x1a
	.ascii "_ZN10TestVector15insertCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1ec6
	.long	0x1ecc
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.uleb128 0x27
	.ascii "resizeCorrectly\0"
	.byte	0x11
	.byte	0x1b
	.ascii "_ZN10TestVector15resizeCorrectlyEv\0"
	.long	0xadf
	.byte	0x1
	.long	0x1f0b
	.uleb128 0xf
	.long	0x1f12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x8
	.long	0x1ba9
	.uleb128 0x4
	.long	0x1f12
	.uleb128 0x1c
	.byte	0x8
	.long	0x347
	.uleb128 0x1c
	.byte	0x8
	.long	0x4f8
	.uleb128 0x4
	.long	0x1f23
	.uleb128 0x30
	.long	0x1b04
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f5b
	.uleb128 0x31
	.ascii "curSize\0"
	.byte	0x2
	.byte	0xd1
	.long	0x1ba
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x32
	.long	0x146e
	.long	0x1f85
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f85
	.long	0x1fbc
	.uleb128 0x13
	.ascii "T\0"
	.long	0x1b59
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x14d0
	.secrel32	.LLST1
	.uleb128 0x34
	.ascii "n\0"
	.byte	0x3
	.byte	0xf
	.long	0x1ba
	.secrel32	.LLST2
	.uleb128 0x35
	.quad	.LVL13
	.long	0x125d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x1aac
	.long	0x1fdf
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fdf
	.long	0x2029
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST23
	.uleb128 0x37
	.ascii "advisedCapacity\0"
	.byte	0x2
	.byte	0xc7
	.long	0x1ba
	.secrel32	.LLST24
	.uleb128 0x38
	.quad	.LVL84
	.long	0x1f2e
	.uleb128 0x35
	.quad	.LVL90
	.long	0x207b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x1a54
	.long	0x204c
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x204c
	.long	0x207b
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST11
	.uleb128 0x38
	.quad	.LVL58
	.long	0x1f2e
	.uleb128 0x35
	.quad	.LVL59
	.long	0x207b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x1a0b
	.long	0x209e
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x209e
	.long	0x213e
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST3
	.uleb128 0x39
	.secrel32	.LASF7
	.byte	0x2
	.byte	0xa7
	.long	0x1ba
	.secrel32	.LLST4
	.uleb128 0x37
	.ascii "newData\0"
	.byte	0x2
	.byte	0xac
	.long	0x1b59
	.secrel32	.LLST5
	.uleb128 0x3a
	.quad	.LBB17
	.quad	.LBE17-.LBB17
	.long	0x20f0
	.uleb128 0x37
	.ascii "i\0"
	.byte	0x2
	.byte	0xb0
	.long	0x1ba
	.secrel32	.LLST6
	.byte	0
	.uleb128 0x3b
	.quad	.LVL17
	.long	0x137d
	.long	0x2111
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x3b
	.quad	.LVL18
	.long	0x1f5b
	.long	0x212c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL22
	.long	0x13d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x1991
	.long	0x2161
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x2161
	.long	0x21b9
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST32
	.uleb128 0x34
	.ascii "i\0"
	.byte	0x2
	.byte	0x92
	.long	0x1ba
	.secrel32	.LLST33
	.uleb128 0x34
	.ascii "t\0"
	.byte	0x2
	.byte	0x92
	.long	0x1b8d
	.secrel32	.LLST34
	.uleb128 0x3a
	.quad	.LBB32
	.quad	.LBE32-.LBB32
	.long	0x21ab
	.uleb128 0x37
	.ascii "j\0"
	.byte	0x2
	.byte	0x97
	.long	0x1ba
	.secrel32	.LLST35
	.byte	0
	.uleb128 0x38
	.quad	.LVL126
	.long	0x1fbc
	.byte	0
	.uleb128 0x32
	.long	0x1736
	.long	0x21dc
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x21dc
	.long	0x21f3
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1b65
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.ascii "i\0"
	.byte	0x2
	.byte	0x44
	.long	0x1ba
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x32
	.long	0x1843
	.long	0x2216
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x2216
	.long	0x2222
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1b98
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x32
	.long	0x191b
	.long	0x2245
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x2245
	.long	0x2290
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST27
	.uleb128 0x34
	.ascii "i\0"
	.byte	0x2
	.byte	0x7f
	.long	0x1ba
	.secrel32	.LLST28
	.uleb128 0x3a
	.quad	.LBB29
	.quad	.LBE29-.LBB29
	.long	0x2282
	.uleb128 0x37
	.ascii "j\0"
	.byte	0x2
	.byte	0x84
	.long	0x1ba
	.secrel32	.LLST29
	.byte	0
	.uleb128 0x38
	.quad	.LVL105
	.long	0x1fbc
	.byte	0
	.uleb128 0x3e
	.long	0x157b
	.byte	0
	.long	0x229e
	.long	0x22ee
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1b65
	.uleb128 0x40
	.ascii "il\0"
	.byte	0x2
	.byte	0x18
	.long	0x1b70
	.uleb128 0x41
	.uleb128 0x42
	.ascii "i\0"
	.byte	0x2
	.byte	0x1b
	.long	0x1b8d
	.uleb128 0x43
	.ascii "__for_range\0"
	.long	0x1b6a
	.uleb128 0x43
	.ascii "__for_begin\0"
	.long	0x3a8
	.uleb128 0x43
	.ascii "__for_end\0"
	.long	0x3a8
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	0x2290
	.ascii "_ZN6VectorIiEC1ERKSt16initializer_listIiE\0"
	.long	0x233b
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x233b
	.long	0x2436
	.uleb128 0x45
	.long	0x229e
	.secrel32	.LLST15
	.uleb128 0x45
	.long	0x22a7
	.secrel32	.LLST16
	.uleb128 0x46
	.long	0x2367
	.uleb128 0x47
	.long	0x22b2
	.uleb128 0x47
	.long	0x22bb
	.uleb128 0x47
	.long	0x22cc
	.uleb128 0x47
	.long	0x22dd
	.byte	0
	.uleb128 0x3a
	.quad	.LBB20
	.quad	.LBE20-.LBB20
	.long	0x241c
	.uleb128 0x48
	.long	0x22b2
	.secrel32	.LLST17
	.uleb128 0x48
	.long	0x22bb
	.secrel32	.LLST18
	.uleb128 0x48
	.long	0x22cc
	.secrel32	.LLST19
	.uleb128 0x47
	.long	0x22dd
	.uleb128 0x49
	.long	0x246e
	.quad	.LBB21
	.quad	.LBE21-.LBB21
	.byte	0x2
	.byte	0x1b
	.long	0x23c1
	.uleb128 0x45
	.long	0x2480
	.secrel32	.LLST20
	.byte	0
	.uleb128 0x49
	.long	0x2436
	.quad	.LBB23
	.quad	.LBE23-.LBB23
	.byte	0x2
	.byte	0x1b
	.long	0x2407
	.uleb128 0x45
	.long	0x2448
	.secrel32	.LLST21
	.uleb128 0x4a
	.long	0x2452
	.quad	.LBB25
	.quad	.LBE25-.LBB25
	.byte	0x4
	.byte	0x4f
	.uleb128 0x45
	.long	0x2464
	.secrel32	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL77
	.long	0x24cf
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x35
	.quad	.LVL72
	.long	0x25ef
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x4b3
	.long	0x2448
	.byte	0x3
	.long	0x2448
	.long	0x2452
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1f29
	.byte	0
	.uleb128 0x4b
	.long	0x435
	.long	0x2464
	.byte	0x3
	.long	0x2464
	.long	0x246e
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1f29
	.byte	0
	.uleb128 0x4b
	.long	0x473
	.long	0x2480
	.byte	0x3
	.long	0x2480
	.long	0x248a
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1f29
	.byte	0
	.uleb128 0x32
	.long	0x1767
	.long	0x24ad
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ad
	.long	0x24cf
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST25
	.uleb128 0x35
	.quad	.LVL92
	.long	0x1fbc
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x179d
	.long	0x24f2
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f2
	.long	0x2521
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1b65
	.secrel32	.LLST12
	.uleb128 0x34
	.ascii "t\0"
	.byte	0x2
	.byte	0x51
	.long	0x554
	.secrel32	.LLST13
	.uleb128 0x35
	.quad	.LVL61
	.long	0x2029
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x187a
	.long	0x2544
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2544
	.long	0x2550
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1b98
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x3e
	.long	0x16d3
	.byte	0
	.long	0x255e
	.long	0x2577
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1b65
	.uleb128 0x4c
	.ascii "__in_chrg\0"
	.long	0x55b
	.byte	0
	.uleb128 0x44
	.long	0x2550
	.ascii "_ZN6VectorIiED1Ev\0"
	.long	0x25ac
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x25ac
	.long	0x25c7
	.uleb128 0x45
	.long	0x255e
	.secrel32	.LLST0
	.uleb128 0x35
	.quad	.LVL8
	.long	0x13d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0x154e
	.byte	0
	.long	0x25d5
	.long	0x25ef
	.uleb128 0x3f
	.secrel32	.LASF11
	.long	0x1b65
	.uleb128 0x40
	.ascii "initSize\0"
	.byte	0x2
	.byte	0xf
	.long	0x1ba
	.byte	0
	.uleb128 0x44
	.long	0x25c7
	.ascii "_ZN6VectorIiEC1Em\0"
	.long	0x2624
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x2624
	.long	0x2670
	.uleb128 0x45
	.long	0x25d5
	.secrel32	.LLST7
	.uleb128 0x45
	.long	0x25de
	.secrel32	.LLST8
	.uleb128 0x35
	.quad	.LVL31
	.long	0x207b
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.byte	0x74
	.sleb128 0
	.byte	0x38
	.byte	0x74
	.sleb128 0
	.byte	0x23
	.uleb128 0x8000000000000000
	.byte	0x11
	.sleb128 -9223372036854775800
	.byte	0x2a
	.byte	0x28
	.word	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1ecc
	.byte	0x1
	.byte	0x51
	.long	0x2695
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2695
	.long	0x26a1
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4d
	.long	0x1e83
	.byte	0x1
	.byte	0x43
	.long	0x26c6
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x26c6
	.long	0x27ef
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1f18
	.secrel32	.LLST36
	.uleb128 0x4e
	.ascii "vec\0"
	.byte	0x1
	.byte	0x45
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x37
	.ascii "oldSize\0"
	.byte	0x1
	.byte	0x46
	.long	0x1ba
	.secrel32	.LLST37
	.uleb128 0x4f
	.secrel32	.Ldebug_ranges0+0x30
	.long	0x2740
	.uleb128 0x37
	.ascii "i\0"
	.byte	0x1
	.byte	0x4c
	.long	0x1ba
	.secrel32	.LLST38
	.uleb128 0x3b
	.quad	.LVL142
	.long	0x21f3
	.long	0x2724
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x35
	.quad	.LVL143
	.long	0x21b9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL132
	.long	0x22ee
	.long	0x275e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x3b
	.quad	.LVL133
	.long	0x21f3
	.long	0x2776
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL135
	.long	0x213e
	.long	0x279c
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 1
	.uleb128 0x50
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.quad	.LVL136
	.long	0x21f3
	.long	0x27b4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL137
	.long	0x2577
	.long	0x27cd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x35
	.quad	.LVL140
	.long	0x213e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x50
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1e3c
	.byte	0x1
	.byte	0x39
	.long	0x2814
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x2814
	.long	0x28c8
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1f18
	.secrel32	.LLST30
	.uleb128 0x4e
	.ascii "vec\0"
	.byte	0x1
	.byte	0x3b
	.long	0x14f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.secrel32	.Ldebug_ranges0+0
	.long	0x2878
	.uleb128 0x37
	.ascii "i\0"
	.byte	0x1
	.byte	0x3d
	.long	0x1ba
	.secrel32	.LLST31
	.uleb128 0x3b
	.quad	.LVL113
	.long	0x21f3
	.long	0x285d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x35
	.quad	.LVL114
	.long	0x21b9
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL110
	.long	0x22ee
	.long	0x2896
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3b
	.quad	.LVL111
	.long	0x2222
	.long	0x28b3
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x35
	.quad	.LVL117
	.long	0x2577
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1def
	.byte	0x1
	.byte	0x35
	.long	0x28ed
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ed
	.long	0x28f9
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4d
	.long	0x1d8e
	.byte	0x1
	.byte	0x2e
	.long	0x291e
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x291e
	.long	0x2983
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1f18
	.secrel32	.LLST26
	.uleb128 0x4e
	.ascii "vec\0"
	.byte	0x1
	.byte	0x30
	.long	0x14f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3b
	.quad	.LVL97
	.long	0x25ef
	.long	0x2956
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.quad	.LVL98
	.long	0x248a
	.long	0x296e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL99
	.long	0x2577
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1d2f
	.byte	0x1
	.byte	0x2a
	.long	0x29a8
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x29a8
	.long	0x29b4
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4d
	.long	0x1cd0
	.byte	0x1
	.byte	0x24
	.long	0x29d9
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x29d9
	.long	0x2a5b
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1f18
	.secrel32	.LLST14
	.uleb128 0x4e
	.ascii "vec\0"
	.byte	0x1
	.byte	0x26
	.long	0x14f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3b
	.quad	.LVL66
	.long	0x25ef
	.long	0x2a11
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3b
	.quad	.LVL67
	.long	0x24cf
	.long	0x2a2e
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3b
	.quad	.LVL68
	.long	0x2521
	.long	0x2a46
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL69
	.long	0x2577
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1c79
	.byte	0x1
	.byte	0x18
	.long	0x2a80
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a80
	.long	0x2c6a
	.uleb128 0x33
	.secrel32	.LASF11
	.long	0x1f18
	.secrel32	.LLST9
	.uleb128 0x4e
	.ascii "vec0\0"
	.byte	0x1
	.byte	0x1a
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4e
	.ascii "vec1\0"
	.byte	0x1
	.byte	0x1b
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x4e
	.ascii "vec2\0"
	.byte	0x1
	.byte	0x1c
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x4e
	.ascii "vec3\0"
	.byte	0x1
	.byte	0x1d
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x4e
	.ascii "vec4\0"
	.byte	0x1
	.byte	0x1e
	.long	0x14f3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x37
	.ascii "res\0"
	.byte	0x1
	.byte	0x20
	.long	0xadf
	.secrel32	.LLST10
	.uleb128 0x3b
	.quad	.LVL36
	.long	0x25ef
	.long	0x2b09
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.quad	.LVL37
	.long	0x25ef
	.long	0x2b26
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.quad	.LVL38
	.long	0x25ef
	.long	0x2b43
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3b
	.quad	.LVL39
	.long	0x25ef
	.long	0x2b60
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3b
	.quad	.LVL40
	.long	0x25ef
	.long	0x2b7d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.quad	.LVL41
	.long	0x2521
	.long	0x2b95
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL42
	.long	0x2521
	.long	0x2bad
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL43
	.long	0x2521
	.long	0x2bc5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL44
	.long	0x2521
	.long	0x2bdd
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL45
	.long	0x2521
	.long	0x2bf5
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL47
	.long	0x2577
	.long	0x2c0d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL48
	.long	0x2577
	.long	0x2c25
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL49
	.long	0x2577
	.long	0x2c3d
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL50
	.long	0x2577
	.long	0x2c55
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.quad	.LVL51
	.long	0x2577
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	0x1c28
	.byte	0x1
	.byte	0x14
	.long	0x2c8f
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c8f
	.long	0x2c9b
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4d
	.long	0x1bf2
	.byte	0x1
	.byte	0xf
	.long	0x2cc0
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc0
	.long	0x2ccc
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x51
	.long	0x1bc2
	.byte	0x1
	.byte	0xb
	.long	0x2ced
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ced
	.uleb128 0x3d
	.secrel32	.LASF11
	.long	0x1f18
	.uleb128 0x1
	.byte	0x52
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.uleb128 0x2112
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST1:
	.quad	.LVL12
	.quad	.LVL13-1
	.word	0x1
	.byte	0x52
	.quad	.LVL13-1
	.quad	.LFE72
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL12
	.quad	.LVL13-1
	.word	0x1
	.byte	0x51
	.quad	.LVL13-1
	.quad	.LFE72
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL82
	.quad	.LVL83
	.word	0x1
	.byte	0x52
	.quad	.LVL83
	.quad	.LVL87
	.word	0x1
	.byte	0x53
	.quad	.LVL87
	.quad	.LVL88
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL88
	.quad	.LFE71
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL84
	.quad	.LVL86
	.word	0x1
	.byte	0x50
	.quad	.LVL89
	.quad	.LVL90-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL54
	.quad	.LVL55
	.word	0x1
	.byte	0x52
	.quad	.LVL55
	.quad	.LVL56
	.word	0x1
	.byte	0x53
	.quad	.LVL56
	.quad	.LVL57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL57
	.quad	.LFE70
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL14
	.quad	.LVL16
	.word	0x1
	.byte	0x52
	.quad	.LVL16
	.quad	.LVL24
	.word	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL27
	.word	0x1
	.byte	0x52
	.quad	.LVL27
	.quad	.LFE69
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL14
	.quad	.LVL15
	.word	0x1
	.byte	0x51
	.quad	.LVL15
	.quad	.LVL25
	.word	0x1
	.byte	0x55
	.quad	.LVL25
	.quad	.LVL26
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL26
	.quad	.LVL27
	.word	0x1
	.byte	0x51
	.quad	.LVL27
	.quad	.LFE69
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL19
	.quad	.LVL20
	.word	0x1
	.byte	0x50
	.quad	.LVL20
	.quad	.LVL23
	.word	0x1
	.byte	0x54
	.quad	.LVL27
	.quad	.LVL28
	.word	0x1
	.byte	0x50
	.quad	.LVL28
	.quad	.LFE69
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL20
	.quad	.LVL22-1
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL120
	.quad	.LVL121
	.word	0x1
	.byte	0x52
	.quad	.LVL121
	.quad	.LVL123
	.word	0x1
	.byte	0x54
	.quad	.LVL123
	.quad	.LVL125
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL126-1
	.word	0x1
	.byte	0x52
	.quad	.LVL126-1
	.quad	.LFE68
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL120
	.quad	.LVL121
	.word	0x1
	.byte	0x51
	.quad	.LVL121
	.quad	.LVL122
	.word	0x1
	.byte	0x53
	.quad	.LVL122
	.quad	.LVL125
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL125
	.quad	.LVL126-1
	.word	0x1
	.byte	0x51
	.quad	.LVL126-1
	.quad	.LFE68
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL120
	.quad	.LVL121
	.word	0x1
	.byte	0x58
	.quad	.LVL121
	.quad	.LVL124
	.word	0x1
	.byte	0x55
	.quad	.LVL124
	.quad	.LVL125
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	.LVL125
	.quad	.LFE68
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL127
	.quad	.LVL129
	.word	0x1
	.byte	0x51
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL100
	.quad	.LVL101
	.word	0x1
	.byte	0x52
	.quad	.LVL101
	.quad	.LVL104
	.word	0x1
	.byte	0x54
	.quad	.LVL104
	.quad	.LVL105-1
	.word	0x1
	.byte	0x52
	.quad	.LVL105-1
	.quad	.LVL107
	.word	0x1
	.byte	0x54
	.quad	.LVL107
	.quad	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL100
	.quad	.LVL101
	.word	0x1
	.byte	0x51
	.quad	.LVL101
	.quad	.LVL102
	.word	0x1
	.byte	0x53
	.quad	.LVL102
	.quad	.LVL104
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	.LVL104
	.quad	.LVL105-1
	.word	0x1
	.byte	0x51
	.quad	.LVL105-1
	.quad	.LVL106
	.word	0x1
	.byte	0x53
	.quad	.LVL106
	.quad	.LFE65
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL102
	.quad	.LVL103
	.word	0x1
	.byte	0x53
	.quad	.LVL103
	.quad	.LVL104
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL70
	.quad	.LVL72-1
	.word	0x1
	.byte	0x52
	.quad	.LVL72-1
	.quad	.LVL81
	.word	0x1
	.byte	0x55
	.quad	.LVL81
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL70
	.quad	.LVL71
	.word	0x1
	.byte	0x51
	.quad	.LVL71
	.quad	.LVL75
	.word	0x1
	.byte	0x54
	.quad	.LVL75
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL76
	.quad	.LVL78
	.word	0x1
	.byte	0x53
	.quad	.LVL78
	.quad	.LVL79
	.word	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL72
	.quad	.LVL75
	.word	0x1
	.byte	0x54
	.quad	.LVL75
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL75
	.quad	.LVL80
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL72
	.quad	.LVL73
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL73
	.quad	.LVL75
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL73
	.quad	.LVL74
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL91
	.quad	.LVL92-1
	.word	0x1
	.byte	0x52
	.quad	.LVL92-1
	.quad	.LVL93
	.word	0x1
	.byte	0x53
	.quad	.LVL93
	.quad	.LVL94
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL94
	.quad	.LFE58
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL60
	.quad	.LVL61-1
	.word	0x1
	.byte	0x52
	.quad	.LVL61-1
	.quad	.LVL62
	.word	0x1
	.byte	0x53
	.quad	.LVL62
	.quad	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL60
	.quad	.LVL61-1
	.word	0x1
	.byte	0x51
	.quad	.LVL61-1
	.quad	.LVL63
	.word	0x1
	.byte	0x54
	.quad	.LVL63
	.quad	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL6
	.quad	.LVL7
	.word	0x1
	.byte	0x52
	.quad	.LVL7
	.quad	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL29
	.quad	.LVL31-1
	.word	0x1
	.byte	0x52
	.quad	.LVL31-1
	.quad	.LVL32
	.word	0x1
	.byte	0x53
	.quad	.LVL32
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL29
	.quad	.LVL30
	.word	0x1
	.byte	0x51
	.quad	.LVL30
	.quad	.LVL33
	.word	0x1
	.byte	0x54
	.quad	.LVL33
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL130
	.quad	.LVL131
	.word	0x1
	.byte	0x52
	.quad	.LVL131
	.quad	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL134
	.quad	.LVL135-1
	.word	0x1
	.byte	0x50
	.quad	.LVL135-1
	.quad	.LVL138
	.word	0x1
	.byte	0x54
	.quad	.LVL139
	.quad	.LFE48
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL140
	.quad	.LVL141
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL141
	.quad	.LVL145
	.word	0x1
	.byte	0x53
	.quad	.LVL146
	.quad	.LVL147
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL108
	.quad	.LVL109
	.word	0x1
	.byte	0x52
	.quad	.LVL109
	.quad	.LFE47
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL111
	.quad	.LVL112
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL116
	.word	0x1
	.byte	0x53
	.quad	.LVL118
	.quad	.LVL119
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL95
	.quad	.LVL96
	.word	0x1
	.byte	0x52
	.quad	.LVL96
	.quad	.LFE45
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL64
	.quad	.LVL65
	.word	0x1
	.byte	0x52
	.quad	.LVL65
	.quad	.LFE43
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL34
	.quad	.LVL35
	.word	0x1
	.byte	0x52
	.quad	.LVL35
	.quad	.LFE42
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL46
	.quad	.LVL52
	.word	0x1
	.byte	0x53
	.quad	.LVL52
	.quad	.LFE42
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x11c
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
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB30
	.quad	.LBE30
	.quad	.LBB31
	.quad	.LBE31
	.quad	0
	.quad	0
	.quad	.LBB33
	.quad	.LBE33
	.quad	.LBB34
	.quad	.LBE34
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB55
	.quad	.LFE55
	.quad	.LFB56
	.quad	.LFE56
	.quad	.LFB66
	.quad	.LFE66
	.quad	.LFB67
	.quad	.LFE67
	.quad	.LFB72
	.quad	.LFE72
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB52
	.quad	.LFE52
	.quad	.LFB73
	.quad	.LFE73
	.quad	.LFB70
	.quad	.LFE70
	.quad	.LFB57
	.quad	.LFE57
	.quad	.LFB64
	.quad	.LFE64
	.quad	.LFB71
	.quad	.LFE71
	.quad	.LFB58
	.quad	.LFE58
	.quad	.LFB65
	.quad	.LFE65
	.quad	.LFB68
	.quad	.LFE68
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
	.file 19 "./cxx_macros.h"
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
	.uleb128 0x8
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEST_TESTVECTOR_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x10
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
	.file 20 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x14
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
	.file 21 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x15
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
	.file 22 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x16
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
	.uleb128 0x31
	.ascii "HEX32(a,b) 0x ##a ##b\0"
	.byte	0x1
	.uleb128 0x32
	.ascii "HEX64(a,b,c,d) 0x ##a ##b ##c ##d\0"
	.byte	0x1
	.uleb128 0x35
	.ascii "BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d\0"
	.byte	0x1
	.uleb128 0x36
	.ascii "BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h\0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_PRINTK_H_ \0"
	.file 23 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x18
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
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_KERNEL_H_ \0"
	.byte	0x3
	.uleb128 0xc
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
	.uleb128 0x59
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
	.def	_ZN13MemoryManager8allocateEm;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10reallocateEPvmm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.mman, "dr"
	.globl	.refptr.mman
	.linkonce	discard
.refptr.mman:
	.quad	mman
