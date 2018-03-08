	.file	"printk.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align 2
	.globl	_ZN6Output5printEPKcm
	.def	_ZN6Output5printEPKcm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Output5printEPKcm
_ZN6Output5printEPKcm:
.LFB48:
	.file 1 "../src/printk.cpp"
	.loc 1 16 0
	.cfi_startproc
.LVL0:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rdx, %rcx
.LVL1:
	.loc 1 17 0
	movq	%r8, %rdx
.LVL2:
	call	_Z6printkPKcm
.LVL3:
	.loc 1 18 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.seh_endproc
	.align 2
	.globl	_ZN6Output5printEPKc
	.def	_ZN6Output5printEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6Output5printEPKc
_ZN6Output5printEPKc:
.LFB49:
	.loc 1 20 0
	.cfi_startproc
.LVL4:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 21 0
	movq	%rdx, %rcx
.LVL5:
	call	_Z6printkPKc
.LVL6:
	.loc 1 22 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEc
	.def	_ZN6OutputlsEc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEc
_ZN6OutputlsEc:
.LFB50:
	.loc 1 24 0
	.cfi_startproc
.LVL7:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 25 0
	movsbl	%dl, %ecx
.LVL8:
	call	_Z6printkc
.LVL9:
	.loc 1 27 0
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL10:
	ret
	.cfi_endproc
.LFE50:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEPKc
	.def	_ZN6OutputlsEPKc;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEPKc
_ZN6OutputlsEPKc:
.LFB57:
	.loc 1 53 0
	.cfi_startproc
.LVL11:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 48
	.seh_endprologue
	movq	%rcx, %rbx
	.loc 1 54 0
	movq	%rdx, %rcx
.LVL12:
	call	_Z6printkPKc
.LVL13:
	.loc 1 56 0
	movq	%rbx, %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL14:
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.section	.text$_ZN16IntegerFormatterILi10EEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16IntegerFormatterILi10EEC1Em
	.def	_ZN16IntegerFormatterILi10EEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16IntegerFormatterILi10EEC1Em
_ZN16IntegerFormatterILi10EEC1Em:
.LFB63:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/IntegerFormatter.h"
	.loc 2 16 0
	.cfi_startproc
.LVL15:
	.seh_endprologue
.LBB2:
	.loc 2 17 0
	movq	%rdx, (%rcx)
	ret
.LBE2:
	.cfi_endproc
.LFE63:
	.seh_endproc
	.section	.text$_ZNK16IntegerFormatterILi10EE6formatEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK16IntegerFormatterILi10EE6formatEv
	.def	_ZNK16IntegerFormatterILi10EE6formatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK16IntegerFormatterILi10EE6formatEv
_ZNK16IntegerFormatterILi10EE6formatEv:
.LFB64:
	.loc 2 24 0
	.cfi_startproc
.LVL16:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 2 26 0
	movq	(%rcx), %rcx
.LVL17:
	movl	$65, %r9d
	movq	.refptr.koutBuf(%rip), %r8
	movl	$10, %edx
	call	_Z4itosmjPcm
.LVL18:
	.loc 2 28 0
	movq	.refptr.koutBuf(%rip), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN6OutputlsEm
	.def	_ZN6OutputlsEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEm
_ZN6OutputlsEm:
.LFB58:
	.loc 1 58 0
	.cfi_startproc
.LVL19:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	.seh_endprologue
	movq	%rcx, %rsi
	.loc 1 59 0
	leaq	40(%rsp), %rbx
	movq	%rbx, %rcx
.LVL20:
	call	_ZN16IntegerFormatterILi10EEC1Em
.LVL21:
	movq	%rbx, %rcx
	call	_ZNK16IntegerFormatterILi10EE6formatEv
.LVL22:
	movq	%rax, %rcx
	call	_Z6printkPKc
.LVL23:
	.loc 1 61 0
	movq	%rsi, %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL24:
	ret
	.cfi_endproc
.LFE58:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEh
	.def	_ZN6OutputlsEh;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEh
_ZN6OutputlsEh:
.LFB51:
	.loc 1 29 0
	.cfi_startproc
.LVL25:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 30 0
	movzbl	%dl, %edx
	call	_ZN6OutputlsEm
.LVL26:
	.loc 1 31 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEt
	.def	_ZN6OutputlsEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEt
_ZN6OutputlsEt:
.LFB52:
	.loc 1 33 0
	.cfi_startproc
.LVL27:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 34 0
	movzwl	%dx, %edx
	call	_ZN6OutputlsEm
.LVL28:
	.loc 1 35 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEj
	.def	_ZN6OutputlsEj;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEj
_ZN6OutputlsEj:
.LFB53:
	.loc 1 37 0
	.cfi_startproc
.LVL29:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 38 0
	movl	%edx, %edx
	call	_ZN6OutputlsEm
.LVL30:
	.loc 1 39 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEs
	.def	_ZN6OutputlsEs;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEs
_ZN6OutputlsEs:
.LFB54:
	.loc 1 41 0
	.cfi_startproc
.LVL31:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 42 0
	movswq	%dx, %rdx
	call	_ZN6OutputlsEm
.LVL32:
	.loc 1 43 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEi
	.def	_ZN6OutputlsEi;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEi
_ZN6OutputlsEi:
.LFB55:
	.loc 1 45 0
	.cfi_startproc
.LVL33:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 46 0
	movslq	%edx, %rdx
	call	_ZN6OutputlsEm
.LVL34:
	.loc 1 47 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.seh_endproc
	.align 2
	.globl	_ZN6OutputlsEd
	.def	_ZN6OutputlsEd;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEd
_ZN6OutputlsEd:
.LFB56:
	.loc 1 49 0
	.cfi_startproc
.LVL35:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 50 0
	ucomisd	.LC0(%rip), %xmm1
	jnb	.L14
	cvttsd2siq	%xmm1, %rdx
.LVL36:
.L15:
	call	_ZN6OutputlsEm
.LVL37:
	.loc 1 51 0
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.LVL38:
.L14:
	.cfi_restore_state
	.loc 1 50 0
	subsd	.LC0(%rip), %xmm1
.LVL39:
	cvttsd2siq	%xmm1, %rdx
	movabsq	$-9223372036854775808, %rax
	xorq	%rax, %rdx
	jmp	.L15
	.cfi_endproc
.LFE56:
	.seh_endproc
	.section	.text$_ZN16IntegerFormatterILi16EEC1EPv,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16IntegerFormatterILi16EEC1EPv
	.def	_ZN16IntegerFormatterILi16EEC1EPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16IntegerFormatterILi16EEC1EPv
_ZN16IntegerFormatterILi16EEC1EPv:
.LFB67:
	.loc 2 20 0
	.cfi_startproc
.LVL40:
	.seh_endprologue
.LBB3:
	.loc 2 21 0
	movq	%rdx, (%rcx)
	ret
.LBE3:
	.cfi_endproc
.LFE67:
	.seh_endproc
	.section	.text$_ZNK16IntegerFormatterILi16EE6formatEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK16IntegerFormatterILi16EE6formatEv
	.def	_ZNK16IntegerFormatterILi16EE6formatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK16IntegerFormatterILi16EE6formatEv
_ZNK16IntegerFormatterILi16EE6formatEv:
.LFB68:
	.loc 2 24 0
	.cfi_startproc
.LVL41:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 2 26 0
	movq	(%rcx), %rcx
.LVL42:
	movl	$65, %r9d
	movq	.refptr.koutBuf(%rip), %r8
	movl	$16, %edx
	call	_Z4itosmjPcm
.LVL43:
	.loc 2 28 0
	movq	.refptr.koutBuf(%rip), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.seh_endproc
	.text
	.align 2
	.globl	_ZN6OutputlsEPv
	.def	_ZN6OutputlsEPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6OutputlsEPv
_ZN6OutputlsEPv:
.LFB59:
	.loc 1 63 0
	.cfi_startproc
.LVL44:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.seh_stackalloc	56
	.cfi_def_cfa_offset 80
	.seh_endprologue
	movq	%rcx, %rsi
	.loc 1 64 0
	leaq	40(%rsp), %rbx
	movq	%rbx, %rcx
.LVL45:
	call	_ZN16IntegerFormatterILi16EEC1EPv
.LVL46:
	movq	%rbx, %rcx
	call	_ZNK16IntegerFormatterILi16EE6formatEv
.LVL47:
	movq	%rax, %rcx
	call	_Z6printkPKc
.LVL48:
	.loc 1 66 0
	movq	%rsi, %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL49:
	ret
	.cfi_endproc
.LFE59:
	.seh_endproc
	.section	.text$_ZNK9VectorRefIcE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9VectorRefIcE7getSizeEv
	.def	_ZNK9VectorRefIcE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9VectorRefIcE7getSizeEv
_ZNK9VectorRefIcE7getSizeEv:
.LFB69:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/data_structures/VectorRef.h"
	.loc 3 29 0
	.cfi_startproc
.LVL50:
	.seh_endprologue
	.loc 3 31 0
	movq	8(%rcx), %rax
	.loc 3 32 0
	ret
	.cfi_endproc
.LFE69:
	.seh_endproc
	.section	.text$_ZNK9VectorRefIcE7getDataEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK9VectorRefIcE7getDataEv
	.def	_ZNK9VectorRefIcE7getDataEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK9VectorRefIcE7getDataEv
_ZNK9VectorRefIcE7getDataEv:
.LFB70:
	.loc 3 23 0
	.cfi_startproc
.LVL51:
	.seh_endprologue
	.loc 3 25 0
	movq	(%rcx), %rax
	.loc 3 26 0
	ret
	.cfi_endproc
.LFE70:
	.seh_endproc
	.text
	.globl	_ZlsR6OutputRK9StringRef
	.def	_ZlsR6OutputRK9StringRef;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsR6OutputRK9StringRef
_ZlsR6OutputRK9StringRef:
.LFB60:
	.loc 1 69 0
	.cfi_startproc
.LVL52:
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
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 80
	.seh_endprologue
	movq	%rcx, %rbp
	movq	%rdx, %rsi
	.loc 1 70 0
	movq	%rdx, %rcx
.LVL53:
	call	_ZNK9VectorRefIcE7getSizeEv
.LVL54:
	movq	%rax, %rbx
.LVL55:
	.loc 1 71 0
	movq	%rsi, %rcx
	call	_ZNK9VectorRefIcE7getDataEv
.LVL56:
	.loc 1 72 0
	testq	%rbx, %rbx
	je	.L22
.LVL57:
.L23:
	.loc 1 73 0
	leaq	-1(%rbx), %rsi
.LVL58:
	testq	%rbx, %rbx
	je	.L22
	.loc 1 74 0
	leaq	1(%rax), %rdi
.LVL59:
	movsbl	(%rax), %edx
	movq	%rbp, %rcx
	call	_ZN6OutputlsEc
.LVL60:
	.loc 1 73 0
	movq	%rsi, %rbx
	.loc 1 74 0
	movq	%rdi, %rax
	.loc 1 73 0
	jmp	.L23
.LVL61:
.L22:
	.loc 1 76 0
	movq	%rbp, %rax
.LVL62:
	addq	$40, %rsp
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
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
.LVL63:
	ret
	.cfi_endproc
.LFE60:
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1138753536
	.text
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 7 "/usr/include/machine/_default_types.h"
	.file 8 "/usr/include/sys/_stdint.h"
	.file 9 "/usr/include/stdint.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/printk.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/IntegerFormatter.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryChunk.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/MemoryManager.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/Vector.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/data_structures/Vector.h"
	.file 18 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/String.h"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/VectorRef.h"
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/data_structures/StringRef.h"
	.file 21 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x27ab
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -fno-exceptions -fno-rtti -fsigned-char -fPIC\0"
	.byte	0x4
	.ascii "../src/printk.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/chap003/Debug-host\0"
	.secrel32	.Ldebug_ranges0+0
	.quad	0
	.secrel32	.Ldebug_line0
	.secrel32	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.ascii "size_t\0"
	.byte	0x4
	.byte	0xd8
	.long	0x140
	.uleb128 0x4
	.long	0x12d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x4
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x19d
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x4
	.word	0x1ab
	.long	0x19d
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x4
	.word	0x1ac
	.long	0x1ae
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
	.long	0x155
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x15
	.byte	0
	.long	0x2d8
	.uleb128 0xa
	.byte	0x5
	.byte	0x38
	.long	0x1bd
	.uleb128 0xa
	.byte	0x6
	.byte	0x30
	.long	0x4c5
	.uleb128 0xa
	.byte	0x6
	.byte	0x31
	.long	0x4e2
	.uleb128 0xa
	.byte	0x6
	.byte	0x32
	.long	0x501
	.uleb128 0xa
	.byte	0x6
	.byte	0x33
	.long	0x520
	.uleb128 0xa
	.byte	0x6
	.byte	0x35
	.long	0x62b
	.uleb128 0xa
	.byte	0x6
	.byte	0x36
	.long	0x652
	.uleb128 0xa
	.byte	0x6
	.byte	0x37
	.long	0x67b
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x6a4
	.uleb128 0xa
	.byte	0x6
	.byte	0x3a
	.long	0x581
	.uleb128 0xa
	.byte	0x6
	.byte	0x3b
	.long	0x5aa
	.uleb128 0xa
	.byte	0x6
	.byte	0x3c
	.long	0x5d5
	.uleb128 0xa
	.byte	0x6
	.byte	0x3d
	.long	0x600
	.uleb128 0xa
	.byte	0x6
	.byte	0x3f
	.long	0x53f
	.uleb128 0xa
	.byte	0x6
	.byte	0x40
	.long	0x560
	.uleb128 0xa
	.byte	0x6
	.byte	0x42
	.long	0x4d3
	.uleb128 0xa
	.byte	0x6
	.byte	0x43
	.long	0x4f1
	.uleb128 0xa
	.byte	0x6
	.byte	0x44
	.long	0x510
	.uleb128 0xa
	.byte	0x6
	.byte	0x45
	.long	0x52f
	.uleb128 0xa
	.byte	0x6
	.byte	0x47
	.long	0x63e
	.uleb128 0xa
	.byte	0x6
	.byte	0x48
	.long	0x666
	.uleb128 0xa
	.byte	0x6
	.byte	0x49
	.long	0x68f
	.uleb128 0xa
	.byte	0x6
	.byte	0x4a
	.long	0x6b8
	.uleb128 0xa
	.byte	0x6
	.byte	0x4c
	.long	0x595
	.uleb128 0xa
	.byte	0x6
	.byte	0x4d
	.long	0x5bf
	.uleb128 0xa
	.byte	0x6
	.byte	0x4e
	.long	0x5ea
	.uleb128 0xa
	.byte	0x6
	.byte	0x4f
	.long	0x615
	.uleb128 0xa
	.byte	0x6
	.byte	0x51
	.long	0x54f
	.uleb128 0xa
	.byte	0x6
	.byte	0x52
	.long	0x570
	.uleb128 0xb
	.ascii "initializer_list<char>\0"
	.uleb128 0x4
	.long	0x2ba
	.byte	0
	.uleb128 0x3
	.ascii "__int8_t\0"
	.byte	0x7
	.byte	0x29
	.long	0x2e8
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "__uint8_t\0"
	.byte	0x7
	.byte	0x2b
	.long	0x308
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "__int16_t\0"
	.byte	0x7
	.byte	0x37
	.long	0x32a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "__uint16_t\0"
	.byte	0x7
	.byte	0x39
	.long	0x349
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "__int32_t\0"
	.byte	0x7
	.byte	0x4d
	.long	0x370
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x370
	.uleb128 0x3
	.ascii "__uint32_t\0"
	.byte	0x7
	.byte	0x4f
	.long	0x38e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "__int64_t\0"
	.byte	0x7
	.byte	0x67
	.long	0x121
	.uleb128 0x3
	.ascii "__uint64_t\0"
	.byte	0x7
	.byte	0x69
	.long	0x140
	.uleb128 0x3
	.ascii "__int_least8_t\0"
	.byte	0x7
	.byte	0x86
	.long	0x2e8
	.uleb128 0x3
	.ascii "__uint_least8_t\0"
	.byte	0x7
	.byte	0x88
	.long	0x308
	.uleb128 0x3
	.ascii "__int_least16_t\0"
	.byte	0x7
	.byte	0xa0
	.long	0x32a
	.uleb128 0x3
	.ascii "__uint_least16_t\0"
	.byte	0x7
	.byte	0xa2
	.long	0x349
	.uleb128 0x3
	.ascii "__int_least32_t\0"
	.byte	0x7
	.byte	0xb6
	.long	0x370
	.uleb128 0x3
	.ascii "__uint_least32_t\0"
	.byte	0x7
	.byte	0xb8
	.long	0x38e
	.uleb128 0x3
	.ascii "__int_least64_t\0"
	.byte	0x7
	.byte	0xc8
	.long	0x121
	.uleb128 0x3
	.ascii "__uint_least64_t\0"
	.byte	0x7
	.byte	0xca
	.long	0x140
	.uleb128 0x3
	.ascii "__intmax_t\0"
	.byte	0x7
	.byte	0xd6
	.long	0x121
	.uleb128 0x3
	.ascii "__uintmax_t\0"
	.byte	0x7
	.byte	0xde
	.long	0x140
	.uleb128 0x3
	.ascii "__intptr_t\0"
	.byte	0x7
	.byte	0xe6
	.long	0x121
	.uleb128 0x3
	.ascii "__uintptr_t\0"
	.byte	0x7
	.byte	0xe8
	.long	0x140
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x8
	.byte	0x14
	.long	0x2d8
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x8
	.byte	0x18
	.long	0x2f7
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x8
	.byte	0x20
	.long	0x319
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x8
	.byte	0x24
	.long	0x337
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x8
	.byte	0x2c
	.long	0x35f
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x8
	.byte	0x30
	.long	0x37c
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x8
	.byte	0x38
	.long	0x39e
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x8
	.byte	0x3c
	.long	0x3af
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x8
	.byte	0x43
	.long	0x47b
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x8
	.byte	0x48
	.long	0x48d
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x4a0
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x8
	.byte	0x52
	.long	0x4b2
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x9
	.byte	0x15
	.long	0x3c1
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x9
	.byte	0x16
	.long	0x3d7
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x9
	.byte	0x1b
	.long	0x3ee
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x9
	.byte	0x1c
	.long	0x405
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x9
	.byte	0x21
	.long	0x41d
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x9
	.byte	0x22
	.long	0x434
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x9
	.byte	0x27
	.long	0x44c
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x9
	.byte	0x28
	.long	0x463
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x9
	.byte	0x33
	.long	0x2e8
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x9
	.byte	0x34
	.long	0x308
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x9
	.byte	0x3d
	.long	0x121
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x9
	.byte	0x3e
	.long	0x140
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x9
	.byte	0x47
	.long	0x121
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x9
	.byte	0x48
	.long	0x140
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x9
	.byte	0x51
	.long	0x121
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x9
	.byte	0x52
	.long	0x140
	.uleb128 0xc
	.long	0x6f6
	.long	0x6dd
	.uleb128 0xd
	.long	0x6e2
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x6cd
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x6ee
	.uleb128 0xe
	.ascii "EMPTY_STR\0"
	.byte	0xa
	.byte	0x1c
	.long	0x6dd
	.uleb128 0xf
	.ascii "koutBufSize\0"
	.byte	0xa
	.byte	0x1f
	.long	0x13b
	.byte	0x41
	.uleb128 0xc
	.long	0x6ee
	.long	0x730
	.uleb128 0xd
	.long	0x6e2
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.ascii "koutBuf\0"
	.byte	0xa
	.byte	0x20
	.long	0x720
	.uleb128 0x10
	.ascii "UNIT_K\0"
	.byte	0xa
	.byte	0x22
	.long	0x377
	.word	0x400
	.uleb128 0x10
	.ascii "KiB\0"
	.byte	0xa
	.byte	0x23
	.long	0x377
	.word	0x400
	.uleb128 0x11
	.ascii "MiB\0"
	.byte	0xa
	.byte	0x24
	.long	0x377
	.long	0x100000
	.uleb128 0x11
	.ascii "GiB\0"
	.byte	0xa
	.byte	0x25
	.long	0x377
	.long	0x40000000
	.uleb128 0x12
	.ascii "Output\0"
	.byte	0x1
	.byte	0xb
	.byte	0x14
	.long	0x9c7
	.uleb128 0x13
	.ascii "print\0"
	.byte	0xb
	.byte	0x16
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x12d
	.byte	0x1
	.long	0x7b5
	.long	0x7c5
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x9d2
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "print\0"
	.byte	0xb
	.byte	0x17
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x12d
	.byte	0x1
	.long	0x7f0
	.long	0x7fb
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x9d2
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x18
	.ascii "_ZN6OutputlsEc\0"
	.long	0x9d8
	.byte	0x1
	.long	0x81e
	.long	0x829
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x6ee
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1a
	.ascii "_ZN6OutputlsEh\0"
	.long	0x9d8
	.byte	0x1
	.long	0x84c
	.long	0x857
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x4d3
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN6OutputlsEt\0"
	.long	0x9d8
	.byte	0x1
	.long	0x87a
	.long	0x885
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x4f1
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1c
	.ascii "_ZN6OutputlsEj\0"
	.long	0x9d8
	.byte	0x1
	.long	0x8a8
	.long	0x8b3
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x510
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN6OutputlsEs\0"
	.long	0x9d8
	.byte	0x1
	.long	0x8d6
	.long	0x8e1
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x32a
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1e
	.ascii "_ZN6OutputlsEi\0"
	.long	0x9d8
	.byte	0x1
	.long	0x904
	.long	0x90f
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x370
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1f
	.ascii "_ZN6OutputlsEd\0"
	.long	0x9d8
	.byte	0x1
	.long	0x932
	.long	0x93d
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x117
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x20
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0x9d8
	.byte	0x1
	.long	0x962
	.long	0x96d
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x9d2
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x21
	.ascii "_ZN6OutputlsEm\0"
	.long	0x9d8
	.byte	0x1
	.long	0x990
	.long	0x99b
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x17
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x22
	.ascii "_ZN6OutputlsEPv\0"
	.long	0x9d8
	.byte	0x1
	.long	0x9bb
	.uleb128 0x14
	.long	0x9c7
	.uleb128 0x15
	.long	0x9e3
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.long	0x77a
	.uleb128 0x4
	.long	0x9c7
	.uleb128 0x18
	.byte	0x8
	.long	0x6f6
	.uleb128 0x19
	.byte	0x8
	.long	0x77a
	.uleb128 0x4
	.long	0x9d8
	.uleb128 0x1a
	.byte	0x8
	.uleb128 0xe
	.ascii "kout\0"
	.byte	0xb
	.byte	0x27
	.long	0x77a
	.uleb128 0xc
	.long	0x6f6
	.long	0x9fc
	.uleb128 0x1b
	.byte	0
	.uleb128 0xe
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0x9f1
	.uleb128 0x12
	.ascii "IntegerFormatter<16>\0"
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.long	0xaff
	.uleb128 0x1c
	.ascii "num\0"
	.byte	0xd
	.byte	0x16
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x10
	.ascii "_ZN16IntegerFormatterILi16EEC4Em\0"
	.byte	0x1
	.long	0xa67
	.long	0xa72
	.uleb128 0x14
	.long	0x2009
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x14
	.ascii "_ZN16IntegerFormatterILi16EEC4EPv\0"
	.byte	0x1
	.long	0xaa4
	.long	0xaaf
	.uleb128 0x14
	.long	0x2009
	.uleb128 0x15
	.long	0x9e3
	.byte	0
	.uleb128 0x13
	.ascii "format\0"
	.byte	0x2
	.byte	0x18
	.ascii "_ZNK16IntegerFormatterILi16EE6formatEv\0"
	.long	0x1bd6
	.byte	0x1
	.long	0xaed
	.long	0xaf3
	.uleb128 0x14
	.long	0x2014
	.byte	0
	.uleb128 0x1e
	.ascii "Base\0"
	.long	0x370
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0xa0d
	.uleb128 0x12
	.ascii "IntegerFormatter<10>\0"
	.byte	0x8
	.byte	0xd
	.byte	0x10
	.long	0xbf6
	.uleb128 0x1c
	.ascii "num\0"
	.byte	0xd
	.byte	0x16
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x10
	.ascii "_ZN16IntegerFormatterILi10EEC4Em\0"
	.byte	0x1
	.long	0xb5e
	.long	0xb69
	.uleb128 0x14
	.long	0x1ff3
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF1
	.byte	0x2
	.byte	0x14
	.ascii "_ZN16IntegerFormatterILi10EEC4EPv\0"
	.byte	0x1
	.long	0xb9b
	.long	0xba6
	.uleb128 0x14
	.long	0x1ff3
	.uleb128 0x15
	.long	0x9e3
	.byte	0
	.uleb128 0x13
	.ascii "format\0"
	.byte	0x2
	.byte	0x18
	.ascii "_ZNK16IntegerFormatterILi10EE6formatEv\0"
	.long	0x1bd6
	.byte	0x1
	.long	0xbe4
	.long	0xbea
	.uleb128 0x14
	.long	0x1ffe
	.byte	0
	.uleb128 0x1e
	.ascii "Base\0"
	.long	0x370
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.long	0xb04
	.uleb128 0x18
	.byte	0x8
	.long	0xc01
	.uleb128 0x1f
	.uleb128 0x20
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xe
	.byte	0x16
	.long	0x1258
	.uleb128 0x21
	.ascii "nextValidChunkOffset\0"
	.byte	0xe
	.byte	0x43
	.long	0x52f
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.ascii "endMark\0"
	.byte	0xe
	.byte	0x44
	.long	0x52f
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.ascii "allocated\0"
	.byte	0xe
	.byte	0x45
	.long	0x52f
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.ascii "size\0"
	.byte	0xe
	.byte	0x46
	.long	0x52f
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x21
	.ascii "nextBaseFromEnd\0"
	.byte	0xe
	.byte	0x47
	.long	0x52f
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF2
	.byte	0xe
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Ev\0"
	.byte	0x1
	.long	0xca6
	.long	0xcac
	.uleb128 0x14
	.long	0x125d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF2
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xcd5
	.long	0xcf4
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x1263
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x1263
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "isAllocated\0"
	.byte	0xe
	.byte	0x1d
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x1263
	.byte	0x1
	.long	0xd31
	.long	0xd37
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x22
	.ascii "setAllocated\0"
	.byte	0xe
	.byte	0x1e
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xd71
	.long	0xd7c
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x1263
	.byte	0
	.uleb128 0x13
	.ascii "isEnd\0"
	.byte	0xe
	.byte	0x1f
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x1263
	.byte	0x1
	.long	0xdac
	.long	0xdb2
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x22
	.ascii "setEnd\0"
	.byte	0xe
	.byte	0x20
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xddf
	.long	0xdea
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x1263
	.byte	0
	.uleb128 0x13
	.ascii "getNext\0"
	.byte	0xe
	.byte	0x21
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x126b
	.byte	0x1
	.long	0xe1e
	.long	0xe24
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x13
	.ascii "getNext\0"
	.byte	0xe
	.byte	0x22
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x125d
	.byte	0x1
	.long	0xe57
	.long	0xe5d
	.uleb128 0x14
	.long	0x125d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF3
	.byte	0xe
	.byte	0x23
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x12d
	.byte	0x1
	.long	0xe8d
	.long	0xe93
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x22
	.ascii "setSize\0"
	.byte	0xe
	.byte	0x24
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xec2
	.long	0xecd
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF4
	.byte	0xe
	.byte	0x25
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x9e3
	.byte	0x1
	.long	0xf00
	.long	0xf06
	.uleb128 0x14
	.long	0x125d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF4
	.byte	0xe
	.byte	0x26
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0xbfb
	.byte	0x1
	.long	0xf3a
	.long	0xf40
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x27
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x9e3
	.byte	0x1
	.long	0xf73
	.long	0xf79
	.uleb128 0x14
	.long	0x125d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF5
	.byte	0xe
	.byte	0x28
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0xbfb
	.byte	0x1
	.long	0xfad
	.long	0xfb3
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x13
	.ascii "getNextBaseFromEnd\0"
	.byte	0xe
	.byte	0x29
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x52f
	.byte	0x1
	.long	0xffe
	.long	0x1004
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x22
	.ascii "setNextBaseFromEnd\0"
	.byte	0xe
	.byte	0x2a
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0x104a
	.long	0x1055
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x52f
	.byte	0
	.uleb128 0x13
	.ascii "getNextValidChunkOffset\0"
	.byte	0xe
	.byte	0x2b
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x52f
	.byte	0x1
	.long	0x10aa
	.long	0x10b0
	.uleb128 0x14
	.long	0x126b
	.byte	0
	.uleb128 0x22
	.ascii "setNextValidChunkOffset\0"
	.byte	0xe
	.byte	0x2c
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x1100
	.long	0x110b
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x52f
	.byte	0
	.uleb128 0x13
	.ascii "moveAhead\0"
	.byte	0xe
	.byte	0x37
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x125d
	.byte	0x1
	.long	0x1142
	.long	0x114d
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xe
	.byte	0x39
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x12d
	.byte	0x1
	.long	0x11b7
	.long	0x11c7
	.uleb128 0x14
	.long	0x126b
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "split\0"
	.byte	0xe
	.byte	0x3b
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x1263
	.byte	0x1
	.long	0x11f6
	.long	0x1201
	.uleb128 0x14
	.long	0x125d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x23
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xe
	.byte	0x3f
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x1251
	.uleb128 0x14
	.long	0x125d
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xc02
	.uleb128 0x18
	.byte	0x8
	.long	0xc02
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x18
	.byte	0x8
	.long	0x1258
	.uleb128 0x20
	.secrel32	.LASF6
	.byte	0x18
	.byte	0xf
	.byte	0x19
	.long	0x157a
	.uleb128 0x1c
	.ascii "headChunk\0"
	.byte	0xf
	.byte	0x54
	.long	0x125d
	.byte	0
	.uleb128 0x1c
	.ascii "base\0"
	.byte	0xf
	.byte	0x55
	.long	0x9d2
	.byte	0x8
	.uleb128 0x1c
	.ascii "size\0"
	.byte	0xf
	.byte	0x56
	.long	0x13b
	.byte	0x10
	.uleb128 0x24
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x12d0
	.long	0x12d6
	.uleb128 0x14
	.long	0x157f
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF6
	.byte	0xf
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x1300
	.long	0x1315
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x9e3
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x1263
	.byte	0
	.uleb128 0x13
	.ascii "normalizeAllocSize\0"
	.byte	0xf
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x12d
	.byte	0x1
	.long	0x1361
	.long	0x136c
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF7
	.byte	0xf
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x9e3
	.byte	0x1
	.long	0x139e
	.long	0x13a9
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF7
	.byte	0xf
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x9e3
	.byte	0x1
	.long	0x13dc
	.long	0x13ec
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "tryIncrease\0"
	.byte	0xf
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0x1263
	.byte	0x1
	.long	0x142c
	.long	0x143c
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x9e3
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "tryDecrease\0"
	.byte	0xf
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0x1263
	.byte	0x1
	.long	0x147c
	.long	0x148c
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x9e3
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "reallocate\0"
	.byte	0xf
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x9e3
	.byte	0x1
	.long	0x14cb
	.long	0x14e0
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x9e3
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x22
	.ascii "deallocate\0"
	.byte	0xf
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x1519
	.long	0x1524
	.uleb128 0x14
	.long	0x157f
	.uleb128 0x15
	.long	0x9e3
	.byte	0
	.uleb128 0x25
	.ascii "getAllocatedLength\0"
	.byte	0xf
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x12d
	.byte	0x1
	.long	0x156e
	.uleb128 0x14
	.long	0x1585
	.uleb128 0x15
	.long	0x9e3
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1271
	.uleb128 0x18
	.byte	0x8
	.long	0x1271
	.uleb128 0x18
	.byte	0x8
	.long	0x157a
	.uleb128 0xe
	.ascii "mman\0"
	.byte	0xf
	.byte	0x5a
	.long	0x1271
	.uleb128 0x12
	.ascii "Vector<char>\0"
	.byte	0x18
	.byte	0x10
	.byte	0x13
	.long	0x1bd1
	.uleb128 0x1c
	.ascii "data\0"
	.byte	0x10
	.byte	0x45
	.long	0x1bd6
	.byte	0
	.uleb128 0x1c
	.ascii "capacity\0"
	.byte	0x10
	.byte	0x46
	.long	0x12d
	.byte	0x8
	.uleb128 0x1c
	.ascii "size\0"
	.byte	0x10
	.byte	0x47
	.long	0x12d
	.byte	0x10
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x11
	.byte	0xf
	.ascii "_ZN6VectorIcEC4Em\0"
	.byte	0x1
	.long	0x15f9
	.long	0x1604
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x11
	.byte	0x18
	.ascii "_ZN6VectorIcEC4ERKSt16initializer_listIcE\0"
	.byte	0x1
	.long	0x163e
	.long	0x1649
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1be2
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF9
	.byte	0x10
	.byte	0x1b
	.ascii "_ZN6VectorIcEaSERKSt16initializer_listIcE\0"
	.long	0x1be8
	.byte	0x1
	.long	0x1687
	.long	0x1692
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1be2
	.byte	0
	.uleb128 0x24
	.secrel32	.LASF8
	.byte	0x10
	.byte	0x1c
	.ascii "_ZN6VectorIcEC4ERKS0_\0"
	.byte	0x1
	.long	0x16b8
	.long	0x16c3
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1bee
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF9
	.byte	0x10
	.byte	0x1d
	.ascii "_ZN6VectorIcEaSERKS0_\0"
	.long	0x1be8
	.byte	0x1
	.long	0x16ed
	.long	0x16f8
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1bee
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF8
	.byte	0x11
	.byte	0x20
	.ascii "_ZN6VectorIcEC4EOS0_\0"
	.byte	0x1
	.long	0x171d
	.long	0x1728
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1bf4
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF9
	.byte	0x11
	.byte	0x29
	.ascii "_ZN6VectorIcEaSEOS0_\0"
	.long	0x1be8
	.byte	0x1
	.long	0x1751
	.long	0x175c
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1bf4
	.byte	0
	.uleb128 0x22
	.ascii "~Vector\0"
	.byte	0x11
	.byte	0x35
	.ascii "_ZN6VectorIcED4Ev\0"
	.byte	0x1
	.long	0x1782
	.long	0x178d
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x14
	.long	0x370
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF10
	.byte	0x11
	.byte	0x3f
	.ascii "_ZNK6VectorIcEixEm\0"
	.long	0x1bfa
	.byte	0x1
	.long	0x17b4
	.long	0x17bf
	.uleb128 0x14
	.long	0x1c00
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF10
	.byte	0x11
	.byte	0x44
	.ascii "_ZN6VectorIcEixEm\0"
	.long	0x1c06
	.byte	0x1
	.long	0x17e5
	.long	0x17f0
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "popBack\0"
	.byte	0x11
	.byte	0x49
	.ascii "_ZN6VectorIcE7popBackEv\0"
	.long	0x6ee
	.byte	0x1
	.long	0x1820
	.long	0x1826
	.uleb128 0x14
	.long	0x1bdc
	.byte	0
	.uleb128 0x22
	.ascii "pushBack\0"
	.byte	0x11
	.byte	0x51
	.ascii "_ZN6VectorIcE8pushBackEc\0"
	.byte	0x1
	.long	0x1854
	.long	0x185f
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x6ee
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF11
	.byte	0x11
	.byte	0x5b
	.ascii "_ZN6VectorIcE7getDataEv\0"
	.long	0x1bd6
	.byte	0x1
	.long	0x188b
	.long	0x1891
	.uleb128 0x14
	.long	0x1bdc
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF11
	.byte	0x11
	.byte	0x61
	.ascii "_ZNK6VectorIcE7getDataEv\0"
	.long	0x9d2
	.byte	0x1
	.long	0x18be
	.long	0x18c4
	.uleb128 0x14
	.long	0x1c00
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF3
	.byte	0x11
	.byte	0x67
	.ascii "_ZNK6VectorIcE7getSizeEv\0"
	.long	0x12d
	.byte	0x1
	.long	0x18f1
	.long	0x18f7
	.uleb128 0x14
	.long	0x1c00
	.byte	0
	.uleb128 0x13
	.ascii "getCapacity\0"
	.byte	0x11
	.byte	0x6d
	.ascii "_ZNK6VectorIcE11getCapacityEv\0"
	.long	0x12d
	.byte	0x1
	.long	0x1931
	.long	0x1937
	.uleb128 0x14
	.long	0x1c00
	.byte	0
	.uleb128 0x13
	.ascii "empty\0"
	.byte	0x11
	.byte	0x73
	.ascii "_ZNK6VectorIcE5emptyEv\0"
	.long	0x1263
	.byte	0x1
	.long	0x1964
	.long	0x196a
	.uleb128 0x14
	.long	0x1c00
	.byte	0
	.uleb128 0x22
	.ascii "clear\0"
	.byte	0x11
	.byte	0x79
	.ascii "_ZN6VectorIcE5clearEv\0"
	.byte	0x1
	.long	0x1992
	.long	0x1998
	.uleb128 0x14
	.long	0x1bdc
	.byte	0
	.uleb128 0x22
	.ascii "erase\0"
	.byte	0x11
	.byte	0x7f
	.ascii "_ZN6VectorIcE5eraseEm\0"
	.byte	0x1
	.long	0x19c0
	.long	0x19cb
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "append\0"
	.byte	0x11
	.byte	0x8a
	.ascii "_ZN6VectorIcE6appendERKS0_m\0"
	.long	0x1be8
	.byte	0x1
	.long	0x19fe
	.long	0x1a0e
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x1bee
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x13
	.ascii "insert\0"
	.byte	0x11
	.byte	0x92
	.ascii "_ZN6VectorIcE6insertEmRKc\0"
	.long	0x12d
	.byte	0x1
	.long	0x1a3f
	.long	0x1a4f
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x1bfa
	.byte	0
	.uleb128 0x13
	.ascii "resize\0"
	.byte	0x11
	.byte	0x9e
	.ascii "_ZN6VectorIcE6resizeEm\0"
	.long	0x1263
	.byte	0x1
	.long	0x1a7d
	.long	0x1a88
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x27
	.ascii "resizeCapacity\0"
	.byte	0x11
	.byte	0xa7
	.ascii "_ZN6VectorIcE14resizeCapacityEm\0"
	.long	0x1263
	.long	0x1ac6
	.long	0x1ad1
	.uleb128 0x14
	.long	0x1bdc
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x27
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x11
	.byte	0xbb
	.ascii "_ZN6VectorIcE24adjustCapacityForOneMoreEv\0"
	.long	0x1263
	.long	0x1b23
	.long	0x1b29
	.uleb128 0x14
	.long	0x1bdc
	.byte	0
	.uleb128 0x27
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x11
	.byte	0xc3
	.ascii "_ZN6VectorIcE24adjustCapacityForOneLessEv\0"
	.long	0x1263
	.long	0x1b7b
	.long	0x1b81
	.uleb128 0x14
	.long	0x1bdc
	.byte	0
	.uleb128 0x28
	.ascii "getIncrementalSize\0"
	.byte	0x11
	.byte	0xd1
	.ascii "_ZN6VectorIcE18getIncrementalSizeEm\0"
	.long	0x12d
	.long	0x1bc9
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x29
	.ascii "T\0"
	.long	0x6ee
	.byte	0
	.uleb128 0x4
	.long	0x1597
	.uleb128 0x18
	.byte	0x8
	.long	0x6ee
	.uleb128 0x18
	.byte	0x8
	.long	0x1597
	.uleb128 0x19
	.byte	0x8
	.long	0x2d2
	.uleb128 0x19
	.byte	0x8
	.long	0x1597
	.uleb128 0x19
	.byte	0x8
	.long	0x1bd1
	.uleb128 0x2a
	.byte	0x8
	.long	0x1597
	.uleb128 0x19
	.byte	0x8
	.long	0x6f6
	.uleb128 0x18
	.byte	0x8
	.long	0x1bd1
	.uleb128 0x19
	.byte	0x8
	.long	0x6ee
	.uleb128 0x20
	.secrel32	.LASF12
	.byte	0x18
	.byte	0x12
	.byte	0xe
	.long	0x1d13
	.uleb128 0xa
	.byte	0x12
	.byte	0xe
	.long	0x19cb
	.uleb128 0x2b
	.long	0x1597
	.byte	0
	.byte	0x1
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x12
	.byte	0x15
	.ascii "_ZN6StringC4Em\0"
	.byte	0x1
	.long	0x1c45
	.long	0x1c50
	.uleb128 0x14
	.long	0x1d18
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x12
	.byte	0x16
	.ascii "_ZN6StringC4EOS_\0"
	.byte	0x1
	.long	0x1c71
	.long	0x1c7c
	.uleb128 0x14
	.long	0x1d18
	.uleb128 0x15
	.long	0x1d1e
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF12
	.byte	0x12
	.byte	0x18
	.ascii "_ZN6StringC4EPKc\0"
	.byte	0x1
	.long	0x1c9d
	.long	0x1ca8
	.uleb128 0x14
	.long	0x1d18
	.uleb128 0x15
	.long	0x9d2
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF9
	.byte	0x12
	.byte	0x19
	.ascii "_ZN6StringaSEPKc\0"
	.long	0x1d24
	.byte	0x1
	.long	0x1ccd
	.long	0x1cd8
	.uleb128 0x14
	.long	0x1d18
	.uleb128 0x15
	.long	0x9d2
	.byte	0
	.uleb128 0x25
	.ascii "append\0"
	.byte	0x12
	.byte	0x1a
	.ascii "_ZN6String6appendEPKcm\0"
	.long	0x1d24
	.byte	0x1
	.long	0x1d02
	.uleb128 0x14
	.long	0x1d18
	.uleb128 0x15
	.long	0x9d2
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1c0c
	.uleb128 0x18
	.byte	0x8
	.long	0x1c0c
	.uleb128 0x2a
	.byte	0x8
	.long	0x1c0c
	.uleb128 0x19
	.byte	0x8
	.long	0x1c0c
	.uleb128 0x12
	.ascii "VectorRef<char>\0"
	.byte	0x10
	.byte	0x13
	.byte	0x10
	.long	0x1f23
	.uleb128 0x1c
	.ascii "data\0"
	.byte	0x13
	.byte	0x1c
	.long	0x9d2
	.byte	0
	.uleb128 0x1c
	.ascii "size\0"
	.byte	0x13
	.byte	0x1d
	.long	0x12d
	.byte	0x8
	.uleb128 0x24
	.secrel32	.LASF13
	.byte	0x13
	.byte	0x12
	.ascii "_ZN9VectorRefIcEC4Ev\0"
	.byte	0x1
	.long	0x1d81
	.long	0x1d87
	.uleb128 0x14
	.long	0x1f28
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF13
	.byte	0x3
	.byte	0xf
	.ascii "_ZN9VectorRefIcEC4EPKcm\0"
	.byte	0x1
	.long	0x1daf
	.long	0x1dbf
	.uleb128 0x14
	.long	0x1f28
	.uleb128 0x15
	.long	0x9d2
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF13
	.byte	0x3
	.byte	0x13
	.ascii "_ZN9VectorRefIcEC4E6VectorIcEmm\0"
	.byte	0x1
	.long	0x1def
	.long	0x1e04
	.uleb128 0x14
	.long	0x1f28
	.uleb128 0x15
	.long	0x1597
	.uleb128 0x15
	.long	0x12d
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF11
	.byte	0x3
	.byte	0x17
	.ascii "_ZNK9VectorRefIcE7getDataEv\0"
	.long	0x9d2
	.byte	0x1
	.long	0x1e34
	.long	0x1e3a
	.uleb128 0x14
	.long	0x1f2e
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF3
	.byte	0x3
	.byte	0x1d
	.ascii "_ZNK9VectorRefIcE7getSizeEv\0"
	.long	0x12d
	.byte	0x1
	.long	0x1e6a
	.long	0x1e70
	.uleb128 0x14
	.long	0x1f2e
	.byte	0
	.uleb128 0x22
	.ascii "setData\0"
	.byte	0x3
	.byte	0x24
	.ascii "_ZN9VectorRefIcE7setDataEPKc\0"
	.byte	0x1
	.long	0x1ea1
	.long	0x1eac
	.uleb128 0x14
	.long	0x1f28
	.uleb128 0x15
	.long	0x9d2
	.byte	0
	.uleb128 0x22
	.ascii "setSize\0"
	.byte	0x3
	.byte	0x29
	.ascii "_ZN9VectorRefIcE7setSizeEm\0"
	.byte	0x1
	.long	0x1edb
	.long	0x1ee6
	.uleb128 0x14
	.long	0x1f28
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF10
	.byte	0x3
	.byte	0x2f
	.ascii "_ZNK9VectorRefIcEixEm\0"
	.long	0x1bfa
	.byte	0x1
	.long	0x1f10
	.long	0x1f1b
	.uleb128 0x14
	.long	0x1f2e
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x29
	.ascii "T\0"
	.long	0x6ee
	.byte	0
	.uleb128 0x4
	.long	0x1d2a
	.uleb128 0x18
	.byte	0x8
	.long	0x1d2a
	.uleb128 0x18
	.byte	0x8
	.long	0x1f23
	.uleb128 0x4
	.long	0x1f2e
	.uleb128 0x20
	.secrel32	.LASF14
	.byte	0x10
	.byte	0x14
	.byte	0x10
	.long	0x1fe2
	.uleb128 0x2b
	.long	0x1d2a
	.byte	0
	.byte	0x1
	.uleb128 0x1d
	.secrel32	.LASF14
	.byte	0x14
	.byte	0x14
	.ascii "_ZN9StringRefC4EPKv\0"
	.byte	0x1
	.long	0x1f70
	.long	0x1f7b
	.uleb128 0x14
	.long	0x1fe7
	.uleb128 0x15
	.long	0xbfb
	.byte	0
	.uleb128 0x1d
	.secrel32	.LASF14
	.byte	0x14
	.byte	0x15
	.ascii "_ZN9StringRefC4EPKvm\0"
	.byte	0x1
	.long	0x1fa0
	.long	0x1fb0
	.uleb128 0x14
	.long	0x1fe7
	.uleb128 0x15
	.long	0xbfb
	.uleb128 0x15
	.long	0x12d
	.byte	0
	.uleb128 0x2c
	.secrel32	.LASF14
	.byte	0x14
	.byte	0x16
	.ascii "_ZN9StringRefC4ERK6String\0"
	.byte	0x1
	.long	0x1fd6
	.uleb128 0x14
	.long	0x1fe7
	.uleb128 0x15
	.long	0x1fed
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1f39
	.uleb128 0x18
	.byte	0x8
	.long	0x1f39
	.uleb128 0x19
	.byte	0x8
	.long	0x1d13
	.uleb128 0x18
	.byte	0x8
	.long	0xb04
	.uleb128 0x4
	.long	0x1ff3
	.uleb128 0x18
	.byte	0x8
	.long	0xbf6
	.uleb128 0x4
	.long	0x1ffe
	.uleb128 0x18
	.byte	0x8
	.long	0xa0d
	.uleb128 0x4
	.long	0x2009
	.uleb128 0x18
	.byte	0x8
	.long	0xaff
	.uleb128 0x4
	.long	0x2014
	.uleb128 0x2d
	.long	0x1e04
	.long	0x2042
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x2042
	.long	0x204e
	.uleb128 0x2e
	.secrel32	.LASF15
	.long	0x1f34
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0x1e3a
	.long	0x2071
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2071
	.long	0x207d
	.uleb128 0x2e
	.secrel32	.LASF15
	.long	0x1f34
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x2d
	.long	0xaaf
	.long	0x20a0
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a0
	.long	0x20ca
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x201a
	.secrel32	.LLST24
	.uleb128 0x30
	.quad	.LVL43
	.long	0x2771
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xa72
	.byte	0
	.long	0x20d8
	.long	0x20eb
	.uleb128 0x34
	.secrel32	.LASF15
	.long	0x200f
	.uleb128 0x35
	.ascii "p\0"
	.byte	0x2
	.byte	0x14
	.long	0x9e3
	.byte	0
	.uleb128 0x36
	.long	0x20ca
	.ascii "_ZN16IntegerFormatterILi16EEC1EPv\0"
	.long	0x2130
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x2130
	.long	0x213f
	.uleb128 0x37
	.long	0x20d8
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.long	0x20e1
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2d
	.long	0xba6
	.long	0x2162
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x2162
	.long	0x218c
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x2004
	.secrel32	.LLST9
	.uleb128 0x30
	.quad	.LVL18
	.long	0x2771
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xb2d
	.byte	0
	.long	0x219a
	.long	0x21af
	.uleb128 0x34
	.secrel32	.LASF15
	.long	0x1ff9
	.uleb128 0x35
	.ascii "num\0"
	.byte	0x2
	.byte	0x10
	.long	0x12d
	.byte	0
	.uleb128 0x36
	.long	0x218c
	.ascii "_ZN16IntegerFormatterILi10EEC1Em\0"
	.long	0x21f3
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x21f3
	.long	0x2202
	.uleb128 0x37
	.long	0x219a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x37
	.long	0x21a3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x38
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x44
	.ascii "_ZlsR6OutputRK9StringRef\0"
	.long	0x9d8
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x22bb
	.uleb128 0x39
	.ascii "out\0"
	.byte	0x1
	.byte	0x44
	.long	0x9de
	.secrel32	.LLST27
	.uleb128 0x39
	.ascii "ref\0"
	.byte	0x1
	.byte	0x44
	.long	0x22c1
	.secrel32	.LLST28
	.uleb128 0x3a
	.ascii "len\0"
	.byte	0x1
	.byte	0x46
	.long	0x12d
	.secrel32	.LLST29
	.uleb128 0x3a
	.ascii "p\0"
	.byte	0x1
	.byte	0x47
	.long	0x9d2
	.secrel32	.LLST30
	.uleb128 0x3b
	.quad	.LVL54
	.long	0x204e
	.long	0x228e
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.quad	.LVL56
	.long	0x201f
	.long	0x22a6
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x30
	.quad	.LVL60
	.long	0x2655
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x8
	.long	0x1fe2
	.uleb128 0x4
	.long	0x22bb
	.uleb128 0x3c
	.long	0x99b
	.byte	0x1
	.byte	0x3e
	.long	0x22eb
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x22eb
	.long	0x234a
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST25
	.uleb128 0x39
	.ascii "p\0"
	.byte	0x1
	.byte	0x3e
	.long	0x9e3
	.secrel32	.LLST26
	.uleb128 0x3b
	.quad	.LVL46
	.long	0x20eb
	.long	0x2324
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3b
	.quad	.LVL47
	.long	0x207d
	.long	0x233c
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.quad	.LVL48
	.long	0x2781
	.byte	0
	.uleb128 0x3c
	.long	0x96d
	.byte	0x1
	.byte	0x39
	.long	0x236f
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x236f
	.long	0x23ce
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST10
	.uleb128 0x39
	.ascii "i\0"
	.byte	0x1
	.byte	0x39
	.long	0x12d
	.secrel32	.LLST11
	.uleb128 0x3b
	.quad	.LVL21
	.long	0x21af
	.long	0x23a8
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3b
	.quad	.LVL22
	.long	0x213f
	.long	0x23c0
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.quad	.LVL23
	.long	0x2781
	.byte	0
	.uleb128 0x3c
	.long	0x93d
	.byte	0x1
	.byte	0x34
	.long	0x23f3
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f3
	.long	0x2423
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST7
	.uleb128 0x39
	.ascii "s\0"
	.byte	0x1
	.byte	0x34
	.long	0x9d2
	.secrel32	.LLST8
	.uleb128 0x30
	.quad	.LVL13
	.long	0x2781
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x90f
	.byte	0x1
	.byte	0x30
	.long	0x2448
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x2448
	.long	0x2470
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST22
	.uleb128 0x39
	.ascii "d\0"
	.byte	0x1
	.byte	0x30
	.long	0x117
	.secrel32	.LLST23
	.uleb128 0x3d
	.quad	.LVL37
	.long	0x234a
	.byte	0
	.uleb128 0x3c
	.long	0x8e1
	.byte	0x1
	.byte	0x2c
	.long	0x2495
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x2495
	.long	0x24d2
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST20
	.uleb128 0x39
	.ascii "i\0"
	.byte	0x1
	.byte	0x2c
	.long	0x370
	.secrel32	.LLST21
	.uleb128 0x30
	.quad	.LVL34
	.long	0x234a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x8b3
	.byte	0x1
	.byte	0x28
	.long	0x24f7
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f7
	.long	0x2534
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST18
	.uleb128 0x39
	.ascii "i\0"
	.byte	0x1
	.byte	0x28
	.long	0x32a
	.secrel32	.LLST19
	.uleb128 0x30
	.quad	.LVL32
	.long	0x234a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x8
	.byte	0x30
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x885
	.byte	0x1
	.byte	0x24
	.long	0x2559
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x2559
	.long	0x2596
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST16
	.uleb128 0x39
	.ascii "u\0"
	.byte	0x1
	.byte	0x24
	.long	0x510
	.secrel32	.LLST17
	.uleb128 0x30
	.quad	.LVL30
	.long	0x234a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xc
	.long	0xffffffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x857
	.byte	0x1
	.byte	0x20
	.long	0x25bb
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x25bb
	.long	0x25f6
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST14
	.uleb128 0x39
	.ascii "u\0"
	.byte	0x1
	.byte	0x20
	.long	0x4f1
	.secrel32	.LLST15
	.uleb128 0x30
	.quad	.LVL28
	.long	0x234a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x829
	.byte	0x1
	.byte	0x1c
	.long	0x261b
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x261b
	.long	0x2655
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST12
	.uleb128 0x39
	.ascii "u\0"
	.byte	0x1
	.byte	0x1c
	.long	0x4d3
	.secrel32	.LLST13
	.uleb128 0x30
	.quad	.LVL26
	.long	0x234a
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x7fb
	.byte	0x1
	.byte	0x17
	.long	0x267a
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x267a
	.long	0x26b1
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST5
	.uleb128 0x39
	.ascii "ch\0"
	.byte	0x1
	.byte	0x17
	.long	0x6ee
	.secrel32	.LLST6
	.uleb128 0x30
	.quad	.LVL9
	.long	0x2790
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x8
	.byte	0x38
	.byte	0x24
	.byte	0x8
	.byte	0x38
	.byte	0x26
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x7c5
	.byte	0x1
	.byte	0x13
	.long	0x26d6
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x26d6
	.long	0x2706
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST3
	.uleb128 0x39
	.ascii "s\0"
	.byte	0x1
	.byte	0x13
	.long	0x9d2
	.secrel32	.LLST4
	.uleb128 0x30
	.quad	.LVL6
	.long	0x2781
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	0x789
	.byte	0x1
	.byte	0xf
	.long	0x272b
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x272b
	.long	0x2771
	.uleb128 0x2f
	.secrel32	.LASF15
	.long	0x9cd
	.secrel32	.LLST0
	.uleb128 0x39
	.ascii "s\0"
	.byte	0x1
	.byte	0xf
	.long	0x9d2
	.secrel32	.LLST1
	.uleb128 0x39
	.ascii "len\0"
	.byte	0x1
	.byte	0xf
	.long	0x12d
	.secrel32	.LLST2
	.uleb128 0x30
	.quad	.LVL3
	.long	0x279f
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x31
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.byte	0
	.uleb128 0x3e
	.secrel32	.LASF16
	.ascii "itos\0"
	.byte	0xc
	.byte	0x1e
	.secrel32	.LASF16
	.uleb128 0x3f
	.secrel32	.LASF17
	.secrel32	.LASF18
	.byte	0xb
	.byte	0x11
	.secrel32	.LASF17
	.uleb128 0x3f
	.secrel32	.LASF19
	.secrel32	.LASF18
	.byte	0xb
	.byte	0xe
	.secrel32	.LASF19
	.uleb128 0x3f
	.secrel32	.LASF20
	.secrel32	.LASF18
	.byte	0xb
	.byte	0x12
	.secrel32	.LASF20
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0x26
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
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
.LLST24:
	.quad	.LVL41
	.quad	.LVL42
	.word	0x1
	.byte	0x52
	.quad	.LVL42
	.quad	.LFE68
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL16
	.quad	.LVL17
	.word	0x1
	.byte	0x52
	.quad	.LVL17
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL52
	.quad	.LVL53
	.word	0x1
	.byte	0x52
	.quad	.LVL53
	.quad	.LVL63
	.word	0x1
	.byte	0x56
	.quad	.LVL63
	.quad	.LFE60
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL52
	.quad	.LVL54-1
	.word	0x1
	.byte	0x51
	.quad	.LVL54-1
	.quad	.LVL57
	.word	0x1
	.byte	0x54
	.quad	.LVL57
	.quad	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL55
	.quad	.LVL56-1
	.word	0x1
	.byte	0x50
	.quad	.LVL56-1
	.quad	.LVL58
	.word	0x1
	.byte	0x53
	.quad	.LVL58
	.quad	.LVL61
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL56
	.quad	.LVL59
	.word	0x1
	.byte	0x50
	.quad	.LVL59
	.quad	.LVL61
	.word	0x1
	.byte	0x55
	.quad	.LVL61
	.quad	.LVL62
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL44
	.quad	.LVL45
	.word	0x1
	.byte	0x52
	.quad	.LVL45
	.quad	.LVL49
	.word	0x1
	.byte	0x54
	.quad	.LVL49
	.quad	.LFE59
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL44
	.quad	.LVL46-1
	.word	0x1
	.byte	0x51
	.quad	.LVL46-1
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL19
	.quad	.LVL20
	.word	0x1
	.byte	0x52
	.quad	.LVL20
	.quad	.LVL24
	.word	0x1
	.byte	0x54
	.quad	.LVL24
	.quad	.LFE58
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL19
	.quad	.LVL21-1
	.word	0x1
	.byte	0x51
	.quad	.LVL21-1
	.quad	.LFE58
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL11
	.quad	.LVL12
	.word	0x1
	.byte	0x52
	.quad	.LVL12
	.quad	.LVL14
	.word	0x1
	.byte	0x53
	.quad	.LVL14
	.quad	.LFE57
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL11
	.quad	.LVL13-1
	.word	0x1
	.byte	0x51
	.quad	.LVL13-1
	.quad	.LFE57
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL35
	.quad	.LVL37-1
	.word	0x1
	.byte	0x52
	.quad	.LVL37-1
	.quad	.LVL38
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	.LVL38
	.quad	.LFE56
	.word	0x1
	.byte	0x52
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL35
	.quad	.LVL36
	.word	0x1
	.byte	0x62
	.quad	.LVL36
	.quad	.LVL38
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x117
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL39
	.word	0x1
	.byte	0x62
	.quad	.LVL39
	.quad	.LFE56
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x117
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL33
	.quad	.LVL34-1
	.word	0x1
	.byte	0x52
	.quad	.LVL34-1
	.quad	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL33
	.quad	.LVL34-1
	.word	0x1
	.byte	0x51
	.quad	.LVL34-1
	.quad	.LFE55
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL31
	.quad	.LVL32-1
	.word	0x1
	.byte	0x52
	.quad	.LVL32-1
	.quad	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL31
	.quad	.LVL32-1
	.word	0x1
	.byte	0x51
	.quad	.LVL32-1
	.quad	.LFE54
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL29
	.quad	.LVL30-1
	.word	0x1
	.byte	0x52
	.quad	.LVL30-1
	.quad	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL29
	.quad	.LVL30-1
	.word	0x1
	.byte	0x51
	.quad	.LVL30-1
	.quad	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL27
	.quad	.LVL28-1
	.word	0x1
	.byte	0x52
	.quad	.LVL28-1
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL27
	.quad	.LVL28-1
	.word	0x1
	.byte	0x51
	.quad	.LVL28-1
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL25
	.quad	.LVL26-1
	.word	0x1
	.byte	0x52
	.quad	.LVL26-1
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL25
	.quad	.LVL26-1
	.word	0x1
	.byte	0x51
	.quad	.LVL26-1
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7
	.quad	.LVL8
	.word	0x1
	.byte	0x52
	.quad	.LVL8
	.quad	.LVL10
	.word	0x1
	.byte	0x53
	.quad	.LVL10
	.quad	.LFE50
	.word	0x1
	.byte	0x50
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL7
	.quad	.LVL9-1
	.word	0x1
	.byte	0x51
	.quad	.LVL9-1
	.quad	.LFE50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL4
	.quad	.LVL5
	.word	0x1
	.byte	0x52
	.quad	.LVL5
	.quad	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL4
	.quad	.LVL6-1
	.word	0x1
	.byte	0x51
	.quad	.LVL6-1
	.quad	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.word	0x1
	.byte	0x52
	.quad	.LVL1
	.quad	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.word	0x1
	.byte	0x51
	.quad	.LVL2
	.quad	.LVL3-1
	.word	0x1
	.byte	0x52
	.quad	.LVL3-1
	.quad	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL3-1
	.word	0x1
	.byte	0x58
	.quad	.LVL3-1
	.quad	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x8c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB63
	.quad	.LFE63
	.quad	.LFB64
	.quad	.LFE64
	.quad	.LFB67
	.quad	.LFE67
	.quad	.LFB68
	.quad	.LFE68
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB70
	.quad	.LFE70
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
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\Debug-host\\cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xa
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
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x17
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
	.file 24 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x18
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
	.file 25 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x19
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
	.file 26 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1a
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
	.uleb128 0x9
	.byte	0x1
	.uleb128 0xa
	.ascii "_STDINT_H \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x6
	.ascii "_MACHINE__DEFAULT_TYPES_H \0"
	.file 27 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x16
	.ascii "_SYS_FEATURES_H \0"
	.file 28 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1c
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
	.file 29 "/usr/include/sys/_intsup.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1d
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
	.uleb128 0x8
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
	.file 30 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_INTEGERINTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
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
	.uleb128 0xc
	.uleb128 0x10
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_VECTOR_H_ \0"
	.file 31 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.file 32 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_SECTORREADER_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x11
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
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x4
	.file 33 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/MemoryManager.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRING_H_ \0"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF12:
	.ascii "String\0"
.LASF10:
	.ascii "operator[]\0"
.LASF13:
	.ascii "VectorRef\0"
.LASF19:
	.ascii "_Z6printkc\0"
.LASF15:
	.ascii "this\0"
.LASF1:
	.ascii "IntegerFormatter\0"
.LASF20:
	.ascii "_Z6printkPKcm\0"
.LASF11:
	.ascii "getData\0"
.LASF14:
	.ascii "StringRef\0"
.LASF0:
	.ascii "operator<<\0"
.LASF8:
	.ascii "Vector\0"
.LASF3:
	.ascii "getSize\0"
.LASF5:
	.ascii "getDataEnd\0"
.LASF6:
	.ascii "MemoryManager\0"
.LASF4:
	.ascii "getDataPtr\0"
.LASF18:
	.ascii "printk\0"
.LASF9:
	.ascii "operator=\0"
.LASF2:
	.ascii "MemoryChunk\0"
.LASF16:
	.ascii "_Z4itosmjPcm\0"
.LASF17:
	.ascii "_Z6printkPKc\0"
.LASF7:
	.ascii "allocate\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_Z6printkPKcm;	.scl	2;	.type	32;	.endef
	.def	_Z6printkPKc;	.scl	2;	.type	32;	.endef
	.def	_Z6printkc;	.scl	2;	.type	32;	.endef
	.def	_Z4itosmjPcm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.koutBuf, "dr"
	.globl	.refptr.koutBuf
	.linkonce	discard
.refptr.koutBuf:
	.quad	koutBuf
