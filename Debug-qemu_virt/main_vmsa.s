	.arch armv8-a
	.file	"main_vmsa.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._ZNK10RegTCR_EL14dumpEv,"axG",@progbits,_ZNK10RegTCR_EL14dumpEv,comdat
	.align	2
	.weak	_ZNK10RegTCR_EL14dumpEv
	.type	_ZNK10RegTCR_EL14dumpEv, %function
_ZNK10RegTCR_EL14dumpEv:
.LFB7:
	.file 1 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/system_common_registers.h"
	.loc 1 58 0
	.cfi_startproc
.LVL0:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	.loc 1 60 0
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	adrp	x0, kout
.LVL1:
	add	x0, x0, :lo12:kout
	bl	_ZN6OutputlsEPKc
.LVL2:
	.loc 1 61 0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	bl	_ZN6OutputlsEPKc
.LVL3:
	ldrb	w1, [x19]
	and	x1, x1, 63
	bl	_ZN6OutputlsEm
.LVL4:
	.loc 1 62 0
	adrp	x1, .LC2
	add	x1, x1, :lo12:.LC2
	bl	_ZN6OutputlsEPKc
.LVL5:
	ldrb	w1, [x19]
	ubfx	x1, x1, 6, 1
	bl	_ZN6OutputlsEm
.LVL6:
	.loc 1 63 0
	adrp	x1, .LC3
	add	x1, x1, :lo12:.LC3
	bl	_ZN6OutputlsEPKc
.LVL7:
	ldrb	w1, [x19]
	ubfx	x1, x1, 7, 1
	bl	_ZN6OutputlsEm
.LVL8:
	.loc 1 64 0
	adrp	x1, .LC4
	add	x1, x1, :lo12:.LC4
	bl	_ZN6OutputlsEPKc
.LVL9:
	ldrb	w1, [x19, 1]
	and	x1, x1, 3
	bl	_ZN6OutputlsEm
.LVL10:
	.loc 1 65 0
	adrp	x1, .LC5
	add	x1, x1, :lo12:.LC5
	bl	_ZN6OutputlsEPKc
.LVL11:
	ldrb	w1, [x19, 1]
	ubfx	x1, x1, 2, 2
	bl	_ZN6OutputlsEm
.LVL12:
	.loc 1 66 0
	adrp	x1, .LC6
	add	x1, x1, :lo12:.LC6
	bl	_ZN6OutputlsEPKc
.LVL13:
	ldrb	w1, [x19, 1]
	ubfx	x1, x1, 4, 2
	bl	_ZN6OutputlsEm
.LVL14:
	.loc 1 67 0
	adrp	x1, .LC7
	add	x1, x1, :lo12:.LC7
	bl	_ZN6OutputlsEPKc
.LVL15:
	ldrb	w1, [x19, 1]
	ubfx	x1, x1, 6, 2
	bl	_ZN6OutputlsEm
.LVL16:
	.loc 1 68 0
	adrp	x1, .LC8
	add	x1, x1, :lo12:.LC8
	bl	_ZN6OutputlsEPKc
.LVL17:
	ldrb	w1, [x19, 2]
	and	x1, x1, 63
	bl	_ZN6OutputlsEm
.LVL18:
	.loc 1 69 0
	adrp	x1, .LC9
	add	x1, x1, :lo12:.LC9
	bl	_ZN6OutputlsEPKc
.LVL19:
	ldrb	w1, [x19, 2]
	ubfx	x1, x1, 6, 1
	bl	_ZN6OutputlsEm
.LVL20:
	.loc 1 70 0
	adrp	x1, .LC10
	add	x1, x1, :lo12:.LC10
	bl	_ZN6OutputlsEPKc
.LVL21:
	ldrb	w1, [x19, 2]
	ubfx	x1, x1, 7, 1
	bl	_ZN6OutputlsEm
.LVL22:
	.loc 1 71 0
	adrp	x1, .LC11
	add	x1, x1, :lo12:.LC11
	bl	_ZN6OutputlsEPKc
.LVL23:
	ldrb	w1, [x19, 3]
	and	x1, x1, 3
	bl	_ZN6OutputlsEm
.LVL24:
	.loc 1 72 0
	adrp	x1, .LC12
	add	x1, x1, :lo12:.LC12
	bl	_ZN6OutputlsEPKc
.LVL25:
	ldrb	w1, [x19, 3]
	ubfx	x1, x1, 2, 2
	bl	_ZN6OutputlsEm
.LVL26:
	.loc 1 73 0
	adrp	x1, .LC13
	add	x1, x1, :lo12:.LC13
	bl	_ZN6OutputlsEPKc
.LVL27:
	ldrb	w1, [x19, 3]
	ubfx	x1, x1, 4, 2
	bl	_ZN6OutputlsEm
.LVL28:
	.loc 1 74 0
	adrp	x1, .LC14
	add	x1, x1, :lo12:.LC14
	bl	_ZN6OutputlsEPKc
.LVL29:
	ldrb	w1, [x19, 3]
	ubfx	x1, x1, 6, 2
	bl	_ZN6OutputlsEm
.LVL30:
	.loc 1 75 0
	adrp	x1, .LC15
	add	x1, x1, :lo12:.LC15
	bl	_ZN6OutputlsEPKc
.LVL31:
	ldrb	w1, [x19, 4]
	and	x1, x1, 7
	bl	_ZN6OutputlsEm
.LVL32:
	.loc 1 76 0
	adrp	x1, .LC16
	add	x1, x1, :lo12:.LC16
	bl	_ZN6OutputlsEPKc
.LVL33:
	ldrb	w1, [x19, 4]
	ubfx	x1, x1, 3, 1
	bl	_ZN6OutputlsEm
.LVL34:
	.loc 1 77 0
	adrp	x1, .LC17
	add	x1, x1, :lo12:.LC17
	bl	_ZN6OutputlsEPKc
.LVL35:
	ldrb	w1, [x19, 4]
	ubfx	x1, x1, 4, 1
	bl	_ZN6OutputlsEm
.LVL36:
	.loc 1 78 0
	adrp	x1, .LC18
	add	x1, x1, :lo12:.LC18
	bl	_ZN6OutputlsEPKc
.LVL37:
	ldrb	w1, [x19, 4]
	ubfx	x1, x1, 5, 1
	bl	_ZN6OutputlsEm
.LVL38:
	.loc 1 79 0
	adrp	x1, .LC19
	add	x1, x1, :lo12:.LC19
	bl	_ZN6OutputlsEPKc
.LVL39:
	ldrb	w1, [x19, 4]
	ubfx	x1, x1, 6, 1
	bl	_ZN6OutputlsEm
.LVL40:
	.loc 1 80 0
	adrp	x1, .LC20
	add	x1, x1, :lo12:.LC20
	bl	_ZN6OutputlsEPKc
.LVL41:
	ldrb	w1, [x19, 4]
	ubfx	x1, x1, 7, 1
	bl	_ZN6OutputlsEm
.LVL42:
	.loc 1 81 0
	adrp	x1, .LC21
	add	x1, x1, :lo12:.LC21
	bl	_ZN6OutputlsEPKc
.LVL43:
	ldrb	w1, [x19, 5]
	and	x1, x1, 1
	bl	_ZN6OutputlsEm
.LVL44:
	.loc 1 82 0
	adrp	x1, .LC22
	add	x1, x1, :lo12:.LC22
	bl	_ZN6OutputlsEPKc
.LVL45:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 1, 1
	bl	_ZN6OutputlsEm
.LVL46:
	.loc 1 83 0
	adrp	x1, .LC23
	add	x1, x1, :lo12:.LC23
	bl	_ZN6OutputlsEPKc
.LVL47:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 2, 1
	bl	_ZN6OutputlsEm
.LVL48:
	.loc 1 84 0
	adrp	x1, .LC24
	add	x1, x1, :lo12:.LC24
	bl	_ZN6OutputlsEPKc
.LVL49:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 3, 1
	bl	_ZN6OutputlsEm
.LVL50:
	.loc 1 85 0
	adrp	x1, .LC25
	add	x1, x1, :lo12:.LC25
	bl	_ZN6OutputlsEPKc
.LVL51:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 4, 1
	bl	_ZN6OutputlsEm
.LVL52:
	.loc 1 86 0
	adrp	x1, .LC26
	add	x1, x1, :lo12:.LC26
	bl	_ZN6OutputlsEPKc
.LVL53:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 5, 1
	bl	_ZN6OutputlsEm
.LVL54:
	.loc 1 87 0
	adrp	x1, .LC27
	add	x1, x1, :lo12:.LC27
	bl	_ZN6OutputlsEPKc
.LVL55:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 6, 1
	bl	_ZN6OutputlsEm
.LVL56:
	.loc 1 88 0
	adrp	x1, .LC28
	add	x1, x1, :lo12:.LC28
	bl	_ZN6OutputlsEPKc
.LVL57:
	ldrb	w1, [x19, 5]
	ubfx	x1, x1, 7, 1
	bl	_ZN6OutputlsEm
.LVL58:
	.loc 1 89 0
	adrp	x1, .LC29
	add	x1, x1, :lo12:.LC29
	bl	_ZN6OutputlsEPKc
.LVL59:
	ldrb	w1, [x19, 6]
	and	x1, x1, 1
	bl	_ZN6OutputlsEm
.LVL60:
	.loc 1 90 0
	adrp	x1, .LC30
	add	x1, x1, :lo12:.LC30
	bl	_ZN6OutputlsEPKc
.LVL61:
	ldrb	w1, [x19, 6]
	ubfx	x1, x1, 1, 1
	bl	_ZN6OutputlsEm
.LVL62:
	.loc 1 91 0
	adrp	x1, .LC31
	add	x1, x1, :lo12:.LC31
	bl	_ZN6OutputlsEPKc
.LVL63:
	ldrb	w1, [x19, 6]
	ubfx	x1, x1, 2, 1
	bl	_ZN6OutputlsEm
.LVL64:
	.loc 1 92 0
	adrp	x1, .LC32
	add	x1, x1, :lo12:.LC32
	bl	_ZN6OutputlsEPKc
.LVL65:
	ldrb	w1, [x19, 6]
	ubfx	x1, x1, 3, 2
	bl	_ZN6OutputlsEm
.LVL66:
	.loc 1 93 0
	adrp	x1, .LC33
	add	x1, x1, :lo12:.LC33
	bl	_ZN6OutputlsEPKc
.LVL67:
	ldrb	w1, [x19, 6]
	ubfx	x1, x1, 5, 1
	bl	_ZN6OutputlsEm
.LVL68:
	.loc 1 94 0
	adrp	x1, .LC34
	add	x1, x1, :lo12:.LC34
	bl	_ZN6OutputlsEPKc
.LVL69:
	ldrb	w1, [x19, 6]
	ubfx	x1, x1, 6, 1
	bl	_ZN6OutputlsEm
.LVL70:
	.loc 1 95 0
	adrp	x1, .LC35
	add	x1, x1, :lo12:.LC35
	bl	_ZN6OutputlsEPKc
.LVL71:
	ldrh	w1, [x19, 6]
	ubfx	x1, x1, 7, 9
	bl	_ZN6OutputlsEm
.LVL72:
	.loc 1 96 0
	adrp	x1, .LC36
	add	x1, x1, :lo12:.LC36
	bl	_ZN6OutputlsEPKc
.LVL73:
	.loc 1 97 0
	ldr	x19, [sp, 16]
.LVL74:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE7:
	.size	_ZNK10RegTCR_EL14dumpEv, .-_ZNK10RegTCR_EL14dumpEv
	.section	.text._ZN16IntegerFormatterILi16EEC2Em,"axG",@progbits,_ZN16IntegerFormatterILi16EEC5Em,comdat
	.align	2
	.weak	_ZN16IntegerFormatterILi16EEC2Em
	.type	_ZN16IntegerFormatterILi16EEC2Em, %function
_ZN16IntegerFormatterILi16EEC2Em:
.LFB30:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/IntegerFormatter.h"
	.loc 2 16 0
	.cfi_startproc
.LVL75:
.LBB12:
	.loc 2 17 0
	str	x1, [x0]
.LBE12:
	ret
	.cfi_endproc
.LFE30:
	.size	_ZN16IntegerFormatterILi16EEC2Em, .-_ZN16IntegerFormatterILi16EEC2Em
	.weak	_ZN16IntegerFormatterILi16EEC1Em
	.set	_ZN16IntegerFormatterILi16EEC1Em,_ZN16IntegerFormatterILi16EEC2Em
	.section	.text._ZNK16IntegerFormatterILi16EE6formatEv,"axG",@progbits,_ZNK16IntegerFormatterILi16EE6formatEv,comdat
	.align	2
	.weak	_ZNK16IntegerFormatterILi16EE6formatEv
	.type	_ZNK16IntegerFormatterILi16EE6formatEv, %function
_ZNK16IntegerFormatterILi16EE6formatEv:
.LFB33:
	.loc 2 24 0
	.cfi_startproc
.LVL76:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	.loc 2 26 0
	adrp	x19, koutBuf
	add	x19, x19, :lo12:koutBuf
	mov	x3, 65
	mov	x2, x19
	mov	w1, 16
	ldr	x0, [x0]
.LVL77:
	bl	_Z4itosmjPcm
.LVL78:
	.loc 2 28 0
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE33:
	.size	_ZNK16IntegerFormatterILi16EE6formatEv, .-_ZNK16IntegerFormatterILi16EE6formatEv
	.section	.text._ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,"axG",@progbits,_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE,comdat
	.align	2
	.weak	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.type	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE, %function
_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE:
.LFB32:
	.loc 2 31 0
	.cfi_startproc
.LVL79:
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x19, [sp, 16]
	.cfi_offset 19, -16
	mov	x19, x0
	.loc 2 33 0
	mov	x0, x1
.LVL80:
	bl	_ZNK16IntegerFormatterILi16EE6formatEv
.LVL81:
	mov	x1, x0
	mov	x0, x19
	bl	_ZN6OutputlsEPKc
.LVL82:
	.loc 2 35 0
	mov	x0, x19
	ldr	x19, [sp, 16]
.LVL83:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE32:
	.size	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE, .-_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB28:
	.file 3 "../src/arch/qemu_virt/main_vmsa.cpp"
	.loc 3 14 0
	.cfi_startproc
	stp	x29, x30, [sp, -64]!
	.cfi_def_cfa_offset 64
	.cfi_offset 29, -64
	.cfi_offset 30, -56
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	stp	x19, x20, [sp, 16]
	str	x21, [sp, 32]
	.cfi_offset 19, -48
	.cfi_offset 20, -40
	.cfi_offset 21, -32
.LBB25:
.LBB26:
	.loc 1 99 0
	// Start of user assembly
// 99 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/system_common_registers.h" 1
	mrs x1,TCR_EL1
	
// 0 "" 2
.LVL84:
	// End of user assembly
.LBE26:
.LBE25:
	.loc 3 15 0
	add	x0, x29, 64
	str	x1, [x0, -16]!
	.loc 3 16 0
	bl	_ZNK10RegTCR_EL14dumpEv
.LVL85:
	.loc 3 17 0
	ldrb	w0, [x29, 52]
	orr	w0, w0, 32
	strb	w0, [x29, 52]
	ldr	x0, [x29, 48]
.LVL86:
.LBB27:
.LBB28:
	.loc 1 99 0
	// Start of user assembly
// 99 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/system_common_registers.h" 1
	msr TCR_EL1,x0 
	
// 0 "" 2
	// End of user assembly
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 1 17 0
	// Start of user assembly
// 17 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/system_common_registers.h" 1
	adr x0,#0
	
// 0 "" 2
.LVL87:
	// End of user assembly
.LBE30:
.LBE29:
	.loc 3 21 0
	adrp	x0, main_end
.LVL88:
	add	x0, x0, :lo12:main_end
	mov	x1, -432345564227567616
	orr	x0, x0, x1
	mov	x1, 0
.LVL89:
	bfi	x1, x0, 0, 64
.LVL90:
.LBB31:
.LBB32:
	.loc 1 17 0
	// Start of user assembly
// 17 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/system_common_registers.h" 1
	br x1
	
// 0 "" 2
	// End of user assembly
.LBE32:
.LBE31:
	.loc 3 25 0
	// Start of user assembly
// 25 "../src/arch/qemu_virt/main_vmsa.cpp" 1
	.global main_end 
	main_end:
	
// 0 "" 2
	// End of user assembly
.LBB33:
.LBB34:
	.loc 1 17 0
	// Start of user assembly
// 17 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/system_common_registers.h" 1
	adr x20,#0
	
// 0 "" 2
.LVL91:
	// End of user assembly
.LBE34:
.LBE33:
.LBB35:
.LBB36:
	.loc 1 12 0
	adrp	x19, kout
	add	x19, x19, :lo12:kout
	adrp	x1, .LC37
.LVL92:
	add	x1, x1, :lo12:.LC37
	mov	x0, x19
	bl	_ZN6OutputlsEPKc
.LVL93:
	.loc 1 13 0
	adrp	x1, .LC38
	add	x1, x1, :lo12:.LC38
	bl	_ZN6OutputlsEPKc
.LVL94:
	mov	x21, x0
	mov	x1, x20
	add	x0, x29, 56
	bl	_ZN16IntegerFormatterILi16EEC1Em
.LVL95:
	add	x1, x29, 56
	mov	x0, x21
	bl	_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE
.LVL96:
	.loc 1 14 0
	adrp	x1, .LC36
	add	x1, x1, :lo12:.LC36
	bl	_ZN6OutputlsEPKc
.LVL97:
.LBE36:
.LBE35:
	.loc 3 27 0
	adrp	x1, .LC39
	add	x1, x1, :lo12:.LC39
	mov	x0, x19
	bl	_ZN6OutputlsEPKc
.LVL98:
	adrp	x1, .LC40
	add	x1, x1, :lo12:.LC40
	bl	_ZN6OutputlsEPKc
.LVL99:
	.loc 3 30 0
	mov	w0, 0
	ldp	x19, x20, [sp, 16]
.LVL100:
	ldr	x21, [sp, 32]
	ldp	x29, x30, [sp], 64
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE28:
	.size	main, .-main
	.section	.rodata._ZNK10RegTCR_EL14dumpEv.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"TCR_EL1:"
	.zero	7
.LC1:
	.string	",T0SZ = "
	.zero	7
.LC2:
	.string	",RES0_0 = "
	.zero	5
.LC3:
	.string	",EPD0 = "
	.zero	7
.LC4:
	.string	",IRGN0 = "
	.zero	6
.LC5:
	.string	",ORGN0 = "
	.zero	6
.LC6:
	.string	",SH0 = "
.LC7:
	.string	",TG0 = "
.LC8:
	.string	",T1SZ = "
	.zero	7
.LC9:
	.string	",A1 = "
	.zero	1
.LC10:
	.string	",EPD1 = "
	.zero	7
.LC11:
	.string	",IRGN1 = "
	.zero	6
.LC12:
	.string	",ORGN1 = "
	.zero	6
.LC13:
	.string	",SH1 = "
.LC14:
	.string	",TG1 = "
.LC15:
	.string	",IPS = "
.LC16:
	.string	",RES0_1 = "
	.zero	5
.LC17:
	.string	",AS = "
	.zero	1
.LC18:
	.string	",TBI0 = "
	.zero	7
.LC19:
	.string	",TBI1 = "
	.zero	7
.LC20:
	.string	",HA = "
	.zero	1
.LC21:
	.string	",HD = "
	.zero	1
.LC22:
	.string	",HPD0 = "
	.zero	7
.LC23:
	.string	",HPD1 = "
	.zero	7
.LC24:
	.string	",HWU059 = "
	.zero	5
.LC25:
	.string	",HWU060 = "
	.zero	5
.LC26:
	.string	",HWU061 = "
	.zero	5
.LC27:
	.string	",HWU062 = "
	.zero	5
.LC28:
	.string	",HWU159 = "
	.zero	5
.LC29:
	.string	",HWU160 = "
	.zero	5
.LC30:
	.string	",HWU161 = "
	.zero	5
.LC31:
	.string	",HWU162 = "
	.zero	5
.LC32:
	.string	",RES0_2 = "
	.zero	5
.LC33:
	.string	",NFD0 = "
	.zero	7
.LC34:
	.string	",NFD1 = "
	.zero	7
.LC35:
	.string	",RES0_3 = "
	.zero	5
.LC36:
	.string	"\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC37:
	.string	"PC:"
	.zero	4
.LC38:
	.string	",PC = "
	.zero	1
.LC39:
	.string	"[INFO] "
.LC40:
	.string	"end main."
	.text
.Letext0:
	.file 4 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstddef"
	.file 5 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstdint"
	.file 6 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\c++config.h"
	.file 7 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stddef.h"
	.file 8 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint-gcc.h"
	.file 9 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/printk.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/IntegerFormatter.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 13 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1351
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF959
	.byte	0x4
	.4byte	.LASF960
	.4byte	.LASF961
	.4byte	.Ldebug_ranges0+0
	.8byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.string	"std"
	.byte	0xd
	.byte	0
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF846
	.byte	0x6
	.byte	0xfd
	.uleb128 0x4
	.byte	0x6
	.byte	0xfd
	.4byte	0x38
	.uleb128 0x5
	.byte	0x4
	.byte	0x38
	.4byte	0x185
	.uleb128 0x5
	.byte	0x5
	.byte	0x30
	.4byte	0x197
	.uleb128 0x5
	.byte	0x5
	.byte	0x31
	.4byte	0x1a9
	.uleb128 0x5
	.byte	0x5
	.byte	0x32
	.4byte	0x1bb
	.uleb128 0x5
	.byte	0x5
	.byte	0x33
	.4byte	0x1d2
	.uleb128 0x5
	.byte	0x5
	.byte	0x35
	.4byte	0x276
	.uleb128 0x5
	.byte	0x5
	.byte	0x36
	.4byte	0x281
	.uleb128 0x5
	.byte	0x5
	.byte	0x37
	.4byte	0x28c
	.uleb128 0x5
	.byte	0x5
	.byte	0x38
	.4byte	0x297
	.uleb128 0x5
	.byte	0x5
	.byte	0x3a
	.4byte	0x21e
	.uleb128 0x5
	.byte	0x5
	.byte	0x3b
	.4byte	0x229
	.uleb128 0x5
	.byte	0x5
	.byte	0x3c
	.4byte	0x234
	.uleb128 0x5
	.byte	0x5
	.byte	0x3d
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x5
	.byte	0x3f
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x5
	.byte	0x40
	.4byte	0x2ce
	.uleb128 0x5
	.byte	0x5
	.byte	0x42
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x5
	.byte	0x43
	.4byte	0x1ef
	.uleb128 0x5
	.byte	0x5
	.byte	0x44
	.4byte	0x201
	.uleb128 0x5
	.byte	0x5
	.byte	0x45
	.4byte	0x213
	.uleb128 0x5
	.byte	0x5
	.byte	0x47
	.4byte	0x2a2
	.uleb128 0x5
	.byte	0x5
	.byte	0x48
	.4byte	0x2ad
	.uleb128 0x5
	.byte	0x5
	.byte	0x49
	.4byte	0x2b8
	.uleb128 0x5
	.byte	0x5
	.byte	0x4a
	.4byte	0x2c3
	.uleb128 0x5
	.byte	0x5
	.byte	0x4c
	.4byte	0x24a
	.uleb128 0x5
	.byte	0x5
	.byte	0x4d
	.4byte	0x255
	.uleb128 0x5
	.byte	0x5
	.byte	0x4e
	.4byte	0x260
	.uleb128 0x5
	.byte	0x5
	.byte	0x4f
	.4byte	0x26b
	.uleb128 0x5
	.byte	0x5
	.byte	0x51
	.4byte	0x2ef
	.uleb128 0x5
	.byte	0x5
	.byte	0x52
	.4byte	0x2d9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF845
	.byte	0x6
	.byte	0xff
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LASF846
	.byte	0x6
	.2byte	0x101
	.uleb128 0x8
	.byte	0x6
	.2byte	0x101
	.4byte	0x11d
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF847
	.uleb128 0xa
	.4byte	.LASF853
	.byte	0x7
	.byte	0xd8
	.4byte	0x145
	.uleb128 0xb
	.4byte	0x135
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF848
	.uleb128 0xc
	.byte	0x20
	.byte	0x10
	.byte	0x7
	.2byte	0x1aa
	.4byte	.LASF962
	.4byte	0x177
	.uleb128 0xd
	.4byte	.LASF849
	.byte	0x7
	.2byte	0x1ab
	.4byte	0x177
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF850
	.byte	0x7
	.2byte	0x1ac
	.4byte	0x17e
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF851
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF852
	.uleb128 0xe
	.4byte	.LASF963
	.byte	0x7
	.2byte	0x1b5
	.4byte	0x14c
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF964
	.uleb128 0xa
	.4byte	.LASF854
	.byte	0x8
	.byte	0x22
	.4byte	0x1a2
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF855
	.uleb128 0xa
	.4byte	.LASF856
	.byte	0x8
	.byte	0x25
	.4byte	0x1b4
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF857
	.uleb128 0xa
	.4byte	.LASF858
	.byte	0x8
	.byte	0x28
	.4byte	0x1c6
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF859
	.byte	0x8
	.byte	0x2b
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF860
	.byte	0x8
	.byte	0x2e
	.4byte	0x1e8
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF861
	.uleb128 0xa
	.4byte	.LASF862
	.byte	0x8
	.byte	0x31
	.4byte	0x1fa
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF863
	.uleb128 0xa
	.4byte	.LASF864
	.byte	0x8
	.byte	0x34
	.4byte	0x20c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF865
	.uleb128 0xa
	.4byte	.LASF866
	.byte	0x8
	.byte	0x37
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF867
	.byte	0x8
	.byte	0x3c
	.4byte	0x1a2
	.uleb128 0xa
	.4byte	.LASF868
	.byte	0x8
	.byte	0x3d
	.4byte	0x1b4
	.uleb128 0xa
	.4byte	.LASF869
	.byte	0x8
	.byte	0x3e
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF870
	.byte	0x8
	.byte	0x3f
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF871
	.byte	0x8
	.byte	0x40
	.4byte	0x1e8
	.uleb128 0xa
	.4byte	.LASF872
	.byte	0x8
	.byte	0x41
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	.LASF873
	.byte	0x8
	.byte	0x42
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF874
	.byte	0x8
	.byte	0x43
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF875
	.byte	0x8
	.byte	0x47
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF876
	.byte	0x8
	.byte	0x48
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF877
	.byte	0x8
	.byte	0x49
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF878
	.byte	0x8
	.byte	0x4a
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF879
	.byte	0x8
	.byte	0x4b
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF880
	.byte	0x8
	.byte	0x4c
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF881
	.byte	0x8
	.byte	0x4d
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF882
	.byte	0x8
	.byte	0x4e
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF883
	.byte	0x8
	.byte	0x53
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF884
	.byte	0x8
	.byte	0x56
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF885
	.byte	0x8
	.byte	0x5b
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF886
	.byte	0x8
	.byte	0x5c
	.4byte	0x145
	.uleb128 0x11
	.4byte	0x316
	.4byte	0x30a
	.uleb128 0x12
	.4byte	0x145
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x2fa
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF887
	.uleb128 0xb
	.4byte	0x30f
	.uleb128 0x13
	.4byte	.LASF888
	.byte	0x9
	.byte	0x1c
	.4byte	0x30a
	.uleb128 0x14
	.4byte	.LASF889
	.byte	0x9
	.byte	0x1f
	.4byte	0x140
	.byte	0x41
	.uleb128 0x11
	.4byte	0x30f
	.4byte	0x342
	.uleb128 0x12
	.4byte	0x145
	.byte	0x40
	.byte	0
	.uleb128 0x13
	.4byte	.LASF890
	.byte	0x9
	.byte	0x20
	.4byte	0x332
	.uleb128 0x15
	.4byte	.LASF891
	.byte	0x9
	.byte	0x22
	.4byte	0x1cd
	.2byte	0x400
	.uleb128 0x16
	.string	"KiB"
	.byte	0x9
	.byte	0x23
	.4byte	0x1cd
	.2byte	0x400
	.uleb128 0x17
	.string	"MiB"
	.byte	0x9
	.byte	0x24
	.4byte	0x1cd
	.4byte	0x100000
	.uleb128 0x17
	.string	"GiB"
	.byte	0x9
	.byte	0x25
	.4byte	0x1cd
	.4byte	0x40000000
	.uleb128 0x18
	.4byte	.LASF907
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	0x537
	.uleb128 0x19
	.4byte	.LASF892
	.byte	0xa
	.byte	0x16
	.4byte	.LASF893
	.4byte	0x135
	.byte	0x1
	.4byte	0x3a9
	.4byte	0x3b9
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x53d
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF892
	.byte	0xa
	.byte	0x17
	.4byte	.LASF894
	.4byte	0x135
	.byte	0x1
	.4byte	0x3d1
	.4byte	0x3dc
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x53d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x18
	.4byte	.LASF896
	.4byte	0x543
	.byte	0x1
	.4byte	0x3f4
	.4byte	0x3ff
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x30f
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1a
	.4byte	.LASF897
	.4byte	0x543
	.byte	0x1
	.4byte	0x417
	.4byte	0x422
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x1dd
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1b
	.4byte	.LASF898
	.4byte	0x543
	.byte	0x1
	.4byte	0x43a
	.4byte	0x445
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x1ef
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1c
	.4byte	.LASF899
	.4byte	0x543
	.byte	0x1
	.4byte	0x45d
	.4byte	0x468
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x201
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1d
	.4byte	.LASF900
	.4byte	0x543
	.byte	0x1
	.4byte	0x480
	.4byte	0x48b
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x1b4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF901
	.4byte	0x543
	.byte	0x1
	.4byte	0x4a3
	.4byte	0x4ae
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x1c6
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x1f
	.4byte	.LASF902
	.4byte	0x543
	.byte	0x1
	.4byte	0x4c6
	.4byte	0x4d1
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x549
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x20
	.4byte	.LASF903
	.4byte	0x543
	.byte	0x1
	.4byte	0x4e9
	.4byte	0x4f4
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x53d
	.byte	0
	.uleb128 0x19
	.4byte	.LASF895
	.byte	0xa
	.byte	0x21
	.4byte	.LASF904
	.4byte	0x543
	.byte	0x1
	.4byte	0x50c
	.4byte	0x517
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF895
	.byte	0xa
	.byte	0x22
	.4byte	.LASF910
	.4byte	0x543
	.byte	0x1
	.4byte	0x52b
	.uleb128 0x1a
	.4byte	0x537
	.uleb128 0x1b
	.4byte	0x550
	.byte	0
	.byte	0
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x385
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x316
	.uleb128 0x1e
	.byte	0x8
	.4byte	0x385
	.uleb128 0x9
	.byte	0x8
	.byte	0x4
	.4byte	.LASF905
	.uleb128 0x1f
	.byte	0x8
	.uleb128 0x13
	.4byte	.LASF906
	.byte	0xa
	.byte	0x27
	.4byte	0x385
	.uleb128 0x20
	.string	"Hex"
	.byte	0xb
	.byte	0x1a
	.4byte	0x568
	.uleb128 0x18
	.4byte	.LASF908
	.byte	0x8
	.byte	0xb
	.byte	0x10
	.4byte	0x5eb
	.uleb128 0x21
	.string	"num"
	.byte	0xb
	.byte	0x16
	.4byte	0x135
	.byte	0
	.uleb128 0x22
	.4byte	.LASF909
	.byte	0x2
	.byte	0x10
	.4byte	.LASF911
	.byte	0x1
	.4byte	0x594
	.4byte	0x59f
	.uleb128 0x1a
	.4byte	0x648
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x22
	.4byte	.LASF909
	.byte	0x2
	.byte	0x14
	.4byte	.LASF912
	.byte	0x1
	.4byte	0x5b3
	.4byte	0x5be
	.uleb128 0x1a
	.4byte	0x648
	.uleb128 0x1b
	.4byte	0x550
	.byte	0
	.uleb128 0x19
	.4byte	.LASF913
	.byte	0x2
	.byte	0x18
	.4byte	.LASF914
	.4byte	0x653
	.byte	0x1
	.4byte	0x5d6
	.4byte	0x5dc
	.uleb128 0x1a
	.4byte	0x659
	.byte	0
	.uleb128 0x23
	.4byte	.LASF948
	.4byte	0x1c6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x568
	.uleb128 0x11
	.4byte	0x316
	.4byte	0x5fb
	.uleb128 0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF915
	.byte	0xc
	.byte	0x16
	.4byte	0x5f0
	.uleb128 0x18
	.4byte	.LASF916
	.byte	0x8
	.byte	0x1
	.byte	0x6
	.4byte	0x638
	.uleb128 0x25
	.string	"PC"
	.byte	0x1
	.byte	0x8
	.4byte	0x213
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF944
	.byte	0x1
	.byte	0xa
	.4byte	.LASF945
	.byte	0x1
	.4byte	0x631
	.uleb128 0x1a
	.4byte	0x63d
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x606
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x638
	.uleb128 0xb
	.4byte	0x63d
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x568
	.uleb128 0xb
	.4byte	0x648
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x30f
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x5eb
	.uleb128 0xb
	.4byte	0x659
	.uleb128 0x18
	.4byte	.LASF917
	.byte	0x8
	.byte	0x1
	.byte	0x14
	.4byte	0x8b3
	.uleb128 0x27
	.4byte	.LASF918
	.byte	0x1
	.byte	0x16
	.4byte	0x213
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF919
	.byte	0x1
	.byte	0x17
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF920
	.byte	0x1
	.byte	0x18
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF921
	.byte	0x1
	.byte	0x19
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x36
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF922
	.byte	0x1
	.byte	0x1a
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x34
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"SH0"
	.byte	0x1
	.byte	0x1b
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x32
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"TG0"
	.byte	0x1
	.byte	0x1c
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x30
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF923
	.byte	0x1
	.byte	0x1d
	.4byte	0x213
	.byte	0x8
	.byte	0x6
	.byte	0x2a
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"A1"
	.byte	0x1
	.byte	0x1e
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x29
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF924
	.byte	0x1
	.byte	0x1f
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x28
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF925
	.byte	0x1
	.byte	0x20
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x26
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF926
	.byte	0x1
	.byte	0x21
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"SH1"
	.byte	0x1
	.byte	0x22
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x22
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"TG1"
	.byte	0x1
	.byte	0x23
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0x20
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"IPS"
	.byte	0x1
	.byte	0x24
	.4byte	0x213
	.byte	0x8
	.byte	0x3
	.byte	0x1d
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF927
	.byte	0x1
	.byte	0x25
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"AS"
	.byte	0x1
	.byte	0x26
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF928
	.byte	0x1
	.byte	0x27
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF929
	.byte	0x1
	.byte	0x28
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"HA"
	.byte	0x1
	.byte	0x29
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0x1
	.uleb128 0x25
	.string	"HD"
	.byte	0x1
	.byte	0x2a
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x17
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF930
	.byte	0x1
	.byte	0x2b
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF931
	.byte	0x1
	.byte	0x2c
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF932
	.byte	0x1
	.byte	0x2d
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x14
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF933
	.byte	0x1
	.byte	0x2e
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF934
	.byte	0x1
	.byte	0x2f
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x12
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF935
	.byte	0x1
	.byte	0x30
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF936
	.byte	0x1
	.byte	0x31
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x10
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF937
	.byte	0x1
	.byte	0x32
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0xf
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF938
	.byte	0x1
	.byte	0x33
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0xe
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF939
	.byte	0x1
	.byte	0x34
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0xd
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF940
	.byte	0x1
	.byte	0x35
	.4byte	0x213
	.byte	0x8
	.byte	0x2
	.byte	0xb
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF941
	.byte	0x1
	.byte	0x36
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0xa
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF942
	.byte	0x1
	.byte	0x37
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x9
	.byte	0
	.byte	0x1
	.uleb128 0x27
	.4byte	.LASF943
	.byte	0x1
	.byte	0x38
	.4byte	0x213
	.byte	0x8
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0x1
	.uleb128 0x26
	.4byte	.LASF944
	.byte	0x1
	.byte	0x3a
	.4byte	.LASF946
	.byte	0x1
	.4byte	0x8ac
	.uleb128 0x1a
	.4byte	0x8b8
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x664
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x8b3
	.uleb128 0xb
	.4byte	0x8b8
	.uleb128 0x11
	.4byte	0x30f
	.4byte	0x8ce
	.uleb128 0x24
	.byte	0
	.uleb128 0x13
	.4byte	.LASF947
	.byte	0x3
	.byte	0x9
	.4byte	0x8c3
	.uleb128 0x28
	.4byte	0x5be
	.4byte	0x8fc
	.8byte	.LFB33
	.8byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fc
	.4byte	0x929
	.uleb128 0x29
	.4byte	.LASF949
	.4byte	0x65f
	.4byte	.LLST1
	.uleb128 0x2a
	.8byte	.LVL78
	.4byte	0x1345
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF965
	.byte	0x2
	.byte	0x1f
	.4byte	.LASF966
	.4byte	0x543
	.8byte	.LFB32
	.8byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9a7
	.uleb128 0x23
	.4byte	.LASF948
	.4byte	0x1c6
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"out"
	.byte	0x2
	.byte	0x1f
	.4byte	0x543
	.4byte	.LLST2
	.uleb128 0x2d
	.string	"hf"
	.byte	0x2
	.byte	0x1f
	.4byte	0x9a7
	.4byte	.LLST3
	.uleb128 0x2e
	.8byte	.LVL81
	.4byte	0x8d9
	.4byte	0x992
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2a
	.8byte	.LVL82
	.4byte	0x4d1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x8
	.4byte	0x5eb
	.uleb128 0x2f
	.4byte	0x580
	.byte	0
	.4byte	0x9bb
	.4byte	0x9d0
	.uleb128 0x30
	.4byte	.LASF949
	.4byte	0x64e
	.uleb128 0x31
	.string	"num"
	.byte	0x2
	.byte	0x10
	.4byte	0x135
	.byte	0
	.uleb128 0x32
	.4byte	0x9ad
	.4byte	.LASF967
	.4byte	0x9f7
	.8byte	.LFB30
	.8byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f7
	.4byte	0xa06
	.uleb128 0x33
	.4byte	0x9bb
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x33
	.4byte	0x9c4
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x34
	.4byte	.LASF950
	.byte	0x3
	.byte	0xd
	.4byte	0x1c6
	.8byte	.LFB28
	.8byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc42
	.uleb128 0x35
	.string	"tcr"
	.byte	0x3
	.byte	0xf
	.4byte	0x664
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.string	"pc"
	.byte	0x3
	.byte	0x14
	.4byte	0x606
	.4byte	.LLST4
	.uleb128 0x37
	.4byte	0xc5e
	.8byte	.LBB25
	.8byte	.LBE25-.LBB25
	.byte	0x3
	.byte	0xf
	.4byte	0xa7a
	.uleb128 0x38
	.8byte	.LBB26
	.8byte	.LBE26-.LBB26
	.uleb128 0x39
	.4byte	0xc72
	.4byte	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0xc42
	.8byte	.LBB27
	.8byte	.LBE27-.LBB27
	.byte	0x3
	.byte	0x13
	.4byte	0xa9f
	.uleb128 0x3a
	.4byte	0xc52
	.4byte	.LLST6
	.byte	0
	.uleb128 0x37
	.4byte	0x1309
	.8byte	.LBB29
	.8byte	.LBE29-.LBB29
	.byte	0x3
	.byte	0x14
	.4byte	0xad6
	.uleb128 0x38
	.8byte	.LBB30
	.8byte	.LBE30-.LBB30
	.uleb128 0x39
	.4byte	0x131d
	.4byte	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x12ed
	.8byte	.LBB31
	.8byte	.LBE31-.LBB31
	.byte	0x3
	.byte	0x17
	.4byte	0xaf7
	.uleb128 0x3b
	.4byte	0x12fd
	.byte	0
	.uleb128 0x37
	.4byte	0x1309
	.8byte	.LBB33
	.8byte	.LBE33-.LBB33
	.byte	0x3
	.byte	0x1a
	.4byte	0xb2e
	.uleb128 0x38
	.8byte	.LBB34
	.8byte	.LBE34-.LBB34
	.uleb128 0x39
	.4byte	0x131d
	.4byte	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x37
	.4byte	0x1329
	.8byte	.LBB35
	.8byte	.LBE35-.LBB35
	.byte	0x3
	.byte	0x1a
	.4byte	0xbe8
	.uleb128 0x3b
	.4byte	0x133b
	.uleb128 0x2e
	.8byte	.LVL93
	.4byte	0x4d1
	.4byte	0xb73
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC37
	.byte	0
	.uleb128 0x2e
	.8byte	.LVL94
	.4byte	0x4d1
	.4byte	0xb92
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC38
	.byte	0
	.uleb128 0x3c
	.8byte	.LVL95
	.4byte	0xbad
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x8f
	.sleb128 88
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x84
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.8byte	.LVL96
	.4byte	0x929
	.4byte	0xbcc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x85
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x8f
	.sleb128 88
	.byte	0
	.uleb128 0x2a
	.8byte	.LVL97
	.4byte	0x4d1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x2e
	.8byte	.LVL85
	.4byte	0xc7e
	.4byte	0xc01
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x8f
	.sleb128 80
	.byte	0
	.uleb128 0x2e
	.8byte	.LVL98
	.4byte	0x4d1
	.4byte	0xc26
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x83
	.sleb128 0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC39
	.byte	0
	.uleb128 0x2a
	.8byte	.LVL99
	.4byte	0x4d1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC40
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF953
	.byte	0x1
	.byte	0x63
	.4byte	.LASF955
	.byte	0x3
	.4byte	0xc5e
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.byte	0x63
	.4byte	0x664
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF951
	.byte	0x1
	.byte	0x63
	.4byte	.LASF952
	.4byte	0x664
	.byte	0x3
	.4byte	0xc7e
	.uleb128 0x3f
	.string	"res"
	.byte	0x1
	.byte	0x63
	.4byte	0x664
	.byte	0
	.uleb128 0x28
	.4byte	0x89c
	.4byte	0xca1
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca1
	.4byte	0x12ed
	.uleb128 0x29
	.4byte	.LASF949
	.4byte	0x8be
	.4byte	.LLST0
	.uleb128 0x2e
	.8byte	.LVL2
	.4byte	0x4d1
	.4byte	0xccd
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC0
	.byte	0
	.uleb128 0x2e
	.8byte	.LVL3
	.4byte	0x4d1
	.4byte	0xcec
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC1
	.byte	0
	.uleb128 0x40
	.8byte	.LVL4
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL5
	.4byte	0x4d1
	.4byte	0xd18
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC2
	.byte	0
	.uleb128 0x40
	.8byte	.LVL6
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL7
	.4byte	0x4d1
	.4byte	0xd44
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC3
	.byte	0
	.uleb128 0x40
	.8byte	.LVL8
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL9
	.4byte	0x4d1
	.4byte	0xd70
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC4
	.byte	0
	.uleb128 0x40
	.8byte	.LVL10
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL11
	.4byte	0x4d1
	.4byte	0xd9c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC5
	.byte	0
	.uleb128 0x40
	.8byte	.LVL12
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL13
	.4byte	0x4d1
	.4byte	0xdc8
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC6
	.byte	0
	.uleb128 0x40
	.8byte	.LVL14
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL15
	.4byte	0x4d1
	.4byte	0xdf4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC7
	.byte	0
	.uleb128 0x40
	.8byte	.LVL16
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL17
	.4byte	0x4d1
	.4byte	0xe20
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC8
	.byte	0
	.uleb128 0x40
	.8byte	.LVL18
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL19
	.4byte	0x4d1
	.4byte	0xe4c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC9
	.byte	0
	.uleb128 0x40
	.8byte	.LVL20
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL21
	.4byte	0x4d1
	.4byte	0xe78
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC10
	.byte	0
	.uleb128 0x40
	.8byte	.LVL22
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL23
	.4byte	0x4d1
	.4byte	0xea4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC11
	.byte	0
	.uleb128 0x40
	.8byte	.LVL24
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL25
	.4byte	0x4d1
	.4byte	0xed0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC12
	.byte	0
	.uleb128 0x40
	.8byte	.LVL26
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL27
	.4byte	0x4d1
	.4byte	0xefc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC13
	.byte	0
	.uleb128 0x40
	.8byte	.LVL28
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL29
	.4byte	0x4d1
	.4byte	0xf28
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC14
	.byte	0
	.uleb128 0x40
	.8byte	.LVL30
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL31
	.4byte	0x4d1
	.4byte	0xf54
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC15
	.byte	0
	.uleb128 0x40
	.8byte	.LVL32
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL33
	.4byte	0x4d1
	.4byte	0xf80
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC16
	.byte	0
	.uleb128 0x40
	.8byte	.LVL34
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL35
	.4byte	0x4d1
	.4byte	0xfac
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC17
	.byte	0
	.uleb128 0x40
	.8byte	.LVL36
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL37
	.4byte	0x4d1
	.4byte	0xfd8
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC18
	.byte	0
	.uleb128 0x40
	.8byte	.LVL38
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL39
	.4byte	0x4d1
	.4byte	0x1004
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC19
	.byte	0
	.uleb128 0x40
	.8byte	.LVL40
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL41
	.4byte	0x4d1
	.4byte	0x1030
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC20
	.byte	0
	.uleb128 0x40
	.8byte	.LVL42
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL43
	.4byte	0x4d1
	.4byte	0x105c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC21
	.byte	0
	.uleb128 0x40
	.8byte	.LVL44
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL45
	.4byte	0x4d1
	.4byte	0x1088
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC22
	.byte	0
	.uleb128 0x40
	.8byte	.LVL46
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL47
	.4byte	0x4d1
	.4byte	0x10b4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC23
	.byte	0
	.uleb128 0x40
	.8byte	.LVL48
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL49
	.4byte	0x4d1
	.4byte	0x10e0
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC24
	.byte	0
	.uleb128 0x40
	.8byte	.LVL50
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL51
	.4byte	0x4d1
	.4byte	0x110c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC25
	.byte	0
	.uleb128 0x40
	.8byte	.LVL52
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL53
	.4byte	0x4d1
	.4byte	0x1138
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC26
	.byte	0
	.uleb128 0x40
	.8byte	.LVL54
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL55
	.4byte	0x4d1
	.4byte	0x1164
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC27
	.byte	0
	.uleb128 0x40
	.8byte	.LVL56
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL57
	.4byte	0x4d1
	.4byte	0x1190
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC28
	.byte	0
	.uleb128 0x40
	.8byte	.LVL58
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL59
	.4byte	0x4d1
	.4byte	0x11bc
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC29
	.byte	0
	.uleb128 0x40
	.8byte	.LVL60
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL61
	.4byte	0x4d1
	.4byte	0x11e8
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC30
	.byte	0
	.uleb128 0x40
	.8byte	.LVL62
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL63
	.4byte	0x4d1
	.4byte	0x1214
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC31
	.byte	0
	.uleb128 0x40
	.8byte	.LVL64
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL65
	.4byte	0x4d1
	.4byte	0x1240
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC32
	.byte	0
	.uleb128 0x40
	.8byte	.LVL66
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL67
	.4byte	0x4d1
	.4byte	0x126c
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC33
	.byte	0
	.uleb128 0x40
	.8byte	.LVL68
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL69
	.4byte	0x4d1
	.4byte	0x1298
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC34
	.byte	0
	.uleb128 0x40
	.8byte	.LVL70
	.4byte	0x4f4
	.uleb128 0x2e
	.8byte	.LVL71
	.4byte	0x4d1
	.4byte	0x12c4
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC35
	.byte	0
	.uleb128 0x40
	.8byte	.LVL72
	.4byte	0x4f4
	.uleb128 0x2a
	.8byte	.LVL73
	.4byte	0x4d1
	.uleb128 0x2b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.8byte	.LC36
	.byte	0
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF954
	.byte	0x1
	.byte	0x11
	.4byte	.LASF956
	.byte	0x3
	.4byte	0x1309
	.uleb128 0x31
	.string	"val"
	.byte	0x1
	.byte	0x11
	.4byte	0x606
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF957
	.byte	0x1
	.byte	0x11
	.4byte	.LASF958
	.4byte	0x606
	.byte	0x3
	.4byte	0x1329
	.uleb128 0x3f
	.string	"res"
	.byte	0x1
	.byte	0x11
	.4byte	0x606
	.byte	0
	.uleb128 0x41
	.4byte	0x621
	.4byte	0x133b
	.byte	0x3
	.4byte	0x133b
	.4byte	0x1345
	.uleb128 0x30
	.4byte	.LASF949
	.4byte	0x643
	.byte	0
	.uleb128 0x42
	.4byte	.LASF968
	.4byte	.LASF969
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF968
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
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
	.uleb128 0x3
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x39
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
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
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x88
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x3b
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x5
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
	.uleb128 0x6c
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0xe
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xe
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
	.uleb128 0x30
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x32
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
	.uleb128 0xe
	.uleb128 0x32
	.uleb128 0xb
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0xe
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0xe
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.8byte	.LVL76
	.8byte	.LVL77
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL77
	.8byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST2:
	.8byte	.LVL79
	.8byte	.LVL80
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL80
	.8byte	.LVL83
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL83
	.8byte	.LFE32
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST3:
	.8byte	.LVL79
	.8byte	.LVL81-1
	.2byte	0x1
	.byte	0x51
	.8byte	.LVL81-1
	.8byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST4:
	.8byte	.LVL90
	.8byte	.LVL92
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LLST5:
	.8byte	.LVL84
	.8byte	.LVL85-1
	.2byte	0x1
	.byte	0x51
	.8byte	0
	.8byte	0
.LLST6:
	.8byte	.LVL86
	.8byte	.LVL87
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST7:
	.8byte	.LVL87
	.8byte	.LVL88
	.2byte	0x1
	.byte	0x50
	.8byte	0
	.8byte	0
.LLST8:
	.8byte	.LVL91
	.8byte	.LVL100
	.2byte	0x1
	.byte	0x64
	.8byte	0
	.8byte	0
.LLST0:
	.8byte	.LVL0
	.8byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.8byte	.LVL1
	.8byte	.LVL74
	.2byte	0x1
	.byte	0x63
	.8byte	.LVL74
	.8byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	.LFB7
	.8byte	.LFE7-.LFB7
	.8byte	.LFB30
	.8byte	.LFE30-.LFB30
	.8byte	.LFB33
	.8byte	.LFE33-.LFB33
	.8byte	.LFB32
	.8byte	.LFE32-.LFB32
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.Ltext0
	.8byte	.Letext0
	.8byte	.LFB7
	.8byte	.LFE7
	.8byte	.LFB30
	.8byte	.LFE30
	.8byte	.LFB33
	.8byte	.LFE33
	.8byte	.LFB32
	.8byte	.LFE32
	.8byte	0
	.8byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF36
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF37
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF38
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF39
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF40
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF42
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF43
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF44
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF45
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF46
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF47
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF48
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF49
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF50
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF51
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF52
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF53
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF54
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF55
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF56
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF57
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF58
	.byte	0x5
	.uleb128 0x3c
	.4byte	.LASF59
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF60
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF61
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF62
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF63
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF64
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF65
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF66
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF67
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF68
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF69
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF70
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF71
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF73
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF74
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF75
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF76
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF77
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF78
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF79
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF80
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF81
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF82
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF83
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF85
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF87
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF88
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF89
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF90
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0x5d
	.4byte	.LASF92
	.byte	0x5
	.uleb128 0x5e
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF94
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF95
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF96
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF97
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF98
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF99
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF100
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF101
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF102
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF103
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF104
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF105
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF106
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF107
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF108
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF109
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF110
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF111
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF113
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF114
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF115
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF116
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF117
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF118
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF119
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF120
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF121
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF122
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF123
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF124
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF125
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF126
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF127
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF128
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF129
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF130
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF131
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF132
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF133
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF134
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF135
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF136
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF137
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF138
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF139
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF140
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF141
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF142
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF144
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF145
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF146
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF147
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF148
	.byte	0x5
	.uleb128 0x96
	.4byte	.LASF149
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF150
	.byte	0x5
	.uleb128 0x98
	.4byte	.LASF151
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF152
	.byte	0x5
	.uleb128 0x9a
	.4byte	.LASF153
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF154
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF155
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF156
	.byte	0x5
	.uleb128 0x9e
	.4byte	.LASF157
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF158
	.byte	0x5
	.uleb128 0xa0
	.4byte	.LASF159
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF160
	.byte	0x5
	.uleb128 0xa2
	.4byte	.LASF161
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF162
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF163
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF164
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF165
	.byte	0x5
	.uleb128 0xa7
	.4byte	.LASF166
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF167
	.byte	0x5
	.uleb128 0xa9
	.4byte	.LASF168
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF169
	.byte	0x5
	.uleb128 0xab
	.4byte	.LASF170
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF171
	.byte	0x5
	.uleb128 0xad
	.4byte	.LASF172
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF173
	.byte	0x5
	.uleb128 0xaf
	.4byte	.LASF174
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF175
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF176
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF177
	.byte	0x5
	.uleb128 0xb3
	.4byte	.LASF178
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF179
	.byte	0x5
	.uleb128 0xb5
	.4byte	.LASF180
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF181
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF182
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF183
	.byte	0x5
	.uleb128 0xb9
	.4byte	.LASF184
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF185
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF186
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF187
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF188
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF189
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF190
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF191
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF192
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF193
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF194
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF195
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF196
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF197
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF198
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF199
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF200
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF201
	.byte	0x5
	.uleb128 0xcb
	.4byte	.LASF202
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF203
	.byte	0x5
	.uleb128 0xcd
	.4byte	.LASF204
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF205
	.byte	0x5
	.uleb128 0xcf
	.4byte	.LASF206
	.byte	0x5
	.uleb128 0xd0
	.4byte	.LASF207
	.byte	0x5
	.uleb128 0xd1
	.4byte	.LASF208
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF209
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF210
	.byte	0x5
	.uleb128 0xd4
	.4byte	.LASF211
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF212
	.byte	0x5
	.uleb128 0xd6
	.4byte	.LASF213
	.byte	0x5
	.uleb128 0xd7
	.4byte	.LASF214
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF215
	.byte	0x5
	.uleb128 0xd9
	.4byte	.LASF216
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF217
	.byte	0x5
	.uleb128 0xdb
	.4byte	.LASF218
	.byte	0x5
	.uleb128 0xdc
	.4byte	.LASF219
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF220
	.byte	0x5
	.uleb128 0xde
	.4byte	.LASF221
	.byte	0x5
	.uleb128 0xdf
	.4byte	.LASF222
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF223
	.byte	0x5
	.uleb128 0xe1
	.4byte	.LASF224
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF225
	.byte	0x5
	.uleb128 0xe3
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0xe4
	.4byte	.LASF227
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF228
	.byte	0x5
	.uleb128 0xe6
	.4byte	.LASF229
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF230
	.byte	0x5
	.uleb128 0xe8
	.4byte	.LASF231
	.byte	0x5
	.uleb128 0xe9
	.4byte	.LASF232
	.byte	0x5
	.uleb128 0xea
	.4byte	.LASF233
	.byte	0x5
	.uleb128 0xeb
	.4byte	.LASF234
	.byte	0x5
	.uleb128 0xec
	.4byte	.LASF235
	.byte	0x5
	.uleb128 0xed
	.4byte	.LASF236
	.byte	0x5
	.uleb128 0xee
	.4byte	.LASF237
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF238
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF239
	.byte	0x5
	.uleb128 0xf1
	.4byte	.LASF240
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF241
	.byte	0x5
	.uleb128 0xf3
	.4byte	.LASF242
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF243
	.byte	0x5
	.uleb128 0xf5
	.4byte	.LASF244
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF245
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF246
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF247
	.byte	0x5
	.uleb128 0xf9
	.4byte	.LASF248
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF249
	.byte	0x5
	.uleb128 0xfb
	.4byte	.LASF250
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF251
	.byte	0x5
	.uleb128 0xfd
	.4byte	.LASF252
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF253
	.byte	0x5
	.uleb128 0xff
	.4byte	.LASF254
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF255
	.byte	0x5
	.uleb128 0x101
	.4byte	.LASF256
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF257
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF258
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF259
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF260
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF261
	.byte	0x5
	.uleb128 0x107
	.4byte	.LASF262
	.byte	0x5
	.uleb128 0x108
	.4byte	.LASF263
	.byte	0x5
	.uleb128 0x109
	.4byte	.LASF264
	.byte	0x5
	.uleb128 0x10a
	.4byte	.LASF265
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF266
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF267
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF268
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF269
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF270
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF271
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF272
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF273
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF274
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF275
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF276
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF277
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF278
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF279
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF280
	.byte	0x5
	.uleb128 0x11a
	.4byte	.LASF281
	.byte	0x5
	.uleb128 0x11b
	.4byte	.LASF282
	.byte	0x5
	.uleb128 0x11c
	.4byte	.LASF283
	.byte	0x5
	.uleb128 0x11d
	.4byte	.LASF284
	.byte	0x5
	.uleb128 0x11e
	.4byte	.LASF285
	.byte	0x5
	.uleb128 0x11f
	.4byte	.LASF286
	.byte	0x5
	.uleb128 0x120
	.4byte	.LASF287
	.byte	0x5
	.uleb128 0x121
	.4byte	.LASF288
	.byte	0x5
	.uleb128 0x122
	.4byte	.LASF289
	.byte	0x5
	.uleb128 0x123
	.4byte	.LASF290
	.byte	0x5
	.uleb128 0x124
	.4byte	.LASF291
	.byte	0x5
	.uleb128 0x125
	.4byte	.LASF292
	.byte	0x5
	.uleb128 0x126
	.4byte	.LASF293
	.byte	0x5
	.uleb128 0x127
	.4byte	.LASF294
	.byte	0x5
	.uleb128 0x128
	.4byte	.LASF295
	.byte	0x5
	.uleb128 0x129
	.4byte	.LASF296
	.byte	0x5
	.uleb128 0x12a
	.4byte	.LASF297
	.byte	0x5
	.uleb128 0x12b
	.4byte	.LASF298
	.byte	0x5
	.uleb128 0x12c
	.4byte	.LASF299
	.byte	0x5
	.uleb128 0x12d
	.4byte	.LASF300
	.byte	0x5
	.uleb128 0x12e
	.4byte	.LASF301
	.byte	0x5
	.uleb128 0x12f
	.4byte	.LASF302
	.byte	0x5
	.uleb128 0x130
	.4byte	.LASF303
	.byte	0x5
	.uleb128 0x131
	.4byte	.LASF304
	.byte	0x5
	.uleb128 0x132
	.4byte	.LASF305
	.byte	0x5
	.uleb128 0x133
	.4byte	.LASF306
	.byte	0x5
	.uleb128 0x134
	.4byte	.LASF307
	.byte	0x5
	.uleb128 0x135
	.4byte	.LASF308
	.byte	0x5
	.uleb128 0x136
	.4byte	.LASF309
	.byte	0x5
	.uleb128 0x137
	.4byte	.LASF310
	.byte	0x5
	.uleb128 0x138
	.4byte	.LASF311
	.byte	0x5
	.uleb128 0x139
	.4byte	.LASF312
	.byte	0x5
	.uleb128 0x13a
	.4byte	.LASF313
	.byte	0x5
	.uleb128 0x13b
	.4byte	.LASF314
	.byte	0x5
	.uleb128 0x13c
	.4byte	.LASF315
	.byte	0x5
	.uleb128 0x13d
	.4byte	.LASF316
	.byte	0x5
	.uleb128 0x13e
	.4byte	.LASF317
	.byte	0x5
	.uleb128 0x13f
	.4byte	.LASF318
	.byte	0x5
	.uleb128 0x140
	.4byte	.LASF319
	.byte	0x5
	.uleb128 0x141
	.4byte	.LASF320
	.byte	0x5
	.uleb128 0x142
	.4byte	.LASF321
	.byte	0x5
	.uleb128 0x143
	.4byte	.LASF322
	.byte	0x5
	.uleb128 0x144
	.4byte	.LASF323
	.byte	0x5
	.uleb128 0x145
	.4byte	.LASF324
	.byte	0x5
	.uleb128 0x146
	.4byte	.LASF325
	.byte	0x5
	.uleb128 0x147
	.4byte	.LASF326
	.byte	0x5
	.uleb128 0x148
	.4byte	.LASF327
	.byte	0x5
	.uleb128 0x149
	.4byte	.LASF328
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF329
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF330
	.byte	0x5
	.uleb128 0x14c
	.4byte	.LASF331
	.byte	0x5
	.uleb128 0x14d
	.4byte	.LASF332
	.byte	0x5
	.uleb128 0x14e
	.4byte	.LASF333
	.byte	0x5
	.uleb128 0x14f
	.4byte	.LASF334
	.byte	0x5
	.uleb128 0x150
	.4byte	.LASF335
	.byte	0x5
	.uleb128 0x151
	.4byte	.LASF336
	.byte	0x5
	.uleb128 0x152
	.4byte	.LASF337
	.byte	0x5
	.uleb128 0x153
	.4byte	.LASF338
	.byte	0x5
	.uleb128 0x154
	.4byte	.LASF339
	.byte	0x5
	.uleb128 0x155
	.4byte	.LASF340
	.byte	0x5
	.uleb128 0x156
	.4byte	.LASF341
	.byte	0x5
	.uleb128 0x157
	.4byte	.LASF342
	.byte	0x5
	.uleb128 0x158
	.4byte	.LASF343
	.byte	0x5
	.uleb128 0x159
	.4byte	.LASF344
	.byte	0x5
	.uleb128 0x15a
	.4byte	.LASF345
	.byte	0x5
	.uleb128 0x15b
	.4byte	.LASF346
	.byte	0x5
	.uleb128 0x15c
	.4byte	.LASF347
	.byte	0x5
	.uleb128 0x15d
	.4byte	.LASF348
	.byte	0x5
	.uleb128 0x15e
	.4byte	.LASF349
	.byte	0x5
	.uleb128 0x15f
	.4byte	.LASF350
	.byte	0x5
	.uleb128 0x160
	.4byte	.LASF351
	.byte	0x5
	.uleb128 0x161
	.4byte	.LASF352
	.byte	0x5
	.uleb128 0x162
	.4byte	.LASF353
	.byte	0x5
	.uleb128 0x163
	.4byte	.LASF354
	.byte	0x5
	.uleb128 0x164
	.4byte	.LASF355
	.byte	0x5
	.uleb128 0x165
	.4byte	.LASF356
	.byte	0x5
	.uleb128 0x166
	.4byte	.LASF357
	.byte	0x5
	.uleb128 0x167
	.4byte	.LASF358
	.byte	0x5
	.uleb128 0x168
	.4byte	.LASF359
	.byte	0x5
	.uleb128 0x169
	.4byte	.LASF360
	.byte	0x5
	.uleb128 0x16a
	.4byte	.LASF361
	.byte	0x5
	.uleb128 0x16b
	.4byte	.LASF362
	.byte	0x5
	.uleb128 0x16c
	.4byte	.LASF363
	.byte	0x5
	.uleb128 0x16d
	.4byte	.LASF364
	.byte	0x5
	.uleb128 0x16e
	.4byte	.LASF365
	.byte	0x5
	.uleb128 0x16f
	.4byte	.LASF366
	.byte	0x5
	.uleb128 0x170
	.4byte	.LASF367
	.byte	0x5
	.uleb128 0x171
	.4byte	.LASF368
	.byte	0x5
	.uleb128 0x172
	.4byte	.LASF369
	.byte	0x5
	.uleb128 0x173
	.4byte	.LASF370
	.byte	0x5
	.uleb128 0x174
	.4byte	.LASF371
	.byte	0x5
	.uleb128 0x175
	.4byte	.LASF372
	.byte	0x6
	.uleb128 0x176
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF374
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF375
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF376
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF377
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF378
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF382
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF383
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF384
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF385
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF386
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF387
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF390
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF392
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF181
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF397
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF400
	.file 14 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xe
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF408
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/registers_defines.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF409
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF410
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x7
	.4byte	.Ldebug_macro2
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro3
	.file 16 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\os_defines.h"
	.byte	0x3
	.uleb128 0x215
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF470
	.byte	0x4
	.file 17 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\cpu_defines.h"
	.byte	0x3
	.uleb128 0x218
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF471
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF662
	.file 18 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x12
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x8
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF786
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF801
	.file 19 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF802
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF803
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF804
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF805
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cxx_macros.h.3.fefa049488069cd6cd331047dff9d5a5,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF402
	.byte	0x5
	.uleb128 0x6
	.4byte	.LASF403
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF404
	.byte	0x5
	.uleb128 0x8
	.4byte	.LASF405
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF406
	.byte	0x5
	.uleb128 0xa
	.4byte	.LASF407
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cstddef.40.7f59894b65c26f8fc669473914a0ef3e,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF413
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF414
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF415
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF416
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.31.e68a8d620d96aaccde842e0fab34b412,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF452
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF456
	.byte	0x6
	.uleb128 0x1a6
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF465
	.byte	0x5
	.uleb128 0x203
	.4byte	.LASF466
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF467
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF469
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.541.196d063ba1197a346d0a259d6af90630,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21d
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF474
	.byte	0x5
	.uleb128 0x239
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x23a
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x253
	.4byte	.LASF478
	.byte	0x2
	.uleb128 0x256
	.string	"min"
	.byte	0x2
	.uleb128 0x257
	.string	"max"
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x263
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x266
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x282
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x28b
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x291
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x29a
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x2a6
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x2c7
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x2e8
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x2eb
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x2f1
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x303
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x327
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x333
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x339
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x33c
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x33f
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x348
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x34b
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x34e
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x351
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x357
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x36c
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x36f
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x372
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x37b
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x37e
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x381
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x387
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x38d
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x390
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x396
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x39c
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x39f
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x3a2
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x3a5
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x3a8
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x3db
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x3de
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x3e7
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x3ea
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x3f3
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x3f6
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x3f9
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x3ff
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x405
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x408
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x427
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x42a
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x436
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x43c
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x43f
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x448
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x44b
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x44e
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x457
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x460
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x463
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x466
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x46c
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x46f
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x472
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x475
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x478
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x548
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x54e
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x551
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x554
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x557
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x55a
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x55d
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x56f
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x57b
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x57f
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x583
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x587
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x590
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x594
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x598
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x59c
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x59f
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x5a6
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x5ac
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5b1
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5c0
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x5c3
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x5c6
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x5e6
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x5ee
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x5f2
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x5fa
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x60b
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x60e
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x614
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x61a
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x620
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x639
	.4byte	.LASF607
	.byte	0x5
	.uleb128 0x648
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x64f
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x652
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x658
	.4byte	.LASF611
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.096871ec3ca5abfedfa76e8d05f4a8d6,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF619
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF623
	.byte	0x6
	.uleb128 0xa1
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF636
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF640
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF651
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF652
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF654
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF655
	.byte	0x6
	.uleb128 0x126
	.4byte	.LASF656
	.byte	0x6
	.uleb128 0x15b
	.4byte	.LASF412
	.byte	0x6
	.uleb128 0x191
	.4byte	.LASF657
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF658
	.byte	0x6
	.uleb128 0x19c
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF659
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF661
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF663
	.byte	0x6
	.uleb128 0x64
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF665
	.byte	0x6
	.uleb128 0x66
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF667
	.byte	0x6
	.uleb128 0x6a
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF669
	.byte	0x6
	.uleb128 0x6e
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF671
	.byte	0x6
	.uleb128 0x70
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF673
	.byte	0x6
	.uleb128 0x74
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF675
	.byte	0x6
	.uleb128 0x78
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF677
	.byte	0x6
	.uleb128 0x7a
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF679
	.byte	0x6
	.uleb128 0x7e
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF681
	.byte	0x6
	.uleb128 0x82
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF683
	.byte	0x6
	.uleb128 0x84
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF685
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF687
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF689
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF691
	.byte	0x6
	.uleb128 0x90
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF693
	.byte	0x6
	.uleb128 0x92
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF695
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF697
	.byte	0x6
	.uleb128 0x96
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF699
	.byte	0x6
	.uleb128 0x98
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF701
	.byte	0x6
	.uleb128 0x9a
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF703
	.byte	0x6
	.uleb128 0x9c
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF705
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF707
	.byte	0x6
	.uleb128 0xa0
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF709
	.byte	0x6
	.uleb128 0xa2
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF711
	.byte	0x6
	.uleb128 0xa5
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF713
	.byte	0x6
	.uleb128 0xa7
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF715
	.byte	0x6
	.uleb128 0xa9
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF717
	.byte	0x6
	.uleb128 0xab
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF719
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF721
	.byte	0x6
	.uleb128 0xaf
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF723
	.byte	0x6
	.uleb128 0xb1
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF725
	.byte	0x6
	.uleb128 0xb3
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF727
	.byte	0x6
	.uleb128 0xb5
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF729
	.byte	0x6
	.uleb128 0xb7
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF731
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF733
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF735
	.byte	0x6
	.uleb128 0xbf
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF737
	.byte	0x6
	.uleb128 0xc1
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF739
	.byte	0x6
	.uleb128 0xc5
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF741
	.byte	0x6
	.uleb128 0xc9
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF743
	.byte	0x6
	.uleb128 0xcb
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF745
	.byte	0x6
	.uleb128 0xcd
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF747
	.byte	0x6
	.uleb128 0xd2
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF749
	.byte	0x6
	.uleb128 0xd4
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF751
	.byte	0x6
	.uleb128 0xd7
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF753
	.byte	0x6
	.uleb128 0xd9
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF755
	.byte	0x6
	.uleb128 0xdc
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF757
	.byte	0x6
	.uleb128 0xdf
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF759
	.byte	0x6
	.uleb128 0xe1
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF761
	.byte	0x6
	.uleb128 0xe4
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF763
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF765
	.byte	0x6
	.uleb128 0xef
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF767
	.byte	0x6
	.uleb128 0xf1
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF769
	.byte	0x6
	.uleb128 0xf3
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF771
	.byte	0x6
	.uleb128 0xf5
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF773
	.byte	0x6
	.uleb128 0xf7
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF775
	.byte	0x6
	.uleb128 0xf9
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF777
	.byte	0x6
	.uleb128 0xfb
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF779
	.byte	0x6
	.uleb128 0xfd
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF781
	.byte	0x6
	.uleb128 0xff
	.4byte	.LASF782
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF783
	.byte	0x6
	.uleb128 0x101
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF785
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.def.h.11.7c3aff63746d06c2b218490acda1ebb4,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF795
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF796
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF797
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF798
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF799
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF800
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.registers_defines.h.16.a2ace2cb503b46454d62fff897832b16,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF806
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF807
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF844
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF102:
	.string	"__cpp_aggregate_nsdmi 201304"
.LASF854:
	.string	"int8_t"
.LASF275:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF333:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF53:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF348:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF142:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF839:
	.string	"DEFINE_REG_WRITE_HARD_CODED(name) AS_MACRO void writeReg ##name(Reg ##name val) { __asm__ __volatile( \"mov x0,%0 \\n\\t\" \".4byte 0b\" __stringify(ENCODE_MSR) __stringify(ENCODE_ ##name) __stringify(ENCODE_X0) \"\\n\\t\" : :\"r\"(val) ); }"
.LASF853:
	.string	"size_t"
.LASF407:
	.string	"PERIPHBASE 0x08000000"
.LASF932:
	.string	"HWU059"
.LASF946:
	.string	"_ZNK10RegTCR_EL14dumpEv"
.LASF367:
	.string	"__ARM_ARCH_PROFILE 65"
.LASF675:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF952:
	.string	"_Z14readRegTCR_EL1v"
.LASF803:
	.string	"INCLUDE_INTEGERINTEGERFORMATTER_H_ "
.LASF526:
	.string	"_GLIBCXX_HAVE_INTTYPES_H 1"
.LASF127:
	.string	"__SIZE_WIDTH__ 64"
.LASF332:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF20:
	.string	"__LP64__ 1"
.LASF426:
	.string	"_GLIBCXX_DEPRECATED __attribute__ ((__deprecated__))"
.LASF385:
	.string	"__ARM_FEATURE_NUMERIC_MAXMIN 1"
.LASF320:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF831:
	.string	"ICC_SRE_EL2_GCC_REPR SYS_REG_GCC_REPR(3,4,12,9,5)"
.LASF548:
	.string	"_GLIBCXX_HAVE_SQRTF 1"
.LASF765:
	.string	"WINT_MIN __WINT_MIN__"
.LASF730:
	.string	"INT_FAST64_MAX"
.LASF589:
	.string	"_GLIBCXX98_USE_C99_STDLIB 1"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF541:
	.string	"_GLIBCXX_HAVE_MEMALIGN 1"
.LASF472:
	.string	"_GLIBCXX_PSEUDO_VISIBILITY(V) "
.LASF301:
	.string	"__FLT64X_DIG__ 33"
.LASF686:
	.string	"UINT64_MAX"
.LASF309:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF798:
	.string	"HEX64(a,b,c,d) 0x ##a ##b ##c ##d"
.LASF882:
	.string	"uint_fast64_t"
.LASF858:
	.string	"int32_t"
.LASF683:
	.string	"INT64_MAX __INT64_MAX__"
.LASF744:
	.string	"INTMAX_MIN"
.LASF23:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF205:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF447:
	.string	"_GLIBCXX_DEFAULT_ABI_TAG _GLIBCXX_ABI_TAG_CXX11"
.LASF363:
	.string	"__ARM_ARCH_ISA_A64 1"
.LASF933:
	.string	"HWU060"
.LASF934:
	.string	"HWU061"
.LASF935:
	.string	"HWU062"
.LASF585:
	.string	"_GLIBCXX11_USE_C99_STDLIB 1"
.LASF317:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF170:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF209:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF33:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF761:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF323:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF475:
	.string	"_GLIBCXX_TXN_SAFE "
.LASF214:
	.string	"__FP_FAST_FMA 1"
.LASF196:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF47:
	.string	"__INT8_TYPE__ signed char"
.LASF238:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF250:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF532:
	.string	"_GLIBCXX_HAVE_LIMIT_FSIZE 0"
.LASF741:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF38:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF685:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF96:
	.string	"__cpp_alias_templates 200704"
.LASF823:
	.string	"ICC_IGRPEN0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,6)"
.LASF157:
	.string	"__UINT8_C(c) c"
.LASF48:
	.string	"__INT16_TYPE__ short int"
.LASF658:
	.string	"NULL __null"
.LASF570:
	.string	"_GLIBCXX_HAVE_VSWSCANF 1"
.LASF103:
	.string	"__cpp_variable_templates 201304"
.LASF307:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF731:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF340:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF221:
	.string	"__DECIMAL_DIG__ 36"
.LASF400:
	.string	"ARCH_IS_host 1"
.LASF4:
	.string	"__STDC_HOSTED__ 0"
.LASF827:
	.string	"ICC_RPR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,3)"
.LASF386:
	.string	"__ARM_NEON 1"
.LASF588:
	.string	"_GLIBCXX98_USE_C99_STDIO 1"
.LASF872:
	.string	"uint_least16_t"
.LASF252:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF679:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF249:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF826:
	.string	"ICC_PMR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,4,6,0)"
.LASF139:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF875:
	.string	"int_fast8_t"
.LASF610:
	.string	"_GLIBCXX_VERBOSE 1"
.LASF412:
	.string	"__need_wchar_t"
.LASF246:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF540:
	.string	"_GLIBCXX_HAVE_MBSTATE_T 1"
.LASF681:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF620:
	.string	"_BSD_PTRDIFF_T_ "
.LASF825:
	.string	"ICC_IGRPEN1_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,7)"
.LASF242:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF261:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF640:
	.string	"__size_t "
.LASF171:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF264:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF707:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF504:
	.string	"_GLIBCXX_HAVE_EOVERFLOW 1"
.LASF905:
	.string	"double"
.LASF494:
	.string	"_GLIBCXX_HAVE_ECANCELED 1"
.LASF629:
	.string	"_T_SIZE "
.LASF779:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF32:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF452:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CONTAINER _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF331:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF703:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF200:
	.string	"__DBL_MANT_DIG__ 53"
.LASF285:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF503:
	.string	"_GLIBCXX_HAVE_ENOTSUP 1"
.LASF642:
	.string	"__WCHAR_T__ "
.LASF260:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF881:
	.string	"uint_fast32_t"
.LASF443:
	.string	"_GLIBCXX_USE_CXX11_ABI 1"
.LASF172:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF319:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF800:
	.string	"BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h"
.LASF657:
	.string	"NULL"
.LASF305:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF119:
	.string	"__SCHAR_WIDTH__ 8"
.LASF167:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF782:
	.string	"INTMAX_C"
.LASF799:
	.string	"BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d"
.LASF712:
	.string	"INT_FAST8_MAX"
.LASF405:
	.string	"CONFIG_RAM_SIZE 0x40000000"
.LASF391:
	.string	"__AARCH64_CMODEL_SMALL__ 1"
.LASF42:
	.string	"__INTMAX_TYPE__ long int"
.LASF923:
	.string	"T1SZ"
.LASF908:
	.string	"IntegerFormatter<16>"
.LASF492:
	.string	"_GLIBCXX_HAVE_COSHF 1"
.LASF590:
	.string	"_GLIBCXX98_USE_C99_WCHAR 1"
.LASF732:
	.string	"INT_FAST64_MIN"
.LASF409:
	.string	"INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_REGISTERS_BASE_H_ "
.LASF957:
	.string	"readRegPC"
.LASF759:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF298:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF723:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF627:
	.string	"_SYS_SIZE_T_H "
.LASF282:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF59:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF847:
	.string	"long int"
.LASF531:
	.string	"_GLIBCXX_HAVE_LIMIT_DATA 0"
.LASF757:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF507:
	.string	"_GLIBCXX_HAVE_EPROTO 1"
.LASF292:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF299:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF966:
	.string	"_ZlsILi16EER6OutputS1_RK16IntegerFormatterIXT_EE"
.LASF955:
	.string	"_Z15writeRegTCR_EL110RegTCR_EL1"
.LASF329:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF63:
	.string	"__INT_FAST8_TYPE__ int"
.LASF624:
	.string	"__size_t__ "
.LASF274:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF70:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF413:
	.string	"__need_ptrdiff_t"
.LASF775:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF55:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF440:
	.string	"_GLIBCXX_NOEXCEPT_QUAL "
.LASF36:
	.string	"__SIZEOF_POINTER__ 8"
.LASF564:
	.string	"_GLIBCXX_HAVE_TANHF 1"
.LASF450:
	.string	"_GLIBCXX_END_NAMESPACE_VERSION "
.LASF311:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF724:
	.string	"INT_FAST32_MAX"
.LASF248:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF693:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF950:
	.string	"main"
.LASF483:
	.string	"_GLIBCXX_USE_C99_WCHAR _GLIBCXX11_USE_C99_WCHAR"
.LASF226:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF863:
	.string	"short unsigned int"
.LASF509:
	.string	"_GLIBCXX_HAVE_ETIMEDOUT 1"
.LASF591:
	.string	"_GLIBCXX_ATOMIC_BUILTINS 1"
.LASF717:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF289:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF636:
	.string	"_SIZE_T_DECLARED "
.LASF669:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF754:
	.string	"SIG_ATOMIC_MIN"
.LASF384:
	.string	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC"
.LASF430:
	.string	"_GLIBCXX14_CONSTEXPR constexpr"
.LASF806:
	.string	"DUMP_FIELD_MODIFIER(field,fieldMod) \",\" #field \" = \" << fieldMod"
.LASF175:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF37:
	.string	"__GNUG__ 7"
.LASF457:
	.string	"_GLIBCXX_LONG_DOUBLE_COMPAT"
.LASF433:
	.string	"_GLIBCXX_NOEXCEPT noexcept"
.LASF189:
	.string	"__FLT_MAX_EXP__ 128"
.LASF22:
	.string	"__SIZEOF_LONG__ 8"
.LASF569:
	.string	"_GLIBCXX_HAVE_VFWSCANF 1"
.LASF488:
	.string	"_GLIBCXX_HAVE_ATANF 1"
.LASF26:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF83:
	.string	"__cpp_lambdas 200907"
.LASF220:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF421:
	.string	"_GLIBCXX_CONST __attribute__ ((__const__))"
.LASF9:
	.string	"__LINARO_RELEASE__ 201711"
.LASF164:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF268:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF325:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF662:
	.string	"_GLIBCXX_CSTDINT 1"
.LASF188:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF874:
	.string	"uint_least64_t"
.LASF422:
	.string	"_GLIBCXX_NORETURN __attribute__ ((__noreturn__))"
.LASF191:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF462:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_BEGIN_NAMESPACE_CXX11"
.LASF593:
	.string	"_GLIBCXX_HOSTED 1"
.LASF855:
	.string	"signed char"
.LASF860:
	.string	"uint8_t"
.LASF664:
	.string	"INT8_MAX"
.LASF745:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF379:
	.string	"__ARM_FEATURE_FMA 1"
.LASF254:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF337:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF928:
	.string	"TBI0"
.LASF929:
	.string	"TBI1"
.LASF792:
	.string	"FATAL \"[FATAL] \""
.LASF382:
	.string	"__ARM_FP16_ARGS 1"
.LASF500:
	.string	"_GLIBCXX_HAVE_ENOSR 1"
.LASF584:
	.string	"_GLIBCXX11_USE_C99_STDIO 1"
.LASF100:
	.string	"__cpp_constexpr 201304"
.LASF750:
	.string	"PTRDIFF_MIN"
.LASF126:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF158:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF448:
	.string	"_GLIBCXX_INLINE_VERSION 0"
.LASF99:
	.string	"__cpp_generic_lambdas 201304"
.LASF544:
	.string	"_GLIBCXX_HAVE_POWF 1"
.LASF958:
	.string	"_Z9readRegPCv"
.LASF512:
	.string	"_GLIBCXX_HAVE_EXPF 1"
.LASF404:
	.string	"CONFIG_RAM_START 0x40000000"
.LASF263:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF510:
	.string	"_GLIBCXX_HAVE_ETXTBSY 1"
.LASF431:
	.string	"_GLIBCXX17_CONSTEXPR "
.LASF104:
	.string	"__cpp_digit_separators 201309"
.LASF635:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF69:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF861:
	.string	"unsigned char"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF419:
	.string	"__GLIBCXX__ 20171011"
.LASF253:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF516:
	.string	"_GLIBCXX_HAVE_FLOORF 1"
.LASF190:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF330:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF701:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF179:
	.string	"__GCC_IEC_559 2"
.LASF302:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF579:
	.string	"_GLIBCXX_PACKAGE_TARNAME \"libstdc++\""
.LASF912:
	.string	"_ZN16IntegerFormatterILi16EEC4EPv"
.LASF416:
	.string	"__need_wint_t"
.LASF937:
	.string	"HWU160"
.LASF938:
	.string	"HWU161"
.LASF939:
	.string	"HWU162"
.LASF371:
	.string	"__ARM_PCS_AAPCS64 1"
.LASF141:
	.string	"__UINT16_MAX__ 0xffff"
.LASF801:
	.string	"INCLUDE_PRINTK_H_ "
.LASF844:
	.string	"SETUP_REG_PC(name) AS_MACRO Reg ##name readReg ##name() { Reg ##name res; __asm__ __volatile__(\"adr %0,#0\\n\\t\":\"=r\"(res)); return res; }AS_MACRO void writeReg ##name(Reg ##name val) { __asm__ __volatile__(\"br %0\\n\\t\"::\"r\"(val)); }"
.LASF109:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF513:
	.string	"_GLIBCXX_HAVE_FABSF 1"
.LASF161:
	.string	"__UINT32_C(c) c ## U"
.LASF830:
	.string	"ICC_SRE_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,5)"
.LASF720:
	.string	"INT_FAST16_MIN"
.LASF129:
	.string	"__INTMAX_C(c) c ## L"
.LASF219:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF758:
	.string	"WCHAR_MAX"
.LASF24:
	.string	"__SIZEOF_SHORT__ 2"
.LASF543:
	.string	"_GLIBCXX_HAVE_MODFF 1"
.LASF154:
	.string	"__INT64_C(c) c ## L"
.LASF727:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF755:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF338:
	.string	"__STRICT_ANSI__ 1"
.LASF608:
	.string	"_GLIBCXX_USE_TMPNAM 1"
.LASF790:
	.string	"INFO \"[INFO] \""
.LASF398:
	.string	"__FLT_EVAL_METHOD_C99__ 0"
.LASF131:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF560:
	.string	"_GLIBCXX_HAVE_SYS_TIME_H 1"
.LASF280:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF356:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF40:
	.string	"__WCHAR_TYPE__ unsigned int"
.LASF763:
	.string	"WINT_MAX __WINT_MAX__"
.LASF887:
	.string	"char"
.LASF535:
	.string	"_GLIBCXX_HAVE_LOCALE_H 1"
.LASF341:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF90:
	.string	"__cpp_variadic_templates 200704"
.LASF751:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF66:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF482:
	.string	"_GLIBCXX_USE_C99_STDLIB _GLIBCXX11_USE_C99_STDLIB"
.LASF476:
	.string	"_GLIBCXX_TXN_SAFE_DYN "
.LASF21:
	.string	"__SIZEOF_INT__ 4"
.LASF530:
	.string	"_GLIBCXX_HAVE_LIMIT_AS 0"
.LASF718:
	.string	"INT_FAST16_MAX"
.LASF791:
	.string	"WARNING \"[WARNING] \""
.LASF873:
	.string	"uint_least32_t"
.LASF549:
	.string	"_GLIBCXX_HAVE_STDALIGN_H 1"
.LASF420:
	.string	"_GLIBCXX_PURE __attribute__ ((__pure__))"
.LASF235:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF947:
	.string	"main_end"
.LASF786:
	.string	"_GCC_WRAP_STDINT_H "
.LASF920:
	.string	"EPD0"
.LASF924:
	.string	"EPD1"
.LASF511:
	.string	"_GLIBCXX_HAVE_EWOULDBLOCK 1"
.LASF140:
	.string	"__UINT8_MAX__ 0xff"
.LASF194:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF888:
	.string	"EMPTY_STR"
.LASF424:
	.string	"_GLIBCXX_VISIBILITY(V) __attribute__ ((__visibility__ (#V)))"
.LASF916:
	.string	"RegPC"
.LASF833:
	.string	"SETUP_REG_GCC_REPR(name) DEFINE_REG_READ(Reg ##name,name ##_GCC_REPR) DEFINE_REG_WRITE(Reg ##name,name ##_GCC_REPR)"
.LASF241:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF84:
	.string	"__cpp_range_based_for 200907"
.LASF107:
	.string	"__GXX_ABI_VERSION 1011"
.LASF498:
	.string	"_GLIBCXX_HAVE_ENOLINK 1"
.LASF964:
	.string	"decltype(nullptr)"
.LASF147:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF276:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF868:
	.string	"int_least16_t"
.LASF401:
	.string	"CXX_MACROS_H__ "
.LASF349:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF74:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF486:
	.string	"_GLIBCXX_HAVE_AS_SYMVER_DIRECTIVE 1"
.LASF446:
	.string	"_GLIBCXX_END_NAMESPACE_CXX11 }"
.LASF460:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL "
.LASF480:
	.string	"_GLIBCXX_USE_C99_COMPLEX _GLIBCXX11_USE_C99_COMPLEX"
.LASF889:
	.string	"koutBufSize"
.LASF595:
	.string	"_GLIBCXX_STDIO_EOF -1"
.LASF456:
	.string	"_GLIBCXX_END_NAMESPACE_ALGO _GLIBCXX_END_NAMESPACE_VERSION"
.LASF653:
	.string	"__INT_WCHAR_T_H "
.LASF907:
	.string	"Output"
.LASF459:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL "
.LASF822:
	.string	"ICC_IAR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,0)"
.LASF481:
	.string	"_GLIBCXX_USE_C99_STDIO _GLIBCXX11_USE_C99_STDIO"
.LASF353:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF643:
	.string	"_WCHAR_T "
.LASF581:
	.string	"_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\""
.LASF572:
	.string	"_GLIBCXX_HAVE_WCHAR_H 1"
.LASF257:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF639:
	.string	"_SIZET_ "
.LASF228:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF318:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF523:
	.string	"_GLIBCXX_HAVE_IEEEFP_H 1"
.LASF291:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF537:
	.string	"_GLIBCXX_HAVE_LOGF 1"
.LASF365:
	.string	"__ARM_ALIGN_MAX_STACK_PWR 16"
.LASF477:
	.string	"_GLIBCXX_FAST_MATH 0"
.LASF969:
	.string	"itos"
.LASF668:
	.string	"UINT8_MAX"
.LASF463:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_END_NAMESPACE_CXX11"
.LASF747:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF134:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF571:
	.string	"_GLIBCXX_HAVE_VWSCANF 1"
.LASF156:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF811:
	.string	"SYS_REG_GCC_REPR(op0,op1,crn,crm,op2) s ##op0 ##_ ##op1 ##_ ##c ##crn ##_ ##c ##crm ##_ ##op2"
.LASF86:
	.string	"__cpp_decltype 200707"
.LASF520:
	.string	"_GLIBCXX_HAVE_GETS 1"
.LASF312:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF199:
	.string	"__FP_FAST_FMAF 1"
.LASF793:
	.string	"RUN_TEST(testCallable) if(!(testCallable())) { kout << FATAL << #testCallable << \" failed.\\n\";}"
.LASF764:
	.string	"WINT_MIN"
.LASF211:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF680:
	.string	"UINT32_MAX"
.LASF576:
	.string	"_GLIBCXX_PACKAGE_BUGREPORT \"\""
.LASF149:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF183:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF468:
	.string	"_GLIBCXX_END_EXTERN_C }"
.LASF327:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF551:
	.string	"_GLIBCXX_HAVE_STDINT_H 1"
.LASF906:
	.string	"kout"
.LASF945:
	.string	"_ZNK5RegPC4dumpEv"
.LASF841:
	.string	"DEFINE_REG_READ_MEM_MAPPED(name) AS_MACRO Reg ##name readReg ##name() { return *reinterpret_cast<Reg ##name*>(name ##_MEM_MAPPED_ADDR);}"
.LASF415:
	.string	"__need_NULL"
.LASF429:
	.string	"_GLIBCXX_USE_CONSTEXPR constexpr"
.LASF428:
	.string	"_GLIBCXX_CONSTEXPR constexpr"
.LASF336:
	.string	"__USER_LABEL_PREFIX__ "
.LASF714:
	.string	"INT_FAST8_MIN"
.LASF713:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF150:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF58:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF910:
	.string	"_ZN6OutputlsEPv"
.LASF458:
	.string	"_GLIBCXX_NAMESPACE_LDBL "
.LASF967:
	.string	"_ZN16IntegerFormatterILi16EEC2Em"
.LASF144:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF354:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF368:
	.string	"__ARM_FEATURE_CLZ 1"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF410:
	.string	"DEF_H__ "
.LASF377:
	.string	"__ARM_BIG_ENDIAN"
.LASF895:
	.string	"operator<<"
.LASF794:
	.string	"TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))"
.LASF372:
	.string	"__ARM_SIZEOF_WCHAR_T 4"
.LASF290:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF485:
	.string	"_GLIBCXX_HAVE_ASINF 1"
.LASF574:
	.string	"_GLIBCXX_HAVE_WCTYPE_H 1"
.LASF631:
	.string	"_SIZE_T_ "
.LASF499:
	.string	"_GLIBCXX_HAVE_ENOSPC 1"
.LASF715:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF807:
	.string	"DUMP_FIELD(field) DUMP_FIELD_MODIFIER(field,field)"
.LASF788:
	.string	"arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))"
.LASF155:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF197:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF136:
	.string	"__INT8_MAX__ 0x7f"
.LASF441:
	.string	"_GLIBCXX_EXTERN_TEMPLATE 1"
.LASF734:
	.string	"UINT_FAST64_MAX"
.LASF64:
	.string	"__INT_FAST16_TYPE__ int"
.LASF355:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF387:
	.string	"__ARM_FEATURE_CRC32"
.LASF470:
	.string	"_GLIBCXX_OS_DEFINES 1"
.LASF848:
	.string	"long unsigned int"
.LASF201:
	.string	"__DBL_DIG__ 15"
.LASF550:
	.string	"_GLIBCXX_HAVE_STDBOOL_H 1"
.LASF180:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF5:
	.string	"__GNUC__ 7"
.LASF913:
	.string	"format"
.LASF52:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF814:
	.string	"ICC_CTLR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,4)"
.LASF222:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF168:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF303:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF80:
	.string	"__cpp_raw_strings 200710"
.LASF316:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF726:
	.string	"INT_FAST32_MIN"
.LASF628:
	.string	"_T_SIZE_ "
.LASF182:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF361:
	.string	"__aarch64__ 1"
.LASF225:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF436:
	.string	"_GLIBCXX_THROW(_EXC) "
.LASF722:
	.string	"UINT_FAST16_MAX"
.LASF756:
	.string	"SIZE_MAX"
.LASF67:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF239:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF93:
	.string	"__cpp_nsdmi 200809"
.LASF575:
	.string	"LT_OBJDIR \".libs/\""
.LASF85:
	.string	"__cpp_static_assert 200410"
.LASF490:
	.string	"_GLIBCXX_HAVE_COMPLEX_H 1"
.LASF870:
	.string	"int_least64_t"
.LASF19:
	.string	"_LP64 1"
.LASF746:
	.string	"UINTMAX_MAX"
.LASF306:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF949:
	.string	"this"
.LASF425:
	.string	"_GLIBCXX_USE_DEPRECATED 1"
.LASF244:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF688:
	.string	"INT_LEAST8_MAX"
.LASF659:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF665:
	.string	"INT8_MAX __INT8_MAX__"
.LASF300:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF207:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF346:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF812:
	.string	"ICC_BPR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,3)"
.LASF884:
	.string	"uintptr_t"
.LASF204:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF297:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF185:
	.string	"__FLT_MANT_DIG__ 24"
.LASF605:
	.string	"_GLIBCXX_USE_INT128 1"
.LASF65:
	.string	"__INT_FAST32_TYPE__ int"
.LASF943:
	.string	"RES0_3"
.LASF87:
	.string	"__cpp_attributes 200809"
.LASF621:
	.string	"___int_ptrdiff_t_h "
.LASF17:
	.string	"__OPTIMIZE__ 1"
.LASF536:
	.string	"_GLIBCXX_HAVE_LOG10F 1"
.LASF128:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF828:
	.string	"ICC_SGI0R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,7)"
.LASF266:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF18:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF616:
	.string	"_T_PTRDIFF_ "
.LASF661:
	.string	"_GXX_NULLPTR_T "
.LASF1:
	.string	"__cplusplus 201402L"
.LASF130:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF233:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF956:
	.string	"_Z10writeRegPC5RegPC"
.LASF116:
	.string	"__WINT_MIN__ 0U"
.LASF408:
	.string	"INCLUDE_SYSTEM_COMMON_REGISTERS_H__ "
.LASF614:
	.string	"_ANSI_STDDEF_H "
.LASF132:
	.string	"__INTMAX_WIDTH__ 64"
.LASF417:
	.string	"_GLIBCXX_CXX_CONFIG_H 1"
.LASF777:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF529:
	.string	"_GLIBCXX_HAVE_LDEXPF 1"
.LASF343:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF795:
	.string	"__stringify_1(x) #x"
.LASF283:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF644:
	.string	"_T_WCHAR_ "
.LASF677:
	.string	"INT32_MAX __INT32_MAX__"
.LASF521:
	.string	"_GLIBCXX_HAVE_HYPOT 1"
.LASF953:
	.string	"writeRegTCR_EL1"
.LASF114:
	.string	"__WCHAR_MIN__ 0U"
.LASF236:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF351:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF954:
	.string	"writeRegPC"
.LASF414:
	.string	"__need_size_t"
.LASF374:
	.string	"__ARM_ARCH 8"
.LASF599:
	.string	"_GLIBCXX_USE_C99_INTTYPES_TR1 1"
.LASF184:
	.string	"__FLT_RADIX__ 2"
.LASF256:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF113:
	.string	"__WCHAR_MAX__ 0xffffffffU"
.LASF607:
	.string	"_GLIBCXX_USE_SC_NPROCESSORS_ONLN 1"
.LASF670:
	.string	"INT16_MAX"
.LASF736:
	.string	"INTPTR_MAX"
.LASF45:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF641:
	.string	"__wchar_t__ "
.LASF229:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF10:
	.string	"__LINARO_SPIN__ 0"
.LASF123:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF813:
	.string	"ICC_BPR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,3)"
.LASF615:
	.string	"_PTRDIFF_T "
.LASF561:
	.string	"_GLIBCXX_HAVE_SYS_TYPES_H 1"
.LASF601:
	.string	"_GLIBCXX_USE_C99_STDINT_TR1 1"
.LASF106:
	.string	"__cpp_threadsafe_static_init 200806"
.LASF528:
	.string	"_GLIBCXX_HAVE_LC_MESSAGES 1"
.LASF444:
	.string	"_GLIBCXX_NAMESPACE_CXX11 __cxx11::"
.LASF808:
	.string	"DEFINE_REG_READ(regTypeInCXX,regNameInAsm) AS_MACRO regTypeInCXX read ##regTypeInCXX(){ regTypeInCXX res;__asm__ __volatile__(\"mrs %0,\" __stringify(regNameInAsm) \"\\n\\t\":\"=r\"(res));return res;}"
.LASF352:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF451:
	.string	"_GLIBCXX_STD_C std"
.LASF743:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF262:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF646:
	.string	"__WCHAR_T "
.LASF869:
	.string	"int_least32_t"
.LASF223:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF524:
	.string	"_GLIBCXX_HAVE_INT64_T 1"
.LASF43:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF125:
	.string	"__WINT_WIDTH__ 32"
.LASF819:
	.string	"ICC_HPPIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,2)"
.LASF818:
	.string	"ICC_EOIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,1)"
.LASF29:
	.string	"__CHAR_BIT__ 8"
.LASF358:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF478:
	.string	"__N(msgid) (msgid)"
.LASF484:
	.string	"_GLIBCXX_HAVE_ACOSF 1"
.LASF886:
	.string	"uintmax_t"
.LASF403:
	.string	"UART_BASE 0x09000000"
.LASF682:
	.string	"INT64_MAX"
.LASF234:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF92:
	.string	"__cpp_delegating_constructors 200604"
.LASF77:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF455:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_ALGO _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF609:
	.string	"_GLIBCXX_USE_WCHAR_T 1"
.LASF34:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF678:
	.string	"INT32_MIN"
.LASF151:
	.string	"__INT32_C(c) c"
.LASF739:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF735:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF917:
	.string	"RegTCR_EL1"
.LASF72:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF388:
	.string	"__AARCH64_CMODEL_TINY__"
.LASF518:
	.string	"_GLIBCXX_HAVE_FREXPF 1"
.LASF789:
	.string	"NULL_CHAR '\\0'"
.LASF41:
	.string	"__WINT_TYPE__ unsigned int"
.LASF770:
	.string	"INT32_C"
.LASF673:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF820:
	.string	"ICC_HPPIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,2)"
.LASF389:
	.string	"__AARCH64_CMODEL_SMALL__"
.LASF909:
	.string	"IntegerFormatter"
.LASF61:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF865:
	.string	"unsigned int"
.LASF633:
	.string	"_SIZE_T_DEFINED_ "
.LASF963:
	.string	"max_align_t"
.LASF187:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF271:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF583:
	.string	"_GLIBCXX11_USE_C99_MATH 1"
.LASF514:
	.string	"_GLIBCXX_HAVE_FCNTL_H 1"
.LASF438:
	.string	"_GLIBCXX_THROW_OR_ABORT(_EXC) (__builtin_abort())"
.LASF442:
	.string	"_GLIBCXX_USE_DUAL_ABI 1"
.LASF883:
	.string	"intptr_t"
.LASF293:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF269:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF186:
	.string	"__FLT_DIG__ 6"
.LASF921:
	.string	"IRGN0"
.LASF925:
	.string	"IRGN1"
.LASF434:
	.string	"_GLIBCXX_NOEXCEPT_IF(_COND) noexcept(_COND)"
.LASF689:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF181:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF489:
	.string	"_GLIBCXX_HAVE_CEILF 1"
.LASF192:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF108:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF702:
	.string	"INT_LEAST32_MIN"
.LASF968:
	.string	"_Z4itosmjPcm"
.LASF91:
	.string	"__cpp_initializer_lists 200806"
.LASF281:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF449:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_VERSION "
.LASF487:
	.string	"_GLIBCXX_HAVE_ATAN2F 1"
.LASF617:
	.string	"_T_PTRDIFF "
.LASF122:
	.string	"__LONG_WIDTH__ 64"
.LASF768:
	.string	"INT16_C"
.LASF322:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF232:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF118:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF691:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF695:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF600:
	.string	"_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF360:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF369:
	.string	"__ARM_FEATURE_IDIV 1"
.LASF35:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF51:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF876:
	.string	"int_fast16_t"
.LASF46:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF687:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF88:
	.string	"__cpp_rvalue_reference 200610"
.LASF120:
	.string	"__SHRT_WIDTH__ 16"
.LASF328:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF411:
	.string	"_GLIBCXX_CSTDDEF 1"
.LASF623:
	.string	"_PTRDIFF_T_DECLARED "
.LASF785:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF277:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF76:
	.string	"__DEPRECATED 1"
.LASF840:
	.string	"SETUP_REG_HARD_CODED(name) DEFINE_REG_READ_HARD_CODED(name) DEFINE_REG_WRITE_HARD_CODED(name)"
.LASF288:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF697:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF198:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF850:
	.string	"__max_align_ld"
.LASF891:
	.string	"UNIT_K"
.LASF402:
	.string	"KERNEL_ADDRESS 0"
.LASF849:
	.string	"__max_align_ll"
.LASF138:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF829:
	.string	"ICC_SGI1R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,5)"
.LASF919:
	.string	"RES0_0"
.LASF927:
	.string	"RES0_1"
.LASF940:
	.string	"RES0_2"
.LASF375:
	.string	"__ARM_SIZEOF_MINIMAL_ENUM 4"
.LASF557:
	.string	"_GLIBCXX_HAVE_SYS_PARAM_H 1"
.LASF247:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF637:
	.string	"___int_size_t_h "
.LASF466:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) "
.LASF94:
	.string	"__cpp_inheriting_constructors 201511"
.LASF845:
	.string	"__gnu_cxx"
.LASF787:
	.string	"AS_MACRO __attribute__((always_inline)) inline"
.LASF835:
	.string	"ENCODE_MRS 11010101001"
.LASF942:
	.string	"NFD1"
.LASF195:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF314:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF738:
	.string	"INTPTR_MIN"
.LASF563:
	.string	"_GLIBCXX_HAVE_TANF 1"
.LASF892:
	.string	"print"
.LASF671:
	.string	"INT16_MAX __INT16_MAX__"
.LASF767:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF871:
	.string	"uint_least8_t"
.LASF215:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF554:
	.string	"_GLIBCXX_HAVE_STRINGS_H 1"
.LASF597:
	.string	"_GLIBCXX_STDIO_SEEK_END 2"
.LASF867:
	.string	"int_least8_t"
.LASF105:
	.string	"__cpp_sized_deallocation 201309"
.LASF626:
	.string	"_SIZE_T "
.LASF651:
	.string	"_WCHAR_T_H "
.LASF893:
	.string	"_ZN6Output5printEPKcm"
.LASF395:
	.string	"__ARM_FEATURE_QRDMX"
.LASF922:
	.string	"ORGN0"
.LASF926:
	.string	"ORGN1"
.LASF479:
	.string	"_GLIBCXX_USE_C99_MATH _GLIBCXX11_USE_C99_MATH"
.LASF230:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF852:
	.string	"long double"
.LASF753:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF773:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF517:
	.string	"_GLIBCXX_HAVE_FMODF 1"
.LASF698:
	.string	"UINT_LEAST16_MAX"
.LASF313:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF273:
	.string	"__FLT128_DIG__ 33"
.LASF145:
	.string	"__INT8_C(c) c"
.LASF251:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF613:
	.string	"_STDDEF_H_ "
.LASF709:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF310:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF202:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF630:
	.string	"__SIZE_T "
.LASF49:
	.string	"__INT32_TYPE__ int"
.LASF667:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF347:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF245:
	.string	"__FLT32_DIG__ 6"
.LASF694:
	.string	"INT_LEAST16_MAX"
.LASF810:
	.string	"SETUP_REG_STD(regname) DEFINE_REG_READ(Reg ##regname,regname) DEFINE_REG_WRITE(Reg ##regname,regname)"
.LASF437:
	.string	"_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT"
.LASF776:
	.string	"UINT16_C"
.LASF101:
	.string	"__cpp_decltype_auto 201304"
.LASF423:
	.string	"_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 1"
.LASF797:
	.string	"HEX32(a,b) 0x ##a ##b"
.LASF227:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF342:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF676:
	.string	"INT32_MAX"
.LASF294:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF439:
	.string	"_GLIBCXX_NOEXCEPT_PARM "
.LASF432:
	.string	"_GLIBCXX17_INLINE "
.LASF461:
	.string	"_GLIBCXX_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_NAMESPACE_CXX11"
.LASF394:
	.string	"__ARM_FEATURE_CRYPTO"
.LASF496:
	.string	"_GLIBCXX_HAVE_EIDRM 1"
.LASF592:
	.string	"_GLIBCXX_FULLY_DYNAMIC_STRING 0"
.LASF582:
	.string	"STDC_HEADERS 1"
.LASF95:
	.string	"__cpp_ref_qualifiers 200710"
.LASF710:
	.string	"UINT_LEAST64_MAX"
.LASF121:
	.string	"__INT_WIDTH__ 32"
.LASF339:
	.string	"__WCHAR_UNSIGNED__ 1"
.LASF796:
	.string	"__stringify(x) __stringify_1(x)"
.LASF471:
	.string	"_GLIBCXX_CPU_DEFINES 1"
.LASF546:
	.string	"_GLIBCXX_HAVE_SINHF 1"
.LASF321:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF890:
	.string	"koutBuf"
.LASF634:
	.string	"_SIZE_T_DEFINED "
.LASF115:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF706:
	.string	"INT_LEAST64_MAX"
.LASF862:
	.string	"uint16_t"
.LASF602:
	.string	"_GLIBCXX_USE_FCHMOD 1"
.LASF832:
	.string	"ICC_SRE_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,5)"
.LASF71:
	.string	"__INTPTR_TYPE__ long int"
.LASF469:
	.string	"_GLIBCXX_USE_ALLOCATOR_NEW 1"
.LASF240:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF772:
	.string	"INT64_C"
.LASF959:
	.string	"GNU C++14 7.2.1 20171011 -march=armv8-a -mlittle-endian -mabi=lp64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti -fsigned-char"
.LASF60:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF674:
	.string	"UINT16_MAX"
.LASF836:
	.string	"ENCODE_ICC_IGRPEN0_EL1 1100011001100110"
.LASF44:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF567:
	.string	"_GLIBCXX_HAVE_USLEEP 1"
.LASF951:
	.string	"readRegTCR_EL1"
.LASF287:
	.string	"__FLT32X_DIG__ 15"
.LASF176:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF376:
	.string	"__AARCH64EB__"
.LASF166:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF558:
	.string	"_GLIBCXX_HAVE_SYS_RESOURCE_H 1"
.LASF505:
	.string	"_GLIBCXX_HAVE_EOWNERDEAD 1"
.LASF396:
	.string	"__FLT_EVAL_METHOD__"
.LASF495:
	.string	"_GLIBCXX_HAVE_ECHILD 1"
.LASF666:
	.string	"INT8_MIN"
.LASF960:
	.string	"../src/arch/qemu_virt/main_vmsa.cpp"
.LASF278:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF366:
	.string	"__ARM_ARCH_8A 1"
.LASF357:
	.string	"__SIZEOF_INT128__ 16"
.LASF729:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF815:
	.string	"ICC_CTLR_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,4)"
.LASF663:
	.string	"_GCC_STDINT_H "
.LASF117:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF578:
	.string	"_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\""
.LASF133:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF153:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF846:
	.string	"__cxx11"
.LASF210:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF632:
	.string	"_BSD_SIZE_T_ "
.LASF760:
	.string	"WCHAR_MIN"
.LASF843:
	.string	"SETUP_REG_MEM_MAPPED(name) DEFINE_REG_READ_MEM_MAPPED(name) DEFINE_REG_WRITE_MEM_MAPPED(name)"
.LASF647:
	.string	"_WCHAR_T_ "
.LASF699:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF645:
	.string	"_T_WCHAR "
.LASF453:
	.string	"_GLIBCXX_END_NAMESPACE_CONTAINER _GLIBCXX_END_NAMESPACE_VERSION"
.LASF380:
	.string	"__ARM_FP 14"
.LASF879:
	.string	"uint_fast8_t"
.LASF914:
	.string	"_ZNK16IntegerFormatterILi16EE6formatEv"
.LASF725:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF163:
	.string	"__UINT64_C(c) c ## UL"
.LASF547:
	.string	"_GLIBCXX_HAVE_SLEEP 1"
.LASF473:
	.string	"_GLIBCXX_WEAK_DEFINITION "
.LASF399:
	.string	"__ELF__ 1"
.LASF81:
	.string	"__cpp_unicode_literals 200710"
.LASF654:
	.string	"_GCC_WCHAR_T "
.LASF62:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF648:
	.string	"_BSD_WCHAR_T_ "
.LASF308:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF392:
	.string	"_ILP32"
.LASF57:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF838:
	.string	"DEFINE_REG_READ_HARD_CODED(name) AS_MACRO Reg ##name readReg ##name() { Reg ##name res; __asm__ __volatile__( \".4byte 0b\" __stringify(ENCODE_MRS) __stringify(ENCODE_ ##name) __stringify(ENCODE_X0) \"\\n\\t\" \"mov %0,x0 \\n\\t\" :\"=r\"(res)); return res; }"
.LASF804:
	.string	"INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ "
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF362:
	.string	"__ARM_64BIT_STATE 1"
.LASF625:
	.string	"__SIZE_T__ "
.LASF218:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF545:
	.string	"_GLIBCXX_HAVE_SINF 1"
.LASF740:
	.string	"UINTPTR_MAX"
.LASF350:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF562:
	.string	"_GLIBCXX_HAVE_S_ISREG 1"
.LASF284:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF295:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF174:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF742:
	.string	"INTMAX_MAX"
.LASF817:
	.string	"ICC_EOIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,1)"
.LASF660:
	.string	"_GCC_MAX_ALIGN_T "
.LASF502:
	.string	"_GLIBCXX_HAVE_ENOTRECOVERABLE 1"
.LASF824:
	.string	"ICC_IGRPEN1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,7)"
.LASF213:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF393:
	.string	"__ILP32__"
.LASF270:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF515:
	.string	"_GLIBCXX_HAVE_FLOAT_H 1"
.LASF944:
	.string	"dump"
.LASF534:
	.string	"_GLIBCXX_HAVE_LIMIT_VMEM 0"
.LASF587:
	.string	"_GLIBCXX98_USE_C99_MATH 1"
.LASF370:
	.string	"__ARM_FEATURE_UNALIGNED 1"
.LASF556:
	.string	"_GLIBCXX_HAVE_STRTOF 1"
.LASF684:
	.string	"INT64_MIN"
.LASF809:
	.string	"DEFINE_REG_WRITE(regTypeInCXX,regNameInAsm) AS_MACRO void write ##regTypeInCXX(regTypeInCXX val){ __asm__ __volatile__(\"msr \" __stringify(regNameInAsm) \",%0 \\n\\t\"::\"r\"(val));}"
.LASF774:
	.string	"UINT8_C"
.LASF208:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF911:
	.string	"_ZN16IntegerFormatterILi16EEC4Em"
.LASF733:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF672:
	.string	"INT16_MIN"
.LASF335:
	.string	"__REGISTER_PREFIX__ "
.LASF334:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF89:
	.string	"__cpp_rvalue_references 200610"
.LASF877:
	.string	"int_fast32_t"
.LASF508:
	.string	"_GLIBCXX_HAVE_ETIME 1"
.LASF28:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF506:
	.string	"_GLIBCXX_HAVE_EPERM 1"
.LASF378:
	.string	"__AARCH64EL__ 1"
.LASF267:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF930:
	.string	"HPD0"
.LASF931:
	.string	"HPD1"
.LASF143:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF464:
	.string	"__glibcxx_assert(_Condition) "
.LASF805:
	.string	"INCLUDE_GENERIC_UTIL_H_ "
.LASF539:
	.string	"_GLIBCXX_HAVE_MACHINE_PARAM_H 1"
.LASF857:
	.string	"short int"
.LASF612:
	.string	"_STDDEF_H "
.LASF728:
	.string	"UINT_FAST32_MAX"
.LASF296:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF159:
	.string	"__UINT16_C(c) c"
.LASF383:
	.string	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC"
.LASF941:
	.string	"NFD0"
.LASF866:
	.string	"uint64_t"
.LASF173:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF454:
	.string	"_GLIBCXX_STD_A std"
.LASF704:
	.string	"UINT_LEAST32_MAX"
.LASF427:
	.string	"_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))"
.LASF304:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF542:
	.string	"_GLIBCXX_HAVE_MEMORY_H 1"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF622:
	.string	"_GCC_PTRDIFF_T "
.LASF603:
	.string	"_GLIBCXX_USE_FCHMODAT 1"
.LASF212:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF711:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF856:
	.string	"int16_t"
.LASF705:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF344:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF580:
	.string	"_GLIBCXX_PACKAGE_URL \"\""
.LASF406:
	.string	"ARCH_IS_qemu_virt "
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF766:
	.string	"INT8_C"
.LASF700:
	.string	"INT_LEAST32_MAX"
.LASF837:
	.string	"ENCODE_X0 00000"
.LASF25:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF324:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF97:
	.string	"__cpp_return_type_deduction 201304"
.LASF577:
	.string	"_GLIBCXX_PACKAGE_NAME \"package-unused\""
.LASF206:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF604:
	.string	"_GLIBCXX_USE_GETTIMEOFDAY 1"
.LASF82:
	.string	"__cpp_user_defined_literals 200809"
.LASF619:
	.string	"_PTRDIFF_T_ "
.LASF769:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF573:
	.string	"_GLIBCXX_HAVE_WCSTOF 1"
.LASF650:
	.string	"_WCHAR_T_DEFINED "
.LASF771:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF373:
	.string	"__ARM_FP_FAST"
.LASF493:
	.string	"_GLIBCXX_HAVE_EBADMSG 1"
.LASF137:
	.string	"__INT16_MAX__ 0x7fff"
.LASF345:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF948:
	.string	"Base"
.LASF565:
	.string	"_GLIBCXX_HAVE_TGMATH_H 1"
.LASF465:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) "
.LASF467:
	.string	"_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {"
.LASF965:
	.string	"operator<< <16>"
.LASF690:
	.string	"INT_LEAST8_MIN"
.LASF272:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF75:
	.string	"__GXX_WEAK__ 1"
.LASF692:
	.string	"UINT_LEAST8_MAX"
.LASF135:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF752:
	.string	"SIG_ATOMIC_MAX"
.LASF566:
	.string	"_GLIBCXX_HAVE_UNISTD_H 1"
.LASF501:
	.string	"_GLIBCXX_HAVE_ENOSTR 1"
.LASF8:
	.string	"__VERSION__ \"7.2.1 20171011\""
.LASF79:
	.string	"__cpp_unicode_characters 200704"
.LASF915:
	.string	"digitsMap"
.LASF559:
	.string	"_GLIBCXX_HAVE_SYS_STAT_H 1"
.LASF359:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF31:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF445:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CXX11 namespace __cxx11 {"
.LASF606:
	.string	"_GLIBCXX_USE_LONG_LONG 1"
.LASF73:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF649:
	.string	"_WCHAR_T_DEFINED_ "
.LASF78:
	.string	"__cpp_binary_literals 201304"
.LASF255:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF315:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF54:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF169:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF652:
	.string	"___int_wchar_t_h "
.LASF598:
	.string	"_GLIBCXX_USE_C99_CTYPE_TR1 1"
.LASF553:
	.string	"_GLIBCXX_HAVE_STRERROR_R 1"
.LASF27:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF821:
	.string	"ICC_IAR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,0)"
.LASF98:
	.string	"__cpp_init_captures 201304"
.LASF39:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF279:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF737:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF596:
	.string	"_GLIBCXX_STDIO_SEEK_CUR 1"
.LASF265:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF749:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF594:
	.string	"_GLIBCXX_MANGLE_SIZE_T m"
.LASF381:
	.string	"__ARM_FP16_FORMAT_IEEE 1"
.LASF716:
	.string	"UINT_FAST8_MAX"
.LASF237:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF111:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF491:
	.string	"_GLIBCXX_HAVE_COSF 1"
.LASF364:
	.string	"__ARM_ALIGN_MAX_PWR 28"
.LASF656:
	.string	"_BSD_WCHAR_T_"
.LASF851:
	.string	"long long int"
.LASF864:
	.string	"uint32_t"
.LASF568:
	.string	"_GLIBCXX_HAVE_UTIME_H 1"
.LASF816:
	.string	"ICC_DIR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,1)"
.LASF231:
	.string	"__FLT16_DIG__ 3"
.LASF178:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF519:
	.string	"_GLIBCXX_HAVE_GETIPINFO 1"
.LASF224:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF880:
	.string	"uint_fast16_t"
.LASF68:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF552:
	.string	"_GLIBCXX_HAVE_STDLIB_H 1"
.LASF525:
	.string	"_GLIBCXX_HAVE_INT64_T_LONG 1"
.LASF474:
	.string	"_GLIBCXX_USE_WEAK_REF __GXX_WEAK__"
.LASF780:
	.string	"UINT64_C"
.LASF112:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF418:
	.string	"_GLIBCXX_RELEASE 7"
.LASF696:
	.string	"INT_LEAST16_MIN"
.LASF962:
	.string	"11max_align_t"
.LASF259:
	.string	"__FLT64_DIG__ 15"
.LASF326:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF193:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF146:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF903:
	.string	"_ZN6OutputlsEPKc"
.LASF56:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF961:
	.string	"D:\\\\Pool\\\\eclipse-workspace_aarch64\\\\chap003\\\\Debug-qemu_virt"
.LASF918:
	.string	"T0SZ"
.LASF533:
	.string	"_GLIBCXX_HAVE_LIMIT_RSS 0"
.LASF784:
	.string	"UINTMAX_C"
.LASF719:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF258:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF217:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF152:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF878:
	.string	"int_fast64_t"
.LASF655:
	.string	"_WCHAR_T_DECLARED "
.LASF538:
	.string	"_GLIBCXX_HAVE_MACHINE_ENDIAN_H 1"
.LASF160:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF555:
	.string	"_GLIBCXX_HAVE_STRING_H 1"
.LASF522:
	.string	"_GLIBCXX_HAVE_ICONV 1"
.LASF783:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF435:
	.string	"_GLIBCXX_USE_NOEXCEPT noexcept"
.LASF802:
	.string	"INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ "
.LASF390:
	.string	"__AARCH64_CMODEL_LARGE__"
.LASF859:
	.string	"int64_t"
.LASF30:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF708:
	.string	"INT_LEAST64_MIN"
.LASF748:
	.string	"PTRDIFF_MAX"
.LASF834:
	.string	"ENCODE_MSR 11010101000"
.LASF936:
	.string	"HWU159"
.LASF618:
	.string	"__PTRDIFF_T "
.LASF397:
	.string	"__FLT_EVAL_METHOD_C99__"
.LASF611:
	.string	"_GTHREAD_USE_MUTEX_TIMEDLOCK 1"
.LASF286:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF124:
	.string	"__WCHAR_WIDTH__ 32"
.LASF762:
	.string	"WINT_MAX"
.LASF148:
	.string	"__INT16_C(c) c"
.LASF721:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF586:
	.string	"_GLIBCXX11_USE_C99_WCHAR 1"
.LASF243:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF177:
	.string	"__INTPTR_WIDTH__ 64"
.LASF203:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF216:
	.string	"__LDBL_DIG__ 33"
.LASF527:
	.string	"_GLIBCXX_HAVE_ISWBLANK 1"
.LASF50:
	.string	"__INT64_TYPE__ long int"
.LASF842:
	.string	"DEFINE_REG_WRITE_MEM_MAPPED(name) AS_MACRO void writeReg ##name(Reg ##name val) { *reinterpret_cast<Reg ##name*>(name ##_MEM_MAPPED_ADDR)=val;}"
.LASF896:
	.string	"_ZN6OutputlsEc"
.LASF902:
	.string	"_ZN6OutputlsEd"
.LASF497:
	.string	"_GLIBCXX_HAVE_ENODATA 1"
.LASF781:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF897:
	.string	"_ZN6OutputlsEh"
.LASF901:
	.string	"_ZN6OutputlsEi"
.LASF899:
	.string	"_ZN6OutputlsEj"
.LASF885:
	.string	"intmax_t"
.LASF904:
	.string	"_ZN6OutputlsEm"
.LASF894:
	.string	"_ZN6Output5printEPKc"
.LASF900:
	.string	"_ZN6OutputlsEs"
.LASF898:
	.string	"_ZN6OutputlsEt"
.LASF638:
	.string	"_GCC_SIZE_T "
.LASF110:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF162:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF165:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF778:
	.string	"UINT32_C"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
