	.arch armv8.2-a+crc
	.file	"__dso_handle.cpp"
	.text
	.align	2
	.global	__dso_handle
	.type	__dso_handle, %function
__dso_handle:
	nop
	ret
	.size	__dso_handle, .-__dso_handle
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
