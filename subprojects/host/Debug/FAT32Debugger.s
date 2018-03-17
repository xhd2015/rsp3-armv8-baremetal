	.file	"FAT32Debugger.cpp"
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
.LC0:
	.ascii "sizeof(BPB) = \0"
.LC1:
	.ascii "\12\0"
.LC2:
	.ascii "sizeof(ExtBPB32) = \0"
	.align 8
.LC3:
	.ascii "offsetof(ExtBPB32,BS_jmpBoot) = \0"
	.align 8
.LC4:
	.ascii "offsetof(ExtBPB32,BS_OEMName) = \0"
	.align 8
.LC5:
	.ascii "offsetof(ExtBPB32,bytesPerSec) = \0"
	.align 8
.LC6:
	.ascii "offsetof(ExtBPB32,secPerClus) = \0"
	.align 8
.LC7:
	.ascii "offsetof(ExtBPB32,rsvdSecCnt) = \0"
.LC8:
	.ascii "offsetof(ExtBPB32,numFATs) = \0"
	.align 8
.LC9:
	.ascii "offsetof(ExtBPB32,rootEntCnt) = \0"
	.align 8
.LC10:
	.ascii "offsetof(ExtBPB32,totSec16) = \0"
.LC11:
	.ascii "offsetof(ExtBPB32,media) = \0"
.LC12:
	.ascii "offsetof(ExtBPB32,FATSz16) = \0"
	.align 8
.LC13:
	.ascii "offsetof(ExtBPB32,secPerTrk) = \0"
	.align 8
.LC14:
	.ascii "offsetof(ExtBPB32,numHeads) = \0"
.LC15:
	.ascii "offsetof(ExtBPB32,hiddSec) = \0"
	.align 8
.LC16:
	.ascii "offsetof(ExtBPB32,totSec32) = \0"
.LC17:
	.ascii "offsetof(ExtBPB32,FATSz32) = \0"
	.align 8
.LC18:
	.ascii "offsetof(ExtBPB32,extFlags) = \0"
.LC19:
	.ascii "offsetof(ExtBPB32,FSVer) = \0"
	.align 8
.LC20:
	.ascii "offsetof(ExtBPB32,rootClus) = \0"
.LC21:
	.ascii "offsetof(ExtBPB32,FSInfo) = \0"
	.align 8
.LC22:
	.ascii "offsetof(ExtBPB32,bkBootSe) = \0"
	.align 8
.LC23:
	.ascii "offsetof(ExtBPB32,reserved) = \0"
	.align 8
.LC24:
	.ascii "offsetof(ExtBPB32,BS_DrvNum) = \0"
	.align 8
.LC25:
	.ascii "offsetof(ExtBPB32,BS_Reserved1) = \0"
	.align 8
.LC26:
	.ascii "offsetof(ExtBPB32,BS_BootSig) = \0"
	.align 8
.LC27:
	.ascii "offsetof(ExtBPB32,BS_VolID) = \0"
	.align 8
.LC28:
	.ascii "offsetof(ExtBPB32,BS_VolLab) = \0"
	.align 8
.LC29:
	.ascii "offsetof(ExtBPB32,BS_FilSysType) = \0"
	.align 8
.LC30:
	.ascii "offsetof(ExtBPB32,undefined) = \0"
	.align 8
.LC31:
	.ascii "offsetof(ExtBPB32,Signature_word) = \0"
	.text
	.align 2
	.globl	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv
	.def	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv
_ZN13Fat32Dubugger22dumpBPBTypeInformationEv:
.LFB55:
	.file 1 "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Debugger.cpp"
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
	.loc 1 11 0
	leaq	.LC0(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	$36, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 12 0
	leaq	.LC2(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	$512, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 13 0
	leaq	.LC3(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 13 0
	movl	$0, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 13 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 14 0
	leaq	.LC4(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 14 0
	movl	$3, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 14 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 15 0
	leaq	.LC5(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 15 0
	movl	$11, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 15 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 16 0
	leaq	.LC6(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 16 0
	movl	$13, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 16 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 17 0
	leaq	.LC7(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 17 0
	movl	$14, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 17 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 18 0
	leaq	.LC8(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 18 0
	movl	$16, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 18 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 19 0
	leaq	.LC9(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 19 0
	movl	$17, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 19 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 20 0
	leaq	.LC10(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 20 0
	movl	$19, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 20 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 21 0
	leaq	.LC11(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 21 0
	movl	$21, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 21 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 22 0
	leaq	.LC12(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 22 0
	movl	$22, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 22 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 23 0
	leaq	.LC13(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 23 0
	movl	$24, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 23 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 24 0
	leaq	.LC14(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 24 0
	movl	$26, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 24 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 25 0
	leaq	.LC15(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 25 0
	movl	$28, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 25 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 26 0
	leaq	.LC16(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 26 0
	movl	$32, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 26 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 27 0
	leaq	.LC17(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 27 0
	movl	$36, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 27 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 28 0
	leaq	.LC18(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 28 0
	movl	$40, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 28 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 29 0
	leaq	.LC19(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 29 0
	movl	$42, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 29 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 30 0
	leaq	.LC20(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 30 0
	movl	$44, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 30 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 31 0
	leaq	.LC21(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 31 0
	movl	$48, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 31 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 32 0
	leaq	.LC22(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 32 0
	movl	$50, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 32 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 33 0
	leaq	.LC23(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 33 0
	movl	$52, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 33 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 34 0
	leaq	.LC24(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 34 0
	movl	$64, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 34 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 35 0
	leaq	.LC25(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 35 0
	movl	$65, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 35 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 36 0
	leaq	.LC26(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 36 0
	movl	$66, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 36 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 37 0
	leaq	.LC27(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 37 0
	movl	$67, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 37 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 38 0
	leaq	.LC28(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 38 0
	movl	$71, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 38 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 39 0
	leaq	.LC29(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 39 0
	movl	$82, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 39 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 40 0
	leaq	.LC30(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 40 0
	movl	$90, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 40 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 41 0
	leaq	.LC31(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 41 0
	movl	$510, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEm
	.loc 1 41 0
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 43 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE55:
	.seh_endproc
	.section .rdata,"dr"
.LC32:
	.ascii "bpb->bytesPerSec = \0"
.LC33:
	.ascii "bpb->secPerClus = \0"
.LC34:
	.ascii "bpb->rsvdSecCnt = \0"
.LC35:
	.ascii "bpb->numFATs = \0"
.LC36:
	.ascii "bpb->rootEntCnt = \0"
.LC37:
	.ascii "bpb->totSec16 = \0"
.LC38:
	.ascii "bpb->media = \0"
.LC39:
	.ascii "bpb->FATSz16 = \0"
.LC40:
	.ascii "bpb->secPerTrk = \0"
.LC41:
	.ascii "bpb->numHeads = \0"
.LC42:
	.ascii "bpb->hiddSec = \0"
.LC43:
	.ascii "bpb->totSec32 = \0"
	.text
	.align 2
	.globl	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
	.def	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB:
.LFB56:
	.loc 1 45 0
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
	.loc 1 46 0
	movq	-64(%rbp), %rax
	movzwl	11(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC32(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 47 0
	movq	-64(%rbp), %rax
	movzbl	13(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC33(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 48 0
	movq	-64(%rbp), %rax
	movzwl	14(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC34(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 49 0
	movq	-64(%rbp), %rax
	movzbl	16(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC35(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 50 0
	movq	-64(%rbp), %rax
	movzwl	17(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC36(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 51 0
	movq	-64(%rbp), %rax
	movzwl	19(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC37(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 52 0
	movq	-64(%rbp), %rax
	movzbl	21(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC38(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 53 0
	movq	-64(%rbp), %rax
	movzwl	22(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC39(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 54 0
	movq	-64(%rbp), %rax
	movzwl	24(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC40(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 55 0
	movq	-64(%rbp), %rax
	movzwl	26(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC41(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 56 0
	movq	-64(%rbp), %rax
	movl	28(%rax), %ebx
	leaq	.LC42(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEj
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 57 0
	movq	-64(%rbp), %rax
	movl	32(%rax), %ebx
	leaq	.LC43(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEj
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 58 0
	nop
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE56:
	.seh_endproc
	.section .rdata,"dr"
.LC44:
	.ascii "bpb->FATSz32 = \0"
.LC45:
	.ascii "bpb->extFlags = \0"
.LC46:
	.ascii "bpb->FSVer = \0"
.LC47:
	.ascii "bpb->rootClus = \0"
.LC48:
	.ascii "bpb->FSInfo = \0"
.LC49:
	.ascii "bpb->bkBootSe = \0"
.LC50:
	.ascii "bpb->reserved = \0"
.LC51:
	.ascii "bpb->BS_DrvNum = \0"
.LC52:
	.ascii "bpb->BS_Reserved1 = \0"
.LC53:
	.ascii "bpb->BS_BootSig = \0"
.LC54:
	.ascii "bpb->BS_VolID = \0"
.LC55:
	.ascii "bpb->BS_VolLab = \0"
.LC56:
	.ascii "bpb->BS_FilSysType = \0"
.LC57:
	.ascii "bpb->undefined = \0"
.LC58:
	.ascii "bpb->Signature_word = \0"
	.text
	.align 2
	.globl	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB
	.def	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB
_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB:
.LFB57:
	.loc 1 61 0
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
	.loc 1 62 0
	movq	-64(%rbp), %rcx
	call	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
	.loc 1 63 0
	movq	-64(%rbp), %rax
	movl	36(%rax), %ebx
	leaq	.LC44(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEj
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 64 0
	movq	-64(%rbp), %rax
	movzwl	40(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC45(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 65 0
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC46(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 66 0
	movq	-64(%rbp), %rax
	movl	44(%rax), %ebx
	leaq	.LC47(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEj
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 67 0
	movq	-64(%rbp), %rax
	movzwl	48(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC48(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 68 0
	movq	-64(%rbp), %rax
	movzwl	50(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC49(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 69 0
	movq	-64(%rbp), %rax
	leaq	52(%rax), %rbx
	leaq	.LC50(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKv
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 70 0
	movq	-64(%rbp), %rax
	movzbl	64(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC51(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 71 0
	movq	-64(%rbp), %rax
	movzbl	65(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC52(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 72 0
	movq	-64(%rbp), %rax
	movzbl	66(%rax), %eax
	movzbl	%al, %ebx
	leaq	.LC53(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 73 0
	movq	-64(%rbp), %rax
	movl	67(%rax), %ebx
	leaq	.LC54(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEj
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 74 0
	movq	-64(%rbp), %rax
	leaq	71(%rax), %rbx
	leaq	.LC55(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 75 0
	movq	-64(%rbp), %rax
	leaq	82(%rax), %rbx
	leaq	.LC56(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 76 0
	movq	-64(%rbp), %rax
	leaq	90(%rax), %rbx
	leaq	.LC57(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKv
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 77 0
	movq	-64(%rbp), %rax
	movzwl	510(%rax), %eax
	movzwl	%ax, %ebx
	leaq	.LC58(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%ebx, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 79 0
	nop
	addq	$40, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -24
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.section .rdata,"dr"
.LC59:
	.ascii "lentry.ord = \0"
.LC60:
	.ascii "lentry.name1 = \0"
.LC61:
	.ascii "lentry.attr = \0"
.LC62:
	.ascii "lentry.type = \0"
.LC63:
	.ascii "lentry.chksum = \0"
.LC64:
	.ascii "lentry.name2 = \0"
.LC65:
	.ascii "lentry.fstClusLO = \0"
.LC66:
	.ascii "lentry.name3 = \0"
.LC67:
	.ascii "dentry.name = \0"
.LC68:
	.ascii "dentry.attr = \0"
.LC69:
	.ascii "dentry.NTRes = \0"
.LC70:
	.ascii "dentry.crtTimeTenth = \0"
.LC71:
	.ascii "dentry.crtTime = \0"
.LC72:
	.ascii "dentry.crtDate = \0"
.LC73:
	.ascii "dentry.lstAccData = \0"
.LC74:
	.ascii "dentry.fstClusHI = \0"
.LC75:
	.ascii "dentry.wrtTime = \0"
.LC76:
	.ascii "dentry.wrtDate = \0"
.LC77:
	.ascii "dentry.fstClusLO = \0"
.LC78:
	.ascii "dentry.fileSize = \0"
	.text
	.align 2
	.globl	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry
	.def	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry
_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry:
.LFB58:
	.loc 1 82 0
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
	subq	$256, %rsp
	.seh_stackalloc	256
	.cfi_def_cfa_offset 288
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 160
	.seh_endprologue
	movq	%rcx, %rbx
.LBB2:
	.loc 1 83 0
	movq	%rbx, %rcx
	call	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	testb	%al, %al
	je	.L5
.LBB3:
	.loc 1 85 0
	movq	%rbx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 86 0
	movzbl	-80(%rbp), %eax
	movzbl	%al, %edx
	leaq	-40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC59(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 87 0
	leaq	-80(%rbp), %rax
	leaq	1(%rax), %rdx
	leaq	-32(%rbp), %rax
	movl	$10, %r8d
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKvm
	leaq	.LC60(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsR6Output9StringRef
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 88 0
	movzbl	-69(%rbp), %eax
	movzbl	%al, %edx
	leaq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC61(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 89 0
	movzbl	-68(%rbp), %eax
	movzbl	%al, %edx
	movq	%rbp, %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC62(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	%rbp, %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 90 0
	movzbl	-67(%rbp), %eax
	movzbl	%al, %edx
	leaq	8(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC63(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	8(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 91 0
	leaq	-80(%rbp), %rax
	leaq	14(%rax), %rdx
	leaq	16(%rbp), %rax
	movl	$12, %r8d
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKvm
	leaq	.LC64(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsR6Output9StringRef
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 92 0
	movzwl	-54(%rbp), %eax
	movzwl	%ax, %edx
	leaq	40(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC65(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	40(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 93 0
	leaq	-80(%rbp), %rax
	leaq	28(%rax), %rdx
	leaq	48(%rbp), %rax
	movl	$4, %r8d
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKvm
	leaq	.LC66(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	48(%rbp), %rax
	movq	56(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsR6Output9StringRef
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.LBE3:
.LBE2:
	.loc 1 108 0
	jmp	.L7
.L5:
.LBB4:
	.loc 1 95 0
	leaq	64(%rbp), %rax
	movl	$11, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKvm
	leaq	.LC67(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	64(%rbp), %rax
	movq	72(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsR6Output9StringRef
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 96 0
	movzbl	11(%rbx), %eax
	movzbl	%al, %edx
	leaq	88(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC68(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	88(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 97 0
	movzbl	12(%rbx), %eax
	movzbl	%al, %edx
	leaq	96(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC69(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 98 0
	movzbl	13(%rbx), %eax
	movzbl	%al, %esi
	leaq	.LC70(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEh
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 99 0
	movzwl	14(%rbx), %eax
	movzwl	%ax, %esi
	leaq	.LC71(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 100 0
	movzwl	16(%rbx), %eax
	movzwl	%ax, %esi
	leaq	.LC72(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 101 0
	movzwl	18(%rbx), %eax
	movzwl	%ax, %esi
	leaq	.LC73(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 102 0
	movzwl	20(%rbx), %eax
	movzwl	%ax, %edx
	leaq	104(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC74(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	104(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 103 0
	movzwl	22(%rbx), %eax
	movzwl	%ax, %esi
	leaq	.LC75(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 104 0
	movzwl	24(%rbx), %eax
	movzwl	%ax, %esi
	leaq	.LC76(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movl	%esi, %edx
	movq	%rax, %rcx
	call	_ZN6OutputlsEt
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 105 0
	movzwl	26(%rbx), %eax
	movzwl	%ax, %edx
	leaq	112(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC77(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	112(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	.loc 1 106 0
	movl	28(%rbx), %eax
	movl	%eax, %edx
	leaq	120(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN16IntegerFormatterILi16EEC1Em
	leaq	.LC78(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	120(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L7:
.LBE4:
	.loc 1 108 0
	nop
	addq	$256, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rsi
	.cfi_restore 4
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -232
	ret
	.cfi_endproc
.LFE58:
	.seh_endproc
	.section	.text$_ZN6StringD1Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6StringD1Ev
	.def	_ZN6StringD1Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6StringD1Ev
_ZN6StringD1Ev:
.LFB62:
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
.LBB5:
	.loc 2 14 0
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6VectorIcED2Ev
.LBE5:
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE62:
	.seh_endproc
	.section .rdata,"dr"
.LC79:
	.ascii "lentry.name = \0"
	.text
	.align 2
	.globl	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
	.def	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry:
.LFB59:
	.loc 1 111 0
	.cfi_startproc
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$136, %rsp
	.seh_stackalloc	136
	.cfi_def_cfa_offset 160
	leaq	128(%rsp), %rbp
	.seh_setframe	%rbp, 128
	.cfi_def_cfa 6, 32
	.seh_endprologue
	movq	%rcx, %rbx
.LBB6:
	.loc 1 112 0
	movq	%rbx, %rcx
	call	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	testb	%al, %al
	je	.L10
.LBB7:
	.loc 1 114 0
	movq	%rbx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -80(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -72(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -64(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	.loc 1 115 0
	leaq	-48(%rbp), %rax
	leaq	-80(%rbp), %rdx
	movl	$1, %r8d
	movq	%rax, %rcx
	call	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	leaq	.LC79(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsIcER6OutputS1_RK6VectorIT_E
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN6StringD1Ev
.LBE7:
.LBE6:
	.loc 1 119 0
	jmp	.L12
.L10:
.LBB8:
	.loc 1 117 0
	leaq	-16(%rbp), %rax
	movl	$11, %r8d
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	_ZN9StringRefC1EPKvm
	leaq	.LC67(%rip), %rdx
	movq	.refptr.kout(%rip), %rcx
	call	_ZN6OutputlsEPKc
	movq	%rax, %rcx
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rax, -96(%rbp)
	movq	%rdx, -88(%rbp)
	leaq	-96(%rbp), %rax
	movq	%rax, %rdx
	call	_ZlsR6Output9StringRef
	leaq	.LC1(%rip), %rdx
	movq	%rax, %rcx
	call	_ZN6OutputlsEPKc
.L12:
.LBE8:
	.loc 1 119 0
	nop
	addq	$136, %rsp
	popq	%rbx
	.cfi_restore 3
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, -120
	ret
	.cfi_endproc
.LFE59:
	.seh_endproc
	.align 2
	.globl	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym
	.def	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym
_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym:
.LFB63:
	.loc 1 122 0
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
.LBB9:
	.loc 1 123 0
	movq	$0, -8(%rbp)
.L15:
	.loc 1 123 0 is_stmt 0 discriminator 3
	movq	-8(%rbp), %rax
	cmpq	24(%rbp), %rax
	je	.L16
	.loc 1 124 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rax
	salq	$5, %rax
	movq	%rax, %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rdx
	movq	%rdx, -48(%rbp)
	movq	8(%rax), %rdx
	movq	%rdx, -40(%rbp)
	movq	16(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rcx
	call	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
	.loc 1 123 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L15
.L16:
.LBE9:
	.loc 1 125 0
	nop
	addq	$80, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE63:
	.seh_endproc
	.section	.text$_ZN16IntegerFormatterILi16EEC1Em,"x"
	.linkonce discard
	.align 2
	.globl	_ZN16IntegerFormatterILi16EEC1Em
	.def	_ZN16IntegerFormatterILi16EEC1Em;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN16IntegerFormatterILi16EEC1Em
_ZN16IntegerFormatterILi16EEC1Em:
.LFB66:
	.file 3 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/IntegerFormatter.h"
	.loc 3 16 0
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
.LBB10:
	.loc 3 17 0
	movq	16(%rbp), %rax
	movq	24(%rbp), %rdx
	movq	%rdx, (%rax)
.LBE10:
	nop
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE66:
	.seh_endproc
	.section	.text$_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,"x"
	.linkonce discard
	.globl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.def	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE:
.LFB67:
	.loc 3 31 0
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
	.loc 3 33 0
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK16IntegerFormatterILi16EE6formatEv
	movq	%rax, %rdx
	movq	16(%rbp), %rcx
	call	_ZN6OutputlsEPKc
	.loc 3 34 0
	movq	16(%rbp), %rax
	.loc 3 35 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE67:
	.seh_endproc
	.section	.text$_ZN6VectorIcED2Ev,"x"
	.linkonce discard
	.align 2
	.globl	_ZN6VectorIcED2Ev
	.def	_ZN6VectorIcED2Ev;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZN6VectorIcED2Ev
_ZN6VectorIcED2Ev:
.LFB69:
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
.LBB11:
	.loc 4 55 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L22
	.loc 4 57 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	.refptr.mman(%rip), %rcx
	call	_ZN13MemoryManager10deallocateEPv
	.loc 4 58 0
	movq	16(%rbp), %rax
	movq	$0, (%rax)
.L22:
.LBE11:
	.loc 4 60 0
	nop
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE69:
	.seh_endproc
	.section	.text$_ZlsIcER6OutputS1_RK6VectorIT_E,"x"
	.linkonce discard
	.globl	_ZlsIcER6OutputS1_RK6VectorIT_E
	.def	_ZlsIcER6OutputS1_RK6VectorIT_E;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZlsIcER6OutputS1_RK6VectorIT_E
_ZlsIcER6OutputS1_RK6VectorIT_E:
.LFB71:
	.loc 4 215 0
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
.LBB12:
	.loc 4 217 0
	movq	$0, -8(%rbp)
.L25:
	.loc 4 217 0 is_stmt 0 discriminator 3
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcE7getSizeEv
	cmpq	-8(%rbp), %rax
	setne	%al
	testb	%al, %al
	je	.L24
	.loc 4 218 0 is_stmt 1 discriminator 2
	movq	-8(%rbp), %rdx
	movq	24(%rbp), %rax
	movq	%rax, %rcx
	call	_ZNK6VectorIcEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edx
	movq	16(%rbp), %rcx
	call	_ZN6OutputlsEc
	.loc 4 217 0 discriminator 2
	addq	$1, -8(%rbp)
	jmp	.L25
.L24:
.LBE12:
	.loc 4 219 0
	movq	16(%rbp), %rax
	.loc 4 220 0
	addq	$48, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE71:
	.seh_endproc
	.section	.text$_ZNK16IntegerFormatterILi16EE6formatEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK16IntegerFormatterILi16EE6formatEv
	.def	_ZNK16IntegerFormatterILi16EE6formatEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK16IntegerFormatterILi16EE6formatEv
_ZNK16IntegerFormatterILi16EE6formatEv:
.LFB72:
	.loc 3 24 0
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
	.loc 3 26 0
	movq	16(%rbp), %rax
	movq	(%rax), %rax
	movl	$65, %r9d
	movq	.refptr.koutBuf(%rip), %r8
	movl	$16, %edx
	movq	%rax, %rcx
	call	_Z4itosmjPcm
	.loc 3 27 0
	movq	.refptr.koutBuf(%rip), %rax
	.loc 3 28 0
	addq	$32, %rsp
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE72:
	.seh_endproc
	.section	.text$_ZNK6VectorIcE7getSizeEv,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcE7getSizeEv
	.def	_ZNK6VectorIcE7getSizeEv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcE7getSizeEv
_ZNK6VectorIcE7getSizeEv:
.LFB73:
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
.LFE73:
	.seh_endproc
	.section	.text$_ZNK6VectorIcEixEm,"x"
	.linkonce discard
	.align 2
	.globl	_ZNK6VectorIcEixEm
	.def	_ZNK6VectorIcEixEm;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZNK6VectorIcEixEm
_ZNK6VectorIcEixEm:
.LFB74:
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
.LFE74:
	.seh_endproc
	.text
.Letext0:
	.file 5 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stddef.h"
	.file 6 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstddef"
	.file 7 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/cstdint"
	.file 8 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint-gcc.h"
	.file 9 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/def.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FAT_BPB.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/Output.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/generic_util.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryChunk.h"
	.file 14 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/memory/MemoryManager.h"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/Vector.h"
	.file 16 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/VectorRef.h"
	.file 17 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/data_structures/VectorRef.h"
	.file 18 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/data_structures/StringRef.h"
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FATDirEntry.h"
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FAT32ExtBPB.h"
	.file 21 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FATLongNameEntry.h"
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/filesystem/fat/FAT32Debugger.h"
	.file 23 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/IntegerFormatter.h"
	.file 24 "<built-in>"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x351e
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C++14 6.4.0 -mtune=generic -march=x86-64 -g3 -O0 -pedantic-errors -std=c++14 -fsigned-char -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti\0"
	.byte	0x4
	.ascii "D:/Pool/eclipse-workspace_aarch64/newspace/raspiOS/src/filesystem/fat/FAT32Debugger.cpp\0"
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
	.long	0x196
	.uleb128 0x4
	.long	0x183
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.word	0x1aa
	.ascii "11max_align_t\0"
	.long	0x1f3
	.uleb128 0x6
	.ascii "__max_align_ll\0"
	.byte	0x5
	.word	0x1ab
	.long	0x1f3
	.byte	0
	.uleb128 0x6
	.ascii "__max_align_ld\0"
	.byte	0x5
	.word	0x1ac
	.long	0x204
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
	.long	0x1ab
	.uleb128 0x8
	.ascii "decltype(nullptr)\0"
	.uleb128 0x9
	.ascii "std\0"
	.byte	0x18
	.byte	0
	.long	0x32e
	.uleb128 0xa
	.byte	0x6
	.byte	0x38
	.long	0x213
	.uleb128 0xa
	.byte	0x7
	.byte	0x30
	.long	0x32e
	.uleb128 0xa
	.byte	0x7
	.byte	0x31
	.long	0x34b
	.uleb128 0xa
	.byte	0x7
	.byte	0x32
	.long	0x367
	.uleb128 0xa
	.byte	0x7
	.byte	0x33
	.long	0x382
	.uleb128 0xa
	.byte	0x7
	.byte	0x35
	.long	0x4b1
	.uleb128 0xa
	.byte	0x7
	.byte	0x36
	.long	0x4c4
	.uleb128 0xa
	.byte	0x7
	.byte	0x37
	.long	0x4d8
	.uleb128 0xa
	.byte	0x7
	.byte	0x38
	.long	0x4ec
	.uleb128 0xa
	.byte	0x7
	.byte	0x3a
	.long	0x407
	.uleb128 0xa
	.byte	0x7
	.byte	0x3b
	.long	0x41b
	.uleb128 0xa
	.byte	0x7
	.byte	0x3c
	.long	0x430
	.uleb128 0xa
	.byte	0x7
	.byte	0x3d
	.long	0x445
	.uleb128 0xa
	.byte	0x7
	.byte	0x3f
	.long	0x574
	.uleb128 0xa
	.byte	0x7
	.byte	0x40
	.long	0x553
	.uleb128 0xa
	.byte	0x7
	.byte	0x42
	.long	0x391
	.uleb128 0xa
	.byte	0x7
	.byte	0x43
	.long	0x3b1
	.uleb128 0xa
	.byte	0x7
	.byte	0x44
	.long	0x3d7
	.uleb128 0xa
	.byte	0x7
	.byte	0x45
	.long	0x3f7
	.uleb128 0xa
	.byte	0x7
	.byte	0x47
	.long	0x500
	.uleb128 0xa
	.byte	0x7
	.byte	0x48
	.long	0x514
	.uleb128 0xa
	.byte	0x7
	.byte	0x49
	.long	0x529
	.uleb128 0xa
	.byte	0x7
	.byte	0x4a
	.long	0x53e
	.uleb128 0xa
	.byte	0x7
	.byte	0x4c
	.long	0x45a
	.uleb128 0xa
	.byte	0x7
	.byte	0x4d
	.long	0x46f
	.uleb128 0xa
	.byte	0x7
	.byte	0x4e
	.long	0x485
	.uleb128 0xa
	.byte	0x7
	.byte	0x4f
	.long	0x49b
	.uleb128 0xa
	.byte	0x7
	.byte	0x51
	.long	0x584
	.uleb128 0xa
	.byte	0x7
	.byte	0x52
	.long	0x563
	.uleb128 0xb
	.ascii "initializer_list<char>\0"
	.uleb128 0x4
	.long	0x310
	.byte	0
	.uleb128 0x3
	.ascii "int8_t\0"
	.byte	0x8
	.byte	0x22
	.long	0x33c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x3
	.ascii "int16_t\0"
	.byte	0x8
	.byte	0x25
	.long	0x35a
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "int32_t\0"
	.byte	0x8
	.byte	0x28
	.long	0x376
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x4
	.long	0x376
	.uleb128 0x3
	.ascii "int64_t\0"
	.byte	0x8
	.byte	0x2b
	.long	0x177
	.uleb128 0x3
	.ascii "uint8_t\0"
	.byte	0x8
	.byte	0x2e
	.long	0x3a0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.ascii "uint16_t\0"
	.byte	0x8
	.byte	0x31
	.long	0x3c1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.ascii "uint32_t\0"
	.byte	0x8
	.byte	0x34
	.long	0x3e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x8
	.byte	0x37
	.long	0x196
	.uleb128 0x3
	.ascii "int_least8_t\0"
	.byte	0x8
	.byte	0x3c
	.long	0x33c
	.uleb128 0x3
	.ascii "int_least16_t\0"
	.byte	0x8
	.byte	0x3d
	.long	0x35a
	.uleb128 0x3
	.ascii "int_least32_t\0"
	.byte	0x8
	.byte	0x3e
	.long	0x376
	.uleb128 0x3
	.ascii "int_least64_t\0"
	.byte	0x8
	.byte	0x3f
	.long	0x177
	.uleb128 0x3
	.ascii "uint_least8_t\0"
	.byte	0x8
	.byte	0x40
	.long	0x3a0
	.uleb128 0x3
	.ascii "uint_least16_t\0"
	.byte	0x8
	.byte	0x41
	.long	0x3c1
	.uleb128 0x3
	.ascii "uint_least32_t\0"
	.byte	0x8
	.byte	0x42
	.long	0x3e7
	.uleb128 0x3
	.ascii "uint_least64_t\0"
	.byte	0x8
	.byte	0x43
	.long	0x196
	.uleb128 0x3
	.ascii "int_fast8_t\0"
	.byte	0x8
	.byte	0x47
	.long	0x33c
	.uleb128 0x3
	.ascii "int_fast16_t\0"
	.byte	0x8
	.byte	0x48
	.long	0x177
	.uleb128 0x3
	.ascii "int_fast32_t\0"
	.byte	0x8
	.byte	0x49
	.long	0x177
	.uleb128 0x3
	.ascii "int_fast64_t\0"
	.byte	0x8
	.byte	0x4a
	.long	0x177
	.uleb128 0x3
	.ascii "uint_fast8_t\0"
	.byte	0x8
	.byte	0x4b
	.long	0x3a0
	.uleb128 0x3
	.ascii "uint_fast16_t\0"
	.byte	0x8
	.byte	0x4c
	.long	0x196
	.uleb128 0x3
	.ascii "uint_fast32_t\0"
	.byte	0x8
	.byte	0x4d
	.long	0x196
	.uleb128 0x3
	.ascii "uint_fast64_t\0"
	.byte	0x8
	.byte	0x4e
	.long	0x196
	.uleb128 0x3
	.ascii "intptr_t\0"
	.byte	0x8
	.byte	0x53
	.long	0x177
	.uleb128 0x3
	.ascii "uintptr_t\0"
	.byte	0x8
	.byte	0x56
	.long	0x196
	.uleb128 0x3
	.ascii "intmax_t\0"
	.byte	0x8
	.byte	0x5b
	.long	0x177
	.uleb128 0x3
	.ascii "uintmax_t\0"
	.byte	0x8
	.byte	0x5c
	.long	0x196
	.uleb128 0xc
	.long	0x5be
	.long	0x5a5
	.uleb128 0xd
	.long	0x5aa
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x595
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0x5b6
	.uleb128 0xe
	.ascii "EMPTY_STR\0"
	.byte	0x9
	.byte	0x16
	.long	0x5a5
	.uleb128 0xf
	.ascii "UNIT_K\0"
	.byte	0x9
	.byte	0x1a
	.long	0x37d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL6UNIT_K
	.uleb128 0xf
	.ascii "KiB\0"
	.byte	0x9
	.byte	0x1b
	.long	0x37d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3KiB
	.uleb128 0xf
	.ascii "MiB\0"
	.byte	0x9
	.byte	0x1c
	.long	0x37d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3MiB
	.uleb128 0xf
	.ascii "GiB\0"
	.byte	0x9
	.byte	0x1d
	.long	0x37d
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL3GiB
	.uleb128 0x10
	.ascii "FAT_BPB\0"
	.byte	0x24
	.byte	0xa
	.byte	0x19
	.long	0x7fd
	.uleb128 0x11
	.ascii "FATType\0"
	.byte	0x4
	.long	0x3e7
	.byte	0xa
	.byte	0x1b
	.byte	0x1
	.long	0x673
	.uleb128 0x12
	.ascii "FAT12\0"
	.byte	0
	.uleb128 0x12
	.ascii "FAT16\0"
	.byte	0x1
	.uleb128 0x12
	.ascii "FAT32\0"
	.byte	0x2
	.uleb128 0x12
	.ascii "UNKNOWN\0"
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.ascii "BS_jmpBoot\0"
	.byte	0xa
	.byte	0x25
	.long	0x802
	.byte	0
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_OEMName\0"
	.byte	0xa
	.byte	0x28
	.long	0x812
	.byte	0x3
	.byte	0x1
	.uleb128 0x13
	.ascii "bytesPerSec\0"
	.byte	0xa
	.byte	0x2b
	.long	0x3b1
	.byte	0xb
	.byte	0x1
	.uleb128 0x13
	.ascii "secPerClus\0"
	.byte	0xa
	.byte	0x2e
	.long	0x391
	.byte	0xd
	.byte	0x1
	.uleb128 0x13
	.ascii "rsvdSecCnt\0"
	.byte	0xa
	.byte	0x31
	.long	0x3b1
	.byte	0xe
	.byte	0x1
	.uleb128 0x13
	.ascii "numFATs\0"
	.byte	0xa
	.byte	0x34
	.long	0x391
	.byte	0x10
	.byte	0x1
	.uleb128 0x13
	.ascii "rootEntCnt\0"
	.byte	0xa
	.byte	0x38
	.long	0x3b1
	.byte	0x11
	.byte	0x1
	.uleb128 0x13
	.ascii "totSec16\0"
	.byte	0xa
	.byte	0x3c
	.long	0x3b1
	.byte	0x13
	.byte	0x1
	.uleb128 0x13
	.ascii "media\0"
	.byte	0xa
	.byte	0x40
	.long	0x391
	.byte	0x15
	.byte	0x1
	.uleb128 0x13
	.ascii "FATSz16\0"
	.byte	0xa
	.byte	0x44
	.long	0x3b1
	.byte	0x16
	.byte	0x1
	.uleb128 0x13
	.ascii "secPerTrk\0"
	.byte	0xa
	.byte	0x47
	.long	0x3b1
	.byte	0x18
	.byte	0x1
	.uleb128 0x13
	.ascii "numHeads\0"
	.byte	0xa
	.byte	0x4a
	.long	0x3b1
	.byte	0x1a
	.byte	0x1
	.uleb128 0x13
	.ascii "hiddSec\0"
	.byte	0xa
	.byte	0x4d
	.long	0x3d7
	.byte	0x1c
	.byte	0x1
	.uleb128 0x13
	.ascii "totSec32\0"
	.byte	0xa
	.byte	0x51
	.long	0x3d7
	.byte	0x20
	.byte	0x1
	.uleb128 0x14
	.ascii "uni_getRootDirSecCount\0"
	.byte	0xa
	.byte	0x53
	.ascii "_ZNK7FAT_BPB22uni_getRootDirSecCountEv\0"
	.long	0x183
	.byte	0x1
	.long	0x7c5
	.long	0x7cb
	.uleb128 0x15
	.long	0x822
	.byte	0
	.uleb128 0x16
	.secrel32	.LASF1
	.byte	0xa
	.byte	0x54
	.ascii "_ZNK7FAT_BPB10getFATTypeEv\0"
	.long	0x63b
	.byte	0x1
	.long	0x7f6
	.uleb128 0x15
	.long	0x822
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x62b
	.uleb128 0xc
	.long	0x391
	.long	0x812
	.uleb128 0xd
	.long	0x5aa
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	0x5b6
	.long	0x822
	.uleb128 0xd
	.long	0x5aa
	.byte	0x7
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x7fd
	.uleb128 0x18
	.byte	0x8
	.uleb128 0x17
	.byte	0x8
	.long	0x830
	.uleb128 0x19
	.uleb128 0x10
	.ascii "Output\0"
	.byte	0x1
	.byte	0xb
	.byte	0xd
	.long	0xb0d
	.uleb128 0x14
	.ascii "print\0"
	.byte	0xb
	.byte	0xf
	.ascii "_ZN6Output5printEPKcm\0"
	.long	0x183
	.byte	0x1
	.long	0x86c
	.long	0x87c
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "print\0"
	.byte	0xb
	.byte	0x10
	.ascii "_ZN6Output5printEPKc\0"
	.long	0x183
	.byte	0x1
	.long	0x8a7
	.long	0x8b2
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb13
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x11
	.ascii "_ZN6OutputlsEc\0"
	.long	0xb19
	.byte	0x1
	.long	0x8d5
	.long	0x8e0
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x5b6
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x13
	.ascii "_ZN6OutputlsEh\0"
	.long	0xb19
	.byte	0x1
	.long	0x903
	.long	0x90e
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x391
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x14
	.ascii "_ZN6OutputlsEt\0"
	.long	0xb19
	.byte	0x1
	.long	0x931
	.long	0x93c
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x3b1
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x15
	.ascii "_ZN6OutputlsEj\0"
	.long	0xb19
	.byte	0x1
	.long	0x95f
	.long	0x96a
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x3d7
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x16
	.ascii "_ZN6OutputlsEb\0"
	.long	0xb19
	.byte	0x1
	.long	0x98d
	.long	0x998
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x17
	.ascii "_ZN6OutputlsEs\0"
	.long	0xb19
	.byte	0x1
	.long	0x9bb
	.long	0x9c6
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x35a
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x18
	.ascii "_ZN6OutputlsEi\0"
	.long	0xb19
	.byte	0x1
	.long	0x9e9
	.long	0x9f4
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x376
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x19
	.ascii "_ZN6OutputlsEd\0"
	.long	0xb19
	.byte	0x1
	.long	0xa17
	.long	0xa22
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb2c
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1a
	.ascii "_ZN6OutputlsEPKc\0"
	.long	0xb19
	.byte	0x1
	.long	0xa47
	.long	0xa52
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb13
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1b
	.ascii "_ZN6OutputlsEm\0"
	.long	0xb19
	.byte	0x1
	.long	0xa75
	.long	0xa80
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1c
	.ascii "_ZN6OutputlsEPKv\0"
	.long	0xb19
	.byte	0x1
	.long	0xaa5
	.long	0xab0
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0x82a
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF0
	.byte	0xb
	.byte	0x1d
	.ascii "_ZN6OutputlsEPVKv\0"
	.long	0xb19
	.byte	0x1
	.long	0xad6
	.long	0xae1
	.uleb128 0x15
	.long	0xb0d
	.uleb128 0x1a
	.long	0xb36
	.byte	0
	.uleb128 0x1c
	.ascii "flush\0"
	.byte	0xb
	.byte	0x1e
	.ascii "_ZN6Output5flushEv\0"
	.long	0xb19
	.byte	0x1
	.long	0xb06
	.uleb128 0x15
	.long	0xb0d
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x831
	.uleb128 0x17
	.byte	0x8
	.long	0x5be
	.uleb128 0x1d
	.byte	0x8
	.long	0x831
	.uleb128 0x4
	.long	0xb19
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "bool\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x17
	.byte	0x8
	.long	0xb3d
	.uleb128 0x1e
	.uleb128 0x4
	.long	0xb3c
	.uleb128 0xe
	.ascii "kout\0"
	.byte	0xb
	.byte	0x22
	.long	0x831
	.uleb128 0xf
	.ascii "koutBufSize\0"
	.byte	0xb
	.byte	0x25
	.long	0x191
	.uleb128 0x9
	.byte	0x3
	.quad	_ZL11koutBufSize
	.uleb128 0xc
	.long	0x5b6
	.long	0xb7b
	.uleb128 0xd
	.long	0x5aa
	.byte	0x40
	.byte	0
	.uleb128 0xe
	.ascii "koutBuf\0"
	.byte	0xb
	.byte	0x26
	.long	0xb6b
	.uleb128 0xc
	.long	0x5be
	.long	0xb95
	.uleb128 0x1f
	.byte	0
	.uleb128 0xe
	.ascii "digitsMap\0"
	.byte	0xc
	.byte	0x16
	.long	0xb8a
	.uleb128 0x20
	.secrel32	.LASF2
	.byte	0x8
	.byte	0xd
	.byte	0x16
	.long	0x11d1
	.uleb128 0x21
	.ascii "nextValidChunkOffset\0"
	.byte	0xd
	.byte	0x42
	.long	0x3f7
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.ascii "endMark\0"
	.byte	0xd
	.byte	0x43
	.long	0x3f7
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.ascii "allocated\0"
	.byte	0xd
	.byte	0x44
	.long	0x3f7
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.ascii "size\0"
	.byte	0xd
	.byte	0x45
	.long	0x3f7
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x21
	.ascii "nextBaseFromEnd\0"
	.byte	0xd
	.byte	0x46
	.long	0x3f7
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF2
	.byte	0xd
	.byte	0x1b
	.ascii "_ZN11MemoryChunkC4Embmbm\0"
	.byte	0x1
	.long	0xc4e
	.long	0xc6d
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0xb24
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0xb24
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "isAllocated\0"
	.byte	0xd
	.byte	0x1c
	.ascii "_ZNK11MemoryChunk11isAllocatedEv\0"
	.long	0xb24
	.byte	0x1
	.long	0xcaa
	.long	0xcb0
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x23
	.ascii "setAllocated\0"
	.byte	0xd
	.byte	0x1d
	.ascii "_ZN11MemoryChunk12setAllocatedEb\0"
	.byte	0x1
	.long	0xcea
	.long	0xcf5
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x14
	.ascii "isEnd\0"
	.byte	0xd
	.byte	0x1e
	.ascii "_ZNK11MemoryChunk5isEndEv\0"
	.long	0xb24
	.byte	0x1
	.long	0xd25
	.long	0xd2b
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x23
	.ascii "setEnd\0"
	.byte	0xd
	.byte	0x1f
	.ascii "_ZN11MemoryChunk6setEndEb\0"
	.byte	0x1
	.long	0xd58
	.long	0xd63
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x14
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x20
	.ascii "_ZNK11MemoryChunk7getNextEv\0"
	.long	0x11dc
	.byte	0x1
	.long	0xd97
	.long	0xd9d
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x14
	.ascii "getNext\0"
	.byte	0xd
	.byte	0x21
	.ascii "_ZN11MemoryChunk7getNextEv\0"
	.long	0x11d6
	.byte	0x1
	.long	0xdd0
	.long	0xdd6
	.uleb128 0x15
	.long	0x11d6
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0xd
	.byte	0x22
	.ascii "_ZNK11MemoryChunk7getSizeEv\0"
	.long	0x183
	.byte	0x1
	.long	0xe06
	.long	0xe0c
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x23
	.ascii "setSize\0"
	.byte	0xd
	.byte	0x23
	.ascii "_ZN11MemoryChunk7setSizeEm\0"
	.byte	0x1
	.long	0xe3b
	.long	0xe46
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x24
	.ascii "_ZN11MemoryChunk10getDataPtrEv\0"
	.long	0x828
	.byte	0x1
	.long	0xe79
	.long	0xe7f
	.uleb128 0x15
	.long	0x11d6
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF4
	.byte	0xd
	.byte	0x25
	.ascii "_ZNK11MemoryChunk10getDataPtrEv\0"
	.long	0x82a
	.byte	0x1
	.long	0xeb3
	.long	0xeb9
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF5
	.byte	0xd
	.byte	0x26
	.ascii "_ZN11MemoryChunk10getDataEndEv\0"
	.long	0x828
	.byte	0x1
	.long	0xeec
	.long	0xef2
	.uleb128 0x15
	.long	0x11d6
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF5
	.byte	0xd
	.byte	0x27
	.ascii "_ZNK11MemoryChunk10getDataEndEv\0"
	.long	0x82a
	.byte	0x1
	.long	0xf26
	.long	0xf2c
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x14
	.ascii "getNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x28
	.ascii "_ZNK11MemoryChunk18getNextBaseFromEndEv\0"
	.long	0x3f7
	.byte	0x1
	.long	0xf77
	.long	0xf7d
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x23
	.ascii "setNextBaseFromEnd\0"
	.byte	0xd
	.byte	0x29
	.ascii "_ZN11MemoryChunk18setNextBaseFromEndEm\0"
	.byte	0x1
	.long	0xfc3
	.long	0xfce
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x3f7
	.byte	0
	.uleb128 0x14
	.ascii "getNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2a
	.ascii "_ZNK11MemoryChunk23getNextValidChunkOffsetEv\0"
	.long	0x3f7
	.byte	0x1
	.long	0x1023
	.long	0x1029
	.uleb128 0x15
	.long	0x11dc
	.byte	0
	.uleb128 0x23
	.ascii "setNextValidChunkOffset\0"
	.byte	0xd
	.byte	0x2b
	.ascii "_ZN11MemoryChunk23setNextValidChunkOffsetEm\0"
	.byte	0x1
	.long	0x1079
	.long	0x1084
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x3f7
	.byte	0
	.uleb128 0x14
	.ascii "moveAhead\0"
	.byte	0xd
	.byte	0x36
	.ascii "_ZN11MemoryChunk9moveAheadEm\0"
	.long	0x11d6
	.byte	0x1
	.long	0x10bb
	.long	0x10c6
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "moveOffsetOfAllocSuchAlignedSpace\0"
	.byte	0xd
	.byte	0x38
	.ascii "_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm\0"
	.long	0x183
	.byte	0x1
	.long	0x1130
	.long	0x1140
	.uleb128 0x15
	.long	0x11dc
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "split\0"
	.byte	0xd
	.byte	0x3a
	.ascii "_ZN11MemoryChunk5splitEm\0"
	.long	0xb24
	.byte	0x1
	.long	0x116f
	.long	0x117a
	.uleb128 0x15
	.long	0x11d6
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x24
	.ascii "mergeTrailingsUnallocated\0"
	.byte	0xd
	.byte	0x3e
	.ascii "_ZN11MemoryChunk25mergeTrailingsUnallocatedEv\0"
	.byte	0x1
	.long	0x11ca
	.uleb128 0x15
	.long	0x11d6
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0xba6
	.uleb128 0x17
	.byte	0x8
	.long	0xba6
	.uleb128 0x17
	.byte	0x8
	.long	0x11d1
	.uleb128 0x20
	.secrel32	.LASF6
	.byte	0x18
	.byte	0xe
	.byte	0x19
	.long	0x14eb
	.uleb128 0x25
	.ascii "headChunk\0"
	.byte	0xe
	.byte	0x54
	.long	0x11d6
	.byte	0
	.uleb128 0x25
	.ascii "base\0"
	.byte	0xe
	.byte	0x55
	.long	0xb13
	.byte	0x8
	.uleb128 0x25
	.ascii "size\0"
	.byte	0xe
	.byte	0x56
	.long	0x191
	.byte	0x10
	.uleb128 0x26
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x1c
	.ascii "_ZN13MemoryManagerC4Ev\0"
	.byte	0x1
	.long	0x1241
	.long	0x1247
	.uleb128 0x15
	.long	0x14f0
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF6
	.byte	0xe
	.byte	0x20
	.ascii "_ZN13MemoryManagerC4EPvmb\0"
	.byte	0x1
	.long	0x1271
	.long	0x1286
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x828
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x14
	.ascii "normalizeAllocSize\0"
	.byte	0xe
	.byte	0x23
	.ascii "_ZN13MemoryManager18normalizeAllocSizeEm\0"
	.long	0x183
	.byte	0x1
	.long	0x12d2
	.long	0x12dd
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF7
	.byte	0xe
	.byte	0x26
	.ascii "_ZN13MemoryManager8allocateEm\0"
	.long	0x828
	.byte	0x1
	.long	0x130f
	.long	0x131a
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF7
	.byte	0xe
	.byte	0x29
	.ascii "_ZN13MemoryManager8allocateEmm\0"
	.long	0x828
	.byte	0x1
	.long	0x134d
	.long	0x135d
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "tryIncrease\0"
	.byte	0xe
	.byte	0x37
	.ascii "_ZN13MemoryManager11tryIncreaseEPvm\0"
	.long	0xb24
	.byte	0x1
	.long	0x139d
	.long	0x13ad
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x828
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "tryDecrease\0"
	.byte	0xe
	.byte	0x38
	.ascii "_ZN13MemoryManager11tryDecreaseEPvm\0"
	.long	0xb24
	.byte	0x1
	.long	0x13ed
	.long	0x13fd
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x828
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "reallocate\0"
	.byte	0xe
	.byte	0x41
	.ascii "_ZN13MemoryManager10reallocateEPvmm\0"
	.long	0x828
	.byte	0x1
	.long	0x143c
	.long	0x1451
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x828
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x23
	.ascii "deallocate\0"
	.byte	0xe
	.byte	0x4a
	.ascii "_ZN13MemoryManager10deallocateEPv\0"
	.byte	0x1
	.long	0x148a
	.long	0x1495
	.uleb128 0x15
	.long	0x14f0
	.uleb128 0x1a
	.long	0x828
	.byte	0
	.uleb128 0x1c
	.ascii "getAllocatedLength\0"
	.byte	0xe
	.byte	0x50
	.ascii "_ZNK13MemoryManager18getAllocatedLengthEPv\0"
	.long	0x183
	.byte	0x1
	.long	0x14df
	.uleb128 0x15
	.long	0x14f6
	.uleb128 0x1a
	.long	0x828
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x11e2
	.uleb128 0x17
	.byte	0x8
	.long	0x11e2
	.uleb128 0x17
	.byte	0x8
	.long	0x14eb
	.uleb128 0xe
	.ascii "mman\0"
	.byte	0xe
	.byte	0x5b
	.long	0x11e2
	.uleb128 0x10
	.ascii "Vector<char>\0"
	.byte	0x18
	.byte	0xf
	.byte	0x13
	.long	0x1b42
	.uleb128 0x25
	.ascii "data\0"
	.byte	0xf
	.byte	0x45
	.long	0x1b47
	.byte	0
	.uleb128 0x25
	.ascii "capacity\0"
	.byte	0xf
	.byte	0x46
	.long	0x183
	.byte	0x8
	.uleb128 0x25
	.ascii "size\0"
	.byte	0xf
	.byte	0x47
	.long	0x183
	.byte	0x10
	.uleb128 0x22
	.secrel32	.LASF8
	.byte	0x4
	.byte	0xf
	.ascii "_ZN6VectorIcEC4Em\0"
	.byte	0x1
	.long	0x156a
	.long	0x1575
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF8
	.byte	0x4
	.byte	0x18
	.ascii "_ZN6VectorIcEC4ERKSt16initializer_listIcE\0"
	.byte	0x1
	.long	0x15af
	.long	0x15ba
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b58
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF9
	.byte	0xf
	.byte	0x1b
	.ascii "_ZN6VectorIcEaSERKSt16initializer_listIcE\0"
	.long	0x1b5e
	.byte	0x1
	.long	0x15f8
	.long	0x1603
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b58
	.byte	0
	.uleb128 0x26
	.secrel32	.LASF8
	.byte	0xf
	.byte	0x1c
	.ascii "_ZN6VectorIcEC4ERKS0_\0"
	.byte	0x1
	.long	0x1629
	.long	0x1634
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b64
	.byte	0
	.uleb128 0x27
	.secrel32	.LASF9
	.byte	0xf
	.byte	0x1d
	.ascii "_ZN6VectorIcEaSERKS0_\0"
	.long	0x1b5e
	.byte	0x1
	.long	0x165e
	.long	0x1669
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b64
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF8
	.byte	0x4
	.byte	0x20
	.ascii "_ZN6VectorIcEC4EOS0_\0"
	.byte	0x1
	.long	0x168e
	.long	0x1699
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b6f
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF9
	.byte	0x4
	.byte	0x29
	.ascii "_ZN6VectorIcEaSEOS0_\0"
	.long	0x1b5e
	.byte	0x1
	.long	0x16c2
	.long	0x16cd
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b6f
	.byte	0
	.uleb128 0x23
	.ascii "~Vector\0"
	.byte	0x4
	.byte	0x35
	.ascii "_ZN6VectorIcED4Ev\0"
	.byte	0x1
	.long	0x16f3
	.long	0x16fe
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x15
	.long	0x376
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF10
	.byte	0x4
	.byte	0x3f
	.ascii "_ZNK6VectorIcEixEm\0"
	.long	0x1b75
	.byte	0x1
	.long	0x1725
	.long	0x1730
	.uleb128 0x15
	.long	0x1b7b
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF10
	.byte	0x4
	.byte	0x44
	.ascii "_ZN6VectorIcEixEm\0"
	.long	0x1b86
	.byte	0x1
	.long	0x1756
	.long	0x1761
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "popBack\0"
	.byte	0x4
	.byte	0x49
	.ascii "_ZN6VectorIcE7popBackEv\0"
	.long	0x5b6
	.byte	0x1
	.long	0x1791
	.long	0x1797
	.uleb128 0x15
	.long	0x1b4d
	.byte	0
	.uleb128 0x23
	.ascii "pushBack\0"
	.byte	0x4
	.byte	0x51
	.ascii "_ZN6VectorIcE8pushBackEc\0"
	.byte	0x1
	.long	0x17c5
	.long	0x17d0
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x5b6
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF11
	.byte	0x4
	.byte	0x5b
	.ascii "_ZN6VectorIcE7getDataEv\0"
	.long	0x1b47
	.byte	0x1
	.long	0x17fc
	.long	0x1802
	.uleb128 0x15
	.long	0x1b4d
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF11
	.byte	0x4
	.byte	0x61
	.ascii "_ZNK6VectorIcE7getDataEv\0"
	.long	0xb13
	.byte	0x1
	.long	0x182f
	.long	0x1835
	.uleb128 0x15
	.long	0x1b7b
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0x4
	.byte	0x67
	.ascii "_ZNK6VectorIcE7getSizeEv\0"
	.long	0x183
	.byte	0x1
	.long	0x1862
	.long	0x1868
	.uleb128 0x15
	.long	0x1b7b
	.byte	0
	.uleb128 0x14
	.ascii "getCapacity\0"
	.byte	0x4
	.byte	0x6d
	.ascii "_ZNK6VectorIcE11getCapacityEv\0"
	.long	0x183
	.byte	0x1
	.long	0x18a2
	.long	0x18a8
	.uleb128 0x15
	.long	0x1b7b
	.byte	0
	.uleb128 0x14
	.ascii "empty\0"
	.byte	0x4
	.byte	0x73
	.ascii "_ZNK6VectorIcE5emptyEv\0"
	.long	0xb24
	.byte	0x1
	.long	0x18d5
	.long	0x18db
	.uleb128 0x15
	.long	0x1b7b
	.byte	0
	.uleb128 0x23
	.ascii "clear\0"
	.byte	0x4
	.byte	0x79
	.ascii "_ZN6VectorIcE5clearEv\0"
	.byte	0x1
	.long	0x1903
	.long	0x1909
	.uleb128 0x15
	.long	0x1b4d
	.byte	0
	.uleb128 0x23
	.ascii "erase\0"
	.byte	0x4
	.byte	0x7f
	.ascii "_ZN6VectorIcE5eraseEm\0"
	.byte	0x1
	.long	0x1931
	.long	0x193c
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "append\0"
	.byte	0x4
	.byte	0x8a
	.ascii "_ZN6VectorIcE6appendERKS0_m\0"
	.long	0x1b5e
	.byte	0x1
	.long	0x196f
	.long	0x197f
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x1b64
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "insert\0"
	.byte	0x4
	.byte	0x92
	.ascii "_ZN6VectorIcE6insertEmRKc\0"
	.long	0x183
	.byte	0x1
	.long	0x19b0
	.long	0x19c0
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x1b75
	.byte	0
	.uleb128 0x14
	.ascii "resize\0"
	.byte	0x4
	.byte	0x9e
	.ascii "_ZN6VectorIcE6resizeEm\0"
	.long	0xb24
	.byte	0x1
	.long	0x19ee
	.long	0x19f9
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x28
	.ascii "resizeCapacity\0"
	.byte	0x4
	.byte	0xa7
	.ascii "_ZN6VectorIcE14resizeCapacityEm\0"
	.long	0xb24
	.long	0x1a37
	.long	0x1a42
	.uleb128 0x15
	.long	0x1b4d
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x28
	.ascii "adjustCapacityForOneMore\0"
	.byte	0x4
	.byte	0xbb
	.ascii "_ZN6VectorIcE24adjustCapacityForOneMoreEv\0"
	.long	0xb24
	.long	0x1a94
	.long	0x1a9a
	.uleb128 0x15
	.long	0x1b4d
	.byte	0
	.uleb128 0x28
	.ascii "adjustCapacityForOneLess\0"
	.byte	0x4
	.byte	0xc3
	.ascii "_ZN6VectorIcE24adjustCapacityForOneLessEv\0"
	.long	0xb24
	.long	0x1aec
	.long	0x1af2
	.uleb128 0x15
	.long	0x1b4d
	.byte	0
	.uleb128 0x29
	.ascii "getIncrementalSize\0"
	.byte	0x4
	.byte	0xd1
	.ascii "_ZN6VectorIcE18getIncrementalSizeEm\0"
	.long	0x183
	.long	0x1b3a
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x2a
	.ascii "T\0"
	.long	0x5b6
	.byte	0
	.uleb128 0x4
	.long	0x1508
	.uleb128 0x17
	.byte	0x8
	.long	0x5b6
	.uleb128 0x17
	.byte	0x8
	.long	0x1508
	.uleb128 0x4
	.long	0x1b4d
	.uleb128 0x1d
	.byte	0x8
	.long	0x328
	.uleb128 0x1d
	.byte	0x8
	.long	0x1508
	.uleb128 0x1d
	.byte	0x8
	.long	0x1b42
	.uleb128 0x4
	.long	0x1b64
	.uleb128 0x2b
	.byte	0x8
	.long	0x1508
	.uleb128 0x1d
	.byte	0x8
	.long	0x5be
	.uleb128 0x17
	.byte	0x8
	.long	0x1b42
	.uleb128 0x4
	.long	0x1b7b
	.uleb128 0x1d
	.byte	0x8
	.long	0x5b6
	.uleb128 0x20
	.secrel32	.LASF12
	.byte	0x18
	.byte	0x2
	.byte	0xe
	.long	0x1cbf
	.uleb128 0xa
	.byte	0x2
	.byte	0xe
	.long	0x193c
	.uleb128 0x2c
	.long	0x1508
	.byte	0
	.byte	0x1
	.uleb128 0x22
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x15
	.ascii "_ZN6StringC4Em\0"
	.byte	0x1
	.long	0x1bc5
	.long	0x1bd0
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x16
	.ascii "_ZN6StringC4EOS_\0"
	.byte	0x1
	.long	0x1bf1
	.long	0x1bfc
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x1a
	.long	0x1ccf
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF12
	.byte	0x2
	.byte	0x18
	.ascii "_ZN6StringC4EPKc\0"
	.byte	0x1
	.long	0x1c1d
	.long	0x1c28
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x1a
	.long	0xb13
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF9
	.byte	0x2
	.byte	0x19
	.ascii "_ZN6StringaSEPKc\0"
	.long	0x1cd5
	.byte	0x1
	.long	0x1c4d
	.long	0x1c58
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x1a
	.long	0xb13
	.byte	0
	.uleb128 0x14
	.ascii "append\0"
	.byte	0x2
	.byte	0x1a
	.ascii "_ZN6String6appendEPKcm\0"
	.long	0x1cd5
	.byte	0x1
	.long	0x1c86
	.long	0x1c96
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x2d
	.ascii "~String\0"
	.ascii "_ZN6StringD4Ev\0"
	.byte	0x1
	.long	0x1cb3
	.uleb128 0x15
	.long	0x1cc4
	.uleb128 0x15
	.long	0x376
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1b8c
	.uleb128 0x17
	.byte	0x8
	.long	0x1b8c
	.uleb128 0x4
	.long	0x1cc4
	.uleb128 0x2b
	.byte	0x8
	.long	0x1b8c
	.uleb128 0x1d
	.byte	0x8
	.long	0x1b8c
	.uleb128 0x10
	.ascii "VectorRef<char>\0"
	.byte	0x10
	.byte	0x10
	.byte	0x10
	.long	0x1ed4
	.uleb128 0x25
	.ascii "data\0"
	.byte	0x10
	.byte	0x1c
	.long	0xb13
	.byte	0
	.uleb128 0x25
	.ascii "size\0"
	.byte	0x10
	.byte	0x1d
	.long	0x183
	.byte	0x8
	.uleb128 0x26
	.secrel32	.LASF13
	.byte	0x10
	.byte	0x12
	.ascii "_ZN9VectorRefIcEC4Ev\0"
	.byte	0x1
	.long	0x1d32
	.long	0x1d38
	.uleb128 0x15
	.long	0x1ed9
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF13
	.byte	0x11
	.byte	0xf
	.ascii "_ZN9VectorRefIcEC4EPKcm\0"
	.byte	0x1
	.long	0x1d60
	.long	0x1d70
	.uleb128 0x15
	.long	0x1ed9
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF13
	.byte	0x11
	.byte	0x13
	.ascii "_ZN9VectorRefIcEC4E6VectorIcEmm\0"
	.byte	0x1
	.long	0x1da0
	.long	0x1db5
	.uleb128 0x15
	.long	0x1ed9
	.uleb128 0x1a
	.long	0x1508
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF11
	.byte	0x11
	.byte	0x17
	.ascii "_ZNK9VectorRefIcE7getDataEv\0"
	.long	0xb13
	.byte	0x1
	.long	0x1de5
	.long	0x1deb
	.uleb128 0x15
	.long	0x1edf
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF3
	.byte	0x11
	.byte	0x1d
	.ascii "_ZNK9VectorRefIcE7getSizeEv\0"
	.long	0x183
	.byte	0x1
	.long	0x1e1b
	.long	0x1e21
	.uleb128 0x15
	.long	0x1edf
	.byte	0
	.uleb128 0x23
	.ascii "setData\0"
	.byte	0x11
	.byte	0x24
	.ascii "_ZN9VectorRefIcE7setDataEPKc\0"
	.byte	0x1
	.long	0x1e52
	.long	0x1e5d
	.uleb128 0x15
	.long	0x1ed9
	.uleb128 0x1a
	.long	0xb13
	.byte	0
	.uleb128 0x23
	.ascii "setSize\0"
	.byte	0x11
	.byte	0x29
	.ascii "_ZN9VectorRefIcE7setSizeEm\0"
	.byte	0x1
	.long	0x1e8c
	.long	0x1e97
	.uleb128 0x15
	.long	0x1ed9
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF10
	.byte	0x11
	.byte	0x2f
	.ascii "_ZNK9VectorRefIcEixEm\0"
	.long	0x1b75
	.byte	0x1
	.long	0x1ec1
	.long	0x1ecc
	.uleb128 0x15
	.long	0x1edf
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x2a
	.ascii "T\0"
	.long	0x5b6
	.byte	0
	.uleb128 0x4
	.long	0x1cdb
	.uleb128 0x17
	.byte	0x8
	.long	0x1cdb
	.uleb128 0x17
	.byte	0x8
	.long	0x1ed4
	.uleb128 0x20
	.secrel32	.LASF14
	.byte	0x10
	.byte	0x12
	.byte	0x10
	.long	0x1f8e
	.uleb128 0x2c
	.long	0x1cdb
	.byte	0
	.byte	0x1
	.uleb128 0x22
	.secrel32	.LASF14
	.byte	0x12
	.byte	0x14
	.ascii "_ZN9StringRefC4EPKv\0"
	.byte	0x1
	.long	0x1f1c
	.long	0x1f27
	.uleb128 0x15
	.long	0x1f93
	.uleb128 0x1a
	.long	0x82a
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF14
	.byte	0x12
	.byte	0x15
	.ascii "_ZN9StringRefC4EPKvm\0"
	.byte	0x1
	.long	0x1f4c
	.long	0x1f5c
	.uleb128 0x15
	.long	0x1f93
	.uleb128 0x1a
	.long	0x82a
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x2e
	.secrel32	.LASF14
	.byte	0x12
	.byte	0x16
	.ascii "_ZN9StringRefC4ERK6String\0"
	.byte	0x1
	.long	0x1f82
	.uleb128 0x15
	.long	0x1f93
	.uleb128 0x1a
	.long	0x1f99
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1ee5
	.uleb128 0x17
	.byte	0x8
	.long	0x1ee5
	.uleb128 0x1d
	.byte	0x8
	.long	0x1cbf
	.uleb128 0x10
	.ascii "FATDirEntry\0"
	.byte	0x20
	.byte	0x13
	.byte	0xf
	.long	0x237b
	.uleb128 0x13
	.ascii "name\0"
	.byte	0x13
	.byte	0x18
	.long	0x2380
	.byte	0
	.byte	0x1
	.uleb128 0x13
	.ascii "attr\0"
	.byte	0x13
	.byte	0x19
	.long	0x391
	.byte	0xb
	.byte	0x1
	.uleb128 0x13
	.ascii "NTRes\0"
	.byte	0x13
	.byte	0x1a
	.long	0x391
	.byte	0xc
	.byte	0x1
	.uleb128 0x13
	.ascii "crtTimeTenth\0"
	.byte	0x13
	.byte	0x1b
	.long	0x391
	.byte	0xd
	.byte	0x1
	.uleb128 0x13
	.ascii "crtTime\0"
	.byte	0x13
	.byte	0x1c
	.long	0x3b1
	.byte	0xe
	.byte	0x1
	.uleb128 0x13
	.ascii "crtDate\0"
	.byte	0x13
	.byte	0x1d
	.long	0x3b1
	.byte	0x10
	.byte	0x1
	.uleb128 0x13
	.ascii "lstAccData\0"
	.byte	0x13
	.byte	0x1e
	.long	0x3b1
	.byte	0x12
	.byte	0x1
	.uleb128 0x13
	.ascii "fstClusHI\0"
	.byte	0x13
	.byte	0x1f
	.long	0x3b1
	.byte	0x14
	.byte	0x1
	.uleb128 0x13
	.ascii "wrtTime\0"
	.byte	0x13
	.byte	0x20
	.long	0x3b1
	.byte	0x16
	.byte	0x1
	.uleb128 0x13
	.ascii "wrtDate\0"
	.byte	0x13
	.byte	0x21
	.long	0x3b1
	.byte	0x18
	.byte	0x1
	.uleb128 0x2f
	.secrel32	.LASF15
	.byte	0x13
	.byte	0x22
	.long	0x3b1
	.byte	0x1a
	.byte	0x1
	.uleb128 0x13
	.ascii "fileSize\0"
	.byte	0x13
	.byte	0x23
	.long	0x3d7
	.byte	0x1c
	.byte	0x1
	.uleb128 0x30
	.ascii "chksum\0"
	.byte	0x13
	.byte	0x25
	.ascii "_ZN11FATDirEntry6chksumEPc\0"
	.long	0x391
	.byte	0x1
	.long	0x20b2
	.uleb128 0x1a
	.long	0x1b47
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF16
	.byte	0x13
	.byte	0x26
	.ascii "_ZNK11FATDirEntry19uni_isLongNameEntryEv\0"
	.long	0xb24
	.byte	0x1
	.long	0x20ef
	.long	0x20f5
	.uleb128 0x15
	.long	0x2390
	.byte	0
	.uleb128 0x14
	.ascii "isVolumeID\0"
	.byte	0x13
	.byte	0x27
	.ascii "_ZNK11FATDirEntry10isVolumeIDEv\0"
	.long	0xb24
	.byte	0x1
	.long	0x2130
	.long	0x2136
	.uleb128 0x15
	.long	0x2390
	.byte	0
	.uleb128 0x14
	.ascii "shortNameEquals\0"
	.byte	0x13
	.byte	0x2a
	.ascii "_ZNK11FATDirEntry15shortNameEqualsERK9StringRefS2_\0"
	.long	0xb24
	.byte	0x1
	.long	0x2189
	.long	0x2199
	.uleb128 0x15
	.long	0x2390
	.uleb128 0x1a
	.long	0x2396
	.uleb128 0x1a
	.long	0x2396
	.byte	0
	.uleb128 0x14
	.ascii "getFirstClusIndex\0"
	.byte	0x13
	.byte	0x2c
	.ascii "_ZNK11FATDirEntry17getFirstClusIndexEv\0"
	.long	0x3d7
	.byte	0x1
	.long	0x21e2
	.long	0x21e8
	.uleb128 0x15
	.long	0x2390
	.byte	0
	.uleb128 0x14
	.ascii "getLongName\0"
	.byte	0x13
	.byte	0x33
	.ascii "_ZNK11FATDirEntry11getLongNameEv\0"
	.long	0x1b8c
	.byte	0x1
	.long	0x2225
	.long	0x222b
	.uleb128 0x15
	.long	0x2390
	.byte	0
	.uleb128 0x14
	.ascii "getShortName\0"
	.byte	0x13
	.byte	0x34
	.ascii "_ZNK11FATDirEntry12getShortNameEv\0"
	.long	0x1b8c
	.byte	0x1
	.long	0x226a
	.long	0x2270
	.uleb128 0x15
	.long	0x2390
	.byte	0
	.uleb128 0x29
	.ascii "trailingSpaceNameEquals\0"
	.byte	0x13
	.byte	0x37
	.ascii "_ZN11FATDirEntry23trailingSpaceNameEqualsERK9StringRefmS2_\0"
	.long	0xb24
	.long	0x22de
	.uleb128 0x1a
	.long	0x2396
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x2396
	.byte	0
	.uleb128 0x29
	.ascii "findFirstNonSpace\0"
	.byte	0x13
	.byte	0x38
	.ascii "_ZN11FATDirEntry17findFirstNonSpaceEPKcm\0"
	.long	0x183
	.long	0x232f
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x31
	.ascii "findLastNonSpace\0"
	.byte	0x13
	.byte	0x39
	.ascii "_ZN11FATDirEntry16findLastNonSpaceEPKcm\0"
	.long	0x183
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x1f9f
	.uleb128 0xc
	.long	0x5b6
	.long	0x2390
	.uleb128 0xd
	.long	0x5aa
	.byte	0xa
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x237b
	.uleb128 0x1d
	.byte	0x8
	.long	0x1f8e
	.uleb128 0x32
	.ascii "FAT32ExtBPB\0"
	.word	0x200
	.byte	0x14
	.byte	0x11
	.long	0x2871
	.uleb128 0x2c
	.long	0x62b
	.byte	0
	.byte	0x1
	.uleb128 0x13
	.ascii "FATSz32\0"
	.byte	0x14
	.byte	0x18
	.long	0x3d7
	.byte	0x24
	.byte	0x1
	.uleb128 0x13
	.ascii "extFlags\0"
	.byte	0x14
	.byte	0x1e
	.long	0x3b1
	.byte	0x28
	.byte	0x1
	.uleb128 0x13
	.ascii "FSVer\0"
	.byte	0x14
	.byte	0x21
	.long	0x3b1
	.byte	0x2a
	.byte	0x1
	.uleb128 0x13
	.ascii "rootClus\0"
	.byte	0x14
	.byte	0x25
	.long	0x3d7
	.byte	0x2c
	.byte	0x1
	.uleb128 0x13
	.ascii "FSInfo\0"
	.byte	0x14
	.byte	0x29
	.long	0x3b1
	.byte	0x30
	.byte	0x1
	.uleb128 0x13
	.ascii "bkBootSe\0"
	.byte	0x14
	.byte	0x2c
	.long	0x3b1
	.byte	0x32
	.byte	0x1
	.uleb128 0x13
	.ascii "reserved\0"
	.byte	0x14
	.byte	0x30
	.long	0x2876
	.byte	0x34
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_DrvNum\0"
	.byte	0x14
	.byte	0x34
	.long	0x391
	.byte	0x40
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_Reserved1\0"
	.byte	0x14
	.byte	0x38
	.long	0x391
	.byte	0x41
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_BootSig\0"
	.byte	0x14
	.byte	0x3c
	.long	0x391
	.byte	0x42
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_VolID\0"
	.byte	0x14
	.byte	0x3d
	.long	0x3d7
	.byte	0x43
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_VolLab\0"
	.byte	0x14
	.byte	0x3e
	.long	0x2380
	.byte	0x47
	.byte	0x1
	.uleb128 0x13
	.ascii "BS_FilSysType\0"
	.byte	0x14
	.byte	0x42
	.long	0x812
	.byte	0x52
	.byte	0x1
	.uleb128 0x13
	.ascii "undefined\0"
	.byte	0x14
	.byte	0x45
	.long	0x2886
	.byte	0x5a
	.byte	0x1
	.uleb128 0x33
	.ascii "Signature_word\0"
	.byte	0x14
	.byte	0x48
	.long	0x3b1
	.word	0x1fe
	.byte	0x1
	.uleb128 0x14
	.ascii "uni_getFatSize\0"
	.byte	0x14
	.byte	0x4a
	.ascii "_ZNK11FAT32ExtBPB14uni_getFatSizeEv\0"
	.long	0x183
	.byte	0x1
	.long	0x2518
	.long	0x251e
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "uni_getTotalSecCount\0"
	.byte	0x14
	.byte	0x4c
	.ascii "_ZNK11FAT32ExtBPB20uni_getTotalSecCountEv\0"
	.long	0x183
	.byte	0x1
	.long	0x256d
	.long	0x2573
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "uni_getDataRegionSectorCount\0"
	.byte	0x14
	.byte	0x4e
	.ascii "_ZNK11FAT32ExtBPB28uni_getDataRegionSectorCountEv\0"
	.long	0x183
	.byte	0x1
	.long	0x25d2
	.long	0x25d8
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "uni_getClustersCount\0"
	.byte	0x14
	.byte	0x50
	.ascii "_ZNK11FAT32ExtBPB20uni_getClustersCountEv\0"
	.long	0x183
	.byte	0x1
	.long	0x2627
	.long	0x262d
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "getClusterEntryOffset\0"
	.byte	0x14
	.byte	0x53
	.ascii "_ZNK11FAT32ExtBPB21getClusterEntryOffsetEmm\0"
	.long	0x183
	.byte	0x1
	.long	0x267f
	.long	0x268f
	.uleb128 0x15
	.long	0x2897
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "getClusterFirstSector\0"
	.byte	0x14
	.byte	0x54
	.ascii "_ZNK11FAT32ExtBPB21getClusterFirstSectorEm\0"
	.long	0x183
	.byte	0x1
	.long	0x26e0
	.long	0x26eb
	.uleb128 0x15
	.long	0x2897
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x14
	.ascii "getRootDirFirstSector\0"
	.byte	0x14
	.byte	0x56
	.ascii "_ZNK11FAT32ExtBPB21getRootDirFirstSectorEv\0"
	.long	0x183
	.byte	0x1
	.long	0x273c
	.long	0x2742
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "uni_determineFATType\0"
	.byte	0x14
	.byte	0x58
	.ascii "_ZNK11FAT32ExtBPB20uni_determineFATTypeEv\0"
	.long	0x63b
	.byte	0x1
	.long	0x2791
	.long	0x2797
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF1
	.byte	0x14
	.byte	0x59
	.ascii "_ZNK11FAT32ExtBPB10getFATTypeEv\0"
	.long	0x63b
	.byte	0x1
	.long	0x27cb
	.long	0x27d1
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.uleb128 0x14
	.ascii "calculateFATSz32\0"
	.byte	0x14
	.byte	0x5a
	.ascii "_ZNK11FAT32ExtBPB16calculateFATSz32Em\0"
	.long	0x3d7
	.byte	0x1
	.long	0x2818
	.long	0x2823
	.uleb128 0x15
	.long	0x2897
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x1c
	.ascii "getClusterByteSize\0"
	.byte	0x14
	.byte	0x5c
	.ascii "_ZNK11FAT32ExtBPB18getClusterByteSizeEv\0"
	.long	0x183
	.byte	0x1
	.long	0x286a
	.uleb128 0x15
	.long	0x2897
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x239c
	.uleb128 0xc
	.long	0x391
	.long	0x2886
	.uleb128 0xd
	.long	0x5aa
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x391
	.long	0x2897
	.uleb128 0x34
	.long	0x5aa
	.word	0x1a3
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x2871
	.uleb128 0x10
	.ascii "FATLongNameEntry\0"
	.byte	0x20
	.byte	0x15
	.byte	0x10
	.long	0x2d98
	.uleb128 0x13
	.ascii "ord\0"
	.byte	0x15
	.byte	0x12
	.long	0x391
	.byte	0
	.byte	0x1
	.uleb128 0x13
	.ascii "name1\0"
	.byte	0x15
	.byte	0x13
	.long	0x2d9d
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.ascii "attr\0"
	.byte	0x15
	.byte	0x14
	.long	0x391
	.byte	0xb
	.byte	0x1
	.uleb128 0x13
	.ascii "type\0"
	.byte	0x15
	.byte	0x15
	.long	0x391
	.byte	0xc
	.byte	0x1
	.uleb128 0x13
	.ascii "chksum\0"
	.byte	0x15
	.byte	0x16
	.long	0x391
	.byte	0xd
	.byte	0x1
	.uleb128 0x13
	.ascii "name2\0"
	.byte	0x15
	.byte	0x17
	.long	0x2dad
	.byte	0xe
	.byte	0x1
	.uleb128 0x2f
	.secrel32	.LASF15
	.byte	0x15
	.byte	0x18
	.long	0x3b1
	.byte	0x1a
	.byte	0x1
	.uleb128 0x13
	.ascii "name3\0"
	.byte	0x15
	.byte	0x19
	.long	0x2dbd
	.byte	0x1c
	.byte	0x1
	.uleb128 0x35
	.ascii "getNameRequiredCapacity\0"
	.byte	0x15
	.byte	0x1b
	.ascii "_ZN16FATLongNameEntry23getNameRequiredCapacityEv\0"
	.long	0x183
	.byte	0x1
	.uleb128 0x14
	.ascii "getAsAsciiName\0"
	.byte	0x15
	.byte	0x1d
	.ascii "_ZNK16FATLongNameEntry14getAsAsciiNameEb\0"
	.long	0x1b8c
	.byte	0x1
	.long	0x29c2
	.long	0x29cd
	.uleb128 0x15
	.long	0x2dcd
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF16
	.byte	0x15
	.byte	0x1e
	.ascii "_ZNK16FATLongNameEntry19uni_isLongNameEntryEv\0"
	.long	0xb24
	.byte	0x1
	.long	0x2a0f
	.long	0x2a15
	.uleb128 0x15
	.long	0x2dcd
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF17
	.byte	0x15
	.byte	0x1f
	.ascii "_ZNK16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x2dcd
	.byte	0x1
	.long	0x2a56
	.long	0x2a5c
	.uleb128 0x15
	.long	0x2dcd
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF18
	.byte	0x15
	.byte	0x20
	.ascii "_ZNK16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x2390
	.byte	0x1
	.long	0x2aa1
	.long	0x2aa7
	.uleb128 0x15
	.long	0x2dcd
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF17
	.byte	0x15
	.byte	0x21
	.ascii "_ZN16FATLongNameEntry18getLastAppearEntryEv\0"
	.long	0x2dd3
	.byte	0x1
	.long	0x2ae7
	.long	0x2aed
	.uleb128 0x15
	.long	0x2dd3
	.byte	0
	.uleb128 0x1b
	.secrel32	.LASF18
	.byte	0x15
	.byte	0x22
	.ascii "_ZN16FATLongNameEntry22getOwnerDirectoryEntryEv\0"
	.long	0x2dd9
	.byte	0x1
	.long	0x2b31
	.long	0x2b37
	.uleb128 0x15
	.long	0x2dd3
	.byte	0
	.uleb128 0x14
	.ascii "nameEqulasAsciiName\0"
	.byte	0x15
	.byte	0x24
	.ascii "_ZNK16FATLongNameEntry19nameEqulasAsciiNameERK9StringRefb\0"
	.long	0xb24
	.byte	0x1
	.long	0x2b95
	.long	0x2ba5
	.uleb128 0x15
	.long	0x2dcd
	.uleb128 0x1a
	.long	0x2396
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x14
	.ascii "nameEqulasAsciiNameUpto\0"
	.byte	0x15
	.byte	0x25
	.ascii "_ZNK16FATLongNameEntry23nameEqulasAsciiNameUptoEPKS_RK9StringRefb\0"
	.long	0xb24
	.byte	0x1
	.long	0x2c0f
	.long	0x2c24
	.uleb128 0x15
	.long	0x2dcd
	.uleb128 0x1a
	.long	0x2dcd
	.uleb128 0x1a
	.long	0x2396
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x35
	.ascii "getNameBytesCount\0"
	.byte	0x15
	.byte	0x26
	.ascii "_ZN16FATLongNameEntry17getNameBytesCountEv\0"
	.long	0x183
	.byte	0x1
	.uleb128 0x28
	.ascii "lookupFirstNullChar\0"
	.byte	0x15
	.byte	0x2a
	.ascii "_ZNK16FATLongNameEntry19lookupFirstNullCharEv\0"
	.long	0x183
	.long	0x2cba
	.long	0x2cc0
	.uleb128 0x15
	.long	0x2dcd
	.byte	0
	.uleb128 0x29
	.ascii "unicodeNameMatchesAsciiName\0"
	.byte	0x15
	.byte	0x2f
	.ascii "_ZN16FATLongNameEntry27unicodeNameMatchesAsciiNameEPKcmRK9StringRefb\0"
	.long	0xb24
	.long	0x2d41
	.uleb128 0x1a
	.long	0xb13
	.uleb128 0x1a
	.long	0x183
	.uleb128 0x1a
	.long	0x2396
	.uleb128 0x1a
	.long	0xb24
	.byte	0
	.uleb128 0x31
	.ascii "unicodeCharToAsciiChar\0"
	.byte	0x15
	.byte	0x30
	.ascii "_ZN16FATLongNameEntry22unicodeCharToAsciiCharEPKv\0"
	.long	0x5b6
	.uleb128 0x1a
	.long	0x82a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x289d
	.uleb128 0xc
	.long	0x5b6
	.long	0x2dad
	.uleb128 0xd
	.long	0x5aa
	.byte	0x9
	.byte	0
	.uleb128 0xc
	.long	0x5b6
	.long	0x2dbd
	.uleb128 0xd
	.long	0x5aa
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.long	0x5b6
	.long	0x2dcd
	.uleb128 0xd
	.long	0x5aa
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x2d98
	.uleb128 0x17
	.byte	0x8
	.long	0x289d
	.uleb128 0x17
	.byte	0x8
	.long	0x1f9f
	.uleb128 0x10
	.ascii "Fat32Dubugger\0"
	.byte	0x1
	.byte	0x16
	.byte	0x16
	.long	0x2f9f
	.uleb128 0x36
	.ascii "dumpBPBTypeInformation\0"
	.byte	0x16
	.byte	0x18
	.ascii "_ZN13Fat32Dubugger22dumpBPBTypeInformationEv\0"
	.byte	0x1
	.uleb128 0x37
	.ascii "dumpBPB\0"
	.byte	0x16
	.byte	0x19
	.ascii "_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB\0"
	.byte	0x1
	.long	0x2e78
	.uleb128 0x1a
	.long	0x2f9f
	.byte	0
	.uleb128 0x37
	.ascii "dumpExtBPB32\0"
	.byte	0x16
	.byte	0x1a
	.ascii "_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB\0"
	.byte	0x1
	.long	0x2ec3
	.uleb128 0x1a
	.long	0x2fa5
	.byte	0
	.uleb128 0x37
	.ascii "dumpDirectoryEntry\0"
	.byte	0x16
	.byte	0x1b
	.ascii "_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry\0"
	.byte	0x1
	.long	0x2f19
	.uleb128 0x1a
	.long	0x1f9f
	.byte	0
	.uleb128 0x38
	.secrel32	.LASF19
	.byte	0x16
	.byte	0x1c
	.ascii "_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry\0"
	.byte	0x1
	.long	0x2f5a
	.uleb128 0x1a
	.long	0x1f9f
	.byte	0
	.uleb128 0x39
	.secrel32	.LASF19
	.byte	0x16
	.byte	0x1d
	.ascii "_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym\0"
	.byte	0x1
	.uleb128 0x1a
	.long	0x2dd9
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.long	0x62b
	.uleb128 0x17
	.byte	0x8
	.long	0x239c
	.uleb128 0x3
	.ascii "Hex\0"
	.byte	0x17
	.byte	0x1a
	.long	0x2fb6
	.uleb128 0x10
	.ascii "IntegerFormatter<16>\0"
	.byte	0x8
	.byte	0x17
	.byte	0x10
	.long	0x30a9
	.uleb128 0x25
	.ascii "num\0"
	.byte	0x17
	.byte	0x16
	.long	0x183
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF20
	.byte	0x3
	.byte	0x10
	.ascii "_ZN16IntegerFormatterILi16EEC4Em\0"
	.byte	0x1
	.long	0x3010
	.long	0x301b
	.uleb128 0x15
	.long	0x30ae
	.uleb128 0x1a
	.long	0x183
	.byte	0
	.uleb128 0x22
	.secrel32	.LASF20
	.byte	0x3
	.byte	0x14
	.ascii "_ZN16IntegerFormatterILi16EEC4EPKv\0"
	.byte	0x1
	.long	0x304e
	.long	0x3059
	.uleb128 0x15
	.long	0x30ae
	.uleb128 0x1a
	.long	0x82a
	.byte	0
	.uleb128 0x14
	.ascii "format\0"
	.byte	0x3
	.byte	0x18
	.ascii "_ZNK16IntegerFormatterILi16EE6formatEv\0"
	.long	0x1b47
	.byte	0x1
	.long	0x3097
	.long	0x309d
	.uleb128 0x15
	.long	0x30b9
	.byte	0
	.uleb128 0x3a
	.ascii "Base\0"
	.long	0x376
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	0x2fb6
	.uleb128 0x17
	.byte	0x8
	.long	0x2fb6
	.uleb128 0x4
	.long	0x30ae
	.uleb128 0x17
	.byte	0x8
	.long	0x30a9
	.uleb128 0x4
	.long	0x30b9
	.uleb128 0x3b
	.long	0x16fe
	.long	0x30e7
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e7
	.long	0x3100
	.uleb128 0x3c
	.secrel32	.LASF21
	.long	0x1b81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.ascii "i\0"
	.byte	0x4
	.byte	0x3f
	.long	0x183
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3b
	.long	0x1835
	.long	0x3123
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x3123
	.long	0x3130
	.uleb128 0x3c
	.secrel32	.LASF21
	.long	0x1b81
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	0x3059
	.long	0x3153
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x3153
	.long	0x3160
	.uleb128 0x3c
	.secrel32	.LASF21
	.long	0x30bf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.ascii "operator<< <char>\0"
	.byte	0x4
	.byte	0xd7
	.ascii "_ZlsIcER6OutputS1_RK6VectorIT_E\0"
	.long	0xb19
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x31f1
	.uleb128 0x2a
	.ascii "T\0"
	.long	0x5b6
	.uleb128 0x3d
	.ascii "out\0"
	.byte	0x4
	.byte	0xd7
	.long	0xb1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.ascii "vec\0"
	.byte	0x4
	.byte	0xd7
	.long	0x1b6a
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x40
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x4
	.byte	0xd9
	.long	0x183
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x16cd
	.byte	0
	.long	0x31ff
	.long	0x3212
	.uleb128 0x42
	.secrel32	.LASF21
	.long	0x1b53
	.uleb128 0x42
	.secrel32	.LASF22
	.long	0x37d
	.byte	0
	.uleb128 0x43
	.long	0x31f1
	.ascii "_ZN6VectorIcED2Ev\0"
	.long	0x3247
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x3247
	.long	0x3250
	.uleb128 0x44
	.long	0x31ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.ascii "operator<< <16>\0"
	.byte	0x3
	.byte	0x1f
	.ascii "_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE\0"
	.long	0xb19
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x32d5
	.uleb128 0x3a
	.ascii "Base\0"
	.long	0x376
	.byte	0x10
	.uleb128 0x3d
	.ascii "out\0"
	.byte	0x3
	.byte	0x1f
	.long	0xb1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.ascii "hf\0"
	.byte	0x3
	.byte	0x1f
	.long	0x32db
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.long	0x30a9
	.uleb128 0x4
	.long	0x32d5
	.uleb128 0x41
	.long	0x2fdf
	.byte	0
	.long	0x32ee
	.long	0x3303
	.uleb128 0x42
	.secrel32	.LASF21
	.long	0x30b4
	.uleb128 0x45
	.ascii "num\0"
	.byte	0x3
	.byte	0x10
	.long	0x183
	.byte	0
	.uleb128 0x46
	.long	0x32e0
	.ascii "_ZN16IntegerFormatterILi16EEC1Em\0"
	.long	0x3347
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3347
	.long	0x3358
	.uleb128 0x44
	.long	0x32ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x44
	.long	0x32f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x47
	.long	0x2f5a
	.byte	0x1
	.byte	0x79
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x33b2
	.uleb128 0x48
	.secrel32	.LASF23
	.byte	0x1
	.byte	0x79
	.long	0x2dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.ascii "count\0"
	.byte	0x1
	.byte	0x79
	.long	0x183
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x40
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x1
	.byte	0x7b
	.long	0x183
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x2f19
	.byte	0x1
	.byte	0x6e
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x3402
	.uleb128 0x48
	.secrel32	.LASF23
	.byte	0x1
	.byte	0x6e
	.long	0x1f9f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x40
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0xf
	.ascii "lentry\0"
	.byte	0x1
	.byte	0x72
	.long	0x289d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	0x1c96
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.long	0x3412
	.long	0x3425
	.uleb128 0x42
	.secrel32	.LASF21
	.long	0x1cca
	.uleb128 0x42
	.secrel32	.LASF22
	.long	0x37d
	.byte	0
	.uleb128 0x43
	.long	0x3402
	.ascii "_ZN6StringD1Ev\0"
	.long	0x3457
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x3457
	.long	0x3460
	.uleb128 0x44
	.long	0x3412
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.long	0x2ec3
	.byte	0x1
	.byte	0x51
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x34b0
	.uleb128 0x48
	.secrel32	.LASF23
	.byte	0x1
	.byte	0x51
	.long	0x1f9f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x40
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0xf
	.ascii "lentry\0"
	.byte	0x1
	.byte	0x55
	.long	0x289d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.byte	0
	.byte	0
	.uleb128 0x47
	.long	0x2e78
	.byte	0x1
	.byte	0x3c
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x34dc
	.uleb128 0x3d
	.ascii "bpb\0"
	.byte	0x1
	.byte	0x3c
	.long	0x2fa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x47
	.long	0x2e3d
	.byte	0x1
	.byte	0x2c
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3508
	.uleb128 0x3d
	.ascii "bpb\0"
	.byte	0x1
	.byte	0x2c
	.long	0x2f9f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x4a
	.long	0x2df5
	.byte	0x1
	.byte	0x9
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x32
	.uleb128 0xb
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2f
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2
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
	.uleb128 0x33
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x18
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x2116
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
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"dr"
	.long	0xac
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB62
	.quad	.LFE62
	.quad	.LFB66
	.quad	.LFE66
	.quad	.LFB67
	.quad	.LFE67
	.quad	.LFB69
	.quad	.LFE69
	.quad	.LFB71
	.quad	.LFE71
	.quad	.LFB72
	.quad	.LFE72
	.quad	.LFB73
	.quad	.LFE73
	.quad	.LFB74
	.quad	.LFE74
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
	.file 25 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x3
	.ascii "CXX_MACROS_H__ \0"
	.byte	0x1
	.uleb128 0x5
	.ascii "ARCH_IS_host \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x16
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_FS_FAT32_INFO_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_BPB_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x9
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
	.file 26 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/c++config.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1a
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
	.file 27 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/os_defines.h"
	.byte	0x3
	.uleb128 0x1fb
	.uleb128 0x1b
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
	.file 28 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/x86_64-pc-cygwin/bits/cpu_defines.h"
	.byte	0x3
	.uleb128 0x1fe
	.uleb128 0x1c
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
	.file 29 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x1d
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
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATDIRENTRY_H_ \0"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRING_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xf
	.byte	0x1
	.uleb128 0xa
	.ascii "INCLUDE_VECTOR_H_ \0"
	.file 30 "/usr/lib/gcc/x86_64-pc-cygwin/6.4.0/include/c++/initializer_list"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x1f
	.ascii "_INITIALIZER_LIST \0"
	.byte	0x4
	.file 31 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/SectorReader.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1f
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
	.file 32 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/io/printk.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_IO_PRINTK_H_ \0"
	.file 33 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x20
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
	.file 34 "D:\\Pool\\eclipse-workspace_aarch64\\newspace\\raspiOS\\include/templates_implementation/MemoryManager.h"
	.byte	0x3
	.uleb128 0x5d
	.uleb128 0x22
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
	.file 35 "/cygdrive/d/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/io/printk.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_STRINGREF_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_DATA_STRUCTURES_VECTORREF_H_ \0"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FAT32EXTBPB_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_FILESYSTEM_FAT_FATLONGNAMEENTRY_H_ \0"
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_INTEGERINTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x9
	.ascii "INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ \0"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF15:
	.ascii "fstClusLO\0"
.LASF23:
	.ascii "dentry\0"
.LASF16:
	.ascii "uni_isLongNameEntry\0"
.LASF12:
	.ascii "String\0"
.LASF10:
	.ascii "operator[]\0"
.LASF13:
	.ascii "VectorRef\0"
.LASF21:
	.ascii "this\0"
.LASF20:
	.ascii "IntegerFormatter\0"
.LASF17:
	.ascii "getLastAppearEntry\0"
.LASF11:
	.ascii "getData\0"
.LASF14:
	.ascii "StringRef\0"
.LASF6:
	.ascii "MemoryManager\0"
.LASF0:
	.ascii "operator<<\0"
.LASF18:
	.ascii "getOwnerDirectoryEntry\0"
.LASF8:
	.ascii "Vector\0"
.LASF3:
	.ascii "getSize\0"
.LASF5:
	.ascii "getDataEnd\0"
.LASF19:
	.ascii "dumpDirNames\0"
.LASF7:
	.ascii "allocate\0"
.LASF4:
	.ascii "getDataPtr\0"
.LASF22:
	.ascii "__in_chrg\0"
.LASF1:
	.ascii "getFATType\0"
.LASF9:
	.ascii "operator=\0"
.LASF2:
	.ascii "MemoryChunk\0"
	.ident	"GCC: (GNU) 6.4.0"
	.def	_ZN6OutputlsEPKc;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEm;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEt;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEh;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEj;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEPKv;	.scl	2;	.type	32;	.endef
	.def	_ZNK11FATDirEntry19uni_isLongNameEntryEv;	.scl	2;	.type	32;	.endef
	.def	_ZN9StringRefC1EPKvm;	.scl	2;	.type	32;	.endef
	.def	_ZlsR6Output9StringRef;	.scl	2;	.type	32;	.endef
	.def	_ZNK16FATLongNameEntry14getAsAsciiNameEb;	.scl	2;	.type	32;	.endef
	.def	_ZN13MemoryManager10deallocateEPv;	.scl	2;	.type	32;	.endef
	.def	_ZN6OutputlsEc;	.scl	2;	.type	32;	.endef
	.def	_Z4itosmjPcm;	.scl	2;	.type	32;	.endef
	.section	.rdata$.refptr.koutBuf, "dr"
	.globl	.refptr.koutBuf
	.linkonce	discard
.refptr.koutBuf:
	.quad	koutBuf
	.section	.rdata$.refptr.mman, "dr"
	.globl	.refptr.mman
	.linkonce	discard
.refptr.mman:
	.quad	mman
	.section	.rdata$.refptr.kout, "dr"
	.globl	.refptr.kout
	.linkonce	discard
.refptr.kout:
	.quad	kout
