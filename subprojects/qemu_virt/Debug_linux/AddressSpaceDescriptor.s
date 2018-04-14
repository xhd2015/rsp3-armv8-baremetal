	.arch armv8.2-a+crc
	.file	"AddressSpaceDescriptor.cpp"
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
	.text
	.align	2
	.global	_ZN22AddressSpaceDescriptorC2Ev
	.type	_ZN22AddressSpaceDescriptorC2Ev, %function
_ZN22AddressSpaceDescriptorC2Ev:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	ldr	x0, [sp, 8]
	strb	wzr, [x0]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 8]
	ldr	x0, [sp, 8]
	str	xzr, [x0, 16]
	nop
	add	sp, sp, 16
	ret
	.size	_ZN22AddressSpaceDescriptorC2Ev, .-_ZN22AddressSpaceDescriptorC2Ev
	.global	_ZN22AddressSpaceDescriptorC1Ev
	.set	_ZN22AddressSpaceDescriptorC1Ev,_ZN22AddressSpaceDescriptorC2Ev
	.align	2
	.global	_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb
	.type	_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb, %function
_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb:
	sub	sp, sp, #304
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	str	x2, [sp, 8]
	str	w3, [sp, 4]
	strb	w4, [sp, 3]
	strb	w5, [sp, 2]
	strb	w6, [sp, 1]
	ldr	x0, [sp, 24]
	strb	wzr, [x0]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	str	x1, [x0, 8]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 8]
	str	x1, [x0, 16]
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	ldr	w0, [sp, 4]
	str	w0, [sp, 76]
	ldr	x0, [sp, 80]
	str	x0, [sp, 64]
	strb	wzr, [sp, 63]
	mov	w0, 3
	strb	w0, [sp, 62]
	ldr	w0, [sp, 76]
	str	w0, [sp, 56]
	ldr	x0, [sp, 64]
	ldrb	w1, [x0]
	ldrb	w2, [sp, 63]
	ldrb	w0, [sp, 62]
	str	x2, [sp, 48]
	str	x0, [sp, 40]
	ldr	x0, [sp, 48]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 48]
	mov	w3, w0
	ldr	x0, [sp, 40]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 40]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldr	w0, [sp, 56]
	sxtw	x2, w0
	ldrb	w3, [sp, 62]
	ldrb	w0, [sp, 63]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 32]
	ldr	x0, [sp, 32]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 32]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 63]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 64]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 152]
	ldrb	w0, [sp, 3]
	strb	w0, [sp, 151]
	ldr	x0, [sp, 152]
	str	x0, [sp, 136]
	mov	w0, 4
	strb	w0, [sp, 135]
	ldrb	w0, [sp, 151]
	strb	w0, [sp, 134]
	ldr	x0, [sp, 136]
	str	x0, [sp, 120]
	ldrb	w0, [sp, 135]
	strb	w0, [sp, 119]
	ldrb	w0, [sp, 135]
	strb	w0, [sp, 118]
	ldrb	w0, [sp, 134]
	strb	w0, [sp, 117]
	ldr	x0, [sp, 120]
	ldrb	w1, [x0]
	ldrb	w2, [sp, 119]
	ldrb	w0, [sp, 118]
	str	x2, [sp, 104]
	str	x0, [sp, 96]
	ldr	x0, [sp, 104]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 104]
	mov	w3, w0
	ldr	x0, [sp, 96]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 96]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 117]
	ldrb	w3, [sp, 118]
	ldrb	w0, [sp, 119]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 88]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 119]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 120]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 224]
	ldrb	w0, [sp, 2]
	strb	w0, [sp, 223]
	ldr	x0, [sp, 224]
	str	x0, [sp, 208]
	mov	w0, 5
	strb	w0, [sp, 207]
	ldrb	w0, [sp, 223]
	strb	w0, [sp, 206]
	ldr	x0, [sp, 208]
	str	x0, [sp, 192]
	ldrb	w0, [sp, 207]
	strb	w0, [sp, 191]
	ldrb	w0, [sp, 207]
	strb	w0, [sp, 190]
	ldrb	w0, [sp, 206]
	strb	w0, [sp, 189]
	ldr	x0, [sp, 192]
	ldrb	w1, [x0]
	ldrb	w2, [sp, 191]
	ldrb	w0, [sp, 190]
	str	x2, [sp, 176]
	str	x0, [sp, 168]
	ldr	x0, [sp, 176]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 176]
	mov	w3, w0
	ldr	x0, [sp, 168]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 168]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 189]
	ldrb	w3, [sp, 190]
	ldrb	w0, [sp, 191]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 160]
	ldr	x0, [sp, 160]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 160]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 191]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 192]
	strb	w1, [x0]
	ldr	x0, [sp, 24]
	str	x0, [sp, 296]
	ldrb	w0, [sp, 1]
	strb	w0, [sp, 295]
	ldr	x0, [sp, 296]
	str	x0, [sp, 280]
	mov	w0, 6
	strb	w0, [sp, 279]
	ldrb	w0, [sp, 295]
	strb	w0, [sp, 278]
	ldr	x0, [sp, 280]
	str	x0, [sp, 264]
	ldrb	w0, [sp, 279]
	strb	w0, [sp, 263]
	ldrb	w0, [sp, 279]
	strb	w0, [sp, 262]
	ldrb	w0, [sp, 278]
	strb	w0, [sp, 261]
	ldr	x0, [sp, 264]
	ldrb	w1, [x0]
	ldrb	w2, [sp, 263]
	ldrb	w0, [sp, 262]
	str	x2, [sp, 248]
	str	x0, [sp, 240]
	ldr	x0, [sp, 248]
	mov	w2, w0
	mov	x0, -1
	lsr	x2, x0, x2
	ldr	x0, [sp, 248]
	mov	w3, w0
	ldr	x0, [sp, 240]
	sub	w0, w3, w0
	add	w0, w0, 63
	lsl	x2, x2, x0
	ldr	x0, [sp, 240]
	mov	w3, w0
	mov	w0, 63
	sub	w0, w0, w3
	lsr	x0, x2, x0
	and	w0, w0, 255
	mvn	w0, w0
	and	w0, w0, 255
	and	w0, w1, w0
	and	w1, w0, 255
	ldrb	w2, [sp, 261]
	ldrb	w3, [sp, 262]
	ldrb	w0, [sp, 263]
	sub	w0, w3, w0
	add	w0, w0, 1
	sxtw	x0, w0
	str	x0, [sp, 232]
	ldr	x0, [sp, 232]
	mov	w3, w0
	mov	w0, 64
	sub	w0, w0, w3
	mov	x3, -1
	lsl	x3, x3, x0
	ldr	x0, [sp, 232]
	mov	w4, w0
	mov	w0, 64
	sub	w0, w0, w4
	lsr	x0, x3, x0
	and	x2, x2, x0
	ldrb	w0, [sp, 263]
	lsl	x0, x2, x0
	and	w0, w0, 255
	orr	w0, w1, w0
	and	w1, w0, 255
	ldr	x0, [sp, 264]
	strb	w1, [x0]
	nop
	add	sp, sp, 304
	ret
	.size	_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb, .-_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb
	.global	_ZN22AddressSpaceDescriptorC1EPvmNS_4TypeEbbb
	.set	_ZN22AddressSpaceDescriptorC1EPvmNS_4TypeEbbb,_ZN22AddressSpaceDescriptorC2EPvmNS_4TypeEbbb
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
