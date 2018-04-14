	.arch armv8.2-a+crc
	.file	"VirtualMemoryDefinition.cpp"
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
	.global	_ZN23VirtualMemoryDefinition8MAP_SIZEE
	.align	3
	.type	_ZN23VirtualMemoryDefinition8MAP_SIZEE, %object
	.size	_ZN23VirtualMemoryDefinition8MAP_SIZEE, 32
_ZN23VirtualMemoryDefinition8MAP_SIZEE:
	.xword	549755813888
	.xword	1073741824
	.xword	2097152
	.xword	4096
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
