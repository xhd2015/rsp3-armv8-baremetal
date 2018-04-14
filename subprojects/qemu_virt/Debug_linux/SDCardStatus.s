	.arch armv8.2-a+crc
	.file	"SDCardStatus.cpp"
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
	.type	_ZL11koutBufSize, %object
	.size	_ZL11koutBufSize, 8
_ZL11koutBufSize:
	.xword	65
	.align	3
.LC0:
	.string	"SDCardStatus: "
	.align	3
.LC1:
	.string	" resForTest = "
	.align	3
.LC2:
	.string	","
	.align	3
.LC3:
	.string	" resForAppCmd = "
	.align	3
.LC4:
	.string	" AKE_SEQ_ERROR = "
	.align	3
.LC5:
	.string	" resForSDIO = "
	.align	3
.LC6:
	.string	" EXPECT_APP_CMD = "
	.align	3
.LC7:
	.string	" FX_EVENT_HAPPEN = "
	.align	3
.LC8:
	.string	" res0_0 = "
	.align	3
.LC9:
	.string	" READY_FOR_DATA = "
	.align	3
.LC10:
	.string	" CURRENT_STATE = "
	.align	3
.LC11:
	.string	" ERASE_RESET = "
	.align	3
.LC12:
	.string	" CARD_ECC_DISABLED = "
	.align	3
.LC13:
	.string	" WP_ERASE_SKIP = "
	.align	3
.LC14:
	.string	" CSD_OVERWIRTE = "
	.align	3
.LC15:
	.string	" res0_1 = "
	.align	3
.LC16:
	.string	" GENERAL_ERROR = "
	.align	3
.LC17:
	.string	" CC_ERROR = "
	.align	3
.LC18:
	.string	" CARD_ECC_FAILED = "
	.align	3
.LC19:
	.string	" ILLEGAL_COMMAND = "
	.align	3
.LC20:
	.string	" COM_CRC_ERROR = "
	.align	3
.LC21:
	.string	" LOCK_UNLOCK_FAILED = "
	.align	3
.LC22:
	.string	" CARD_IS_LOCKED = "
	.align	3
.LC23:
	.string	" WP_VIOLATION = "
	.align	3
.LC24:
	.string	" ERASE_PARAM = "
	.align	3
.LC25:
	.string	" ERASE_SEQ_ERROR = "
	.align	3
.LC26:
	.string	" BLOCK_LEN_ERROR = "
	.align	3
.LC27:
	.string	" ADDRESS_ERROR = "
	.align	3
.LC28:
	.string	" OUT_OF_RANGE = "
	.align	3
.LC29:
	.string	"\n"
	.text
	.align	2
	.global	_ZNK12SDCardStatus4dumpEv
	.type	_ZNK12SDCardStatus4dumpEv, %function
_ZNK12SDCardStatus4dumpEv:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x0, [x29, 24]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, kout
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 0, 2
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 2, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 3, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 4, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 5, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 6, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC8
	add	x0, x0, :lo12:.LC8
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0]
	ubfx	x0, x0, 7, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC9
	add	x0, x0, :lo12:.LC9
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 0, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC10
	add	x0, x0, :lo12:.LC10
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 1, 4
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC11
	add	x0, x0, :lo12:.LC11
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 5, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC12
	add	x0, x0, :lo12:.LC12
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 6, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC13
	add	x0, x0, :lo12:.LC13
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 1]
	ubfx	x0, x0, 7, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC14
	add	x0, x0, :lo12:.LC14
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 0, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC15
	add	x0, x0, :lo12:.LC15
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 1, 2
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC16
	add	x0, x0, :lo12:.LC16
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 3, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC17
	add	x0, x0, :lo12:.LC17
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 4, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC18
	add	x0, x0, :lo12:.LC18
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 5, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC19
	add	x0, x0, :lo12:.LC19
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 6, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC20
	add	x0, x0, :lo12:.LC20
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 2]
	ubfx	x0, x0, 7, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC21
	add	x0, x0, :lo12:.LC21
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 0, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC22
	add	x0, x0, :lo12:.LC22
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 1, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC23
	add	x0, x0, :lo12:.LC23
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 2, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC24
	add	x0, x0, :lo12:.LC24
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 3, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC25
	add	x0, x0, :lo12:.LC25
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 4, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC26
	add	x0, x0, :lo12:.LC26
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 5, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC27
	add	x0, x0, :lo12:.LC27
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 6, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	adrp	x0, .LC28
	add	x0, x0, :lo12:.LC28
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	mov	x2, x0
	ldr	x0, [x29, 24]
	ldrb	w0, [x0, 3]
	ubfx	x0, x0, 7, 1
	and	w0, w0, 255
	mov	w1, w0
	mov	x0, x2
	bl	_ZN6OutputlsEj
	mov	x2, x0
	adrp	x0, .LC29
	add	x0, x0, :lo12:.LC29
	mov	x1, x0
	mov	x0, x2
	bl	_ZN6OutputlsEPKc
	nop
	ldp	x29, x30, [sp], 32
	ret
	.size	_ZNK12SDCardStatus4dumpEv, .-_ZNK12SDCardStatus4dumpEv
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
