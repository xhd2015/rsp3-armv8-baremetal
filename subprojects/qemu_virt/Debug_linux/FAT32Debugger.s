	.arch armv8.2-a+crc
	.file	"FAT32Debugger.cpp"
	.section	.rodata
	.align	2
	.type	_ZL6UNIT_K, %object
	.size	_ZL6UNIT_K, 4
_ZL6UNIT_K:
	.word	1024
	.align	2
	.type	_ZL3KiB, %object
	.size	_ZL3KiB, 4
_ZL3KiB:
	.word	1024
	.align	2
	.type	_ZL3MiB, %object
	.size	_ZL3MiB, 4
_ZL3MiB:
	.word	1048576
	.align	2
	.type	_ZL3GiB, %object
	.size	_ZL3GiB, 4
_ZL3GiB:
	.word	1073741824
	.align	3
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.align	3
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.section	.text._ZNK11FATDirEntry19uni_isLongNameEntryEv,"axG",@progbits,_ZNK11FATDirEntry19uni_isLongNameEntryEv,comdat
	.align	2
	.weak	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.type	_ZNK11FATDirEntry19uni_isLongNameEntryEv, %function
_ZNK11FATDirEntry19uni_isLongNameEntryEv:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	ldrb	w0, [x0, 11]
	and	w0, w0, 63
	cmp	w0, 15
	cset	w0, eq
	and	w0, w0, 255
	add	sp, sp, 16
	ret
	.size	_ZNK11FATDirEntry19uni_isLongNameEntryEv, .-_ZNK11FATDirEntry19uni_isLongNameEntryEv
	.section	.rodata
	.align	3
.LC0:
	.string	"sizeof(BPB) = "
	.align	3
.LC1:
	.string	"\n"
	.align	3
.LC2:
	.string	"sizeof(ExtBPB32) = "
	.align	3
.LC3:
	.string	"offsetof(ExtBPB32,BS_jmpBoot) = "
	.align	3
.LC4:
	.string	"offsetof(ExtBPB32,BS_OEMName) = "
	.align	3
.LC5:
	.string	"offsetof(ExtBPB32,bytesPerSec) = "
	.align	3
.LC6:
	.string	"offsetof(ExtBPB32,secPerClus) = "
	.align	3
.LC7:
	.string	"offsetof(ExtBPB32,rsvdSecCnt) = "
	.align	3
.LC8:
	.string	"offsetof(ExtBPB32,numFATs) = "
	.align	3
.LC9:
	.string	"offsetof(ExtBPB32,rootEntCnt) = "
	.align	3
.LC10:
	.string	"offsetof(ExtBPB32,totSec16) = "
	.align	3
.LC11:
	.string	"offsetof(ExtBPB32,media) = "
	.align	3
.LC12:
	.string	"offsetof(ExtBPB32,FATSz16) = "
	.align	3
.LC13:
	.string	"offsetof(ExtBPB32,secPerTrk) = "
	.align	3
.LC14:
	.string	"offsetof(ExtBPB32,numHeads) = "
	.align	3
.LC15:
	.string	"offsetof(ExtBPB32,hiddSec) = "
	.align	3
.LC16:
	.string	"offsetof(ExtBPB32,totSec32) = "
	.align	3
.LC17:
	.string	"offsetof(ExtBPB32,FATSz32) = "
	.align	3
.LC18:
	.string	"offsetof(ExtBPB32,extFlags) = "
	.align	3
.LC19:
	.string	"offsetof(ExtBPB32,FSVer) = "
	.align	3
.LC20:
	.string	"offsetof(ExtBPB32,rootClus) = "
	.align	3
.LC21:
	.string	"offsetof(ExtBPB32,FSInfo) = "
	.align	3
.LC22:
	.string	"offsetof(ExtBPB32,bkBootSe) = "
	.align	3
.LC23:
	.string	"offsetof(ExtBPB32,reserved) = "
	.align	3
.LC24:
	.string	"offsetof(ExtBPB32,BS_DrvNum) = "
	.align	3
.LC25:
	.string	"offsetof(ExtBPB32,BS_Reserved1) = "
	.align	3
.LC26:
	.string	"offsetof(ExtBPB32,BS_BootSig) = "
	.align	3
.LC27:
	.string	"offsetof(ExtBPB32,BS_VolID) = "
	.align	3
.LC28:
	.string	"offsetof(ExtBPB32,BS_VolLab) = "
	.align	3
.LC29:
	.string	"offsetof(ExtBPB32,BS_FilSysType) = "
	.align	3
.LC30:
	.string	"offsetof(ExtBPB32,undefined) = "
	.align	3
.LC31:
	.string	"offsetof(ExtBPB32,Signature_word) = "
	.text
	.align	2
	.global	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv
	.type	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv, %function
_ZN13Fat32Dubugger22dumpBPBTypeInformationEv:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 36
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 512
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 0
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 3
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 11
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 13
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 14
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 16
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 17
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 19
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 21
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 22
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC13
	add	x1, x0, :lo12:.LC13
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 24
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC14
	add	x1, x0, :lo12:.LC14
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 26
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC15
	add	x1, x0, :lo12:.LC15
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 28
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC16
	add	x1, x0, :lo12:.LC16
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 32
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC17
	add	x1, x0, :lo12:.LC17
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 36
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC18
	add	x1, x0, :lo12:.LC18
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 40
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC19
	add	x1, x0, :lo12:.LC19
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 42
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC20
	add	x1, x0, :lo12:.LC20
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 44
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC21
	add	x1, x0, :lo12:.LC21
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 48
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC22
	add	x1, x0, :lo12:.LC22
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 50
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC23
	add	x1, x0, :lo12:.LC23
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 52
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC24
	add	x1, x0, :lo12:.LC24
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 64
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC25
	add	x1, x0, :lo12:.LC25
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 65
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC26
	add	x1, x0, :lo12:.LC26
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 66
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC27
	add	x1, x0, :lo12:.LC27
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 67
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC28
	add	x1, x0, :lo12:.LC28
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 71
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC29
	add	x1, x0, :lo12:.LC29
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 82
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC30
	add	x1, x0, :lo12:.LC30
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 90
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC31
	add	x1, x0, :lo12:.LC31
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x1, 510
	bl	_ZN6OutputlsEm
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 16
	ret
	.size	_ZN13Fat32Dubugger22dumpBPBTypeInformationEv, .-_ZN13Fat32Dubugger22dumpBPBTypeInformationEv
	.section	.rodata
	.align	3
.LC32:
	.string	"bpb->bytesPerSec = "
	.align	3
.LC33:
	.string	"bpb->secPerClus = "
	.align	3
.LC34:
	.string	"bpb->rsvdSecCnt = "
	.align	3
.LC35:
	.string	"bpb->numFATs = "
	.align	3
.LC36:
	.string	"bpb->rootEntCnt = "
	.align	3
.LC37:
	.string	"bpb->totSec16 = "
	.align	3
.LC38:
	.string	"bpb->media = "
	.align	3
.LC39:
	.string	"bpb->FATSz16 = "
	.align	3
.LC40:
	.string	"bpb->secPerTrk = "
	.align	3
.LC41:
	.string	"bpb->numHeads = "
	.align	3
.LC42:
	.string	"bpb->hiddSec = "
	.align	3
.LC43:
	.string	"bpb->totSec32 = "
	.text
	.align	2
	.global	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
	.type	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB, %function
_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC32
	add	x1, x0, :lo12:.LC32
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 11]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC33
	add	x1, x0, :lo12:.LC33
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 13]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC34
	add	x1, x0, :lo12:.LC34
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 14]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC35
	add	x1, x0, :lo12:.LC35
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 16]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC36
	add	x1, x0, :lo12:.LC36
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 17]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC37
	add	x1, x0, :lo12:.LC37
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 19]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC38
	add	x1, x0, :lo12:.LC38
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 21]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC39
	add	x1, x0, :lo12:.LC39
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 22]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC40
	add	x1, x0, :lo12:.LC40
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 24]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC41
	add	x1, x0, :lo12:.LC41
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 26]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC42
	add	x1, x0, :lo12:.LC42
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 28]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC43
	add	x1, x0, :lo12:.LC43
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 32]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB, .-_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
	.section	.rodata
	.align	3
.LC44:
	.string	"bpb->FATSz32 = "
	.align	3
.LC45:
	.string	"bpb->extFlags = "
	.align	3
.LC46:
	.string	"bpb->FSVer = "
	.align	3
.LC47:
	.string	"bpb->rootClus = "
	.align	3
.LC48:
	.string	"bpb->FSInfo = "
	.align	3
.LC49:
	.string	"bpb->bkBootSe = "
	.align	3
.LC50:
	.string	"bpb->reserved = "
	.align	3
.LC51:
	.string	"bpb->BS_DrvNum = "
	.align	3
.LC52:
	.string	"bpb->BS_Reserved1 = "
	.align	3
.LC53:
	.string	"bpb->BS_BootSig = "
	.align	3
.LC54:
	.string	"bpb->BS_VolID = "
	.align	3
.LC55:
	.string	"bpb->BS_VolLab = "
	.align	3
.LC56:
	.string	"bpb->BS_FilSysType = "
	.align	3
.LC57:
	.string	"bpb->undefined = "
	.align	3
.LC58:
	.string	"bpb->Signature_word = "
	.text
	.align	2
	.global	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB
	.type	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB, %function
_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN13Fat32Dubugger7dumpBPBEP7FAT_BPB
	adrp	x0, .LC44
	add	x1, x0, :lo12:.LC44
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 36]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC45
	add	x1, x0, :lo12:.LC45
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 40]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC46
	add	x1, x0, :lo12:.LC46
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 42]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC47
	add	x1, x0, :lo12:.LC47
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 44]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC48
	add	x1, x0, :lo12:.LC48
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 48]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC49
	add	x1, x0, :lo12:.LC49
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 50]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC50
	add	x1, x0, :lo12:.LC50
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	add	x0, x0, 52
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKv
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC51
	add	x1, x0, :lo12:.LC51
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 64]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC52
	add	x1, x0, :lo12:.LC52
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 65]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC53
	add	x1, x0, :lo12:.LC53
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 66]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC54
	add	x1, x0, :lo12:.LC54
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldr	w0, [x0, 67]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC55
	add	x1, x0, :lo12:.LC55
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	add	x0, x0, 71
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC56
	add	x1, x0, :lo12:.LC56
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	add	x0, x0, 82
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC57
	add	x1, x0, :lo12:.LC57
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	add	x0, x0, 90
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKv
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC58
	add	x1, x0, :lo12:.LC58
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrh	w0, [x0, 510]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB, .-_ZN13Fat32Dubugger12dumpExtBPB32EP11FAT32ExtBPB
	.section	.rodata
	.align	3
.LC59:
	.string	"lentry.ord = "
	.align	3
.LC60:
	.string	"lentry.name1 = "
	.align	3
.LC61:
	.string	"lentry.attr = "
	.align	3
.LC62:
	.string	"lentry.type = "
	.align	3
.LC63:
	.string	"lentry.chksum = "
	.align	3
.LC64:
	.string	"lentry.name2 = "
	.align	3
.LC65:
	.string	"lentry.fstClusLO = "
	.align	3
.LC66:
	.string	"lentry.name3 = "
	.align	3
.LC67:
	.string	"dentry.name = "
	.align	3
.LC68:
	.string	"dentry.attr = "
	.align	3
.LC69:
	.string	"dentry.NTRes = "
	.align	3
.LC70:
	.string	"dentry.crtTimeTenth = "
	.align	3
.LC71:
	.string	"dentry.crtTime = "
	.align	3
.LC72:
	.string	"dentry.crtDate = "
	.align	3
.LC73:
	.string	"dentry.lstAccData = "
	.align	3
.LC74:
	.string	"dentry.fstClusHI = "
	.align	3
.LC75:
	.string	"dentry.wrtTime = "
	.align	3
.LC76:
	.string	"dentry.wrtDate = "
	.align	3
.LC77:
	.string	"dentry.fstClusLO = "
	.align	3
.LC78:
	.string	"dentry.fileSize = "
	.text
	.align	2
	.global	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry
	.type	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry, %function
_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry:
	stp	x29, x30, [sp, -208]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	mov	x0, x19
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	mov	x0, x19
	add	x2, x29, 32
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	adrp	x0, .LC59
	add	x1, x0, :lo12:.LC59
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	ldrb	w0, [x29, 32]
	and	x1, x0, 255
	add	x0, x29, 64
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 64
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC60
	add	x1, x0, :lo12:.LC60
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	add	x0, x29, 32
	add	x1, x0, 1
	add	x0, x29, 72
	mov	x2, 10
	bl	_ZN9StringRefC1EPKvm
	ldp	x1, x2, [x29, 72]
	mov	x0, x19
	bl	_ZlsR6Output9StringRef
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC61
	add	x1, x0, :lo12:.LC61
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	ldrb	w0, [x29, 43]
	and	x1, x0, 255
	add	x0, x29, 88
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 88
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC62
	add	x1, x0, :lo12:.LC62
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	ldrb	w0, [x29, 44]
	and	x1, x0, 255
	add	x0, x29, 96
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 96
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC63
	add	x1, x0, :lo12:.LC63
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	ldrb	w0, [x29, 45]
	and	x1, x0, 255
	add	x0, x29, 104
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 104
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC64
	add	x1, x0, :lo12:.LC64
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	add	x0, x29, 32
	add	x1, x0, 14
	add	x0, x29, 112
	mov	x2, 12
	bl	_ZN9StringRefC1EPKvm
	ldp	x1, x2, [x29, 112]
	mov	x0, x19
	bl	_ZlsR6Output9StringRef
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC65
	add	x1, x0, :lo12:.LC65
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	ldrh	w0, [x29, 58]
	and	x1, x0, 65535
	add	x0, x29, 128
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 128
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC66
	add	x1, x0, :lo12:.LC66
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	add	x0, x29, 32
	add	x1, x0, 28
	add	x0, x29, 136
	mov	x2, 4
	bl	_ZN9StringRefC1EPKvm
	ldp	x1, x2, [x29, 136]
	mov	x0, x19
	bl	_ZlsR6Output9StringRef
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	b	.L9
.L7:
	adrp	x0, .LC67
	add	x1, x0, :lo12:.LC67
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	add	x0, x29, 152
	mov	x2, 11
	mov	x1, x19
	bl	_ZN9StringRefC1EPKvm
	ldp	x1, x2, [x29, 152]
	mov	x0, x20
	bl	_ZlsR6Output9StringRef
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC68
	add	x1, x0, :lo12:.LC68
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	ldrb	w0, [x19, 11]
	and	x1, x0, 255
	add	x0, x29, 168
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 168
	mov	x1, x0
	mov	x0, x20
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC69
	add	x1, x0, :lo12:.LC69
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	ldrb	w0, [x19, 12]
	and	x1, x0, 255
	add	x0, x29, 176
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 176
	mov	x1, x0
	mov	x0, x20
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC70
	add	x1, x0, :lo12:.LC70
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrb	w0, [x19, 13]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEh
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC71
	add	x1, x0, :lo12:.LC71
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrh	w0, [x19, 14]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC72
	add	x1, x0, :lo12:.LC72
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrh	w0, [x19, 16]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC73
	add	x1, x0, :lo12:.LC73
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrh	w0, [x19, 18]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC74
	add	x1, x0, :lo12:.LC74
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	ldrh	w0, [x19, 20]
	and	x1, x0, 65535
	add	x0, x29, 184
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 184
	mov	x1, x0
	mov	x0, x20
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC75
	add	x1, x0, :lo12:.LC75
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrh	w0, [x19, 22]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC76
	add	x1, x0, :lo12:.LC76
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldrh	w0, [x19, 24]
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEt
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC77
	add	x1, x0, :lo12:.LC77
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	ldrh	w0, [x19, 26]
	and	x1, x0, 65535
	add	x0, x29, 192
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 192
	mov	x1, x0
	mov	x0, x20
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC78
	add	x1, x0, :lo12:.LC78
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	ldr	w0, [x19, 28]
	uxtw	x1, w0
	add	x0, x29, 200
	bl	_ZN16IntegerFormatterILi16EEC1Em
	add	x0, x29, 200
	mov	x1, x0
	mov	x0, x20
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L9:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 208
	ret
	.size	_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry, .-_ZN13Fat32Dubugger18dumpDirectoryEntryE11FATDirEntry
	.section	.text._ZN6StringD2Ev,"axG",@progbits,_ZN6StringD5Ev,comdat
	.align	2
	.weak	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, %function
_ZN6StringD2Ev:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	bl	_ZN6VectorIcED2Ev
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
	.weak	_ZN6StringD1Ev
	.set	_ZN6StringD1Ev,_ZN6StringD2Ev
	.section	.rodata
	.align	3
.LC79:
	.string	"lentry.name = "
	.text
	.align	2
	.global	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
	.type	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry, %function
_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry:
	stp	x29, x30, [sp, -112]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	mov	x19, x0
	mov	x0, x19
	bl	_ZNK11FATDirEntry19uni_isLongNameEntryEv
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L12
	mov	x0, x19
	add	x2, x29, 40
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	adrp	x0, .LC79
	add	x1, x0, :lo12:.LC79
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x19, x0
	add	x0, x29, 40
	add	x1, x29, 72
	mov	x8, x1
	mov	w1, 1
	bl	_ZNK16FATLongNameEntry14getAsAsciiNameEb
	add	x0, x29, 72
	mov	x1, x0
	mov	x0, x19
	bl	_ZlsIcER6OutputS1_RK6VectorIT_E
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	add	x0, x29, 72
	bl	_ZN6StringD1Ev
	b	.L14
.L12:
	adrp	x0, .LC67
	add	x1, x0, :lo12:.LC67
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x20, x0
	add	x0, x29, 96
	mov	x2, 11
	mov	x1, x19
	bl	_ZN9StringRefC1EPKvm
	ldp	x1, x2, [x29, 96]
	mov	x0, x20
	bl	_ZlsR6Output9StringRef
	mov	x2, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
.L14:
	nop
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 112
	ret
	.size	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry, .-_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
	.align	2
	.global	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym
	.type	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym, %function
_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	str	x0, [x29, 56]
	str	x1, [x29, 48]
	str	xzr, [x29, 72]
.L17:
	ldr	x1, [x29, 72]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	beq	.L18
	ldr	x0, [x29, 72]
	lsl	x0, x0, 5
	ldr	x1, [x29, 56]
	add	x0, x1, x0
	add	x2, x29, 16
	mov	x3, x0
	ldp	x0, x1, [x3]
	stp	x0, x1, [x2]
	ldp	x0, x1, [x3, 16]
	stp	x0, x1, [x2, 16]
	add	x0, x29, 16
	bl	_ZN13Fat32Dubugger12dumpDirNamesE11FATDirEntry
	ldr	x0, [x29, 72]
	add	x0, x0, 1
	str	x0, [x29, 72]
	b	.L17
.L18:
	nop
	ldp	x29, x30, [sp], 80
	ret
	.size	_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym, .-_ZN13Fat32Dubugger12dumpDirNamesEP11FATDirEntrym
	.section	.text._ZN6VectorIcED2Ev,"axG",@progbits,_ZN6VectorIcED5Ev,comdat
	.align	2
	.weak	_ZN6VectorIcED2Ev
	.type	_ZN6VectorIcED2Ev, %function
_ZN6VectorIcED2Ev:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	cmp	x0, 0
	beq	.L24
	str	xzr, [x29, 40]
.L22:
	ldr	x0, [x29, 24]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 40]
	cmp	x1, x0
	beq	.L21
	ldr	x0, [x29, 40]
	add	x0, x0, 1
	str	x0, [x29, 40]
	b	.L22
.L21:
	ldr	x0, [x29, 24]
	str	x0, [x29, 32]
	adrp	x0, mman
	add	x2, x0, :lo12:mman
	ldr	x0, [x29, 24]
	ldr	x0, [x0]
	mov	x1, x0
	mov	x0, x2
	bl	_ZN13MemoryManager10deallocateEPv
	ldr	x0, [x29, 24]
	str	xzr, [x0]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 8]
	ldr	x0, [x29, 24]
	str	xzr, [x0, 16]
.L24:
	nop
	ldp	x29, x30, [sp], 48
	ret
	.size	_ZN6VectorIcED2Ev, .-_ZN6VectorIcED2Ev
	.weak	_ZN6VectorIcED1Ev
	.set	_ZN6VectorIcED1Ev,_ZN6VectorIcED2Ev
	.section	.text._ZN16IntegerFormatterILi16EEC2Em,"axG",@progbits,_ZN16IntegerFormatterILi16EEC5Em,comdat
	.align	2
	.weak	_ZN16IntegerFormatterILi16EEC2Em
	.type	_ZN16IntegerFormatterILi16EEC2Em, %function
_ZN16IntegerFormatterILi16EEC2Em:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	str	x1, [x0]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN16IntegerFormatterILi16EEC2Em, .-_ZN16IntegerFormatterILi16EEC2Em
	.weak	_ZN16IntegerFormatterILi16EEC1Em
	.set	_ZN16IntegerFormatterILi16EEC1Em,_ZN16IntegerFormatterILi16EEC2Em
	.section	.text._ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,"axG",@progbits,_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,comdat
	.align	2
	.weak	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.type	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE, %function
_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	ldr	x0, [x29, 16]
	bl	_ZNK16IntegerFormatterILi16EE6formatEv
	mov	x1, x0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEPKc
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE, .-_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.section	.rodata
	.align	3
.LC80:
	.string	"i<_size"
	.align	3
.LC81:
	.string	"/media/sf_D_DRIVE/Pool/eclipse-workspace_aarch64/newspace/raspiOS/include/data_structures/Vector.h"
	.section	.text._ZlsIcER6OutputS1_RK6VectorIT_E,"axG",@progbits,_ZlsIcER6OutputS1_RK6VectorIT_E,comdat
	.align	2
	.weak	_ZlsIcER6OutputS1_RK6VectorIT_E
	.type	_ZlsIcER6OutputS1_RK6VectorIT_E, %function
_ZlsIcER6OutputS1_RK6VectorIT_E:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	str	x1, [x29, 16]
	str	xzr, [x29, 56]
.L33:
	ldr	x0, [x29, 16]
	str	x0, [x29, 48]
	ldr	x0, [x29, 48]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 56]
	cmp	x1, x0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L30
	ldr	x0, [x29, 16]
	str	x0, [x29, 40]
	ldr	x0, [x29, 56]
	str	x0, [x29, 32]
	ldr	x0, [x29, 40]
	ldr	x0, [x0, 16]
	ldr	x1, [x29, 32]
	cmp	x1, x0
	bcc	.L31
	adrp	x0, .LC80
	add	x2, x0, :lo12:.LC80
	adrp	x0, _ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	add	x1, x0, :lo12:_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__
	adrp	x0, .LC81
	add	x0, x0, :lo12:.LC81
	mov	x3, x2
	mov	x2, x1
	mov	x1, 56
	bl	_Z19report_assert_errorPKcmS0_S0_
.L31:
	ldr	x0, [x29, 40]
	ldr	x1, [x0]
	ldr	x0, [x29, 32]
	add	x0, x1, x0
	ldrsb	w0, [x0]
	mov	w1, w0
	ldr	x0, [x29, 24]
	bl	_ZN6OutputlsEc
	ldr	x0, [x29, 56]
	add	x0, x0, 1
	str	x0, [x29, 56]
	b	.L33
.L30:
	ldr	x0, [x29, 24]
	ldp	x29, x30, [sp], 64
	ret
	.size	_ZlsIcER6OutputS1_RK6VectorIT_E, .-_ZlsIcER6OutputS1_RK6VectorIT_E
	.section	.text._ZNK16IntegerFormatterILi16EE6formatEv,"axG",@progbits,_ZNK16IntegerFormatterILi16EE6formatEv,comdat
	.align	2
	.weak	_ZNK16IntegerFormatterILi16EE6formatEv
	.type	_ZNK16IntegerFormatterILi16EE6formatEv, %function
_ZNK16IntegerFormatterILi16EE6formatEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	ldr	x4, [x0]
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	mov	x3, 65
	mov	x2, x0
	mov	w1, 16
	mov	x0, x4
	bl	_Z4itosmjPcm
	adrp	x0, koutBuf
	add	x0, x0, :lo12:koutBuf
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK16IntegerFormatterILi16EE6formatEv, .-_ZNK16IntegerFormatterILi16EE6formatEv
	.section	.rodata
	.align	3
	.type	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, %object
	.size	_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__, 89
_ZZNK6VectorIcEixEmE19__PRETTY_FUNCTION__:
	.string	"const T& Vector<T>::operator[](size_t) const [with T = char; size_t = long unsigned int]"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
