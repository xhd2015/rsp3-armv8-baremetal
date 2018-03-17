	.file	"PidManager.cpp"
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
	.globl	_ZN10PidManagerC2Ev
	.def	_ZN10PidManagerC2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10PidManagerC2Ev
_ZN10PidManagerC2Ev:
.LFB18:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp"
	.loc 1 10 0
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
.LBB88:
	.loc 1 12 0
	movq	16(%rbp), %rcx
	call	_ZN10PidManager8clearAllEv
.LBE88:
	.loc 1 13 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.seh_endproc
	.globl	_ZN10PidManagerC1Ev
	.def	_ZN10PidManagerC1Ev;	.scl	2;	.type	32;	.endef
	.set	_ZN10PidManagerC1Ev,_ZN10PidManagerC2Ev
	.align 2
	.globl	_ZNK10PidManager11isAllocatedEt
	.def	_ZNK10PidManager11isAllocatedEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK10PidManager11isAllocatedEt
_ZNK10PidManager11isAllocatedEt:
.LFB20:
	.loc 1 16 0
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
	movl	%edx, %eax
	movw	%ax, 24(%rbp)
	.loc 1 17 0
	movzwl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movw	%ax, -66(%rbp)
.LBB89:
.LBB90:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/schedule/PidManager.h"
	.loc 2 37 0
	movzwl	-66(%rbp), %eax
	andl	$7, %eax
.LBE90:
.LBE89:
	.loc 1 17 0
	movzbl	%al, %eax
	movzwl	24(%rbp), %edx
	movq	16(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movw	%dx, -50(%rbp)
.LBB91:
.LBB92:
	.loc 2 33 0
	movzwl	-50(%rbp), %edx
	shrw	$3, %dx
	movzwl	%dx, %edx
.LBE92:
.LBE91:
	.loc 1 17 0
	movq	16(%rbp), %rcx
	movzbl	(%rcx,%rdx), %edx
	movzbl	%dl, %edx
	movq	%rdx, -8(%rbp)
	movb	%al, -9(%rbp)
.LBB93:
.LBB94:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.loc 3 85 0
	movzbl	-9(%rbp), %eax
	movzbl	-9(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, -25(%rbp)
	movb	%al, -26(%rbp)
.LBB95:
.LBB96:
	.loc 3 76 0
	movzbl	-25(%rbp), %eax
	movq	-24(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %r8
	movzbl	-26(%rbp), %edx
	movzbl	-25(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -40(%rbp)
.LBB97:
.LBB98:
	.loc 3 59 0
	movq	-40(%rbp), %rax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-40(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE98:
.LBE97:
	.loc 3 76 0
	andq	%r8, %rax
.LBE96:
.LBE95:
.LBE94:
.LBE93:
	.loc 1 17 0
	cmpq	$1, %rax
	sete	%al
	.loc 1 18 0
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.seh_endproc
	.align 2
	.globl	_ZN10PidManager8allocateEv
	.def	_ZN10PidManager8allocateEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10PidManager8allocateEv
_ZN10PidManager8allocateEv:
.LFB21:
	.loc 1 20 0
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
.LBB99:
	.loc 1 21 0
	movq	$0, -8(%rbp)
.L17:
	.loc 1 21 0 is_stmt 0 discriminator 1
	cmpq	$128, -8(%rbp)
	je	.L10
.LBB100:
.LBB101:
	.loc 1 23 0 is_stmt 1
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$-1, %al
	je	.L11
.LBB102:
	.loc 1 25 0
	movq	16(%rbp), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, -9(%rbp)
	.loc 1 26 0
	movq	$0, -24(%rbp)
.L13:
	.loc 1 27 0
	movzbl	-9(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L12
	.loc 1 29 0
	movzbl	-9(%rbp), %eax
	sarl	%eax
	movb	%al, -9(%rbp)
	.loc 1 30 0
	addq	$1, -24(%rbp)
	.loc 1 27 0
	jmp	.L13
.L12:
	.loc 1 32 0
	movq	-24(%rbp), %rax
	movzbl	%al, %eax
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -32(%rbp)
	movb	%al, -33(%rbp)
	movl	$1, -40(%rbp)
.LBB103:
.LBB104:
	.loc 3 81 0
	movzbl	-33(%rbp), %eax
	movzbl	-33(%rbp), %edx
	movq	-32(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movb	%dl, -49(%rbp)
	movb	%al, -50(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB105:
.LBB106:
	.loc 3 72 0
	movq	-48(%rbp), %rax
	movzbl	(%rax), %r8d
	movzbl	-50(%rbp), %eax
	movzbl	-49(%rbp), %edx
	movq	%rdx, -64(%rbp)
	movq	%rax, -72(%rbp)
.LBB107:
.LBB108:
	.loc 3 64 0
	movq	-64(%rbp), %rax
	movq	$-1, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-64(%rbp), %rax
	movl	%eax, %ecx
	movq	-72(%rbp), %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$63, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-72(%rbp), %rax
	movl	$63, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE108:
.LBE107:
	.loc 3 72 0
	notl	%eax
	movl	%r8d, %r9d
	andl	%eax, %r9d
	movl	-56(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-50(%rbp), %ecx
	movzbl	-49(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -80(%rbp)
.LBB109:
.LBB110:
	.loc 3 59 0
	movq	-80(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movq	$-1, %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	movq	-80(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rax
.LBE110:
.LBE109:
	.loc 3 72 0
	andq	%rax, %rdx
	movzbl	-49(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%r9d, %edx
	orl	%eax, %edx
	movq	-48(%rbp), %rax
	movb	%dl, (%rax)
.LBE106:
.LBE105:
.LBE104:
.LBE103:
	.loc 1 33 0
	movq	-8(%rbp), %rax
	leal	0(,%rax,8), %edx
	movq	-24(%rbp), %rax
	addl	%edx, %eax
	jmp	.L16
.L11:
.LBE102:
.LBE101:
.LBE100:
	.loc 1 21 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L17
.L10:
.LBE99:
	.loc 1 36 0
	movl	$0, %eax
.L16:
	.loc 1 37 0
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.seh_endproc
	.align 2
	.globl	_ZN10PidManager8allocateEt
	.def	_ZN10PidManager8allocateEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10PidManager8allocateEt
_ZN10PidManager8allocateEt:
.LFB22:
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
	movl	%edx, %eax
	movw	%ax, 24(%rbp)
	.loc 1 40 0
	cmpw	$0, 24(%rbp)
	jne	.L19
	.loc 1 41 0
	movl	$0, %eax
	jmp	.L20
.L19:
	.loc 1 42 0
	movzwl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movw	%ax, -82(%rbp)
.LBB111:
.LBB112:
	.loc 2 33 0
	movzwl	-82(%rbp), %eax
	shrw	$3, %ax
	movzwl	%ax, %eax
.LBE112:
.LBE111:
	.loc 1 42 0
	movq	%rax, -8(%rbp)
	.loc 1 43 0
	movzwl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movw	%ax, -66(%rbp)
.LBB113:
.LBB114:
	.loc 2 37 0
	movzwl	-66(%rbp), %eax
	andl	$7, %eax
.LBE114:
.LBE113:
	.loc 1 43 0
	movq	%rax, -16(%rbp)
	.loc 1 44 0
	movq	-16(%rbp), %rax
	movzbl	%al, %eax
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
.LBB115:
.LBB116:
	.loc 3 85 0
	movzbl	-25(%rbp), %eax
	movzbl	-25(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, -41(%rbp)
	movb	%al, -42(%rbp)
.LBB117:
.LBB118:
	.loc 3 76 0
	movzbl	-41(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %r8
	movzbl	-42(%rbp), %edx
	movzbl	-41(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -56(%rbp)
.LBB119:
.LBB120:
	.loc 3 59 0
	movq	-56(%rbp), %rax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-56(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE120:
.LBE119:
	.loc 3 76 0
	andq	%r8, %rax
.LBE118:
.LBE117:
.LBE116:
.LBE115:
	.loc 1 44 0
	cmpq	$1, %rax
	sete	%al
	testb	%al, %al
	je	.L26
	.loc 1 45 0
	movl	$0, %eax
	jmp	.L20
.L26:
	.loc 1 46 0
	movq	-16(%rbp), %rax
	movzbl	%al, %eax
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movb	%al, -97(%rbp)
	movl	$1, -104(%rbp)
.LBB121:
.LBB122:
	.loc 3 81 0
	movzbl	-97(%rbp), %eax
	movzbl	-97(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movb	%dl, -113(%rbp)
	movb	%al, -114(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB123:
.LBB124:
	.loc 3 72 0
	movq	-112(%rbp), %rax
	movzbl	(%rax), %r8d
	movzbl	-114(%rbp), %eax
	movzbl	-113(%rbp), %edx
	movq	%rdx, -128(%rbp)
	movq	%rax, -136(%rbp)
.LBB125:
.LBB126:
	.loc 3 64 0
	movq	-128(%rbp), %rax
	movq	$-1, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$63, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-136(%rbp), %rax
	movl	$63, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE126:
.LBE125:
	.loc 3 72 0
	notl	%eax
	movl	%r8d, %r9d
	andl	%eax, %r9d
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-114(%rbp), %ecx
	movzbl	-113(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -144(%rbp)
.LBB127:
.LBB128:
	.loc 3 59 0
	movq	-144(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movq	$-1, %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	movq	-144(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rax
.LBE128:
.LBE127:
	.loc 3 72 0
	andq	%rax, %rdx
	movzbl	-113(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%r9d, %edx
	orl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.LBE124:
.LBE123:
.LBE122:
.LBE121:
	.loc 1 47 0
	movzwl	24(%rbp), %eax
.L20:
	.loc 1 48 0
	addq	$144, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.seh_endproc
	.align 2
	.globl	_ZN10PidManager10deallocateEt
	.def	_ZN10PidManager10deallocateEt;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10PidManager10deallocateEt
_ZN10PidManager10deallocateEt:
.LFB23:
	.loc 1 50 0
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
	movl	%edx, %eax
	movw	%ax, 24(%rbp)
	.loc 1 51 0
	cmpw	$0, 24(%rbp)
	je	.L39
	.loc 1 53 0
	movzwl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movw	%ax, -82(%rbp)
.LBB129:
.LBB130:
	.loc 2 33 0
	movzwl	-82(%rbp), %eax
	shrw	$3, %ax
	movzwl	%ax, %eax
.LBE130:
.LBE129:
	.loc 1 53 0
	movq	%rax, -8(%rbp)
	.loc 1 54 0
	movzwl	24(%rbp), %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movw	%ax, -66(%rbp)
.LBB131:
.LBB132:
	.loc 2 37 0
	movzwl	-66(%rbp), %eax
	andl	$7, %eax
.LBE132:
.LBE131:
	.loc 1 54 0
	movq	%rax, -16(%rbp)
	.loc 1 55 0
	movq	-16(%rbp), %rax
	movzbl	%al, %eax
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movzbl	(%rdx), %edx
	movzbl	%dl, %edx
	movq	%rdx, -24(%rbp)
	movb	%al, -25(%rbp)
.LBB133:
.LBB134:
	.loc 3 85 0
	movzbl	-25(%rbp), %eax
	movzbl	-25(%rbp), %edx
	movq	-24(%rbp), %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, -41(%rbp)
	movb	%al, -42(%rbp)
.LBB135:
.LBB136:
	.loc 3 76 0
	movzbl	-41(%rbp), %eax
	movq	-40(%rbp), %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %r8
	movzbl	-42(%rbp), %edx
	movzbl	-41(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -56(%rbp)
.LBB137:
.LBB138:
	.loc 3 59 0
	movq	-56(%rbp), %rax
	movl	$64, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movq	$-1, %rdx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-56(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE138:
.LBE137:
	.loc 3 76 0
	andq	%r8, %rax
.LBE136:
.LBE135:
.LBE134:
.LBE133:
	.loc 1 55 0
	cmpq	$1, %rax
	sete	%al
	testb	%al, %al
	je	.L29
	.loc 1 57 0
	movq	-16(%rbp), %rax
	movzbl	%al, %eax
	movq	16(%rbp), %rcx
	movq	-8(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movb	%al, -97(%rbp)
	movl	$0, -104(%rbp)
.LBB139:
.LBB140:
	.loc 3 81 0
	movzbl	-97(%rbp), %eax
	movzbl	-97(%rbp), %edx
	movq	-96(%rbp), %rcx
	movq	%rcx, -112(%rbp)
	movb	%dl, -113(%rbp)
	movb	%al, -114(%rbp)
	movl	-104(%rbp), %eax
	movl	%eax, -120(%rbp)
.LBB141:
.LBB142:
	.loc 3 72 0
	movq	-112(%rbp), %rax
	movzbl	(%rax), %r8d
	movzbl	-114(%rbp), %eax
	movzbl	-113(%rbp), %edx
	movq	%rdx, -128(%rbp)
	movq	%rax, -136(%rbp)
.LBB143:
.LBB144:
	.loc 3 64 0
	movq	-128(%rbp), %rax
	movq	$-1, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-128(%rbp), %rax
	movl	%eax, %ecx
	movq	-136(%rbp), %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$63, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-136(%rbp), %rax
	movl	$63, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE144:
.LBE143:
	.loc 3 72 0
	notl	%eax
	movl	%r8d, %r9d
	andl	%eax, %r9d
	movl	-120(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-114(%rbp), %ecx
	movzbl	-113(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -144(%rbp)
.LBB145:
.LBB146:
	.loc 3 59 0
	movq	-144(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movq	$-1, %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	movq	-144(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rax
.LBE146:
.LBE145:
	.loc 3 72 0
	andq	%rax, %rdx
	movzbl	-113(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%r9d, %edx
	orl	%eax, %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
.LBE142:
.LBE141:
.LBE140:
.LBE139:
	jmp	.L29
.L39:
	.loc 1 52 0
	nop
.L29:
	.loc 1 59 0
	addq	$144, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE23:
	.seh_endproc
	.align 2
	.globl	_ZN10PidManager8clearAllEv
	.def	_ZN10PidManager8clearAllEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN10PidManager8clearAllEv
_ZN10PidManager8clearAllEv:
.LFB24:
	.loc 1 61 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	.seh_stackalloc	128
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	.loc 1 62 0
	movq	16(%rbp), %rax
	movl	$128, %r8d
	movl	$0, %edx
	movq	%rax, %rcx
	call	memset
	movq	16(%rbp), %rax
	movq	%rax, -80(%rbp)
	movw	$0, -82(%rbp)
.LBB147:
.LBB148:
	.loc 2 37 0
	movzwl	-82(%rbp), %eax
	andl	$7, %eax
.LBE148:
.LBE147:
	.loc 1 63 0
	movzbl	%al, %eax
	movq	16(%rbp), %rdx
	movq	%rdx, -64(%rbp)
	movw	$0, -66(%rbp)
.LBB149:
.LBB150:
	.loc 2 33 0
	movzwl	-66(%rbp), %edx
	shrw	$3, %dx
	movzwl	%dx, %ecx
.LBE150:
.LBE149:
	.loc 1 63 0
	movq	16(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, -8(%rbp)
	movb	%al, -9(%rbp)
	movl	$1, -16(%rbp)
.LBB151:
.LBB152:
	.loc 3 81 0
	movzbl	-9(%rbp), %eax
	movzbl	-9(%rbp), %edx
	movq	-8(%rbp), %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, -25(%rbp)
	movb	%al, -26(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB153:
.LBB154:
	.loc 3 72 0
	movq	-24(%rbp), %rax
	movzbl	(%rax), %r8d
	movzbl	-26(%rbp), %eax
	movzbl	-25(%rbp), %edx
	movq	%rdx, -40(%rbp)
	movq	%rax, -48(%rbp)
.LBB155:
.LBB156:
	.loc 3 64 0
	movq	-40(%rbp), %rax
	movq	$-1, %rdx
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	-40(%rbp), %rax
	movl	%eax, %ecx
	movq	-48(%rbp), %rax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$63, %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	-48(%rbp), %rax
	movl	$63, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
.LBE156:
.LBE155:
	.loc 3 72 0
	notl	%eax
	movl	%r8d, %r9d
	andl	%eax, %r9d
	movl	-32(%rbp), %eax
	movslq	%eax, %rdx
	movzbl	-26(%rbp), %ecx
	movzbl	-25(%rbp), %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cltq
	movq	%rax, -56(%rbp)
.LBB157:
.LBB158:
	.loc 3 59 0
	movq	-56(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movq	$-1, %r8
	movl	%eax, %ecx
	salq	%cl, %r8
	movq	-56(%rbp), %rax
	movl	$64, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	shrq	%cl, %r8
	movq	%r8, %rax
.LBE158:
.LBE157:
	.loc 3 72 0
	andq	%rax, %rdx
	movzbl	-25(%rbp), %eax
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	movl	%r9d, %edx
	orl	%eax, %edx
	movq	-24(%rbp), %rax
	movb	%dl, (%rax)
.LBE154:
.LBE153:
.LBE152:
.LBE151:
	.loc 1 64 0
	nop
	subq	$-128, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE24:
	.seh_endproc
.Letext0:
	.file 4 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstring"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 9 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 13 "/usr/include/sys/lock.h"
	.file 14 "/usr/include/sys/_types.h"
	.file 15 "/usr/include/sys/reent.h"
	.file 16 "/usr/include/string.h"
	.file 17 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x2d2d
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/schedule/PidManager.cpp\0"
	.ascii "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/subprojects/host/Debug\0"
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
	.byte	0x4
	.byte	0xd8
	.long	0x191
	.uleb128 0x4
	.long	0x17e
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x4
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1ee
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x4
	.word	0x1ab
	.long	0x1ee
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x4
	.word	0x1ac
	.long	0x1ff
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
	.long	0x1a6
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x11
	.byte	0
	.long	0x3a6
	.uleb128 0xa
	.byte	0x5
	.byte	0x38
	.long	0x20e
	.uleb128 0xa
	.byte	0x6
	.byte	0x30
	.long	0x3a6
	.uleb128 0xa
	.byte	0x6
	.byte	0x31
	.long	0x3c3
	.uleb128 0xa
	.byte	0x6
	.byte	0x32
	.long	0x3df
	.uleb128 0xa
	.byte	0x6
	.byte	0x33
	.long	0x3fa
	.uleb128 0xa
	.byte	0x6
	.byte	0x35
	.long	0x529
	.uleb128 0xa
	.byte	0x6
	.byte	0x36
	.long	0x53c
	.uleb128 0xa
	.byte	0x6
	.byte	0x37
	.long	0x550
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x564
	.uleb128 0xa
	.byte	0x6
	.byte	0x3a
	.long	0x47f
	.uleb128 0xa
	.byte	0x6
	.byte	0x3b
	.long	0x493
	.uleb128 0xa
	.byte	0x6
	.byte	0x3c
	.long	0x4a8
	.uleb128 0xa
	.byte	0x6
	.byte	0x3d
	.long	0x4bd
	.uleb128 0xa
	.byte	0x6
	.byte	0x3f
	.long	0x5ec
	.uleb128 0xa
	.byte	0x6
	.byte	0x40
	.long	0x5cb
	.uleb128 0xa
	.byte	0x6
	.byte	0x42
	.long	0x409
	.uleb128 0xa
	.byte	0x6
	.byte	0x43
	.long	0x429
	.uleb128 0xa
	.byte	0x6
	.byte	0x44
	.long	0x44f
	.uleb128 0xa
	.byte	0x6
	.byte	0x45
	.long	0x46f
	.uleb128 0xa
	.byte	0x6
	.byte	0x47
	.long	0x578
	.uleb128 0xa
	.byte	0x6
	.byte	0x48
	.long	0x58c
	.uleb128 0xa
	.byte	0x6
	.byte	0x49
	.long	0x5a1
	.uleb128 0xa
	.byte	0x6
	.byte	0x4a
	.long	0x5b6
	.uleb128 0xa
	.byte	0x6
	.byte	0x4c
	.long	0x4d2
	.uleb128 0xa
	.byte	0x6
	.byte	0x4d
	.long	0x4e7
	.uleb128 0xa
	.byte	0x6
	.byte	0x4e
	.long	0x4fd
	.uleb128 0xa
	.byte	0x6
	.byte	0x4f
	.long	0x513
	.uleb128 0xa
	.byte	0x6
	.byte	0x51
	.long	0x5fc
	.uleb128 0xa
	.byte	0x6
	.byte	0x52
	.long	0x5db
	.uleb128 0xa
	.byte	0x7
	.byte	0x4b
	.long	0x1e2a
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x1e4c
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x1e6e
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x1e90
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x1eb3
	.uleb128 0xa
	.byte	0x7
	.byte	0x50
	.long	0x1ed5
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x1ef2
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x1f0f
	.uleb128 0xa
	.byte	0x7
	.byte	0x53
	.long	0x1f2d
	.uleb128 0xa
	.byte	0x7
	.byte	0x54
	.long	0x1f4a
	.uleb128 0xa
	.byte	0x7
	.byte	0x55
	.long	0x1f68
	.uleb128 0xa
	.byte	0x7
	.byte	0x56
	.long	0x1f82
	.uleb128 0xa
	.byte	0x7
	.byte	0x57
	.long	0x1f9a
	.uleb128 0xa
	.byte	0x7
	.byte	0x58
	.long	0x1fbd
	.uleb128 0xa
	.byte	0x7
	.byte	0x59
	.long	0x1fe0
	.uleb128 0xa
	.byte	0x7
	.byte	0x5a
	.long	0x2003
	.uleb128 0xa
	.byte	0x7
	.byte	0x5b
	.long	0x2020
	.uleb128 0xa
	.byte	0x7
	.byte	0x5c
	.long	0x203d
	.uleb128 0xa
	.byte	0x7
	.byte	0x5d
	.long	0x2060
	.uleb128 0xa
	.byte	0x7
	.byte	0x5e
	.long	0x207d
	.uleb128 0xa
	.byte	0x7
	.byte	0x5f
	.long	0x209b
	.uleb128 0xa
	.byte	0x7
	.byte	0x60
	.long	0x20b9
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x8
	.byte	0x22
	.long	0x3b4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x8
	.byte	0x25
	.long	0x3d2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x8
	.byte	0x28
	.long	0x3ee
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x3ee
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0x172
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x8
	.byte	0x2e
	.long	0x418
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x8
	.byte	0x31
	.long	0x439
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x8
	.byte	0x34
	.long	0x45f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x8
	.byte	0x37
	.long	0x191
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x8
	.byte	0x3c
	.long	0x3b4
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x8
	.byte	0x3d
	.long	0x3d2
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x8
	.byte	0x3e
	.long	0x3ee
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x8
	.byte	0x3f
	.long	0x172
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x8
	.byte	0x40
	.long	0x418
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x8
	.byte	0x41
	.long	0x439
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x8
	.byte	0x42
	.long	0x45f
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x8
	.byte	0x43
	.long	0x191
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x8
	.byte	0x47
	.long	0x3b4
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x8
	.byte	0x48
	.long	0x172
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x8
	.byte	0x49
	.long	0x172
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x8
	.byte	0x4a
	.long	0x172
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x8
	.byte	0x4b
	.long	0x418
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x8
	.byte	0x4c
	.long	0x191
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x191
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x8
	.byte	0x4e
	.long	0x191
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x8
	.byte	0x53
	.long	0x172
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x8
	.byte	0x56
	.long	0x191
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x8
	.byte	0x5b
	.long	0x172
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x8
	.byte	0x5c
	.long	0x191
	.uleb128 0xb
	.long	0x636
	.long	0x61d
	.uleb128 0xc
	.long	0x622
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x60d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x62e
	.uleb128 0xd
	.ascii "EMPTY_STR\0"
	.byte	0x9
	.byte	0x16
	.long	0x61d
	.uleb128 0xe
	.ascii "UNIT_K\0"
	.byte	0x9
	.byte	0x1a
	.long	0x3f5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0xe
	.ascii "KiB\0"
	.byte	0x9
	.byte	0x1b
	.long	0x3f5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0xe
	.ascii "MiB\0"
	.byte	0x9
	.byte	0x1c
	.long	0x3f5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0xe
	.ascii "GiB\0"
	.byte	0x9
	.byte	0x1d
	.long	0x3f5
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0xf
	.ascii "Output\0"
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.long	0x97f
	.uleb128 0x10
	.ascii "print\0"
	.byte	0xa
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x17e
	.byte	0x1
	.long	0x6de
	.long	0x6ee
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "print\0"
	.byte	0xa
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x17e
	.byte	0x1
	.long	0x719
	.long	0x724
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0x98b
	.byte	0x1
	.long	0x747
	.long	0x752
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x62e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0x98b
	.byte	0x1
	.long	0x775
	.long	0x780
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x409
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0x98b
	.byte	0x1
	.long	0x7a3
	.long	0x7ae
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x429
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0x98b
	.byte	0x1
	.long	0x7d1
	.long	0x7dc
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x44f
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0x98b
	.byte	0x1
	.long	0x7ff
	.long	0x80a
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x991
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0x98b
	.byte	0x1
	.long	0x82d
	.long	0x838
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x3d2
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0x98b
	.byte	0x1
	.long	0x85b
	.long	0x866
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0x98b
	.byte	0x1
	.long	0x889
	.long	0x894
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x999
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0x98b
	.byte	0x1
	.long	0x8b9
	.long	0x8c4
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0x98b
	.byte	0x1
	.long	0x8e7
	.long	0x8f2
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0x98b
	.byte	0x1
	.long	0x917
	.long	0x922
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x9a3
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF0
	.byte	0xa
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0x98b
	.byte	0x1
	.long	0x948
	.long	0x953
	.uleb128 0x11
	.long	0x97f
	.uleb128 0x12
	.long	0x9aa
	.byte	0
	.uleb128 0x14
	.ascii "flush\0"
	.byte	0xa
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0x98b
	.byte	0x1
	.long	0x978
	.uleb128 0x11
	.long	0x97f
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x6a3
	.uleb128 0x15
	.byte	0x8
	.long	0x636
	.uleb128 0x16
	.byte	0x8
	.long	0x6a3
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x15
	.byte	0x8
	.long	0x9a9
	.uleb128 0x17
	.uleb128 0x15
	.byte	0x8
	.long	0x9b1
	.uleb128 0x18
	.uleb128 0x4
	.long	0x9b0
	.uleb128 0xd
	.ascii "kout\0"
	.byte	0xa
	.byte	0x22
	.long	0x6a3
	.uleb128 0xe
	.ascii "koutBufSize\0"
	.byte	0xa
	.byte	0x25
	.long	0x18c
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0xb
	.long	0x62e
	.long	0x9ef
	.uleb128 0xc
	.long	0x622
	.byte	0x40
	.byte	0
	.uleb128 0xd
	.ascii "koutBuf\0"
	.byte	0xa
	.byte	0x26
	.long	0x9df
	.uleb128 0xb
	.long	0x636
	.long	0xa09
	.uleb128 0x19
	.byte	0
	.uleb128 0xd
	.ascii "digitsMap\0"
	.byte	0x3
	.byte	0x16
	.long	0x9fe
	.uleb128 0x1a
	.secrel32	.LASF1
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.long	0x1041
	.uleb128 0x1b
	.ascii "nextValidChunkOffset\0"
	.byte	0xb
	.byte	0x42
	.long	0x46f
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x1b
	.ascii "endMark\0"
	.byte	0xb
	.byte	0x43
	.long	0x46f
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x1b
	.ascii "allocated\0"
	.byte	0xb
	.byte	0x44
	.long	0x46f
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1b
	.ascii "size\0"
	.byte	0xb
	.byte	0x45
	.long	0x46f
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x1b
	.ascii "nextBaseFromEnd\0"
	.byte	0xb
	.byte	0x46
	.long	0x46f
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF1
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xac2
	.long	0xae1
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x991
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x991
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF2
	.byte	0xb
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0x991
	.byte	0x1
	.long	0xb16
	.long	0xb1c
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x1d
	.ascii "setAllocated\0"
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xb56
	.long	0xb61
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x991
	.byte	0
	.uleb128 0x10
	.ascii "isEnd\0"
	.byte	0xb
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0x991
	.byte	0x1
	.long	0xb91
	.long	0xb97
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x1d
	.ascii "setEnd\0"
	.byte	0xb
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xbc4
	.long	0xbcf
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x991
	.byte	0
	.uleb128 0x10
	.ascii "getNext\0"
	.byte	0xb
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x104c
	.byte	0x1
	.long	0xc03
	.long	0xc09
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x10
	.ascii "getNext\0"
	.byte	0xb
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x1046
	.byte	0x1
	.long	0xc3c
	.long	0xc42
	.uleb128 0x11
	.long	0x1046
	.byte	0
	.uleb128 0x10
	.ascii "getSize\0"
	.byte	0xb
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x17e
	.byte	0x1
	.long	0xc76
	.long	0xc7c
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x1d
	.ascii "setSize\0"
	.byte	0xb
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xcab
	.long	0xcb6
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF3
	.byte	0xb
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x1052
	.byte	0x1
	.long	0xce9
	.long	0xcef
	.uleb128 0x11
	.long	0x1046
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF3
	.byte	0xb
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x9a3
	.byte	0x1
	.long	0xd23
	.long	0xd29
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF4
	.byte	0xb
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x1052
	.byte	0x1
	.long	0xd5c
	.long	0xd62
	.uleb128 0x11
	.long	0x1046
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF4
	.byte	0xb
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x9a3
	.byte	0x1
	.long	0xd96
	.long	0xd9c
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x10
	.ascii "getNextBaseFromEnd\0"
	.byte	0xb
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x46f
	.byte	0x1
	.long	0xde7
	.long	0xded
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x1d
	.ascii "setNextBaseFromEnd\0"
	.byte	0xb
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xe33
	.long	0xe3e
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x46f
	.byte	0
	.uleb128 0x10
	.ascii "getNextValidChunkOffset\0"
	.byte	0xb
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x46f
	.byte	0x1
	.long	0xe93
	.long	0xe99
	.uleb128 0x11
	.long	0x104c
	.byte	0
	.uleb128 0x1d
	.ascii "setNextValidChunkOffset\0"
	.byte	0xb
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0xee9
	.long	0xef4
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x46f
	.byte	0
	.uleb128 0x10
	.ascii "moveAhead\0"
	.byte	0xb
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x1046
	.byte	0x1
	.long	0xf2b
	.long	0xf36
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xb
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x17e
	.byte	0x1
	.long	0xfa0
	.long	0xfb0
	.uleb128 0x11
	.long	0x104c
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "split\0"
	.byte	0xb
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0x991
	.byte	0x1
	.long	0xfdf
	.long	0xfea
	.uleb128 0x11
	.long	0x1046
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x1e
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xb
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x103a
	.uleb128 0x11
	.long	0x1046
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xa1a
	.uleb128 0x15
	.byte	0x8
	.long	0xa1a
	.uleb128 0x15
	.byte	0x8
	.long	0x1041
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0x1a
	.secrel32	.LASF5
	.byte	0x18
	.byte	0xc
	.byte	0x19
	.long	0x1356
	.uleb128 0x20
	.ascii "headChunk\0"
	.byte	0xc
	.byte	0x54
	.long	0x1046
	.byte	0
	.uleb128 0x20
	.ascii "base\0"
	.byte	0xc
	.byte	0x55
	.long	0x985
	.byte	0x8
	.uleb128 0x20
	.ascii "size\0"
	.byte	0xc
	.byte	0x56
	.long	0x18c
	.byte	0x10
	.uleb128 0x21
	.secrel32	.LASF5
	.byte	0xc
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x10b3
	.long	0x10b9
	.uleb128 0x11
	.long	0x135b
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF5
	.byte	0xc
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x10e3
	.long	0x10f8
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x991
	.byte	0
	.uleb128 0x10
	.ascii "normalizeAllocSize\0"
	.byte	0xc
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x17e
	.byte	0x1
	.long	0x1144
	.long	0x114f
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0xc
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x1052
	.byte	0x1
	.long	0x1181
	.long	0x118c
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0xc
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x1052
	.byte	0x1
	.long	0x11bf
	.long	0x11cf
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "tryIncrease\0"
	.byte	0xc
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0x991
	.byte	0x1
	.long	0x120f
	.long	0x121f
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "tryDecrease\0"
	.byte	0xc
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0x991
	.byte	0x1
	.long	0x125f
	.long	0x126f
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x10
	.ascii "reallocate\0"
	.byte	0xc
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x1052
	.byte	0x1
	.long	0x12ae
	.long	0x12c3
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x17e
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF7
	.byte	0xc
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x12f5
	.long	0x1300
	.uleb128 0x11
	.long	0x135b
	.uleb128 0x12
	.long	0x1052
	.byte	0
	.uleb128 0x14
	.ascii "getAllocatedLength\0"
	.byte	0xc
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x17e
	.byte	0x1
	.long	0x134a
	.uleb128 0x11
	.long	0x1361
	.uleb128 0x12
	.long	0x1052
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1054
	.uleb128 0x15
	.byte	0x8
	.long	0x1054
	.uleb128 0x15
	.byte	0x8
	.long	0x1356
	.uleb128 0xd
	.ascii "mman\0"
	.byte	0xc
	.byte	0x5b
	.long	0x1054
	.uleb128 0x3
	.ascii "_LOCK_T\0"
	.byte	0xd
	.byte	0xc
	.long	0x1052
	.uleb128 0x3
	.ascii "_off64_t\0"
	.byte	0xe
	.byte	0x5e
	.long	0x1ee
	.uleb128 0x3
	.ascii "_fpos_t\0"
	.byte	0xe
	.byte	0x72
	.long	0x172
	.uleb128 0x3
	.ascii "_fpos64_t\0"
	.byte	0xe
	.byte	0x78
	.long	0x1382
	.uleb128 0x3
	.ascii "_ssize_t\0"
	.byte	0xe
	.byte	0x91
	.long	0x172
	.uleb128 0x7
	.ascii "wint_t\0"
	.byte	0x4
	.word	0x165
	.long	0x45f
	.uleb128 0x22
	.byte	0x8
	.byte	0xe
	.byte	0xa4
	.ascii "10_mbstate_t\0"
	.long	0x142b
	.uleb128 0x23
	.byte	0x4
	.byte	0xe
	.byte	0xa7
	.long	0x140a
	.uleb128 0x24
	.ascii "__wch\0"
	.byte	0xe
	.byte	0xa8
	.long	0x13c2
	.uleb128 0x24
	.ascii "__wchb\0"
	.byte	0xe
	.byte	0xa9
	.long	0x142b
	.byte	0
	.uleb128 0x20
	.ascii "__count\0"
	.byte	0xe
	.byte	0xa5
	.long	0x3ee
	.byte	0
	.uleb128 0x20
	.ascii "__value\0"
	.byte	0xe
	.byte	0xaa
	.long	0x13e6
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x418
	.long	0x143b
	.uleb128 0xc
	.long	0x622
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.ascii "_mbstate_t\0"
	.byte	0xe
	.byte	0xab
	.long	0x13d1
	.uleb128 0x3
	.ascii "_flock_t\0"
	.byte	0xe
	.byte	0xaf
	.long	0x1373
	.uleb128 0x15
	.byte	0x8
	.long	0x62e
	.uleb128 0x3
	.ascii "__ULong\0"
	.byte	0xf
	.byte	0x19
	.long	0x45f
	.uleb128 0x25
	.ascii "_Bigint\0"
	.byte	0x20
	.byte	0xf
	.byte	0x2f
	.long	0x14d2
	.uleb128 0x20
	.ascii "_next\0"
	.byte	0xf
	.byte	0x31
	.long	0x14d2
	.byte	0
	.uleb128 0x20
	.ascii "_k\0"
	.byte	0xf
	.byte	0x32
	.long	0x3ee
	.byte	0x8
	.uleb128 0x20
	.ascii "_maxwds\0"
	.byte	0xf
	.byte	0x32
	.long	0x3ee
	.byte	0xc
	.uleb128 0x20
	.ascii "_sign\0"
	.byte	0xf
	.byte	0x32
	.long	0x3ee
	.byte	0x10
	.uleb128 0x20
	.ascii "_wds\0"
	.byte	0xf
	.byte	0x32
	.long	0x3ee
	.byte	0x14
	.uleb128 0x20
	.ascii "_x\0"
	.byte	0xf
	.byte	0x33
	.long	0x14d8
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1472
	.uleb128 0xb
	.long	0x1463
	.long	0x14e8
	.uleb128 0xc
	.long	0x622
	.byte	0
	.byte	0
	.uleb128 0x25
	.ascii "__tm\0"
	.byte	0x24
	.byte	0xf
	.byte	0x37
	.long	0x1596
	.uleb128 0x20
	.ascii "__tm_sec\0"
	.byte	0xf
	.byte	0x39
	.long	0x3ee
	.byte	0
	.uleb128 0x20
	.ascii "__tm_min\0"
	.byte	0xf
	.byte	0x3a
	.long	0x3ee
	.byte	0x4
	.uleb128 0x20
	.ascii "__tm_hour\0"
	.byte	0xf
	.byte	0x3b
	.long	0x3ee
	.byte	0x8
	.uleb128 0x20
	.ascii "__tm_mday\0"
	.byte	0xf
	.byte	0x3c
	.long	0x3ee
	.byte	0xc
	.uleb128 0x20
	.ascii "__tm_mon\0"
	.byte	0xf
	.byte	0x3d
	.long	0x3ee
	.byte	0x10
	.uleb128 0x20
	.ascii "__tm_year\0"
	.byte	0xf
	.byte	0x3e
	.long	0x3ee
	.byte	0x14
	.uleb128 0x20
	.ascii "__tm_wday\0"
	.byte	0xf
	.byte	0x3f
	.long	0x3ee
	.byte	0x18
	.uleb128 0x20
	.ascii "__tm_yday\0"
	.byte	0xf
	.byte	0x40
	.long	0x3ee
	.byte	0x1c
	.uleb128 0x20
	.ascii "__tm_isdst\0"
	.byte	0xf
	.byte	0x41
	.long	0x3ee
	.byte	0x20
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF8
	.word	0x208
	.byte	0xf
	.byte	0x4a
	.long	0x15ec
	.uleb128 0x20
	.ascii "_fnargs\0"
	.byte	0xf
	.byte	0x4b
	.long	0x15ec
	.byte	0
	.uleb128 0x27
	.ascii "_dso_handle\0"
	.byte	0xf
	.byte	0x4c
	.long	0x15ec
	.word	0x100
	.uleb128 0x27
	.ascii "_fntypes\0"
	.byte	0xf
	.byte	0x4e
	.long	0x1463
	.word	0x200
	.uleb128 0x27
	.ascii "_is_cxa\0"
	.byte	0xf
	.byte	0x51
	.long	0x1463
	.word	0x204
	.byte	0
	.uleb128 0xb
	.long	0x1052
	.long	0x15fc
	.uleb128 0xc
	.long	0x622
	.byte	0x1f
	.byte	0
	.uleb128 0x28
	.ascii "_atexit\0"
	.word	0x318
	.byte	0xf
	.byte	0x5d
	.long	0x1643
	.uleb128 0x20
	.ascii "_next\0"
	.byte	0xf
	.byte	0x5e
	.long	0x1643
	.byte	0
	.uleb128 0x20
	.ascii "_ind\0"
	.byte	0xf
	.byte	0x5f
	.long	0x3ee
	.byte	0x8
	.uleb128 0x20
	.ascii "_fns\0"
	.byte	0xf
	.byte	0x61
	.long	0x1649
	.byte	0x10
	.uleb128 0x29
	.secrel32	.LASF8
	.byte	0xf
	.byte	0x62
	.long	0x1596
	.word	0x110
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x15fc
	.uleb128 0xb
	.long	0x1659
	.long	0x1659
	.uleb128 0xc
	.long	0x622
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x165f
	.uleb128 0x2a
	.uleb128 0x25
	.ascii "__sbuf\0"
	.byte	0x10
	.byte	0xf
	.byte	0x75
	.long	0x168c
	.uleb128 0x20
	.ascii "_base\0"
	.byte	0xf
	.byte	0x76
	.long	0x168c
	.byte	0
	.uleb128 0x20
	.ascii "_size\0"
	.byte	0xf
	.byte	0x77
	.long	0x3ee
	.byte	0x8
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x418
	.uleb128 0x2b
	.long	0x13b2
	.long	0x16b0
	.uleb128 0x12
	.long	0x16b0
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x16bb
	.uleb128 0x4
	.long	0x16b0
	.uleb128 0x2c
	.ascii "_reent\0"
	.word	0x760
	.byte	0xf
	.word	0x239
	.long	0x1a5e
	.uleb128 0x2d
	.word	0x168
	.byte	0xf
	.word	0x258
	.long	0x18d0
	.uleb128 0x2e
	.byte	0xd8
	.byte	0xf
	.word	0x25a
	.long	0x1883
	.uleb128 0x6
	.ascii "_unused_rand\0"
	.byte	0xf
	.word	0x25b
	.long	0x45f
	.byte	0
	.uleb128 0x6
	.ascii "_strtok_last\0"
	.byte	0xf
	.word	0x25c
	.long	0x145d
	.byte	0x8
	.uleb128 0x6
	.ascii "_asctime_buf\0"
	.byte	0xf
	.word	0x25d
	.long	0x1d31
	.byte	0x10
	.uleb128 0x6
	.ascii "_localtime_buf\0"
	.byte	0xf
	.word	0x25e
	.long	0x14e8
	.byte	0x2c
	.uleb128 0x6
	.ascii "_gamma_signgam\0"
	.byte	0xf
	.word	0x25f
	.long	0x3ee
	.byte	0x50
	.uleb128 0x6
	.ascii "_rand_next\0"
	.byte	0xf
	.word	0x260
	.long	0x1d41
	.byte	0x58
	.uleb128 0x6
	.ascii "_r48\0"
	.byte	0xf
	.word	0x261
	.long	0x1ce3
	.byte	0x60
	.uleb128 0x6
	.ascii "_mblen_state\0"
	.byte	0xf
	.word	0x262
	.long	0x143b
	.byte	0x70
	.uleb128 0x6
	.ascii "_mbtowc_state\0"
	.byte	0xf
	.word	0x263
	.long	0x143b
	.byte	0x78
	.uleb128 0x6
	.ascii "_wctomb_state\0"
	.byte	0xf
	.word	0x264
	.long	0x143b
	.byte	0x80
	.uleb128 0x6
	.ascii "_l64a_buf\0"
	.byte	0xf
	.word	0x265
	.long	0x1d5b
	.byte	0x88
	.uleb128 0x6
	.ascii "_signal_buf\0"
	.byte	0xf
	.word	0x266
	.long	0x1d6b
	.byte	0x90
	.uleb128 0x6
	.ascii "_getdate_err\0"
	.byte	0xf
	.word	0x267
	.long	0x3ee
	.byte	0xa8
	.uleb128 0x6
	.ascii "_mbrlen_state\0"
	.byte	0xf
	.word	0x268
	.long	0x143b
	.byte	0xac
	.uleb128 0x6
	.ascii "_mbrtowc_state\0"
	.byte	0xf
	.word	0x269
	.long	0x143b
	.byte	0xb4
	.uleb128 0x6
	.ascii "_mbsrtowcs_state\0"
	.byte	0xf
	.word	0x26a
	.long	0x143b
	.byte	0xbc
	.uleb128 0x6
	.ascii "_wcrtomb_state\0"
	.byte	0xf
	.word	0x26b
	.long	0x143b
	.byte	0xc4
	.uleb128 0x6
	.ascii "_wcsrtombs_state\0"
	.byte	0xf
	.word	0x26c
	.long	0x143b
	.byte	0xcc
	.uleb128 0x6
	.ascii "_h_errno\0"
	.byte	0xf
	.word	0x26d
	.long	0x3ee
	.byte	0xd4
	.byte	0
	.uleb128 0x2f
	.word	0x168
	.byte	0xf
	.word	0x273
	.long	0x18b0
	.uleb128 0x6
	.ascii "_nextf\0"
	.byte	0xf
	.word	0x275
	.long	0x1d7b
	.byte	0
	.uleb128 0x6
	.ascii "_nmalloc\0"
	.byte	0xf
	.word	0x276
	.long	0x1d8b
	.byte	0xf0
	.byte	0
	.uleb128 0x30
	.ascii "_reent\0"
	.byte	0xf
	.word	0x26e
	.long	0x16d6
	.uleb128 0x30
	.ascii "_unused\0"
	.byte	0xf
	.word	0x277
	.long	0x1883
	.byte	0
	.uleb128 0x6
	.ascii "_errno\0"
	.byte	0xf
	.word	0x23b
	.long	0x3ee
	.byte	0
	.uleb128 0x6
	.ascii "_stdin\0"
	.byte	0xf
	.word	0x240
	.long	0x1cdd
	.byte	0x8
	.uleb128 0x6
	.ascii "_stdout\0"
	.byte	0xf
	.word	0x240
	.long	0x1cdd
	.byte	0x10
	.uleb128 0x6
	.ascii "_stderr\0"
	.byte	0xf
	.word	0x240
	.long	0x1cdd
	.byte	0x18
	.uleb128 0x6
	.ascii "_inc\0"
	.byte	0xf
	.word	0x242
	.long	0x3ee
	.byte	0x20
	.uleb128 0x6
	.ascii "_emergency\0"
	.byte	0xf
	.word	0x243
	.long	0x1d9b
	.byte	0x24
	.uleb128 0x6
	.ascii "_unspecified_locale_info\0"
	.byte	0xf
	.word	0x246
	.long	0x3ee
	.byte	0x40
	.uleb128 0x6
	.ascii "_locale\0"
	.byte	0xf
	.word	0x247
	.long	0x1db7
	.byte	0x48
	.uleb128 0x6
	.ascii "__sdidinit\0"
	.byte	0xf
	.word	0x249
	.long	0x3ee
	.byte	0x50
	.uleb128 0x6
	.ascii "__cleanup\0"
	.byte	0xf
	.word	0x24b
	.long	0x1dc8
	.byte	0x58
	.uleb128 0x6
	.ascii "_result\0"
	.byte	0xf
	.word	0x24e
	.long	0x14d2
	.byte	0x60
	.uleb128 0x6
	.ascii "_result_k\0"
	.byte	0xf
	.word	0x24f
	.long	0x3ee
	.byte	0x68
	.uleb128 0x6
	.ascii "_p5s\0"
	.byte	0xf
	.word	0x250
	.long	0x14d2
	.byte	0x70
	.uleb128 0x6
	.ascii "_freelist\0"
	.byte	0xf
	.word	0x251
	.long	0x1dce
	.byte	0x78
	.uleb128 0x6
	.ascii "_cvtlen\0"
	.byte	0xf
	.word	0x254
	.long	0x3ee
	.byte	0x80
	.uleb128 0x6
	.ascii "_cvtbuf\0"
	.byte	0xf
	.word	0x255
	.long	0x145d
	.byte	0x88
	.uleb128 0x6
	.ascii "_new\0"
	.byte	0xf
	.word	0x278
	.long	0x16cc
	.byte	0x90
	.uleb128 0x31
	.ascii "_atexit\0"
	.byte	0xf
	.word	0x27c
	.long	0x1643
	.word	0x1f8
	.uleb128 0x31
	.ascii "_atexit0\0"
	.byte	0xf
	.word	0x27d
	.long	0x15fc
	.word	0x200
	.uleb128 0x31
	.ascii "_sig_func\0"
	.byte	0xf
	.word	0x281
	.long	0x1ddf
	.word	0x518
	.uleb128 0x31
	.ascii "__sglue\0"
	.byte	0xf
	.word	0x286
	.long	0x1c99
	.word	0x520
	.uleb128 0x31
	.ascii "__sf\0"
	.byte	0xf
	.word	0x288
	.long	0x1deb
	.word	0x538
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1692
	.uleb128 0x2b
	.long	0x13b2
	.long	0x1a82
	.uleb128 0x12
	.long	0x16b0
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1a64
	.uleb128 0x2b
	.long	0x1392
	.long	0x1aa6
	.uleb128 0x12
	.long	0x16b0
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x1392
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1a88
	.uleb128 0x2b
	.long	0x3ee
	.long	0x1ac0
	.uleb128 0x12
	.long	0x16b0
	.uleb128 0x12
	.long	0x1052
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1aac
	.uleb128 0xb
	.long	0x418
	.long	0x1ad6
	.uleb128 0xc
	.long	0x622
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	0x418
	.long	0x1ae6
	.uleb128 0xc
	.long	0x622
	.byte	0
	.byte	0
	.uleb128 0x25
	.ascii "__sFILE64\0"
	.byte	0xb8
	.byte	0xf
	.byte	0xef
	.long	0x1c66
	.uleb128 0x20
	.ascii "_p\0"
	.byte	0xf
	.byte	0xf0
	.long	0x168c
	.byte	0
	.uleb128 0x20
	.ascii "_r\0"
	.byte	0xf
	.byte	0xf1
	.long	0x3ee
	.byte	0x8
	.uleb128 0x20
	.ascii "_w\0"
	.byte	0xf
	.byte	0xf2
	.long	0x3ee
	.byte	0xc
	.uleb128 0x20
	.ascii "_flags\0"
	.byte	0xf
	.byte	0xf3
	.long	0x3d2
	.byte	0x10
	.uleb128 0x20
	.ascii "_file\0"
	.byte	0xf
	.byte	0xf4
	.long	0x3d2
	.byte	0x12
	.uleb128 0x20
	.ascii "_bf\0"
	.byte	0xf
	.byte	0xf5
	.long	0x1660
	.byte	0x18
	.uleb128 0x20
	.ascii "_lbfsize\0"
	.byte	0xf
	.byte	0xf6
	.long	0x3ee
	.byte	0x28
	.uleb128 0x20
	.ascii "_data\0"
	.byte	0xf
	.byte	0xf8
	.long	0x16b0
	.byte	0x30
	.uleb128 0x20
	.ascii "_cookie\0"
	.byte	0xf
	.byte	0xfb
	.long	0x1052
	.byte	0x38
	.uleb128 0x20
	.ascii "_read\0"
	.byte	0xf
	.byte	0xfd
	.long	0x1a5e
	.byte	0x40
	.uleb128 0x20
	.ascii "_write\0"
	.byte	0xf
	.byte	0xff
	.long	0x1a82
	.byte	0x48
	.uleb128 0x6
	.ascii "_seek\0"
	.byte	0xf
	.word	0x102
	.long	0x1aa6
	.byte	0x50
	.uleb128 0x6
	.ascii "_close\0"
	.byte	0xf
	.word	0x103
	.long	0x1ac0
	.byte	0x58
	.uleb128 0x6
	.ascii "_ub\0"
	.byte	0xf
	.word	0x106
	.long	0x1660
	.byte	0x60
	.uleb128 0x6
	.ascii "_up\0"
	.byte	0xf
	.word	0x107
	.long	0x168c
	.byte	0x70
	.uleb128 0x6
	.ascii "_ur\0"
	.byte	0xf
	.word	0x108
	.long	0x3ee
	.byte	0x78
	.uleb128 0x6
	.ascii "_ubuf\0"
	.byte	0xf
	.word	0x10b
	.long	0x1ac6
	.byte	0x7c
	.uleb128 0x6
	.ascii "_nbuf\0"
	.byte	0xf
	.word	0x10c
	.long	0x1ad6
	.byte	0x7f
	.uleb128 0x6
	.ascii "_lb\0"
	.byte	0xf
	.word	0x10f
	.long	0x1660
	.byte	0x80
	.uleb128 0x6
	.ascii "_blksize\0"
	.byte	0xf
	.word	0x112
	.long	0x3ee
	.byte	0x90
	.uleb128 0x6
	.ascii "_flags2\0"
	.byte	0xf
	.word	0x113
	.long	0x3ee
	.byte	0x94
	.uleb128 0x6
	.ascii "_offset\0"
	.byte	0xf
	.word	0x115
	.long	0x1382
	.byte	0x98
	.uleb128 0x6
	.ascii "_seek64\0"
	.byte	0xf
	.word	0x116
	.long	0x1c84
	.byte	0xa0
	.uleb128 0x6
	.ascii "_lock\0"
	.byte	0xf
	.word	0x119
	.long	0x144d
	.byte	0xa8
	.uleb128 0x6
	.ascii "_mbstate\0"
	.byte	0xf
	.word	0x11b
	.long	0x143b
	.byte	0xb0
	.byte	0
	.uleb128 0x2b
	.long	0x13a1
	.long	0x1c84
	.uleb128 0x12
	.long	0x16b0
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x13a1
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1c66
	.uleb128 0x7
	.ascii "__FILE\0"
	.byte	0xf
	.word	0x11d
	.long	0x1ae6
	.uleb128 0x32
	.ascii "_glue\0"
	.byte	0x18
	.byte	0xf
	.word	0x123
	.long	0x1cd7
	.uleb128 0x6
	.ascii "_next\0"
	.byte	0xf
	.word	0x125
	.long	0x1cd7
	.byte	0
	.uleb128 0x6
	.ascii "_niobs\0"
	.byte	0xf
	.word	0x126
	.long	0x3ee
	.byte	0x8
	.uleb128 0x6
	.ascii "_iobs\0"
	.byte	0xf
	.word	0x127
	.long	0x1cdd
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1c99
	.uleb128 0x15
	.byte	0x8
	.long	0x1c8a
	.uleb128 0x32
	.ascii "_rand48\0"
	.byte	0xe
	.byte	0xf
	.word	0x13f
	.long	0x1d21
	.uleb128 0x6
	.ascii "_seed\0"
	.byte	0xf
	.word	0x140
	.long	0x1d21
	.byte	0
	.uleb128 0x6
	.ascii "_mult\0"
	.byte	0xf
	.word	0x141
	.long	0x1d21
	.byte	0x6
	.uleb128 0x6
	.ascii "_add\0"
	.byte	0xf
	.word	0x142
	.long	0x439
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x439
	.long	0x1d31
	.uleb128 0xc
	.long	0x622
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	0x62e
	.long	0x1d41
	.uleb128 0xc
	.long	0x622
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0xb
	.long	0x62e
	.long	0x1d6b
	.uleb128 0xc
	.long	0x622
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.long	0x62e
	.long	0x1d7b
	.uleb128 0xc
	.long	0x622
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.long	0x168c
	.long	0x1d8b
	.uleb128 0xc
	.long	0x622
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.long	0x45f
	.long	0x1d9b
	.uleb128 0xc
	.long	0x622
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.long	0x62e
	.long	0x1dab
	.uleb128 0xc
	.long	0x622
	.byte	0x18
	.byte	0
	.uleb128 0x33
	.ascii "__locale_t\0"
	.uleb128 0x15
	.byte	0x8
	.long	0x1dab
	.uleb128 0x34
	.long	0x1dc8
	.uleb128 0x12
	.long	0x16b0
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1dbd
	.uleb128 0x15
	.byte	0x8
	.long	0x14d2
	.uleb128 0x34
	.long	0x1ddf
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x1de5
	.uleb128 0x15
	.byte	0x8
	.long	0x1dd4
	.uleb128 0xb
	.long	0x1c8a
	.long	0x1dfb
	.uleb128 0xc
	.long	0x622
	.byte	0x2
	.byte	0
	.uleb128 0x35
	.ascii "_impure_ptr\0"
	.byte	0xf
	.word	0x307
	.long	0x16b0
	.uleb128 0x35
	.ascii "_global_impure_ptr\0"
	.byte	0xf
	.word	0x308
	.long	0x16b6
	.uleb128 0x36
	.ascii "memchr\0"
	.byte	0x10
	.byte	0x1d
	.long	0x1052
	.long	0x1e4c
	.uleb128 0x12
	.long	0x9a3
	.uleb128 0x12
	.long	0x3ee
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "memcmp\0"
	.byte	0x10
	.byte	0x1e
	.long	0x3ee
	.long	0x1e6e
	.uleb128 0x12
	.long	0x9a3
	.uleb128 0x12
	.long	0x9a3
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "memcpy\0"
	.byte	0x10
	.byte	0x1f
	.long	0x1052
	.long	0x1e90
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x9a3
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "memmove\0"
	.byte	0x10
	.byte	0x20
	.long	0x1052
	.long	0x1eb3
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x9a3
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "memset\0"
	.byte	0x10
	.byte	0x21
	.long	0x1052
	.long	0x1ed5
	.uleb128 0x12
	.long	0x1052
	.uleb128 0x12
	.long	0x3ee
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "strcat\0"
	.byte	0x10
	.byte	0x22
	.long	0x145d
	.long	0x1ef2
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strcmp\0"
	.byte	0x10
	.byte	0x24
	.long	0x3ee
	.long	0x1f0f
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strcoll\0"
	.byte	0x10
	.byte	0x25
	.long	0x3ee
	.long	0x1f2d
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strcpy\0"
	.byte	0x10
	.byte	0x26
	.long	0x145d
	.long	0x1f4a
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strcspn\0"
	.byte	0x10
	.byte	0x27
	.long	0x17e
	.long	0x1f68
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strerror\0"
	.byte	0x10
	.byte	0x28
	.long	0x145d
	.long	0x1f82
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x36
	.ascii "strlen\0"
	.byte	0x10
	.byte	0x29
	.long	0x17e
	.long	0x1f9a
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strncat\0"
	.byte	0x10
	.byte	0x2a
	.long	0x145d
	.long	0x1fbd
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "strncmp\0"
	.byte	0x10
	.byte	0x2b
	.long	0x3ee
	.long	0x1fe0
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "strncpy\0"
	.byte	0x10
	.byte	0x2c
	.long	0x145d
	.long	0x2003
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "strspn\0"
	.byte	0x10
	.byte	0x2f
	.long	0x17e
	.long	0x2020
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strtok\0"
	.byte	0x10
	.byte	0x32
	.long	0x145d
	.long	0x203d
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strxfrm\0"
	.byte	0x10
	.byte	0x34
	.long	0x17e
	.long	0x2060
	.uleb128 0x12
	.long	0x145d
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x17e
	.byte	0
	.uleb128 0x36
	.ascii "strchr\0"
	.byte	0x10
	.byte	0x23
	.long	0x145d
	.long	0x207d
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x36
	.ascii "strpbrk\0"
	.byte	0x10
	.byte	0x2d
	.long	0x145d
	.long	0x209b
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x36
	.ascii "strrchr\0"
	.byte	0x10
	.byte	0x2e
	.long	0x145d
	.long	0x20b9
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x3ee
	.byte	0
	.uleb128 0x36
	.ascii "strstr\0"
	.byte	0x10
	.byte	0x30
	.long	0x145d
	.long	0x20d6
	.uleb128 0x12
	.long	0x985
	.uleb128 0x12
	.long	0x985
	.byte	0
	.uleb128 0x1a
	.secrel32	.LASF9
	.byte	0x80
	.byte	0x2
	.byte	0x11
	.long	0x230a
	.uleb128 0x37
	.byte	0x4
	.long	0x45f
	.byte	0x2
	.byte	0x14
	.byte	0x1
	.long	0x20fb
	.uleb128 0x38
	.ascii "MASK_NUM\0"
	.byte	0x80
	.byte	0
	.uleb128 0x39
	.ascii "PidType\0"
	.byte	0x2
	.byte	0x13
	.long	0x429
	.byte	0x1
	.uleb128 0x4
	.long	0x20fb
	.uleb128 0x3a
	.ascii "INVALID_PID\0"
	.byte	0x2
	.byte	0x16
	.long	0x210b
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.ascii "_masks\0"
	.byte	0x2
	.byte	0x28
	.long	0x230f
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x18
	.ascii "_ZN10PidManagerC4Ev\0"
	.byte	0x1
	.long	0x2158
	.long	0x215e
	.uleb128 0x11
	.long	0x231f
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF2
	.byte	0x2
	.byte	0x19
	.ascii "_ZNK10PidManager11isAllocatedEt\0"
	.long	0x991
	.byte	0x1
	.long	0x2192
	.long	0x219d
	.uleb128 0x11
	.long	0x232a
	.uleb128 0x12
	.long	0x20fb
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0x2
	.byte	0x1a
	.ascii "_ZN10PidManager8allocateEv\0"
	.long	0x20fb
	.byte	0x1
	.long	0x21cc
	.long	0x21d2
	.uleb128 0x11
	.long	0x231f
	.byte	0
	.uleb128 0x13
	.secrel32	.LASF6
	.byte	0x2
	.byte	0x1b
	.ascii "_ZN10PidManager8allocateEt\0"
	.long	0x20fb
	.byte	0x1
	.long	0x2201
	.long	0x220c
	.uleb128 0x11
	.long	0x231f
	.uleb128 0x12
	.long	0x20fb
	.byte	0
	.uleb128 0x1c
	.secrel32	.LASF7
	.byte	0x2
	.byte	0x1c
	.ascii "_ZN10PidManager10deallocateEt\0"
	.byte	0x1
	.long	0x223a
	.long	0x2245
	.uleb128 0x11
	.long	0x231f
	.uleb128 0x12
	.long	0x20fb
	.byte	0
	.uleb128 0x1d
	.ascii "clearAll\0"
	.byte	0x2
	.byte	0x1d
	.ascii "_ZN10PidManager8clearAllEv\0"
	.byte	0x1
	.long	0x2275
	.long	0x227b
	.uleb128 0x11
	.long	0x231f
	.byte	0
	.uleb128 0x3b
	.ascii "indexOfMask\0"
	.byte	0x2
	.byte	0x1f
	.ascii "_ZNK10PidManager11indexOfMaskEt\0"
	.long	0x17e
	.long	0x22b6
	.long	0x22c1
	.uleb128 0x11
	.long	0x232a
	.uleb128 0x12
	.long	0x20fb
	.byte	0
	.uleb128 0x3c
	.ascii "bitIndexOfMask\0"
	.byte	0x2
	.byte	0x23
	.ascii "_ZNK10PidManager14bitIndexOfMaskEt\0"
	.long	0x17e
	.long	0x22fe
	.uleb128 0x11
	.long	0x232a
	.uleb128 0x12
	.long	0x20fb
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x20d6
	.uleb128 0xb
	.long	0x409
	.long	0x231f
	.uleb128 0xc
	.long	0x622
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.byte	0x8
	.long	0x20d6
	.uleb128 0x4
	.long	0x231f
	.uleb128 0x15
	.byte	0x8
	.long	0x230a
	.uleb128 0x4
	.long	0x232a
	.uleb128 0x3d
	.ascii "setBits<unsigned char, int>\0"
	.byte	0x3
	.byte	0x45
	.ascii "_Z7setBitsIhiEvRT_hhT0_\0"
	.byte	0x3
	.long	0x23ad
	.uleb128 0x3e
	.ascii "Type\0"
	.long	0x418
	.uleb128 0x3f
	.secrel32	.LASF10
	.long	0x3ee
	.uleb128 0x40
	.ascii "i\0"
	.byte	0x3
	.byte	0x45
	.long	0x23b3
	.uleb128 0x41
	.secrel32	.LASF11
	.byte	0x3
	.byte	0x45
	.long	0x409
	.uleb128 0x41
	.secrel32	.LASF12
	.byte	0x3
	.byte	0x45
	.long	0x409
	.uleb128 0x40
	.ascii "v\0"
	.byte	0x3
	.byte	0x45
	.long	0x3ee
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.long	0x418
	.uleb128 0x4
	.long	0x23ad
	.uleb128 0x3d
	.ascii "setBit<unsigned char, int>\0"
	.byte	0x3
	.byte	0x4f
	.ascii "_Z6setBitIhiEvRT_hT0_\0"
	.byte	0x3
	.long	0x2424
	.uleb128 0x3e
	.ascii "Type\0"
	.long	0x418
	.uleb128 0x3f
	.secrel32	.LASF10
	.long	0x3ee
	.uleb128 0x40
	.ascii "i\0"
	.byte	0x3
	.byte	0x4f
	.long	0x23b3
	.uleb128 0x40
	.ascii "index\0"
	.byte	0x3
	.byte	0x4f
	.long	0x409
	.uleb128 0x40
	.ascii "v\0"
	.byte	0x3
	.byte	0x4f
	.long	0x3ee
	.byte	0
	.uleb128 0x42
	.long	0x2245
	.byte	0x1
	.byte	0x3c
	.long	0x2449
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x2449
	.long	0x2567
	.uleb128 0x43
	.secrel32	.LASF13
	.long	0x2325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.long	0x2bf0
	.quad	.LBB147
	.quad	.LBE147-.LBB147
	.byte	0x1
	.byte	0x3f
	.long	0x2483
	.uleb128 0x45
	.long	0x2c0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x45
	.long	0x2c02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x44
	.long	0x2c17
	.quad	.LBB149
	.quad	.LBE149-.LBB149
	.byte	0x1
	.byte	0x3f
	.long	0x24b1
	.uleb128 0x45
	.long	0x2c32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x45
	.long	0x2c29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x46
	.long	0x23b8
	.quad	.LBB151
	.quad	.LBE151-.LBB151
	.byte	0x1
	.byte	0x3f
	.uleb128 0x45
	.long	0x241a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x45
	.long	0x240d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x45
	.long	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.long	0x2335
	.quad	.LBB153
	.quad	.LBE153-.LBB153
	.byte	0x3
	.byte	0x51
	.uleb128 0x45
	.long	0x23a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x45
	.long	0x2398
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x45
	.long	0x238d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x45
	.long	0x2384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x44
	.long	0x2cb6
	.quad	.LBB155
	.quad	.LBE155-.LBB155
	.byte	0x3
	.byte	0x48
	.long	0x2543
	.uleb128 0x45
	.long	0x2cf1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x45
	.long	0x2ce6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB157
	.quad	.LBE157-.LBB157
	.byte	0x3
	.byte	0x48
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x220c
	.byte	0x1
	.byte	0x31
	.long	0x258c
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x258c
	.long	0x2756
	.uleb128 0x43
	.secrel32	.LASF13
	.long	0x2325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x48
	.ascii "pid\0"
	.byte	0x1
	.byte	0x31
	.long	0x20fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "i\0"
	.byte	0x1
	.byte	0x35
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "j\0"
	.byte	0x1
	.byte	0x36
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x44
	.long	0x2c17
	.quad	.LBB129
	.quad	.LBE129-.LBB129
	.byte	0x1
	.byte	0x35
	.long	0x25ec
	.uleb128 0x45
	.long	0x2c32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x45
	.long	0x2c29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x44
	.long	0x2bf0
	.quad	.LBB131
	.quad	.LBE131-.LBB131
	.byte	0x1
	.byte	0x36
	.long	0x261a
	.uleb128 0x45
	.long	0x2c0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x45
	.long	0x2c02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x44
	.long	0x2c3e
	.quad	.LBB133
	.quad	.LBE133-.LBB133
	.byte	0x1
	.byte	0x37
	.long	0x2697
	.uleb128 0x45
	.long	0x2c66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x45
	.long	0x2c5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x46
	.long	0x2c74
	.quad	.LBB135
	.quad	.LBE135-.LBB135
	.byte	0x3
	.byte	0x55
	.uleb128 0x45
	.long	0x2caa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x45
	.long	0x2c9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x45
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB137
	.quad	.LBE137-.LBB137
	.byte	0x3
	.byte	0x4c
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x23b8
	.quad	.LBB139
	.quad	.LBE139-.LBB139
	.byte	0x1
	.byte	0x39
	.uleb128 0x45
	.long	0x241a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x45
	.long	0x240d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x45
	.long	0x2404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x46
	.long	0x2335
	.quad	.LBB141
	.quad	.LBE141-.LBB141
	.byte	0x3
	.byte	0x51
	.uleb128 0x45
	.long	0x23a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x45
	.long	0x2398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -130
	.uleb128 0x45
	.long	0x238d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x45
	.long	0x2384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x44
	.long	0x2cb6
	.quad	.LBB143
	.quad	.LBE143-.LBB143
	.byte	0x3
	.byte	0x48
	.long	0x2732
	.uleb128 0x45
	.long	0x2cf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x45
	.long	0x2ce6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB145
	.quad	.LBE145-.LBB145
	.byte	0x3
	.byte	0x48
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x21d2
	.byte	0x1
	.byte	0x26
	.long	0x277b
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x277b
	.long	0x294c
	.uleb128 0x43
	.secrel32	.LASF13
	.long	0x2325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x48
	.ascii "desiredPid\0"
	.byte	0x1
	.byte	0x26
	.long	0x20fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "i\0"
	.byte	0x1
	.byte	0x2a
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "j\0"
	.byte	0x1
	.byte	0x2b
	.long	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x44
	.long	0x2c17
	.quad	.LBB111
	.quad	.LBE111-.LBB111
	.byte	0x1
	.byte	0x2a
	.long	0x27e2
	.uleb128 0x45
	.long	0x2c32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -98
	.uleb128 0x45
	.long	0x2c29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x44
	.long	0x2bf0
	.quad	.LBB113
	.quad	.LBE113-.LBB113
	.byte	0x1
	.byte	0x2b
	.long	0x2810
	.uleb128 0x45
	.long	0x2c0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x45
	.long	0x2c02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x44
	.long	0x2c3e
	.quad	.LBB115
	.quad	.LBE115-.LBB115
	.byte	0x1
	.byte	0x2c
	.long	0x288d
	.uleb128 0x45
	.long	0x2c66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x45
	.long	0x2c5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x46
	.long	0x2c74
	.quad	.LBB117
	.quad	.LBE117-.LBB117
	.byte	0x3
	.byte	0x55
	.uleb128 0x45
	.long	0x2caa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -58
	.uleb128 0x45
	.long	0x2c9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -57
	.uleb128 0x45
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB119
	.quad	.LBE119-.LBB119
	.byte	0x3
	.byte	0x4c
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0x23b8
	.quad	.LBB121
	.quad	.LBE121-.LBB121
	.byte	0x1
	.byte	0x2e
	.uleb128 0x45
	.long	0x241a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x45
	.long	0x240d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x45
	.long	0x2404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x46
	.long	0x2335
	.quad	.LBB123
	.quad	.LBE123-.LBB123
	.byte	0x3
	.byte	0x51
	.uleb128 0x45
	.long	0x23a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x45
	.long	0x2398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -130
	.uleb128 0x45
	.long	0x238d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -129
	.uleb128 0x45
	.long	0x2384
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x44
	.long	0x2cb6
	.quad	.LBB125
	.quad	.LBE125-.LBB125
	.byte	0x3
	.byte	0x48
	.long	0x2928
	.uleb128 0x45
	.long	0x2cf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x45
	.long	0x2ce6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.byte	0
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB127
	.quad	.LBE127-.LBB127
	.byte	0x3
	.byte	0x48
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x219d
	.byte	0x1
	.byte	0x13
	.long	0x2971
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2971
	.long	0x2a83
	.uleb128 0x43
	.secrel32	.LASF13
	.long	0x2325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x49
	.quad	.LBB99
	.quad	.LBE99-.LBB99
	.uleb128 0xe
	.ascii "i\0"
	.byte	0x1
	.byte	0x15
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x49
	.quad	.LBB102
	.quad	.LBE102-.LBB102
	.uleb128 0xe
	.ascii "mask\0"
	.byte	0x1
	.byte	0x19
	.long	0x418
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0xe
	.ascii "j\0"
	.byte	0x1
	.byte	0x1a
	.long	0x17e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x46
	.long	0x23b8
	.quad	.LBB103
	.quad	.LBE103-.LBB103
	.byte	0x1
	.byte	0x20
	.uleb128 0x45
	.long	0x241a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	0x240d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x45
	.long	0x2404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x46
	.long	0x2335
	.quad	.LBB105
	.quad	.LBE105-.LBB105
	.byte	0x3
	.byte	0x51
	.uleb128 0x45
	.long	0x23a3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x45
	.long	0x2398
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x45
	.long	0x238d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -65
	.uleb128 0x45
	.long	0x2384
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x44
	.long	0x2cb6
	.quad	.LBB107
	.quad	.LBE107-.LBB107
	.byte	0x3
	.byte	0x48
	.long	0x2a5d
	.uleb128 0x45
	.long	0x2cf1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x45
	.long	0x2ce6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB109
	.quad	.LBE109-.LBB109
	.byte	0x3
	.byte	0x48
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x215e
	.byte	0x1
	.byte	0xf
	.long	0x2aa8
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2aa8
	.long	0x2b96
	.uleb128 0x43
	.secrel32	.LASF13
	.long	0x2330
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x48
	.ascii "pid\0"
	.byte	0x1
	.byte	0xf
	.long	0x20fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x44
	.long	0x2bf0
	.quad	.LBB89
	.quad	.LBE89-.LBB89
	.byte	0x1
	.byte	0x11
	.long	0x2af0
	.uleb128 0x45
	.long	0x2c0b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x45
	.long	0x2c02
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x44
	.long	0x2c17
	.quad	.LBB91
	.quad	.LBE91-.LBB91
	.byte	0x1
	.byte	0x11
	.long	0x2b1d
	.uleb128 0x45
	.long	0x2c32
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x45
	.long	0x2c29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x46
	.long	0x2c3e
	.quad	.LBB93
	.quad	.LBE93-.LBB93
	.byte	0x1
	.byte	0x11
	.uleb128 0x45
	.long	0x2c66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x45
	.long	0x2c5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x46
	.long	0x2c74
	.quad	.LBB95
	.quad	.LBE95-.LBB95
	.byte	0x3
	.byte	0x55
	.uleb128 0x45
	.long	0x2caa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x45
	.long	0x2c9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x45
	.long	0x2c96
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x46
	.long	0x2cfd
	.quad	.LBB97
	.quad	.LBE97-.LBB97
	.byte	0x3
	.byte	0x4c
	.uleb128 0x45
	.long	0x2d26
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x2134
	.byte	0x1
	.byte	0xa
	.byte	0
	.long	0x2ba6
	.long	0x2bb0
	.uleb128 0x4b
	.secrel32	.LASF13
	.long	0x2325
	.byte	0
	.uleb128 0x4c
	.long	0x2b96
	.ascii "_ZN10PidManagerC2Ev\0"
	.long	0x2be7
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x2be7
	.long	0x2bf0
	.uleb128 0x45
	.long	0x2ba6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x4d
	.long	0x22c1
	.long	0x2c02
	.byte	0x3
	.long	0x2c02
	.long	0x2c17
	.uleb128 0x4b
	.secrel32	.LASF13
	.long	0x2330
	.uleb128 0x40
	.ascii "pid\0"
	.byte	0x2
	.byte	0x23
	.long	0x20fb
	.byte	0
	.uleb128 0x4d
	.long	0x227b
	.long	0x2c29
	.byte	0x3
	.long	0x2c29
	.long	0x2c3e
	.uleb128 0x4b
	.secrel32	.LASF13
	.long	0x2330
	.uleb128 0x40
	.ascii "pid\0"
	.byte	0x2
	.byte	0x1f
	.long	0x20fb
	.byte	0
	.uleb128 0x4e
	.ascii "getBit\0"
	.byte	0x3
	.byte	0x53
	.ascii "_Z6getBitmh\0"
	.long	0x46f
	.byte	0x3
	.long	0x2c74
	.uleb128 0x40
	.ascii "i\0"
	.byte	0x3
	.byte	0x53
	.long	0x46f
	.uleb128 0x40
	.ascii "index\0"
	.byte	0x3
	.byte	0x53
	.long	0x409
	.byte	0
	.uleb128 0x4e
	.ascii "getBits\0"
	.byte	0x3
	.byte	0x4a
	.ascii "_Z7getBitsmhh\0"
	.long	0x46f
	.byte	0x3
	.long	0x2cb6
	.uleb128 0x40
	.ascii "i\0"
	.byte	0x3
	.byte	0x4a
	.long	0x46f
	.uleb128 0x41
	.secrel32	.LASF11
	.byte	0x3
	.byte	0x4a
	.long	0x409
	.uleb128 0x41
	.secrel32	.LASF12
	.byte	0x3
	.byte	0x4a
	.long	0x409
	.byte	0
	.uleb128 0x4e
	.ascii "middleMaskBits\0"
	.byte	0x3
	.byte	0x3d
	.ascii "_Z14middleMaskBitsmm\0"
	.long	0x46f
	.byte	0x3
	.long	0x2cfd
	.uleb128 0x41
	.secrel32	.LASF11
	.byte	0x3
	.byte	0x3d
	.long	0x46f
	.uleb128 0x41
	.secrel32	.LASF12
	.byte	0x3
	.byte	0x3d
	.long	0x46f
	.byte	0
	.uleb128 0x4f
	.ascii "lowerMaskBits\0"
	.byte	0x3
	.byte	0x39
	.ascii "_Z13lowerMaskBitsm\0"
	.long	0x46f
	.byte	0x3
	.uleb128 0x40
	.ascii "i\0"
	.byte	0x3
	.byte	0x39
	.long	0x46f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
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
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_OUTPUT_H_ \0"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
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
	.file 23 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x17
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x8
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
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_SCHEDULE_PIDMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_MEMORYCHUNK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_GENERIC_UTIL_H_ \0"
	.byte	0x4
	.byte	0x4
	.file 25 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x8
	.ascii "_STRING_H_ \0"
	.file 26 "/usr/include/_ansi.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0xd
	.ascii "_ANSIDECL_H_ \0"
	.file 27 "/usr/include/newlib.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x8
	.ascii "__NEWLIB_H__ 1\0"
	.file 28 "/usr/include/_newlib_version.h"
	.byte	0x3
	.uleb128 0xe
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
	.file 29 "/usr/include/sys/config.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x2
	.ascii "__SYS_CONFIG_H__ \0"
	.file 30 "/usr/include/machine/ieeefp.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x16b
	.ascii "__IEEE_LITTLE_ENDIAN \0"
	.byte	0x4
	.file 31 "/usr/include/sys/features.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x1f
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
	.file 32 "/usr/include/cygwin/config.h"
	.byte	0x3
	.uleb128 0xea
	.uleb128 0x20
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
	.uleb128 0xf
	.byte	0x1
	.uleb128 0xb
	.ascii "_SYS_REENT_H_ \0"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1a
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x14
	.ascii "_SYS__TYPES_H \0"
	.file 33 "/usr/include/machine/_types.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x4
	.ascii "_MACHINE__TYPES_H \0"
	.file 34 "/usr/include/machine/_default_types.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x22
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
	.uleb128 0xd
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
	.file 35 "/usr/include/sys/cdefs.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x23
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
	.file 36 "/usr/include/sys/string.h"
	.byte	0x3
	.uleb128 0xaf
	.uleb128 0x24
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
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF5:
	.ascii "MemoryManager\0"
.LASF4:
	.ascii "getDataEnd\0"
.LASF7:
	.ascii "deallocate\0"
.LASF11:
	.ascii "lowerBound\0"
.LASF1:
	.ascii "MemoryChunk\0"
.LASF6:
	.ascii "allocate\0"
.LASF12:
	.ascii "upperBound\0"
.LASF3:
	.ascii "getDataPtr\0"
.LASF10:
	.ascii "ValueType\0"
.LASF13:
	.ascii "this\0"
.LASF9:
	.ascii "PidManager\0"
.LASF8:
	.ascii "_on_exit_args\0"
.LASF2:
	.ascii "isAllocated\0"
.LASF0:
	.ascii "operator<<\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	memset;	.scl	2;	.type	32;	.endef
