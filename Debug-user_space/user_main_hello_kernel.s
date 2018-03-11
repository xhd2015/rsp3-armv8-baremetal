	.arch armv8-a
	.file	"user_main_hello_kernel.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.main,"ax",@progbits
	.align	2
	.global	main
	.type	main, %function
main:
.LFB168:
	.file 1 "../src/arch/user_space/user_main_hello_kernel.cpp"
	.loc 1 10 0
	.cfi_startproc
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
.LVL0:
.LDL1:
.LBB4:
.LBB5:
	.file 2 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/exception/svc_call.h"
	.loc 2 50 0
	adrp	x2, .LC0
	add	x2, x2, :lo12:.LC0
	mov	x3, 0
	// Start of user assembly
// 50 "D:\Pool\eclipse-workspace_aarch64\chap003\include/arch/common_aarch64/exception/svc_call.h" 1
	mov x0, x2 
	mov  x1, x3  
	svc 0 
	str x0,[sp, 8] 
	
// 0 "" 2
.LVL1:
	// End of user assembly
.L2:
	b	.L2
.LBE5:
.LBE4:
	.cfi_endproc
.LFE168:
	.size	main, .-main
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Hello Kernel\n"
	.text
.Letext0:
	.file 3 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstddef"
	.file 4 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\cstdint"
	.file 5 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\c++config.h"
	.file 6 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stddef.h"
	.file 7 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint-gcc.h"
	.file 8 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/def.h"
	.file 9 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/printk.h"
	.file 10 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/generic_util.h"
	.file 11 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/memory/MemoryChunk.h"
	.file 12 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/memory/MemoryManager.h"
	.file 13 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/kernel.h"
	.file 14 "<built-in>"
	.file 15 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/exception/exceptions.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb25
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.4byte	.LASF1134
	.byte	0x4
	.4byte	.LASF1135
	.4byte	.LASF1136
	.4byte	.Ldebug_ranges0+0
	.8byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.string	"std"
	.byte	0xe
	.byte	0
	.4byte	0x112
	.uleb128 0x3
	.4byte	.LASF1000
	.byte	0x5
	.byte	0xfd
	.uleb128 0x4
	.byte	0x5
	.byte	0xfd
	.4byte	0x38
	.uleb128 0x5
	.byte	0x3
	.byte	0x38
	.4byte	0x185
	.uleb128 0x5
	.byte	0x4
	.byte	0x30
	.4byte	0x197
	.uleb128 0x5
	.byte	0x4
	.byte	0x31
	.4byte	0x1a9
	.uleb128 0x5
	.byte	0x4
	.byte	0x32
	.4byte	0x1bb
	.uleb128 0x5
	.byte	0x4
	.byte	0x33
	.4byte	0x1d2
	.uleb128 0x5
	.byte	0x4
	.byte	0x35
	.4byte	0x276
	.uleb128 0x5
	.byte	0x4
	.byte	0x36
	.4byte	0x281
	.uleb128 0x5
	.byte	0x4
	.byte	0x37
	.4byte	0x28c
	.uleb128 0x5
	.byte	0x4
	.byte	0x38
	.4byte	0x297
	.uleb128 0x5
	.byte	0x4
	.byte	0x3a
	.4byte	0x21e
	.uleb128 0x5
	.byte	0x4
	.byte	0x3b
	.4byte	0x229
	.uleb128 0x5
	.byte	0x4
	.byte	0x3c
	.4byte	0x234
	.uleb128 0x5
	.byte	0x4
	.byte	0x3d
	.4byte	0x23f
	.uleb128 0x5
	.byte	0x4
	.byte	0x3f
	.4byte	0x2e4
	.uleb128 0x5
	.byte	0x4
	.byte	0x40
	.4byte	0x2ce
	.uleb128 0x5
	.byte	0x4
	.byte	0x42
	.4byte	0x1dd
	.uleb128 0x5
	.byte	0x4
	.byte	0x43
	.4byte	0x1ef
	.uleb128 0x5
	.byte	0x4
	.byte	0x44
	.4byte	0x201
	.uleb128 0x5
	.byte	0x4
	.byte	0x45
	.4byte	0x213
	.uleb128 0x5
	.byte	0x4
	.byte	0x47
	.4byte	0x2a2
	.uleb128 0x5
	.byte	0x4
	.byte	0x48
	.4byte	0x2ad
	.uleb128 0x5
	.byte	0x4
	.byte	0x49
	.4byte	0x2b8
	.uleb128 0x5
	.byte	0x4
	.byte	0x4a
	.4byte	0x2c3
	.uleb128 0x5
	.byte	0x4
	.byte	0x4c
	.4byte	0x24a
	.uleb128 0x5
	.byte	0x4
	.byte	0x4d
	.4byte	0x255
	.uleb128 0x5
	.byte	0x4
	.byte	0x4e
	.4byte	0x260
	.uleb128 0x5
	.byte	0x4
	.byte	0x4f
	.4byte	0x26b
	.uleb128 0x5
	.byte	0x4
	.byte	0x51
	.4byte	0x2ef
	.uleb128 0x5
	.byte	0x4
	.byte	0x52
	.4byte	0x2d9
	.byte	0
	.uleb128 0x6
	.4byte	.LASF999
	.byte	0x5
	.byte	0xff
	.4byte	0x12e
	.uleb128 0x7
	.4byte	.LASF1000
	.byte	0x5
	.2byte	0x101
	.uleb128 0x8
	.byte	0x5
	.2byte	0x101
	.4byte	0x11d
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1001
	.uleb128 0xa
	.4byte	.LASF1007
	.byte	0x6
	.byte	0xd8
	.4byte	0x145
	.uleb128 0xb
	.4byte	0x135
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF1002
	.uleb128 0xc
	.byte	0x20
	.byte	0x10
	.byte	0x6
	.2byte	0x1aa
	.4byte	.LASF1137
	.4byte	0x177
	.uleb128 0xd
	.4byte	.LASF1003
	.byte	0x6
	.2byte	0x1ab
	.4byte	0x177
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.4byte	.LASF1004
	.byte	0x6
	.2byte	0x1ac
	.4byte	0x17e
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1005
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.4byte	.LASF1006
	.uleb128 0xe
	.4byte	.LASF1138
	.byte	0x6
	.2byte	0x1b5
	.4byte	0x14c
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF1139
	.uleb128 0xa
	.4byte	.LASF1008
	.byte	0x7
	.byte	0x22
	.4byte	0x1a2
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1009
	.uleb128 0xa
	.4byte	.LASF1010
	.byte	0x7
	.byte	0x25
	.4byte	0x1b4
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1011
	.uleb128 0xa
	.4byte	.LASF1012
	.byte	0x7
	.byte	0x28
	.4byte	0x1c6
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF1013
	.byte	0x7
	.byte	0x2b
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF1014
	.byte	0x7
	.byte	0x2e
	.4byte	0x1e8
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1015
	.uleb128 0xa
	.4byte	.LASF1016
	.byte	0x7
	.byte	0x31
	.4byte	0x1fa
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1017
	.uleb128 0xa
	.4byte	.LASF1018
	.byte	0x7
	.byte	0x34
	.4byte	0x20c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1019
	.uleb128 0xa
	.4byte	.LASF1020
	.byte	0x7
	.byte	0x37
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF1021
	.byte	0x7
	.byte	0x3c
	.4byte	0x1a2
	.uleb128 0xa
	.4byte	.LASF1022
	.byte	0x7
	.byte	0x3d
	.4byte	0x1b4
	.uleb128 0xa
	.4byte	.LASF1023
	.byte	0x7
	.byte	0x3e
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF1024
	.byte	0x7
	.byte	0x3f
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF1025
	.byte	0x7
	.byte	0x40
	.4byte	0x1e8
	.uleb128 0xa
	.4byte	.LASF1026
	.byte	0x7
	.byte	0x41
	.4byte	0x1fa
	.uleb128 0xa
	.4byte	.LASF1027
	.byte	0x7
	.byte	0x42
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF1028
	.byte	0x7
	.byte	0x43
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF1029
	.byte	0x7
	.byte	0x47
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF1030
	.byte	0x7
	.byte	0x48
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF1031
	.byte	0x7
	.byte	0x49
	.4byte	0x1c6
	.uleb128 0xa
	.4byte	.LASF1032
	.byte	0x7
	.byte	0x4a
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF1033
	.byte	0x7
	.byte	0x4b
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF1034
	.byte	0x7
	.byte	0x4c
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF1035
	.byte	0x7
	.byte	0x4d
	.4byte	0x20c
	.uleb128 0xa
	.4byte	.LASF1036
	.byte	0x7
	.byte	0x4e
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF1037
	.byte	0x7
	.byte	0x53
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF1038
	.byte	0x7
	.byte	0x56
	.4byte	0x145
	.uleb128 0xa
	.4byte	.LASF1039
	.byte	0x7
	.byte	0x5b
	.4byte	0x12e
	.uleb128 0xa
	.4byte	.LASF1040
	.byte	0x7
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
	.4byte	.LASF1041
	.uleb128 0xb
	.4byte	0x30f
	.uleb128 0x13
	.4byte	.LASF1042
	.byte	0x8
	.byte	0x1c
	.4byte	0x30a
	.uleb128 0x14
	.4byte	.LASF1043
	.byte	0x8
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
	.4byte	.LASF1044
	.byte	0x8
	.byte	0x20
	.4byte	0x332
	.uleb128 0x15
	.4byte	.LASF1045
	.byte	0x8
	.byte	0x22
	.4byte	0x1cd
	.2byte	0x400
	.uleb128 0x16
	.string	"KiB"
	.byte	0x8
	.byte	0x23
	.4byte	0x1cd
	.2byte	0x400
	.uleb128 0x17
	.string	"MiB"
	.byte	0x8
	.byte	0x24
	.4byte	0x1cd
	.4byte	0x100000
	.uleb128 0x17
	.string	"GiB"
	.byte	0x8
	.byte	0x25
	.4byte	0x1cd
	.4byte	0x40000000
	.uleb128 0x18
	.4byte	.LASF1061
	.byte	0x1
	.byte	0x9
	.byte	0x15
	.4byte	0x537
	.uleb128 0x19
	.4byte	.LASF1046
	.byte	0x9
	.byte	0x17
	.4byte	.LASF1047
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
	.4byte	.LASF1046
	.byte	0x9
	.byte	0x18
	.4byte	.LASF1048
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x19
	.4byte	.LASF1050
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x1b
	.4byte	.LASF1051
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x1c
	.4byte	.LASF1052
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x1d
	.4byte	.LASF1053
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF1054
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x1f
	.4byte	.LASF1055
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x20
	.4byte	.LASF1056
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x21
	.4byte	.LASF1057
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x22
	.4byte	.LASF1058
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
	.4byte	.LASF1049
	.byte	0x9
	.byte	0x23
	.4byte	.LASF1068
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
	.4byte	.LASF1059
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x556
	.uleb128 0x1f
	.uleb128 0x11
	.4byte	0x316
	.4byte	0x562
	.uleb128 0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF1060
	.byte	0xa
	.byte	0x16
	.4byte	0x557
	.uleb128 0x18
	.4byte	.LASF1062
	.byte	0x8
	.byte	0xb
	.byte	0x16
	.4byte	0x861
	.uleb128 0x21
	.4byte	.LASF1063
	.byte	0xb
	.byte	0x42
	.4byte	0x213
	.byte	0x8
	.byte	0x6
	.byte	0x3a
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1064
	.byte	0xb
	.byte	0x43
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1065
	.byte	0xb
	.byte	0x44
	.4byte	0x213
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1066
	.byte	0xb
	.byte	0x45
	.4byte	0x213
	.byte	0x8
	.byte	0x26
	.byte	0x12
	.byte	0
	.uleb128 0x21
	.4byte	.LASF1067
	.byte	0xb
	.byte	0x46
	.4byte	0x213
	.byte	0x8
	.byte	0x12
	.byte	0
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1062
	.byte	0xb
	.byte	0x1b
	.4byte	.LASF1069
	.byte	0x1
	.4byte	0x5d8
	.4byte	0x5f7
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x86c
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x86c
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1070
	.byte	0xb
	.byte	0x1c
	.4byte	.LASF1071
	.4byte	0x86c
	.byte	0x1
	.4byte	0x60f
	.4byte	0x615
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1072
	.byte	0xb
	.byte	0x1d
	.4byte	.LASF1073
	.byte	0x1
	.4byte	0x629
	.4byte	0x634
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x86c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1074
	.byte	0xb
	.byte	0x1e
	.4byte	.LASF1075
	.4byte	0x86c
	.byte	0x1
	.4byte	0x64c
	.4byte	0x652
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1076
	.byte	0xb
	.byte	0x1f
	.4byte	.LASF1077
	.byte	0x1
	.4byte	0x666
	.4byte	0x671
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x86c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1078
	.byte	0xb
	.byte	0x20
	.4byte	.LASF1079
	.4byte	0x873
	.byte	0x1
	.4byte	0x689
	.4byte	0x68f
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1078
	.byte	0xb
	.byte	0x21
	.4byte	.LASF1080
	.4byte	0x866
	.byte	0x1
	.4byte	0x6a7
	.4byte	0x6ad
	.uleb128 0x1a
	.4byte	0x866
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1081
	.byte	0xb
	.byte	0x22
	.4byte	.LASF1082
	.4byte	0x135
	.byte	0x1
	.4byte	0x6c5
	.4byte	0x6cb
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1083
	.byte	0xb
	.byte	0x23
	.4byte	.LASF1084
	.byte	0x1
	.4byte	0x6df
	.4byte	0x6ea
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1085
	.byte	0xb
	.byte	0x24
	.4byte	.LASF1086
	.4byte	0x879
	.byte	0x1
	.4byte	0x702
	.4byte	0x708
	.uleb128 0x1a
	.4byte	0x866
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1085
	.byte	0xb
	.byte	0x25
	.4byte	.LASF1087
	.4byte	0x550
	.byte	0x1
	.4byte	0x720
	.4byte	0x726
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1088
	.byte	0xb
	.byte	0x26
	.4byte	.LASF1089
	.4byte	0x879
	.byte	0x1
	.4byte	0x73e
	.4byte	0x744
	.uleb128 0x1a
	.4byte	0x866
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1088
	.byte	0xb
	.byte	0x27
	.4byte	.LASF1090
	.4byte	0x550
	.byte	0x1
	.4byte	0x75c
	.4byte	0x762
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1091
	.byte	0xb
	.byte	0x28
	.4byte	.LASF1092
	.4byte	0x213
	.byte	0x1
	.4byte	0x77a
	.4byte	0x780
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1093
	.byte	0xb
	.byte	0x29
	.4byte	.LASF1094
	.byte	0x1
	.4byte	0x794
	.4byte	0x79f
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x213
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1095
	.byte	0xb
	.byte	0x2a
	.4byte	.LASF1096
	.4byte	0x213
	.byte	0x1
	.4byte	0x7b7
	.4byte	0x7bd
	.uleb128 0x1a
	.4byte	0x873
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1097
	.byte	0xb
	.byte	0x2b
	.4byte	.LASF1098
	.byte	0x1
	.4byte	0x7d1
	.4byte	0x7dc
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x213
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1099
	.byte	0xb
	.byte	0x36
	.4byte	.LASF1100
	.4byte	0x866
	.byte	0x1
	.4byte	0x7f4
	.4byte	0x7ff
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1101
	.byte	0xb
	.byte	0x38
	.4byte	.LASF1102
	.4byte	0x135
	.byte	0x1
	.4byte	0x817
	.4byte	0x827
	.uleb128 0x1a
	.4byte	0x873
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1103
	.byte	0xb
	.byte	0x3a
	.4byte	.LASF1104
	.4byte	0x86c
	.byte	0x1
	.4byte	0x83f
	.4byte	0x84a
	.uleb128 0x1a
	.4byte	0x866
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x23
	.4byte	.LASF1140
	.byte	0xb
	.byte	0x3e
	.4byte	.LASF1141
	.byte	0x1
	.4byte	0x85a
	.uleb128 0x1a
	.4byte	0x866
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x56d
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x56d
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF1105
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x861
	.uleb128 0x24
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF1106
	.byte	0x18
	.byte	0xc
	.byte	0x19
	.4byte	0xa18
	.uleb128 0x25
	.4byte	.LASF1107
	.byte	0xc
	.byte	0x54
	.4byte	0x866
	.byte	0
	.uleb128 0x25
	.4byte	.LASF1108
	.byte	0xc
	.byte	0x55
	.4byte	0x53d
	.byte	0x8
	.uleb128 0x25
	.4byte	.LASF1066
	.byte	0xc
	.byte	0x56
	.4byte	0x140
	.byte	0x10
	.uleb128 0x26
	.4byte	.LASF1106
	.byte	0xc
	.byte	0x1c
	.4byte	.LASF1109
	.byte	0x1
	.4byte	0x8bf
	.4byte	0x8c5
	.uleb128 0x1a
	.4byte	0xa1d
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1106
	.byte	0xc
	.byte	0x20
	.4byte	.LASF1110
	.byte	0x1
	.4byte	0x8d9
	.4byte	0x8ee
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x879
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x86c
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1111
	.byte	0xc
	.byte	0x23
	.4byte	.LASF1112
	.4byte	0x135
	.byte	0x1
	.4byte	0x906
	.4byte	0x911
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1113
	.byte	0xc
	.byte	0x26
	.4byte	.LASF1114
	.4byte	0x879
	.byte	0x1
	.4byte	0x929
	.4byte	0x934
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1113
	.byte	0xc
	.byte	0x29
	.4byte	.LASF1115
	.4byte	0x879
	.byte	0x1
	.4byte	0x94c
	.4byte	0x95c
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1116
	.byte	0xc
	.byte	0x37
	.4byte	.LASF1117
	.4byte	0x86c
	.byte	0x1
	.4byte	0x974
	.4byte	0x984
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x879
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1118
	.byte	0xc
	.byte	0x38
	.4byte	.LASF1119
	.4byte	0x86c
	.byte	0x1
	.4byte	0x99c
	.4byte	0x9ac
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x879
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x19
	.4byte	.LASF1120
	.byte	0xc
	.byte	0x41
	.4byte	.LASF1121
	.4byte	0x879
	.byte	0x1
	.4byte	0x9c4
	.4byte	0x9d9
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x879
	.uleb128 0x1b
	.4byte	0x135
	.uleb128 0x1b
	.4byte	0x135
	.byte	0
	.uleb128 0x22
	.4byte	.LASF1122
	.byte	0xc
	.byte	0x4a
	.4byte	.LASF1123
	.byte	0x1
	.4byte	0x9ed
	.4byte	0x9f8
	.uleb128 0x1a
	.4byte	0xa1d
	.uleb128 0x1b
	.4byte	0x879
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF1124
	.byte	0xc
	.byte	0x50
	.4byte	.LASF1125
	.4byte	0x135
	.byte	0x1
	.4byte	0xa0c
	.uleb128 0x1a
	.4byte	0xa23
	.uleb128 0x1b
	.4byte	0x879
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x87b
	.uleb128 0x1d
	.byte	0x8
	.4byte	0x87b
	.uleb128 0x1d
	.byte	0x8
	.4byte	0xa18
	.uleb128 0x13
	.4byte	.LASF1126
	.byte	0xd
	.byte	0xf
	.4byte	0x385
	.uleb128 0x13
	.4byte	.LASF1127
	.byte	0xd
	.byte	0x12
	.4byte	0x87b
	.uleb128 0x27
	.4byte	.LASF1142
	.byte	0x7
	.byte	0x4
	.4byte	0x20c
	.byte	0xf
	.byte	0x11
	.4byte	0xa5d
	.uleb128 0x28
	.4byte	.LASF1128
	.byte	0
	.uleb128 0x28
	.4byte	.LASF1129
	.byte	0x1
	.byte	0
	.uleb128 0x29
	.4byte	.LASF1130
	.byte	0x1
	.byte	0x9
	.4byte	0x1c6
	.8byte	.LFB168
	.8byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae4
	.uleb128 0x2a
	.string	"num"
	.byte	0x1
	.byte	0xb
	.4byte	0x145
	.uleb128 0x2b
	.4byte	0xae4
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xb
	.uleb128 0x2c
	.4byte	0xb0a
	.4byte	.LLST0
	.uleb128 0x2c
	.4byte	0xaff
	.4byte	.LLST1
	.uleb128 0x2c
	.4byte	0xaf4
	.4byte	.LLST0
	.uleb128 0x2d
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.uleb128 0x2e
	.4byte	0xb15
	.8byte	.LDL1
	.uleb128 0x2f
	.4byte	0xb1c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF1143
	.byte	0x2
	.byte	0x2a
	.4byte	.LASF1144
	.4byte	0x213
	.byte	0x3
	.uleb128 0x31
	.4byte	.LASF1131
	.byte	0x2
	.byte	0x2a
	.4byte	0xa3f
	.uleb128 0x31
	.4byte	.LASF1132
	.byte	0x2
	.byte	0x2a
	.4byte	0x213
	.uleb128 0x31
	.4byte	.LASF1133
	.byte	0x2
	.byte	0x2a
	.4byte	0x213
	.uleb128 0x32
	.4byte	.LASF1145
	.byte	0x2
	.byte	0x2d
	.uleb128 0x2a
	.string	"res"
	.byte	0x2
	.byte	0x2c
	.4byte	0x213
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x8a
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.8byte	.LVL0
	.8byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.8byte	0
	.8byte	0
.LLST1:
	.8byte	.LVL0
	.8byte	.LVL1
	.2byte	0xa
	.byte	0x3
	.8byte	.LC0
	.byte	0x9f
	.8byte	0
	.8byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.LFB168
	.8byte	.LFE168-.LFB168
	.8byte	0
	.8byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.8byte	.LFB168
	.8byte	.LFE168
	.8byte	0
	.8byte	0
	.section	.debug_macro,"",@progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
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
	.byte	0x5
	.uleb128 0x176
	.4byte	.LASF373
	.byte	0x5
	.uleb128 0x177
	.4byte	.LASF374
	.byte	0x6
	.uleb128 0x178
	.4byte	.LASF375
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF376
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF377
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF378
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF379
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF380
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF381
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF382
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF383
	.byte	0x5
	.uleb128 0x5
	.4byte	.LASF384
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF385
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF386
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF387
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF388
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF389
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF390
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF391
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF392
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF393
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF394
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF395
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF396
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF397
	.byte	0x6
	.uleb128 0x1
	.4byte	.LASF398
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF183
	.byte	0x6
	.uleb128 0x2
	.4byte	.LASF399
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF400
	.byte	0x5
	.uleb128 0x2
	.4byte	.LASF401
	.byte	0x5
	.uleb128 0x1
	.4byte	.LASF402
	.file 16 "./cxx_macros.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF403
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x2
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF404
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF405
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF406
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x3
	.byte	0x7
	.4byte	.Ldebug_macro1
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x7
	.4byte	.Ldebug_macro2
	.file 17 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\os_defines.h"
	.byte	0x3
	.uleb128 0x215
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF466
	.byte	0x4
	.file 18 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\aarch64-elf\\include\\c++\\7.2.1\\aarch64-elf\\bits\\cpu_defines.h"
	.byte	0x3
	.uleb128 0x218
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF467
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro3
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x6
	.byte	0x7
	.4byte	.Ldebug_macro4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF658
	.file 19 "d:\\installed\\gcc-linaro-7.2.1-2017.11-i686-mingw32_aarch64-elf\\lib\\gcc\\aarch64-elf\\7.2.1\\include\\stdint.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x13
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x7
	.byte	0x7
	.4byte	.Ldebug_macro5
	.byte	0x4
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF782
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro6
	.byte	0x4
	.file 20 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/asm_instructions.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF796
	.file 21 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/system_common_registers.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x4
	.4byte	.LASF797
	.file 22 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/registers_defines.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF798
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF799
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF800
	.file 23 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/printk.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF801
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF802
	.byte	0x3
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF803
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF804
	.byte	0x4
	.byte	0x4
	.file 24 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/MemoryManager.h"
	.byte	0x3
	.uleb128 0x59
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF805
	.byte	0x3
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 25 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/IntegerFormatter.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF806
	.file 26 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/templates_implementation/IntegerFormatter.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1a
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF807
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 27 "D:\\Pool\\eclipse-workspace_aarch64\\chap003\\include/arch/common_aarch64/gicv3_defines.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x1b
	.byte	0x7
	.4byte	.Ldebug_macro7
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro8
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.Ldebug_macro9
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cstddef.40.7f59894b65c26f8fc669473914a0ef3e,comdat
.Ldebug_macro1:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF407
	.byte	0x6
	.uleb128 0x2c
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF409
	.byte	0x6
	.uleb128 0x2e
	.4byte	.LASF410
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF411
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF412
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.31.e68a8d620d96aaccde842e0fab34b412,comdat
.Ldebug_macro2:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF413
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF414
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF415
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF416
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF417
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF418
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF419
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF420
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF421
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF422
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF423
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF424
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF425
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF426
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF427
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF428
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF429
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF430
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF431
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF432
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF433
	.byte	0x5
	.uleb128 0x9c
	.4byte	.LASF434
	.byte	0x5
	.uleb128 0xa4
	.4byte	.LASF435
	.byte	0x5
	.uleb128 0xa5
	.4byte	.LASF436
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF437
	.byte	0x5
	.uleb128 0xef
	.4byte	.LASF438
	.byte	0x5
	.uleb128 0xf7
	.4byte	.LASF439
	.byte	0x5
	.uleb128 0x103
	.4byte	.LASF440
	.byte	0x5
	.uleb128 0x104
	.4byte	.LASF441
	.byte	0x5
	.uleb128 0x105
	.4byte	.LASF442
	.byte	0x5
	.uleb128 0x106
	.4byte	.LASF443
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF444
	.byte	0x5
	.uleb128 0x14a
	.4byte	.LASF445
	.byte	0x5
	.uleb128 0x14b
	.4byte	.LASF446
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF447
	.byte	0x5
	.uleb128 0x194
	.4byte	.LASF448
	.byte	0x5
	.uleb128 0x195
	.4byte	.LASF449
	.byte	0x5
	.uleb128 0x19f
	.4byte	.LASF450
	.byte	0x5
	.uleb128 0x1a0
	.4byte	.LASF451
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF452
	.byte	0x6
	.uleb128 0x1a6
	.4byte	.LASF453
	.byte	0x5
	.uleb128 0x1b2
	.4byte	.LASF454
	.byte	0x5
	.uleb128 0x1b3
	.4byte	.LASF455
	.byte	0x5
	.uleb128 0x1b4
	.4byte	.LASF456
	.byte	0x5
	.uleb128 0x1b7
	.4byte	.LASF457
	.byte	0x5
	.uleb128 0x1b8
	.4byte	.LASF458
	.byte	0x5
	.uleb128 0x1b9
	.4byte	.LASF459
	.byte	0x5
	.uleb128 0x1e7
	.4byte	.LASF460
	.byte	0x5
	.uleb128 0x200
	.4byte	.LASF461
	.byte	0x5
	.uleb128 0x203
	.4byte	.LASF462
	.byte	0x5
	.uleb128 0x207
	.4byte	.LASF463
	.byte	0x5
	.uleb128 0x208
	.4byte	.LASF464
	.byte	0x5
	.uleb128 0x20a
	.4byte	.LASF465
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.cconfig.h.541.196d063ba1197a346d0a259d6af90630,comdat
.Ldebug_macro3:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x21d
	.4byte	.LASF468
	.byte	0x5
	.uleb128 0x224
	.4byte	.LASF469
	.byte	0x5
	.uleb128 0x22c
	.4byte	.LASF470
	.byte	0x5
	.uleb128 0x239
	.4byte	.LASF471
	.byte	0x5
	.uleb128 0x23a
	.4byte	.LASF472
	.byte	0x5
	.uleb128 0x24c
	.4byte	.LASF473
	.byte	0x5
	.uleb128 0x253
	.4byte	.LASF474
	.byte	0x2
	.uleb128 0x256
	.string	"min"
	.byte	0x2
	.uleb128 0x257
	.string	"max"
	.byte	0x5
	.uleb128 0x25d
	.4byte	.LASF475
	.byte	0x5
	.uleb128 0x260
	.4byte	.LASF476
	.byte	0x5
	.uleb128 0x263
	.4byte	.LASF477
	.byte	0x5
	.uleb128 0x266
	.4byte	.LASF478
	.byte	0x5
	.uleb128 0x269
	.4byte	.LASF479
	.byte	0x5
	.uleb128 0x282
	.4byte	.LASF480
	.byte	0x5
	.uleb128 0x28b
	.4byte	.LASF481
	.byte	0x5
	.uleb128 0x291
	.4byte	.LASF482
	.byte	0x5
	.uleb128 0x294
	.4byte	.LASF483
	.byte	0x5
	.uleb128 0x29a
	.4byte	.LASF484
	.byte	0x5
	.uleb128 0x2a6
	.4byte	.LASF485
	.byte	0x5
	.uleb128 0x2ac
	.4byte	.LASF486
	.byte	0x5
	.uleb128 0x2af
	.4byte	.LASF487
	.byte	0x5
	.uleb128 0x2b2
	.4byte	.LASF488
	.byte	0x5
	.uleb128 0x2c1
	.4byte	.LASF489
	.byte	0x5
	.uleb128 0x2c4
	.4byte	.LASF490
	.byte	0x5
	.uleb128 0x2c7
	.4byte	.LASF491
	.byte	0x5
	.uleb128 0x2ca
	.4byte	.LASF492
	.byte	0x5
	.uleb128 0x2d0
	.4byte	.LASF493
	.byte	0x5
	.uleb128 0x2d3
	.4byte	.LASF494
	.byte	0x5
	.uleb128 0x2d6
	.4byte	.LASF495
	.byte	0x5
	.uleb128 0x2d9
	.4byte	.LASF496
	.byte	0x5
	.uleb128 0x2dc
	.4byte	.LASF497
	.byte	0x5
	.uleb128 0x2df
	.4byte	.LASF498
	.byte	0x5
	.uleb128 0x2e2
	.4byte	.LASF499
	.byte	0x5
	.uleb128 0x2e5
	.4byte	.LASF500
	.byte	0x5
	.uleb128 0x2e8
	.4byte	.LASF501
	.byte	0x5
	.uleb128 0x2eb
	.4byte	.LASF502
	.byte	0x5
	.uleb128 0x2ee
	.4byte	.LASF503
	.byte	0x5
	.uleb128 0x2f1
	.4byte	.LASF504
	.byte	0x5
	.uleb128 0x2f4
	.4byte	.LASF505
	.byte	0x5
	.uleb128 0x2f7
	.4byte	.LASF506
	.byte	0x5
	.uleb128 0x2fa
	.4byte	.LASF507
	.byte	0x5
	.uleb128 0x303
	.4byte	.LASF508
	.byte	0x5
	.uleb128 0x309
	.4byte	.LASF509
	.byte	0x5
	.uleb128 0x30f
	.4byte	.LASF510
	.byte	0x5
	.uleb128 0x31e
	.4byte	.LASF511
	.byte	0x5
	.uleb128 0x321
	.4byte	.LASF512
	.byte	0x5
	.uleb128 0x327
	.4byte	.LASF513
	.byte	0x5
	.uleb128 0x333
	.4byte	.LASF514
	.byte	0x5
	.uleb128 0x339
	.4byte	.LASF515
	.byte	0x5
	.uleb128 0x33c
	.4byte	.LASF516
	.byte	0x5
	.uleb128 0x33f
	.4byte	.LASF517
	.byte	0x5
	.uleb128 0x348
	.4byte	.LASF518
	.byte	0x5
	.uleb128 0x34b
	.4byte	.LASF519
	.byte	0x5
	.uleb128 0x34e
	.4byte	.LASF520
	.byte	0x5
	.uleb128 0x351
	.4byte	.LASF521
	.byte	0x5
	.uleb128 0x357
	.4byte	.LASF522
	.byte	0x5
	.uleb128 0x36c
	.4byte	.LASF523
	.byte	0x5
	.uleb128 0x36f
	.4byte	.LASF524
	.byte	0x5
	.uleb128 0x372
	.4byte	.LASF525
	.byte	0x5
	.uleb128 0x37b
	.4byte	.LASF526
	.byte	0x5
	.uleb128 0x37e
	.4byte	.LASF527
	.byte	0x5
	.uleb128 0x381
	.4byte	.LASF528
	.byte	0x5
	.uleb128 0x384
	.4byte	.LASF529
	.byte	0x5
	.uleb128 0x387
	.4byte	.LASF530
	.byte	0x5
	.uleb128 0x38d
	.4byte	.LASF531
	.byte	0x5
	.uleb128 0x390
	.4byte	.LASF532
	.byte	0x5
	.uleb128 0x396
	.4byte	.LASF533
	.byte	0x5
	.uleb128 0x39c
	.4byte	.LASF534
	.byte	0x5
	.uleb128 0x39f
	.4byte	.LASF535
	.byte	0x5
	.uleb128 0x3a2
	.4byte	.LASF536
	.byte	0x5
	.uleb128 0x3a5
	.4byte	.LASF537
	.byte	0x5
	.uleb128 0x3a8
	.4byte	.LASF538
	.byte	0x5
	.uleb128 0x3ae
	.4byte	.LASF539
	.byte	0x5
	.uleb128 0x3c3
	.4byte	.LASF540
	.byte	0x5
	.uleb128 0x3db
	.4byte	.LASF541
	.byte	0x5
	.uleb128 0x3de
	.4byte	.LASF542
	.byte	0x5
	.uleb128 0x3e7
	.4byte	.LASF543
	.byte	0x5
	.uleb128 0x3ea
	.4byte	.LASF544
	.byte	0x5
	.uleb128 0x3f0
	.4byte	.LASF545
	.byte	0x5
	.uleb128 0x3f3
	.4byte	.LASF546
	.byte	0x5
	.uleb128 0x3f6
	.4byte	.LASF547
	.byte	0x5
	.uleb128 0x3f9
	.4byte	.LASF548
	.byte	0x5
	.uleb128 0x3ff
	.4byte	.LASF549
	.byte	0x5
	.uleb128 0x402
	.4byte	.LASF550
	.byte	0x5
	.uleb128 0x405
	.4byte	.LASF551
	.byte	0x5
	.uleb128 0x408
	.4byte	.LASF552
	.byte	0x5
	.uleb128 0x427
	.4byte	.LASF553
	.byte	0x5
	.uleb128 0x42a
	.4byte	.LASF554
	.byte	0x5
	.uleb128 0x436
	.4byte	.LASF555
	.byte	0x5
	.uleb128 0x43c
	.4byte	.LASF556
	.byte	0x5
	.uleb128 0x43f
	.4byte	.LASF557
	.byte	0x5
	.uleb128 0x448
	.4byte	.LASF558
	.byte	0x5
	.uleb128 0x44b
	.4byte	.LASF559
	.byte	0x5
	.uleb128 0x44e
	.4byte	.LASF560
	.byte	0x5
	.uleb128 0x457
	.4byte	.LASF561
	.byte	0x5
	.uleb128 0x460
	.4byte	.LASF562
	.byte	0x5
	.uleb128 0x463
	.4byte	.LASF563
	.byte	0x5
	.uleb128 0x466
	.4byte	.LASF564
	.byte	0x5
	.uleb128 0x469
	.4byte	.LASF565
	.byte	0x5
	.uleb128 0x46c
	.4byte	.LASF566
	.byte	0x5
	.uleb128 0x46f
	.4byte	.LASF567
	.byte	0x5
	.uleb128 0x472
	.4byte	.LASF568
	.byte	0x5
	.uleb128 0x475
	.4byte	.LASF569
	.byte	0x5
	.uleb128 0x478
	.4byte	.LASF570
	.byte	0x5
	.uleb128 0x548
	.4byte	.LASF571
	.byte	0x5
	.uleb128 0x54e
	.4byte	.LASF572
	.byte	0x5
	.uleb128 0x551
	.4byte	.LASF573
	.byte	0x5
	.uleb128 0x554
	.4byte	.LASF574
	.byte	0x5
	.uleb128 0x557
	.4byte	.LASF575
	.byte	0x5
	.uleb128 0x55a
	.4byte	.LASF576
	.byte	0x5
	.uleb128 0x55d
	.4byte	.LASF577
	.byte	0x5
	.uleb128 0x56f
	.4byte	.LASF578
	.byte	0x5
	.uleb128 0x57b
	.4byte	.LASF579
	.byte	0x5
	.uleb128 0x57f
	.4byte	.LASF580
	.byte	0x5
	.uleb128 0x583
	.4byte	.LASF581
	.byte	0x5
	.uleb128 0x587
	.4byte	.LASF582
	.byte	0x5
	.uleb128 0x590
	.4byte	.LASF583
	.byte	0x5
	.uleb128 0x594
	.4byte	.LASF584
	.byte	0x5
	.uleb128 0x598
	.4byte	.LASF585
	.byte	0x5
	.uleb128 0x59c
	.4byte	.LASF586
	.byte	0x5
	.uleb128 0x59f
	.4byte	.LASF587
	.byte	0x5
	.uleb128 0x5a6
	.4byte	.LASF588
	.byte	0x5
	.uleb128 0x5ac
	.4byte	.LASF589
	.byte	0x5
	.uleb128 0x5b1
	.4byte	.LASF590
	.byte	0x5
	.uleb128 0x5c0
	.4byte	.LASF591
	.byte	0x5
	.uleb128 0x5c3
	.4byte	.LASF592
	.byte	0x5
	.uleb128 0x5c6
	.4byte	.LASF593
	.byte	0x5
	.uleb128 0x5e6
	.4byte	.LASF594
	.byte	0x5
	.uleb128 0x5ee
	.4byte	.LASF595
	.byte	0x5
	.uleb128 0x5f2
	.4byte	.LASF596
	.byte	0x5
	.uleb128 0x5fa
	.4byte	.LASF597
	.byte	0x5
	.uleb128 0x60b
	.4byte	.LASF598
	.byte	0x5
	.uleb128 0x60e
	.4byte	.LASF599
	.byte	0x5
	.uleb128 0x614
	.4byte	.LASF600
	.byte	0x5
	.uleb128 0x61a
	.4byte	.LASF601
	.byte	0x5
	.uleb128 0x620
	.4byte	.LASF602
	.byte	0x5
	.uleb128 0x639
	.4byte	.LASF603
	.byte	0x5
	.uleb128 0x648
	.4byte	.LASF604
	.byte	0x5
	.uleb128 0x64f
	.4byte	.LASF605
	.byte	0x5
	.uleb128 0x652
	.4byte	.LASF606
	.byte	0x5
	.uleb128 0x658
	.4byte	.LASF607
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stddef.h.39.096871ec3ca5abfedfa76e8d05f4a8d6,comdat
.Ldebug_macro4:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF608
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF609
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF610
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF611
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF612
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF613
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF614
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF615
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF616
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF617
	.byte	0x5
	.uleb128 0x90
	.4byte	.LASF618
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF619
	.byte	0x6
	.uleb128 0xa1
	.4byte	.LASF409
	.byte	0x5
	.uleb128 0xbb
	.4byte	.LASF620
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF621
	.byte	0x5
	.uleb128 0xbd
	.4byte	.LASF622
	.byte	0x5
	.uleb128 0xbe
	.4byte	.LASF623
	.byte	0x5
	.uleb128 0xbf
	.4byte	.LASF624
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF625
	.byte	0x5
	.uleb128 0xc1
	.4byte	.LASF626
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF627
	.byte	0x5
	.uleb128 0xc3
	.4byte	.LASF628
	.byte	0x5
	.uleb128 0xc4
	.4byte	.LASF629
	.byte	0x5
	.uleb128 0xc5
	.4byte	.LASF630
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF631
	.byte	0x5
	.uleb128 0xc7
	.4byte	.LASF632
	.byte	0x5
	.uleb128 0xc8
	.4byte	.LASF633
	.byte	0x5
	.uleb128 0xc9
	.4byte	.LASF634
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF635
	.byte	0x5
	.uleb128 0xd2
	.4byte	.LASF636
	.byte	0x6
	.uleb128 0xee
	.4byte	.LASF410
	.byte	0x5
	.uleb128 0x10b
	.4byte	.LASF637
	.byte	0x5
	.uleb128 0x10c
	.4byte	.LASF638
	.byte	0x5
	.uleb128 0x10d
	.4byte	.LASF639
	.byte	0x5
	.uleb128 0x10e
	.4byte	.LASF640
	.byte	0x5
	.uleb128 0x10f
	.4byte	.LASF641
	.byte	0x5
	.uleb128 0x110
	.4byte	.LASF642
	.byte	0x5
	.uleb128 0x111
	.4byte	.LASF643
	.byte	0x5
	.uleb128 0x112
	.4byte	.LASF644
	.byte	0x5
	.uleb128 0x113
	.4byte	.LASF645
	.byte	0x5
	.uleb128 0x114
	.4byte	.LASF646
	.byte	0x5
	.uleb128 0x115
	.4byte	.LASF647
	.byte	0x5
	.uleb128 0x116
	.4byte	.LASF648
	.byte	0x5
	.uleb128 0x117
	.4byte	.LASF649
	.byte	0x5
	.uleb128 0x118
	.4byte	.LASF650
	.byte	0x5
	.uleb128 0x119
	.4byte	.LASF651
	.byte	0x6
	.uleb128 0x126
	.4byte	.LASF652
	.byte	0x6
	.uleb128 0x15b
	.4byte	.LASF408
	.byte	0x6
	.uleb128 0x191
	.4byte	.LASF653
	.byte	0x5
	.uleb128 0x193
	.4byte	.LASF654
	.byte	0x6
	.uleb128 0x19c
	.4byte	.LASF411
	.byte	0x5
	.uleb128 0x1a1
	.4byte	.LASF655
	.byte	0x5
	.uleb128 0x1a6
	.4byte	.LASF656
	.byte	0x5
	.uleb128 0x1bb
	.4byte	.LASF657
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.stdintgcc.h.29.6d480f4ba0f60596e88234283d42444f,comdat
.Ldebug_macro5:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF659
	.byte	0x6
	.uleb128 0x64
	.4byte	.LASF660
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF661
	.byte	0x6
	.uleb128 0x66
	.4byte	.LASF662
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF663
	.byte	0x6
	.uleb128 0x6a
	.4byte	.LASF664
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF665
	.byte	0x6
	.uleb128 0x6e
	.4byte	.LASF666
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF667
	.byte	0x6
	.uleb128 0x70
	.4byte	.LASF668
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF669
	.byte	0x6
	.uleb128 0x74
	.4byte	.LASF670
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF671
	.byte	0x6
	.uleb128 0x78
	.4byte	.LASF672
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF673
	.byte	0x6
	.uleb128 0x7a
	.4byte	.LASF674
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF675
	.byte	0x6
	.uleb128 0x7e
	.4byte	.LASF676
	.byte	0x5
	.uleb128 0x7f
	.4byte	.LASF677
	.byte	0x6
	.uleb128 0x82
	.4byte	.LASF678
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF679
	.byte	0x6
	.uleb128 0x84
	.4byte	.LASF680
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF681
	.byte	0x6
	.uleb128 0x88
	.4byte	.LASF682
	.byte	0x5
	.uleb128 0x89
	.4byte	.LASF683
	.byte	0x6
	.uleb128 0x8c
	.4byte	.LASF684
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF685
	.byte	0x6
	.uleb128 0x8e
	.4byte	.LASF686
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF687
	.byte	0x6
	.uleb128 0x90
	.4byte	.LASF688
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF689
	.byte	0x6
	.uleb128 0x92
	.4byte	.LASF690
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF691
	.byte	0x6
	.uleb128 0x94
	.4byte	.LASF692
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF693
	.byte	0x6
	.uleb128 0x96
	.4byte	.LASF694
	.byte	0x5
	.uleb128 0x97
	.4byte	.LASF695
	.byte	0x6
	.uleb128 0x98
	.4byte	.LASF696
	.byte	0x5
	.uleb128 0x99
	.4byte	.LASF697
	.byte	0x6
	.uleb128 0x9a
	.4byte	.LASF698
	.byte	0x5
	.uleb128 0x9b
	.4byte	.LASF699
	.byte	0x6
	.uleb128 0x9c
	.4byte	.LASF700
	.byte	0x5
	.uleb128 0x9d
	.4byte	.LASF701
	.byte	0x6
	.uleb128 0x9e
	.4byte	.LASF702
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF703
	.byte	0x6
	.uleb128 0xa0
	.4byte	.LASF704
	.byte	0x5
	.uleb128 0xa1
	.4byte	.LASF705
	.byte	0x6
	.uleb128 0xa2
	.4byte	.LASF706
	.byte	0x5
	.uleb128 0xa3
	.4byte	.LASF707
	.byte	0x6
	.uleb128 0xa5
	.4byte	.LASF708
	.byte	0x5
	.uleb128 0xa6
	.4byte	.LASF709
	.byte	0x6
	.uleb128 0xa7
	.4byte	.LASF710
	.byte	0x5
	.uleb128 0xa8
	.4byte	.LASF711
	.byte	0x6
	.uleb128 0xa9
	.4byte	.LASF712
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF713
	.byte	0x6
	.uleb128 0xab
	.4byte	.LASF714
	.byte	0x5
	.uleb128 0xac
	.4byte	.LASF715
	.byte	0x6
	.uleb128 0xad
	.4byte	.LASF716
	.byte	0x5
	.uleb128 0xae
	.4byte	.LASF717
	.byte	0x6
	.uleb128 0xaf
	.4byte	.LASF718
	.byte	0x5
	.uleb128 0xb0
	.4byte	.LASF719
	.byte	0x6
	.uleb128 0xb1
	.4byte	.LASF720
	.byte	0x5
	.uleb128 0xb2
	.4byte	.LASF721
	.byte	0x6
	.uleb128 0xb3
	.4byte	.LASF722
	.byte	0x5
	.uleb128 0xb4
	.4byte	.LASF723
	.byte	0x6
	.uleb128 0xb5
	.4byte	.LASF724
	.byte	0x5
	.uleb128 0xb6
	.4byte	.LASF725
	.byte	0x6
	.uleb128 0xb7
	.4byte	.LASF726
	.byte	0x5
	.uleb128 0xb8
	.4byte	.LASF727
	.byte	0x6
	.uleb128 0xb9
	.4byte	.LASF728
	.byte	0x5
	.uleb128 0xba
	.4byte	.LASF729
	.byte	0x6
	.uleb128 0xbb
	.4byte	.LASF730
	.byte	0x5
	.uleb128 0xbc
	.4byte	.LASF731
	.byte	0x6
	.uleb128 0xbf
	.4byte	.LASF732
	.byte	0x5
	.uleb128 0xc0
	.4byte	.LASF733
	.byte	0x6
	.uleb128 0xc1
	.4byte	.LASF734
	.byte	0x5
	.uleb128 0xc2
	.4byte	.LASF735
	.byte	0x6
	.uleb128 0xc5
	.4byte	.LASF736
	.byte	0x5
	.uleb128 0xc6
	.4byte	.LASF737
	.byte	0x6
	.uleb128 0xc9
	.4byte	.LASF738
	.byte	0x5
	.uleb128 0xca
	.4byte	.LASF739
	.byte	0x6
	.uleb128 0xcb
	.4byte	.LASF740
	.byte	0x5
	.uleb128 0xcc
	.4byte	.LASF741
	.byte	0x6
	.uleb128 0xcd
	.4byte	.LASF742
	.byte	0x5
	.uleb128 0xce
	.4byte	.LASF743
	.byte	0x6
	.uleb128 0xd2
	.4byte	.LASF744
	.byte	0x5
	.uleb128 0xd3
	.4byte	.LASF745
	.byte	0x6
	.uleb128 0xd4
	.4byte	.LASF746
	.byte	0x5
	.uleb128 0xd5
	.4byte	.LASF747
	.byte	0x6
	.uleb128 0xd7
	.4byte	.LASF748
	.byte	0x5
	.uleb128 0xd8
	.4byte	.LASF749
	.byte	0x6
	.uleb128 0xd9
	.4byte	.LASF750
	.byte	0x5
	.uleb128 0xda
	.4byte	.LASF751
	.byte	0x6
	.uleb128 0xdc
	.4byte	.LASF752
	.byte	0x5
	.uleb128 0xdd
	.4byte	.LASF753
	.byte	0x6
	.uleb128 0xdf
	.4byte	.LASF754
	.byte	0x5
	.uleb128 0xe0
	.4byte	.LASF755
	.byte	0x6
	.uleb128 0xe1
	.4byte	.LASF756
	.byte	0x5
	.uleb128 0xe2
	.4byte	.LASF757
	.byte	0x6
	.uleb128 0xe4
	.4byte	.LASF758
	.byte	0x5
	.uleb128 0xe5
	.4byte	.LASF759
	.byte	0x6
	.uleb128 0xe6
	.4byte	.LASF760
	.byte	0x5
	.uleb128 0xe7
	.4byte	.LASF761
	.byte	0x6
	.uleb128 0xef
	.4byte	.LASF762
	.byte	0x5
	.uleb128 0xf0
	.4byte	.LASF763
	.byte	0x6
	.uleb128 0xf1
	.4byte	.LASF764
	.byte	0x5
	.uleb128 0xf2
	.4byte	.LASF765
	.byte	0x6
	.uleb128 0xf3
	.4byte	.LASF766
	.byte	0x5
	.uleb128 0xf4
	.4byte	.LASF767
	.byte	0x6
	.uleb128 0xf5
	.4byte	.LASF768
	.byte	0x5
	.uleb128 0xf6
	.4byte	.LASF769
	.byte	0x6
	.uleb128 0xf7
	.4byte	.LASF770
	.byte	0x5
	.uleb128 0xf8
	.4byte	.LASF771
	.byte	0x6
	.uleb128 0xf9
	.4byte	.LASF772
	.byte	0x5
	.uleb128 0xfa
	.4byte	.LASF773
	.byte	0x6
	.uleb128 0xfb
	.4byte	.LASF774
	.byte	0x5
	.uleb128 0xfc
	.4byte	.LASF775
	.byte	0x6
	.uleb128 0xfd
	.4byte	.LASF776
	.byte	0x5
	.uleb128 0xfe
	.4byte	.LASF777
	.byte	0x6
	.uleb128 0xff
	.4byte	.LASF778
	.byte	0x5
	.uleb128 0x100
	.4byte	.LASF779
	.byte	0x6
	.uleb128 0x101
	.4byte	.LASF780
	.byte	0x5
	.uleb128 0x102
	.4byte	.LASF781
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.def.h.11.e17df413196b0eebbda743b47de3eded,comdat
.Ldebug_macro6:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0xb
	.4byte	.LASF783
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF784
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF785
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF786
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF787
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF788
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF789
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF790
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF791
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF792
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF793
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF794
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF795
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.gicv3_defines.h.9.3aad5300cd28007709b6c6eb21fe21ec,comdat
.Ldebug_macro7:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x9
	.4byte	.LASF808
	.byte	0x5
	.uleb128 0xc
	.4byte	.LASF809
	.byte	0x5
	.uleb128 0xd
	.4byte	.LASF810
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF811
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF812
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF813
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF814
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF815
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF816
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF817
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF818
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF819
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF820
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF821
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF822
	.byte	0x5
	.uleb128 0x1e
	.4byte	.LASF823
	.byte	0x5
	.uleb128 0x1f
	.4byte	.LASF824
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF825
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF826
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF827
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF828
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF829
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF830
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF831
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF832
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF833
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF834
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF835
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF836
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF837
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF838
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF839
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF840
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF841
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF842
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF843
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF844
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF845
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF846
	.byte	0x5
	.uleb128 0x36
	.4byte	.LASF847
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF848
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF849
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF850
	.byte	0x5
	.uleb128 0x3a
	.4byte	.LASF851
	.byte	0x5
	.uleb128 0x3b
	.4byte	.LASF852
	.byte	0x5
	.uleb128 0x3d
	.4byte	.LASF853
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF854
	.byte	0x5
	.uleb128 0x3f
	.4byte	.LASF855
	.byte	0x5
	.uleb128 0x40
	.4byte	.LASF856
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF857
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF858
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF859
	.byte	0x5
	.uleb128 0x44
	.4byte	.LASF860
	.byte	0x5
	.uleb128 0x45
	.4byte	.LASF861
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF862
	.byte	0x5
	.uleb128 0x47
	.4byte	.LASF863
	.byte	0x5
	.uleb128 0x48
	.4byte	.LASF864
	.byte	0x5
	.uleb128 0x49
	.4byte	.LASF865
	.byte	0x5
	.uleb128 0x4a
	.4byte	.LASF866
	.byte	0x5
	.uleb128 0x4b
	.4byte	.LASF867
	.byte	0x5
	.uleb128 0x4c
	.4byte	.LASF868
	.byte	0x5
	.uleb128 0x4d
	.4byte	.LASF869
	.byte	0x5
	.uleb128 0x4e
	.4byte	.LASF870
	.byte	0x5
	.uleb128 0x4f
	.4byte	.LASF871
	.byte	0x5
	.uleb128 0x50
	.4byte	.LASF872
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF873
	.byte	0x5
	.uleb128 0x52
	.4byte	.LASF874
	.byte	0x5
	.uleb128 0x53
	.4byte	.LASF875
	.byte	0x5
	.uleb128 0x54
	.4byte	.LASF876
	.byte	0x5
	.uleb128 0x55
	.4byte	.LASF877
	.byte	0x5
	.uleb128 0x56
	.4byte	.LASF878
	.byte	0x5
	.uleb128 0x57
	.4byte	.LASF879
	.byte	0x5
	.uleb128 0x58
	.4byte	.LASF880
	.byte	0x5
	.uleb128 0x59
	.4byte	.LASF881
	.byte	0x5
	.uleb128 0x5a
	.4byte	.LASF882
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF883
	.byte	0x5
	.uleb128 0x5c
	.4byte	.LASF884
	.byte	0x5
	.uleb128 0x5f
	.4byte	.LASF885
	.byte	0x5
	.uleb128 0x60
	.4byte	.LASF886
	.byte	0x5
	.uleb128 0x61
	.4byte	.LASF887
	.byte	0x5
	.uleb128 0x62
	.4byte	.LASF888
	.byte	0x5
	.uleb128 0x63
	.4byte	.LASF889
	.byte	0x5
	.uleb128 0x64
	.4byte	.LASF890
	.byte	0x5
	.uleb128 0x65
	.4byte	.LASF891
	.byte	0x5
	.uleb128 0x66
	.4byte	.LASF892
	.byte	0x5
	.uleb128 0x67
	.4byte	.LASF893
	.byte	0x5
	.uleb128 0x68
	.4byte	.LASF894
	.byte	0x5
	.uleb128 0x69
	.4byte	.LASF895
	.byte	0x5
	.uleb128 0x6a
	.4byte	.LASF896
	.byte	0x5
	.uleb128 0x6b
	.4byte	.LASF897
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF898
	.byte	0x5
	.uleb128 0x6d
	.4byte	.LASF899
	.byte	0x5
	.uleb128 0x6e
	.4byte	.LASF900
	.byte	0x5
	.uleb128 0x6f
	.4byte	.LASF901
	.byte	0x5
	.uleb128 0x70
	.4byte	.LASF902
	.byte	0x5
	.uleb128 0x71
	.4byte	.LASF903
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF904
	.byte	0x5
	.uleb128 0x73
	.4byte	.LASF905
	.byte	0x5
	.uleb128 0x74
	.4byte	.LASF906
	.byte	0x5
	.uleb128 0x75
	.4byte	.LASF907
	.byte	0x5
	.uleb128 0x76
	.4byte	.LASF908
	.byte	0x5
	.uleb128 0x77
	.4byte	.LASF909
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF910
	.byte	0x5
	.uleb128 0x79
	.4byte	.LASF911
	.byte	0x5
	.uleb128 0x7a
	.4byte	.LASF912
	.byte	0x5
	.uleb128 0x7b
	.4byte	.LASF913
	.byte	0x5
	.uleb128 0x7c
	.4byte	.LASF914
	.byte	0x5
	.uleb128 0x7d
	.4byte	.LASF915
	.byte	0x5
	.uleb128 0x7e
	.4byte	.LASF916
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF917
	.byte	0x5
	.uleb128 0x81
	.4byte	.LASF918
	.byte	0x5
	.uleb128 0x82
	.4byte	.LASF919
	.byte	0x5
	.uleb128 0x83
	.4byte	.LASF920
	.byte	0x5
	.uleb128 0x84
	.4byte	.LASF921
	.byte	0x5
	.uleb128 0x85
	.4byte	.LASF922
	.byte	0x5
	.uleb128 0x86
	.4byte	.LASF923
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF924
	.byte	0x5
	.uleb128 0x88
	.4byte	.LASF925
	.byte	0x5
	.uleb128 0x8a
	.4byte	.LASF926
	.byte	0x5
	.uleb128 0x8b
	.4byte	.LASF927
	.byte	0x5
	.uleb128 0x8c
	.4byte	.LASF928
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF929
	.byte	0x5
	.uleb128 0x8e
	.4byte	.LASF930
	.byte	0x5
	.uleb128 0x8f
	.4byte	.LASF931
	.byte	0x5
	.uleb128 0x91
	.4byte	.LASF932
	.byte	0x5
	.uleb128 0x92
	.4byte	.LASF933
	.byte	0x5
	.uleb128 0x93
	.4byte	.LASF934
	.byte	0x5
	.uleb128 0x94
	.4byte	.LASF935
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.registers_defines.h.18.9a8d44838c8fb54ef2efe8f6aa15fed6,comdat
.Ldebug_macro8:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF936
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF937
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF938
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF939
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF940
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF941
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF942
	.byte	0x5
	.uleb128 0x20
	.4byte	.LASF943
	.byte	0x5
	.uleb128 0x21
	.4byte	.LASF944
	.byte	0x5
	.uleb128 0x22
	.4byte	.LASF945
	.byte	0x5
	.uleb128 0x23
	.4byte	.LASF946
	.byte	0x5
	.uleb128 0x24
	.4byte	.LASF947
	.byte	0x5
	.uleb128 0x25
	.4byte	.LASF948
	.byte	0x5
	.uleb128 0x26
	.4byte	.LASF949
	.byte	0x5
	.uleb128 0x27
	.4byte	.LASF950
	.byte	0x5
	.uleb128 0x28
	.4byte	.LASF951
	.byte	0x5
	.uleb128 0x29
	.4byte	.LASF952
	.byte	0x5
	.uleb128 0x2a
	.4byte	.LASF953
	.byte	0x5
	.uleb128 0x2b
	.4byte	.LASF954
	.byte	0x5
	.uleb128 0x2c
	.4byte	.LASF955
	.byte	0x5
	.uleb128 0x2d
	.4byte	.LASF956
	.byte	0x5
	.uleb128 0x2e
	.4byte	.LASF957
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF958
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF959
	.byte	0x5
	.uleb128 0x31
	.4byte	.LASF960
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF961
	.byte	0x5
	.uleb128 0x33
	.4byte	.LASF962
	.byte	0x5
	.uleb128 0x34
	.4byte	.LASF963
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF964
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF965
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF966
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF967
	.byte	0x5
	.uleb128 0x3e
	.4byte	.LASF968
	.byte	0x5
	.uleb128 0x41
	.4byte	.LASF969
	.byte	0x5
	.uleb128 0x42
	.4byte	.LASF970
	.byte	0x5
	.uleb128 0x43
	.4byte	.LASF971
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF972
	.byte	0x5
	.uleb128 0x51
	.4byte	.LASF973
	.byte	0x5
	.uleb128 0x5b
	.4byte	.LASF974
	.byte	0x5
	.uleb128 0x6c
	.4byte	.LASF975
	.byte	0x5
	.uleb128 0x72
	.4byte	.LASF976
	.byte	0x5
	.uleb128 0x78
	.4byte	.LASF977
	.byte	0x5
	.uleb128 0x80
	.4byte	.LASF978
	.byte	0x5
	.uleb128 0x87
	.4byte	.LASF979
	.byte	0x5
	.uleb128 0x8d
	.4byte	.LASF980
	.byte	0x5
	.uleb128 0x95
	.4byte	.LASF981
	.byte	0x5
	.uleb128 0x9f
	.4byte	.LASF982
	.byte	0x5
	.uleb128 0xaa
	.4byte	.LASF983
	.byte	0x5
	.uleb128 0xb1
	.4byte	.LASF984
	.byte	0x5
	.uleb128 0xb7
	.4byte	.LASF985
	.byte	0
	.section	.debug_macro,"G",@progbits,wm4.asm_instructions.h.16.d8aba9e2818259ff18e0b90b03b1dd55,comdat
.Ldebug_macro9:
	.2byte	0x4
	.byte	0
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF986
	.byte	0x5
	.uleb128 0x12
	.4byte	.LASF987
	.byte	0x5
	.uleb128 0x13
	.4byte	.LASF988
	.byte	0x5
	.uleb128 0x14
	.4byte	.LASF989
	.byte	0x5
	.uleb128 0x15
	.4byte	.LASF990
	.byte	0x5
	.uleb128 0x16
	.4byte	.LASF991
	.byte	0x5
	.uleb128 0x17
	.4byte	.LASF992
	.byte	0x5
	.uleb128 0x18
	.4byte	.LASF993
	.byte	0x5
	.uleb128 0x19
	.4byte	.LASF994
	.byte	0x5
	.uleb128 0x1a
	.4byte	.LASF995
	.byte	0x5
	.uleb128 0x1b
	.4byte	.LASF996
	.byte	0x5
	.uleb128 0x1c
	.4byte	.LASF997
	.byte	0x5
	.uleb128 0x1d
	.4byte	.LASF998
	.byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF104:
	.string	"__cpp_aggregate_nsdmi 201304"
.LASF967:
	.string	"SETUP_REG_GCC_REPR_WRITE(name) DEFINE_REG_WRITE(Reg ##name,name ##_GCC_REPR)"
.LASF560:
	.string	"_GLIBCXX_HAVE_TANHF 1"
.LASF1008:
	.string	"int8_t"
.LASF277:
	.string	"__FLT128_MIN_10_EXP__ (-4931)"
.LASF335:
	.string	"__DEC128_EPSILON__ 1E-33DL"
.LASF889:
	.string	"GICD_ISACTIVER4_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(4)"
.LASF55:
	.string	"__UINT32_TYPE__ unsigned int"
.LASF350:
	.string	"__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2"
.LASF144:
	.string	"__UINT32_MAX__ 0xffffffffU"
.LASF1007:
	.string	"size_t"
.LASF982:
	.string	"SETUP_REG_ANY_MEM_WRITE(name) void Reg ##name::write(void *p)const { *reinterpret_cast<Reg ##name*>(p)=*this; }void Reg ##name::write(size_t p)const{ *reinterpret_cast<Reg ##name*>(p)=*this;}"
.LASF1136:
	.string	"D:\\\\Pool\\\\eclipse-workspace_aarch64\\\\chap003\\\\Debug-user_space"
.LASF1116:
	.string	"tryIncrease"
.LASF369:
	.string	"__ARM_ARCH_PROFILE 65"
.LASF671:
	.string	"UINT16_MAX __UINT16_MAX__"
.LASF806:
	.string	"INCLUDE_INTEGERINTEGERFORMATTER_H_ "
.LASF522:
	.string	"_GLIBCXX_HAVE_INTTYPES_H 1"
.LASF129:
	.string	"__SIZE_WIDTH__ 64"
.LASF334:
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
.LASF1075:
	.string	"_ZNK11MemoryChunk5isEndEv"
.LASF22:
	.string	"__LP64__ 1"
.LASF422:
	.string	"_GLIBCXX_DEPRECATED __attribute__ ((__deprecated__))"
.LASF387:
	.string	"__ARM_FEATURE_NUMERIC_MAXMIN 1"
.LASF860:
	.string	"GICD_ISPENDR7_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(7)"
.LASF1106:
	.string	"MemoryManager"
.LASF322:
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
.LASF410:
	.string	"__need_size_t"
.LASF544:
	.string	"_GLIBCXX_HAVE_SQRTF 1"
.LASF761:
	.string	"WINT_MIN __WINT_MIN__"
.LASF726:
	.string	"INT_FAST64_MAX"
.LASF585:
	.string	"_GLIBCXX98_USE_C99_STDLIB 1"
.LASF16:
	.string	"__ATOMIC_CONSUME 1"
.LASF537:
	.string	"_GLIBCXX_HAVE_MEMALIGN 1"
.LASF468:
	.string	"_GLIBCXX_PSEUDO_VISIBILITY(V) "
.LASF303:
	.string	"__FLT64X_DIG__ 33"
.LASF682:
	.string	"UINT64_MAX"
.LASF311:
	.string	"__FLT64X_EPSILON__ 1.92592994438723585305597794258492732e-34F64x"
.LASF647:
	.string	"_WCHAR_T_H "
.LASF793:
	.string	"HEX64(a,b,c,d) 0x ##a ##b ##c ##d"
.LASF1036:
	.string	"uint_fast64_t"
.LASF1012:
	.string	"int32_t"
.LASF938:
	.string	"DEFINE_REG_WRITE(regTypeInCXX,regNameInAsm) void regTypeInCXX::write() const { __asm__ __volatile__(\"msr \" __stringify(regNameInAsm) \",%0 \\n\\t\"::\"r\"(*this));}"
.LASF679:
	.string	"INT64_MAX __INT64_MAX__"
.LASF405:
	.string	"INCLUDE_ARCH_COMMON_AARCH64_EXCEPTIONS_H_ "
.LASF25:
	.string	"__SIZEOF_LONG_LONG__ 8"
.LASF914:
	.string	"GICD_ISACTIVER29_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(29)"
.LASF207:
	.string	"__DBL_MAX_10_EXP__ 308"
.LASF443:
	.string	"_GLIBCXX_DEFAULT_ABI_TAG _GLIBCXX_ABI_TAG_CXX11"
.LASF365:
	.string	"__ARM_ARCH_ISA_A64 1"
.LASF988:
	.string	"ASM_DEFINE_GLOBAL_SYM(sym) __asm__sym__ ##sym:__asm__ __volatile__(\".global \" __stringify(sym) \" \\n\\t;\" __stringify(sym) \":\\n\\t\")"
.LASF581:
	.string	"_GLIBCXX11_USE_C99_STDLIB 1"
.LASF319:
	.string	"__DEC32_MIN__ 1E-95DF"
.LASF172:
	.string	"__INT_FAST64_MAX__ 0x7fffffffffffffffL"
.LASF393:
	.string	"__AARCH64_CMODEL_SMALL__ 1"
.LASF1093:
	.string	"setNextBaseFromEnd"
.LASF757:
	.string	"WCHAR_MIN __WCHAR_MIN__"
.LASF325:
	.string	"__DEC64_MAX_EXP__ 385"
.LASF471:
	.string	"_GLIBCXX_TXN_SAFE "
.LASF216:
	.string	"__FP_FAST_FMA 1"
.LASF198:
	.string	"__FLT_HAS_DENORM__ 1"
.LASF1010:
	.string	"int16_t"
.LASF1087:
	.string	"_ZNK11MemoryChunk10getDataPtrEv"
.LASF252:
	.string	"__FLT32_DECIMAL_DIG__ 9"
.LASF989:
	.string	"ASM_LDR_REG(reg,val) __asm__ __volatile__(\"\")"
.LASF33:
	.string	"__ORDER_LITTLE_ENDIAN__ 1234"
.LASF528:
	.string	"_GLIBCXX_HAVE_LIMIT_FSIZE 0"
.LASF737:
	.string	"UINTPTR_MAX __UINTPTR_MAX__"
.LASF2:
	.string	"__STDC_UTF_16__ 1"
.LASF239:
	.string	"__FLT16_MAX__ 6.55040000000000000000000000000000000e+4F16"
.LASF681:
	.string	"INT64_MIN (-INT64_MAX - 1)"
.LASF98:
	.string	"__cpp_alias_templates 200704"
.LASF955:
	.string	"ICC_IGRPEN0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,6)"
.LASF159:
	.string	"__UINT8_C(c) c"
.LASF812:
	.string	"GIC_ITS_BASE 0x08080000"
.LASF50:
	.string	"__INT16_TYPE__ short int"
.LASF654:
	.string	"NULL __null"
.LASF1118:
	.string	"tryDecrease"
.LASF923:
	.string	"GICR_IPRIORITYR5_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(5)"
.LASF925:
	.string	"GICR_IPRIORITYR7_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(7)"
.LASF858:
	.string	"GICD_ISPENDR5_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(5)"
.LASF566:
	.string	"_GLIBCXX_HAVE_VSWSCANF 1"
.LASF81:
	.string	"__cpp_unicode_characters 200704"
.LASF105:
	.string	"__cpp_variable_templates 201304"
.LASF309:
	.string	"__FLT64X_MAX__ 1.18973149535723176508575932662800702e+4932F64x"
.LASF727:
	.string	"INT_FAST64_MAX __INT_FAST64_MAX__"
.LASF342:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 1"
.LASF223:
	.string	"__DECIMAL_DIG__ 36"
.LASF4:
	.string	"__STDC_HOSTED__ 0"
.LASF959:
	.string	"ICC_RPR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,3)"
.LASF388:
	.string	"__ARM_NEON 1"
.LASF896:
	.string	"GICD_ISACTIVER11_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(11)"
.LASF814:
	.string	"GIC_REDIST_RD_BASE (GIC_REDIST_BASE)"
.LASF584:
	.string	"_GLIBCXX98_USE_C99_STDIO 1"
.LASF1026:
	.string	"uint_least16_t"
.LASF254:
	.string	"__FLT32_MIN__ 1.17549435082228750796873653722224568e-38F32"
.LASF675:
	.string	"INT32_MIN (-INT32_MAX - 1)"
.LASF251:
	.string	"__FLT32_MAX_10_EXP__ 38"
.LASF1128:
	.string	"puts"
.LASF1123:
	.string	"_ZN13MemoryManager10deallocateEPv"
.LASF141:
	.string	"__INT64_MAX__ 0x7fffffffffffffffL"
.LASF877:
	.string	"GICD_ISPENDR24_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(24)"
.LASF1029:
	.string	"int_fast8_t"
.LASF606:
	.string	"_GLIBCXX_VERBOSE 1"
.LASF939:
	.string	"SETUP_REG_STD_READ(regname) DEFINE_REG_READ(Reg ##regname,regname)"
.LASF408:
	.string	"__need_wchar_t"
.LASF248:
	.string	"__FLT32_MIN_EXP__ (-125)"
.LASF983:
	.string	"SETUP_REG_LOAD_STORE_READ(name) Reg ##name Reg ##name::read() { Reg ##name res{0}; __asm__ __volatile__(\"str \" __stringify(name)\",%0 \\n\\t\"::\"m\"(res)); return res; }"
.LASF536:
	.string	"_GLIBCXX_HAVE_MBSTATE_T 1"
.LASF677:
	.string	"UINT32_MAX __UINT32_MAX__"
.LASF616:
	.string	"_BSD_PTRDIFF_T_ "
.LASF1062:
	.string	"MemoryChunk"
.LASF244:
	.string	"__FLT16_HAS_INFINITY__ 1"
.LASF997:
	.string	"ASM_POPW() "
.LASF263:
	.string	"__FLT64_MIN_10_EXP__ (-307)"
.LASF636:
	.string	"__size_t "
.LASF829:
	.string	"GICD_ISENABLER8_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(8)"
.LASF173:
	.string	"__INT_FAST64_WIDTH__ 64"
.LASF1144:
	.string	"_Z8svc_call7SvcFuncmm"
.LASF703:
	.string	"INT_LEAST64_MAX __INT_LEAST64_MAX__"
.LASF500:
	.string	"_GLIBCXX_HAVE_EOVERFLOW 1"
.LASF1027:
	.string	"uint_least32_t"
.LASF1059:
	.string	"double"
.LASF490:
	.string	"_GLIBCXX_HAVE_ECANCELED 1"
.LASF849:
	.string	"GICD_ISENABLER28_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(28)"
.LASF399:
	.string	"__FLT_EVAL_METHOD_C99__"
.LASF775:
	.string	"UINT32_C(c) __UINT32_C(c)"
.LASF34:
	.string	"__ORDER_BIG_ENDIAN__ 4321"
.LASF448:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CONTAINER _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF911:
	.string	"GICD_ISACTIVER26_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(26)"
.LASF904:
	.string	"GICD_ISACTIVER19_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(19)"
.LASF1129:
	.string	"allocateBlock"
.LASF333:
	.string	"__DEC128_MIN__ 1E-6143DL"
.LASF699:
	.string	"INT_LEAST32_MIN (-INT_LEAST32_MAX - 1)"
.LASF202:
	.string	"__DBL_MANT_DIG__ 53"
.LASF40:
	.string	"__SIZE_TYPE__ long unsigned int"
.LASF811:
	.string	"GIC_V2M_BASE 0x08020000"
.LASF1124:
	.string	"getAllocatedLength"
.LASF287:
	.string	"__FLT128_HAS_QUIET_NAN__ 1"
.LASF941:
	.string	"SETUP_REG_STD_WRITE(regname) DEFINE_REG_WRITE(Reg ##regname,regname)"
.LASF79:
	.string	"__GXX_EXPERIMENTAL_CXX0X__ 1"
.LASF638:
	.string	"__WCHAR_T__ "
.LASF262:
	.string	"__FLT64_MIN_EXP__ (-1021)"
.LASF1035:
	.string	"uint_fast32_t"
.LASF454:
	.string	"_GLIBCXX_NAMESPACE_LDBL "
.LASF174:
	.string	"__UINT_FAST8_MAX__ 0xffffffffU"
.LASF321:
	.string	"__DEC32_EPSILON__ 1E-6DF"
.LASF795:
	.string	"BIN64(a,bb,c,d,e,f,g,h) 0b ##a ##bb ##c ##d ##e ##f ##g ##h"
.LASF653:
	.string	"NULL"
.LASF307:
	.string	"__FLT64X_MAX_10_EXP__ 4932"
.LASF121:
	.string	"__SCHAR_WIDTH__ 8"
.LASF823:
	.string	"GICD_ISENABLER2_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(2)"
.LASF169:
	.string	"__INT_FAST16_WIDTH__ 32"
.LASF778:
	.string	"INTMAX_C"
.LASF794:
	.string	"BIN32(a,bb,c,d) 0b ##a ##bb ##c ##d"
.LASF920:
	.string	"GICR_IPRIORITYR2_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(2)"
.LASF708:
	.string	"INT_FAST8_MAX"
.LASF926:
	.string	"GICR_CTLR_MEM_MAPPED_ADDR (GIC_REDIST_BASE+0)"
.LASF211:
	.string	"__DBL_EPSILON__ double(2.22044604925031308084726333618164062e-16L)"
.LASF175:
	.string	"__UINT_FAST16_MAX__ 0xffffffffU"
.LASF897:
	.string	"GICD_ISACTIVER12_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(12)"
.LASF44:
	.string	"__INTMAX_TYPE__ long int"
.LASF488:
	.string	"_GLIBCXX_HAVE_COSHF 1"
.LASF586:
	.string	"_GLIBCXX98_USE_C99_WCHAR 1"
.LASF641:
	.string	"_T_WCHAR "
.LASF799:
	.string	"INCLUDE_KERNEL_H_ "
.LASF755:
	.string	"WCHAR_MAX __WCHAR_MAX__"
.LASF300:
	.string	"__FLT32X_HAS_INFINITY__ 1"
.LASF719:
	.string	"UINT_FAST16_MAX __UINT_FAST16_MAX__"
.LASF623:
	.string	"_SYS_SIZE_T_H "
.LASF284:
	.string	"__FLT128_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F128"
.LASF973:
	.string	"SETUP_REG_HARD_CODED_UPDATE_READ(name) Reg ##name Reg ##name::updateRead() { __asm__ __volatile__( \".4byte 0b\" __stringify(ENCODE_MRS) __stringify(ENCODE_ ##name) __stringify(ENCODE_X0) \"\\n\\t\" \"mov %0,x0 \\n\\t\" :\"=r\"(*this)); return *this;}"
.LASF61:
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
.LASF835:
	.string	"GICD_ISENABLER14_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(14)"
.LASF722:
	.string	"INT_FAST32_MIN"
.LASF1001:
	.string	"long int"
.LASF527:
	.string	"_GLIBCXX_HAVE_LIMIT_DATA 0"
.LASF753:
	.string	"SIZE_MAX __SIZE_MAX__"
.LASF503:
	.string	"_GLIBCXX_HAVE_EPROTO 1"
.LASF294:
	.string	"__FLT32X_DECIMAL_DIG__ 17"
.LASF966:
	.string	"SETUP_REG_GCC_REPR_UPDATE_READ(name) DEFINE_REG_UPDATE_READ(Reg ##name,name ##_GCC_REPR)"
.LASF773:
	.string	"UINT16_C(c) __UINT16_C(c)"
.LASF301:
	.string	"__FLT32X_HAS_QUIET_NAN__ 1"
.LASF901:
	.string	"GICD_ISACTIVER16_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(16)"
.LASF865:
	.string	"GICD_ISPENDR12_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(12)"
.LASF331:
	.string	"__DEC128_MIN_EXP__ (-6142)"
.LASF65:
	.string	"__INT_FAST8_TYPE__ int"
.LASF620:
	.string	"__size_t__ "
.LASF276:
	.string	"__FLT128_MIN_EXP__ (-16381)"
.LASF72:
	.string	"__UINT_FAST64_TYPE__ long unsigned int"
.LASF409:
	.string	"__need_ptrdiff_t"
.LASF771:
	.string	"UINT8_C(c) __UINT8_C(c)"
.LASF57:
	.string	"__INT_LEAST8_TYPE__ signed char"
.LASF436:
	.string	"_GLIBCXX_NOEXCEPT_QUAL "
.LASF1078:
	.string	"getNext"
.LASF346:
	.string	"__GCC_ATOMIC_BOOL_LOCK_FREE 2"
.LASF446:
	.string	"_GLIBCXX_END_NAMESPACE_VERSION "
.LASF313:
	.string	"__FLT64X_HAS_DENORM__ 1"
.LASF919:
	.string	"GICR_IPRIORITYR1_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(1)"
.LASF1101:
	.string	"moveOffsetOfAllocSuchAlignedSpace"
.LASF250:
	.string	"__FLT32_MAX_EXP__ 128"
.LASF689:
	.string	"UINT_LEAST8_MAX __UINT_LEAST8_MAX__"
.LASF1130:
	.string	"main"
.LASF479:
	.string	"_GLIBCXX_USE_C99_WCHAR _GLIBCXX11_USE_C99_WCHAR"
.LASF266:
	.string	"__FLT64_DECIMAL_DIG__ 17"
.LASF228:
	.string	"__LDBL_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966L"
.LASF505:
	.string	"_GLIBCXX_HAVE_ETIMEDOUT 1"
.LASF587:
	.string	"_GLIBCXX_ATOMIC_BUILTINS 1"
.LASF713:
	.string	"UINT_FAST8_MAX __UINT_FAST8_MAX__"
.LASF291:
	.string	"__FLT32X_MIN_10_EXP__ (-307)"
.LASF908:
	.string	"GICD_ISACTIVER23_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(23)"
.LASF632:
	.string	"_SIZE_T_DECLARED "
.LASF1088:
	.string	"getDataEnd"
.LASF750:
	.string	"SIG_ATOMIC_MIN"
.LASF386:
	.string	"__ARM_FEATURE_FP16_VECTOR_ARITHMETIC"
.LASF426:
	.string	"_GLIBCXX14_CONSTEXPR constexpr"
.LASF177:
	.string	"__UINT_FAST64_MAX__ 0xffffffffffffffffUL"
.LASF39:
	.string	"__GNUG__ 7"
.LASF831:
	.string	"GICD_ISENABLER10_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(10)"
.LASF453:
	.string	"_GLIBCXX_LONG_DOUBLE_COMPAT"
.LASF429:
	.string	"_GLIBCXX_NOEXCEPT noexcept"
.LASF191:
	.string	"__FLT_MAX_EXP__ 128"
.LASF24:
	.string	"__SIZEOF_LONG__ 8"
.LASF840:
	.string	"GICD_ISENABLER19_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(19)"
.LASF565:
	.string	"_GLIBCXX_HAVE_VFWSCANF 1"
.LASF484:
	.string	"_GLIBCXX_HAVE_ATANF 1"
.LASF28:
	.string	"__SIZEOF_DOUBLE__ 8"
.LASF85:
	.string	"__cpp_lambdas 200907"
.LASF222:
	.string	"__LDBL_MAX_10_EXP__ 4932"
.LASF417:
	.string	"_GLIBCXX_CONST __attribute__ ((__const__))"
.LASF9:
	.string	"__LINARO_RELEASE__ 201711"
.LASF499:
	.string	"_GLIBCXX_HAVE_ENOTSUP 1"
.LASF270:
	.string	"__FLT64_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F64"
.LASF327:
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
.LASF658:
	.string	"_GLIBCXX_CSTDINT 1"
.LASF556:
	.string	"_GLIBCXX_HAVE_SYS_TIME_H 1"
.LASF1070:
	.string	"isAllocated"
.LASF190:
	.string	"__FLT_MIN_10_EXP__ (-37)"
.LASF1028:
	.string	"uint_least64_t"
.LASF418:
	.string	"_GLIBCXX_NORETURN __attribute__ ((__noreturn__))"
.LASF193:
	.string	"__FLT_DECIMAL_DIG__ 9"
.LASF458:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_BEGIN_NAMESPACE_CXX11"
.LASF441:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_CXX11 namespace __cxx11 {"
.LASF589:
	.string	"_GLIBCXX_HOSTED 1"
.LASF1009:
	.string	"signed char"
.LASF1014:
	.string	"uint8_t"
.LASF660:
	.string	"INT8_MAX"
.LASF741:
	.string	"INTMAX_MIN (-INTMAX_MAX - 1)"
.LASF767:
	.string	"INT32_C(c) __INT32_C(c)"
.LASF256:
	.string	"__FLT32_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F32"
.LASF339:
	.string	"__GNUC_STDC_INLINE__ 1"
.LASF788:
	.string	"FATAL \"[FATAL] \""
.LASF384:
	.string	"__ARM_FP16_ARGS 1"
.LASF496:
	.string	"_GLIBCXX_HAVE_ENOSR 1"
.LASF580:
	.string	"_GLIBCXX11_USE_C99_STDIO 1"
.LASF102:
	.string	"__cpp_constexpr 201304"
.LASF746:
	.string	"PTRDIFF_MIN"
.LASF128:
	.string	"__PTRDIFF_WIDTH__ 64"
.LASF160:
	.string	"__UINT_LEAST16_MAX__ 0xffff"
.LASF444:
	.string	"_GLIBCXX_INLINE_VERSION 0"
.LASF101:
	.string	"__cpp_generic_lambdas 201304"
.LASF540:
	.string	"_GLIBCXX_HAVE_POWF 1"
.LASF672:
	.string	"INT32_MAX"
.LASF508:
	.string	"_GLIBCXX_HAVE_EXPF 1"
.LASF265:
	.string	"__FLT64_MAX_10_EXP__ 308"
.LASF943:
	.string	"PAN_GCC_REPR SYS_REG_GCC_REPR(3,0,4,2,3)"
.LASF506:
	.string	"_GLIBCXX_HAVE_ETXTBSY 1"
.LASF427:
	.string	"_GLIBCXX17_CONSTEXPR "
.LASF106:
	.string	"__cpp_digit_separators 201309"
.LASF631:
	.string	"_BSD_SIZE_T_DEFINED_ "
.LASF71:
	.string	"__UINT_FAST32_TYPE__ unsigned int"
.LASF1015:
	.string	"unsigned char"
.LASF3:
	.string	"__STDC_UTF_32__ 1"
.LASF415:
	.string	"__GLIBCXX__ 20171011"
.LASF255:
	.string	"__FLT32_EPSILON__ 1.19209289550781250000000000000000000e-7F32"
.LASF512:
	.string	"_GLIBCXX_HAVE_FLOORF 1"
.LASF347:
	.string	"__GCC_ATOMIC_CHAR_LOCK_FREE 2"
.LASF332:
	.string	"__DEC128_MAX_EXP__ 6145"
.LASF697:
	.string	"INT_LEAST32_MAX __INT_LEAST32_MAX__"
.LASF181:
	.string	"__GCC_IEC_559 2"
.LASF916:
	.string	"GICD_ISACTIVER31_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(31)"
.LASF170:
	.string	"__INT_FAST32_MAX__ 0x7fffffff"
.LASF12:
	.string	"__ATOMIC_SEQ_CST 5"
.LASF991:
	.string	"ASM_PUSHX() "
.LASF575:
	.string	"_GLIBCXX_PACKAGE_TARNAME \"libstdc++\""
.LASF879:
	.string	"GICD_ISPENDR26_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(26)"
.LASF412:
	.string	"__need_wint_t"
.LASF285:
	.string	"__FLT128_HAS_DENORM__ 1"
.LASF809:
	.string	"GIC_DIST_BASE 0x08000000"
.LASF905:
	.string	"GICD_ISACTIVER20_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(20)"
.LASF206:
	.string	"__DBL_MAX_EXP__ 1024"
.LASF800:
	.string	"INCLUDE_PRINTK_H_ "
.LASF111:
	.string	"__SHRT_MAX__ 0x7fff"
.LASF994:
	.string	"ASM_PUSHW_REG() "
.LASF163:
	.string	"__UINT32_C(c) c ## U"
.LASF962:
	.string	"ICC_SRE_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,5)"
.LASF981:
	.string	"SETUP_REG_ANY_MEM_READ(name) Reg ##name Reg ##name::read(void *p) { return *reinterpret_cast<Reg ##name*>(p);}Reg ##name Reg ##name::read(size_t p){ return *reinterpret_cast<Reg ##name*>(p);}"
.LASF716:
	.string	"INT_FAST16_MIN"
.LASF131:
	.string	"__INTMAX_C(c) c ## L"
.LASF221:
	.string	"__LDBL_MAX_EXP__ 16384"
.LASF754:
	.string	"WCHAR_MAX"
.LASF26:
	.string	"__SIZEOF_SHORT__ 2"
.LASF539:
	.string	"_GLIBCXX_HAVE_MODFF 1"
.LASF906:
	.string	"GICD_ISACTIVER21_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(21)"
.LASF898:
	.string	"GICD_ISACTIVER13_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(13)"
.LASF156:
	.string	"__INT64_C(c) c ## L"
.LASF723:
	.string	"INT_FAST32_MIN (-INT_FAST32_MAX - 1)"
.LASF817:
	.string	"GICD_IIDR_MEM_MAPPED_ADDR (GIC_DIST_BASE+0x8)"
.LASF340:
	.string	"__STRICT_ANSI__ 1"
.LASF604:
	.string	"_GLIBCXX_USE_TMPNAM 1"
.LASF786:
	.string	"INFO \"[INFO] \""
.LASF474:
	.string	"__N(msgid) (msgid)"
.LASF133:
	.string	"__UINTMAX_C(c) c ## UL"
.LASF115:
	.string	"__WCHAR_MAX__ 0xffffffffU"
.LASF282:
	.string	"__FLT128_MIN__ 3.36210314311209350626267781732175260e-4932F128"
.LASF358:
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
.LASF42:
	.string	"__WCHAR_TYPE__ unsigned int"
.LASF759:
	.string	"WINT_MAX __WINT_MAX__"
.LASF1041:
	.string	"char"
.LASF391:
	.string	"__AARCH64_CMODEL_SMALL__"
.LASF531:
	.string	"_GLIBCXX_HAVE_LOCALE_H 1"
.LASF343:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 1"
.LASF92:
	.string	"__cpp_variadic_templates 200704"
.LASF720:
	.string	"INT_FAST32_MAX"
.LASF68:
	.string	"__INT_FAST64_TYPE__ long int"
.LASF825:
	.string	"GICD_ISENABLER4_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(4)"
.LASF907:
	.string	"GICD_ISACTIVER22_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(22)"
.LASF478:
	.string	"_GLIBCXX_USE_C99_STDLIB _GLIBCXX11_USE_C99_STDLIB"
.LASF1135:
	.string	"../src/arch/user_space/user_main_hello_kernel.cpp"
.LASF472:
	.string	"_GLIBCXX_TXN_SAFE_DYN "
.LASF23:
	.string	"__SIZEOF_INT__ 4"
.LASF526:
	.string	"_GLIBCXX_HAVE_LIMIT_AS 0"
.LASF714:
	.string	"INT_FAST16_MAX"
.LASF883:
	.string	"GICD_ISPENDR30_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(30)"
.LASF787:
	.string	"WARNING \"[WARNING] \""
.LASF32:
	.string	"__BIGGEST_ALIGNMENT__ 16"
.LASF545:
	.string	"_GLIBCXX_HAVE_STDALIGN_H 1"
.LASF416:
	.string	"_GLIBCXX_PURE __attribute__ ((__pure__))"
.LASF237:
	.string	"__FLT16_MAX_10_EXP__ 4"
.LASF728:
	.string	"INT_FAST64_MIN"
.LASF665:
	.string	"UINT8_MAX __UINT8_MAX__"
.LASF782:
	.string	"_GCC_WRAP_STDINT_H "
.LASF922:
	.string	"GICR_IPRIORITYR4_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(4)"
.LASF507:
	.string	"_GLIBCXX_HAVE_EWOULDBLOCK 1"
.LASF142:
	.string	"__UINT8_MAX__ 0xff"
.LASF196:
	.string	"__FLT_EPSILON__ 1.19209289550781250000000000000000000e-7F"
.LASF1042:
	.string	"EMPTY_STR"
.LASF987:
	.string	"ASM_DEFINE_LOCAL_SYM(sym) __asm__sym__ ##sym: __asm__ __volatile__(__stringify(sym) \":\\n\\t\")"
.LASF1067:
	.string	"nextBaseFromEnd"
.LASF420:
	.string	"_GLIBCXX_VISIBILITY(V) __attribute__ ((__visibility__ (#V)))"
.LASF213:
	.string	"__DBL_HAS_DENORM__ 1"
.LASF243:
	.string	"__FLT16_HAS_DENORM__ 1"
.LASF1113:
	.string	"allocate"
.LASF86:
	.string	"__cpp_range_based_for 200907"
.LASF109:
	.string	"__GXX_ABI_VERSION 1011"
.LASF494:
	.string	"_GLIBCXX_HAVE_ENOLINK 1"
.LASF1139:
	.string	"decltype(nullptr)"
.LASF149:
	.string	"__INT_LEAST16_MAX__ 0x7fff"
.LASF278:
	.string	"__FLT128_MAX_EXP__ 16384"
.LASF464:
	.string	"_GLIBCXX_END_EXTERN_C }"
.LASF1022:
	.string	"int_least16_t"
.LASF1125:
	.string	"_ZNK13MemoryManager18getAllocatedLengthEPv"
.LASF403:
	.string	"CXX_MACROS_H__ "
.LASF351:
	.string	"__GCC_ATOMIC_SHORT_LOCK_FREE 2"
.LASF76:
	.string	"__has_include_next(STR) __has_include_next__(STR)"
.LASF1122:
	.string	"deallocate"
.LASF937:
	.string	"DEFINE_REG_UPDATE_READ(regTypeInCXX,regNameInAsm) regTypeInCXX regTypeInCXX::updateRead(){ __asm__ __volatile__(\"mrs %0,\" __stringify(regNameInAsm) \"\\n\\t\":\"=r\"(*this));return *this;}"
.LASF848:
	.string	"GICD_ISENABLER27_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(27)"
.LASF742:
	.string	"UINTMAX_MAX"
.LASF890:
	.string	"GICD_ISACTIVER5_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(5)"
.LASF442:
	.string	"_GLIBCXX_END_NAMESPACE_CXX11 }"
.LASF456:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL "
.LASF895:
	.string	"GICD_ISACTIVER10_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(10)"
.LASF1127:
	.string	"mman"
.LASF476:
	.string	"_GLIBCXX_USE_C99_COMPLEX _GLIBCXX11_USE_C99_COMPLEX"
.LASF837:
	.string	"GICD_ISENABLER16_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(16)"
.LASF864:
	.string	"GICD_ISPENDR11_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(11)"
.LASF1043:
	.string	"koutBufSize"
.LASF591:
	.string	"_GLIBCXX_STDIO_EOF -1"
.LASF452:
	.string	"_GLIBCXX_END_NAMESPACE_ALGO _GLIBCXX_END_NAMESPACE_VERSION"
.LASF18:
	.string	"__PIC__ 2"
.LASF649:
	.string	"__INT_WCHAR_T_H "
.LASF1061:
	.string	"Output"
.LASF455:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_LDBL "
.LASF954:
	.string	"ICC_IAR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,0)"
.LASF887:
	.string	"GICD_ISACTIVER2_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(2)"
.LASF477:
	.string	"_GLIBCXX_USE_C99_STDIO _GLIBCXX11_USE_C99_STDIO"
.LASF355:
	.string	"__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1"
.LASF639:
	.string	"_WCHAR_T "
.LASF577:
	.string	"_GLIBCXX_PACKAGE__GLIBCXX_VERSION \"version-unused\""
.LASF568:
	.string	"_GLIBCXX_HAVE_WCHAR_H 1"
.LASF151:
	.string	"__INT_LEAST16_WIDTH__ 16"
.LASF259:
	.string	"__FLT32_HAS_QUIET_NAN__ 1"
.LASF979:
	.string	"SETUP_REG_PC_UPDATE_READ(name) Reg ##name Reg ##name::updateRead() { __asm__ __volatile__(\"adr %0,#0\\n\\t\":\"=r\"(*this)); return *this; }"
.LASF635:
	.string	"_SIZET_ "
.LASF230:
	.string	"__LDBL_HAS_INFINITY__ 1"
.LASF320:
	.string	"__DEC32_MAX__ 9.999999E96DF"
.LASF519:
	.string	"_GLIBCXX_HAVE_IEEEFP_H 1"
.LASF293:
	.string	"__FLT32X_MAX_10_EXP__ 308"
.LASF533:
	.string	"_GLIBCXX_HAVE_LOGF 1"
.LASF367:
	.string	"__ARM_ALIGN_MAX_STACK_PWR 16"
.LASF807:
	.string	"INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ "
.LASF473:
	.string	"_GLIBCXX_FAST_MATH 0"
.LASF1099:
	.string	"moveAhead"
.LASF664:
	.string	"UINT8_MAX"
.LASF878:
	.string	"GICD_ISPENDR25_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(25)"
.LASF853:
	.string	"GICD_ISPENDR0_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(0)"
.LASF459:
	.string	"_GLIBCXX_END_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_END_NAMESPACE_CXX11"
.LASF743:
	.string	"UINTMAX_MAX __UINTMAX_MAX__"
.LASF136:
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
.LASF830:
	.string	"GICD_ISENABLER9_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(9)"
.LASF567:
	.string	"_GLIBCXX_HAVE_VWSCANF 1"
.LASF158:
	.string	"__UINT_LEAST8_MAX__ 0xff"
.LASF942:
	.string	"SYS_REG_GCC_REPR(op0,op1,crn,crm,op2) s ##op0 ##_ ##op1 ##_ ##c ##crn ##_ ##c ##crm ##_ ##op2"
.LASF88:
	.string	"__cpp_decltype 200707"
.LASF876:
	.string	"GICD_ISPENDR23_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(23)"
.LASF516:
	.string	"_GLIBCXX_HAVE_GETS 1"
.LASF314:
	.string	"__FLT64X_HAS_INFINITY__ 1"
.LASF201:
	.string	"__FP_FAST_FMAF 1"
.LASF760:
	.string	"WINT_MIN"
.LASF903:
	.string	"GICD_ISACTIVER18_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(18)"
.LASF676:
	.string	"UINT32_MAX"
.LASF572:
	.string	"_GLIBCXX_PACKAGE_BUGREPORT \"\""
.LASF1069:
	.string	"_ZN11MemoryChunkC4Embmbm"
.LASF185:
	.string	"__DEC_EVAL_METHOD__ 2"
.LASF1079:
	.string	"_ZNK11MemoryChunk7getNextEv"
.LASF97:
	.string	"__cpp_ref_qualifiers 200710"
.LASF329:
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
.LASF547:
	.string	"_GLIBCXX_HAVE_STDINT_H 1"
.LASF1126:
	.string	"kout"
.LASF411:
	.string	"__need_NULL"
.LASF425:
	.string	"_GLIBCXX_USE_CONSTEXPR constexpr"
.LASF424:
	.string	"_GLIBCXX_CONSTEXPR constexpr"
.LASF338:
	.string	"__USER_LABEL_PREFIX__ "
.LASF855:
	.string	"GICD_ISPENDR2_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(2)"
.LASF710:
	.string	"INT_FAST8_MIN"
.LASF709:
	.string	"INT_FAST8_MAX __INT_FAST8_MAX__"
.LASF152:
	.string	"__INT_LEAST32_MAX__ 0x7fffffff"
.LASF60:
	.string	"__INT_LEAST64_TYPE__ long int"
.LASF769:
	.string	"INT64_C(c) __INT64_C(c)"
.LASF146:
	.string	"__INT_LEAST8_MAX__ 0x7f"
.LASF356:
	.string	"__GCC_ATOMIC_POINTER_LOCK_FREE 2"
.LASF370:
	.string	"__ARM_FEATURE_CLZ 1"
.LASF381:
	.string	"__ARM_FEATURE_FMA 1"
.LASF834:
	.string	"GICD_ISENABLER13_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(13)"
.LASF406:
	.string	"DEF_H__ "
.LASF379:
	.string	"__ARM_BIG_ENDIAN"
.LASF1049:
	.string	"operator<<"
.LASF789:
	.string	"TIE2(t1,v1,t2,v2) t1 v1;t2 v2;std::tie((v1),(v2))"
.LASF374:
	.string	"__ARM_SIZEOF_WCHAR_T 4"
.LASF292:
	.string	"__FLT32X_MAX_EXP__ 1024"
.LASF481:
	.string	"_GLIBCXX_HAVE_ASINF 1"
.LASF570:
	.string	"_GLIBCXX_HAVE_WCTYPE_H 1"
.LASF627:
	.string	"_SIZE_T_ "
.LASF960:
	.string	"ICC_SGI0R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,7)"
.LASF711:
	.string	"INT_FAST8_MIN (-INT_FAST8_MAX - 1)"
.LASF784:
	.string	"arrsizeof(arr) (sizeof(arr)/sizeof(arr[0]))"
.LASF157:
	.string	"__INT_LEAST64_WIDTH__ 64"
.LASF199:
	.string	"__FLT_HAS_INFINITY__ 1"
.LASF38:
	.string	"__SIZEOF_POINTER__ 8"
.LASF847:
	.string	"GICD_ISENABLER26_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(26)"
.LASF138:
	.string	"__INT8_MAX__ 0x7f"
.LASF437:
	.string	"_GLIBCXX_EXTERN_TEMPLATE 1"
.LASF730:
	.string	"UINT_FAST64_MAX"
.LASF66:
	.string	"__INT_FAST16_TYPE__ int"
.LASF357:
	.string	"__GCC_HAVE_DWARF2_CFI_ASM 1"
.LASF389:
	.string	"__ARM_FEATURE_CRC32"
.LASF466:
	.string	"_GLIBCXX_OS_DEFINES 1"
.LASF1002:
	.string	"long unsigned int"
.LASF203:
	.string	"__DBL_DIG__ 15"
.LASF546:
	.string	"_GLIBCXX_HAVE_STDBOOL_H 1"
.LASF182:
	.string	"__GCC_IEC_559_COMPLEX 2"
.LASF5:
	.string	"__GNUC__ 7"
.LASF1117:
	.string	"_ZN13MemoryManager11tryIncreaseEPvm"
.LASF54:
	.string	"__UINT16_TYPE__ short unsigned int"
.LASF946:
	.string	"ICC_CTLR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,4)"
.LASF224:
	.string	"__LDBL_DECIMAL_DIG__ 36"
.LASF305:
	.string	"__FLT64X_MIN_10_EXP__ (-4931)"
.LASF82:
	.string	"__cpp_raw_strings 200710"
.LASF816:
	.string	"GICD_CTLR_MEM_MAPPED_ADDR (GIC_DIST_BASE+0)"
.LASF318:
	.string	"__DEC32_MAX_EXP__ 97"
.LASF1089:
	.string	"_ZN11MemoryChunk10getDataEndEv"
.LASF624:
	.string	"_T_SIZE_ "
.LASF184:
	.string	"__FLT_EVAL_METHOD_TS_18661_3__ 0"
.LASF363:
	.string	"__aarch64__ 1"
.LASF1121:
	.string	"_ZN13MemoryManager10reallocateEPvmm"
.LASF227:
	.string	"__LDBL_EPSILON__ 1.92592994438723585305597794258492732e-34L"
.LASF432:
	.string	"_GLIBCXX_THROW(_EXC) "
.LASF718:
	.string	"UINT_FAST16_MAX"
.LASF752:
	.string	"SIZE_MAX"
.LASF69:
	.string	"__UINT_FAST8_TYPE__ unsigned int"
.LASF241:
	.string	"__FLT16_EPSILON__ 9.76562500000000000000000000000000000e-4F16"
.LASF95:
	.string	"__cpp_nsdmi 200809"
.LASF571:
	.string	"LT_OBJDIR \".libs/\""
.LASF87:
	.string	"__cpp_static_assert 200410"
.LASF486:
	.string	"_GLIBCXX_HAVE_COMPLEX_H 1"
.LASF1024:
	.string	"int_least64_t"
.LASF21:
	.string	"_LP64 1"
.LASF900:
	.string	"GICD_ISACTIVER15_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(15)"
.LASF475:
	.string	"_GLIBCXX_USE_C99_MATH _GLIBCXX11_USE_C99_MATH"
.LASF1132:
	.string	"arg0"
.LASF1133:
	.string	"arg1"
.LASF1071:
	.string	"_ZNK11MemoryChunk11isAllocatedEv"
.LASF421:
	.string	"_GLIBCXX_USE_DEPRECATED 1"
.LASF246:
	.string	"__FLT32_MANT_DIG__ 24"
.LASF684:
	.string	"INT_LEAST8_MAX"
.LASF1065:
	.string	"allocated"
.LASF655:
	.string	"offsetof(TYPE,MEMBER) __builtin_offsetof (TYPE, MEMBER)"
.LASF871:
	.string	"GICD_ISPENDR18_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(18)"
.LASF661:
	.string	"INT8_MAX __INT8_MAX__"
.LASF302:
	.string	"__FLT64X_MANT_DIG__ 113"
.LASF209:
	.string	"__DBL_MAX__ double(1.79769313486231570814527423731704357e+308L)"
.LASF854:
	.string	"GICD_ISPENDR1_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(1)"
.LASF348:
	.string	"__GCC_ATOMIC_CHAR16_T_LOCK_FREE 2"
.LASF944:
	.string	"ICC_BPR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,3)"
.LASF316:
	.string	"__DEC32_MANT_DIG__ 7"
.LASF1038:
	.string	"uintptr_t"
.LASF14:
	.string	"__ATOMIC_RELEASE 3"
.LASF857:
	.string	"GICD_ISPENDR4_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(4)"
.LASF299:
	.string	"__FLT32X_HAS_DENORM__ 1"
.LASF187:
	.string	"__FLT_MANT_DIG__ 24"
.LASF601:
	.string	"_GLIBCXX_USE_INT128 1"
.LASF980:
	.string	"SETUP_REG_PC_WRITE(name) void Reg ##name::write()const { __asm__ __volatile__(\"br %0\\n\\t\"::\"r\"(*this)); }"
.LASF67:
	.string	"__INT_FAST32_TYPE__ int"
.LASF89:
	.string	"__cpp_attributes 200809"
.LASF617:
	.string	"___int_ptrdiff_t_h "
.LASF19:
	.string	"__OPTIMIZE__ 1"
.LASF845:
	.string	"GICD_ISENABLER24_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(24)"
.LASF532:
	.string	"_GLIBCXX_HAVE_LOG10F 1"
.LASF874:
	.string	"GICD_ISPENDR21_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(21)"
.LASF130:
	.string	"__INTMAX_MAX__ 0x7fffffffffffffffL"
.LASF1082:
	.string	"_ZNK11MemoryChunk7getSizeEv"
.LASF268:
	.string	"__FLT64_MIN__ 2.22507385850720138309023271733240406e-308F64"
.LASF20:
	.string	"__FINITE_MATH_ONLY__ 0"
.LASF612:
	.string	"_T_PTRDIFF_ "
.LASF657:
	.string	"_GXX_NULLPTR_T "
.LASF1:
	.string	"__cplusplus 201402L"
.LASF1120:
	.string	"reallocate"
.LASF132:
	.string	"__UINTMAX_MAX__ 0xffffffffffffffffUL"
.LASF235:
	.string	"__FLT16_MIN_10_EXP__ (-4)"
.LASF1141:
	.string	"_ZN11MemoryChunk25mergeTrailingsUnallocatedEv"
.LASF118:
	.string	"__WINT_MIN__ 0U"
.LASF610:
	.string	"_ANSI_STDDEF_H "
.LASF936:
	.string	"DEFINE_REG_READ(regTypeInCXX,regNameInAsm) regTypeInCXX regTypeInCXX::read(){ regTypeInCXX res;__asm__ __volatile__(\"mrs %0,\" __stringify(regNameInAsm) \"\\n\\t\":\"=r\"(res));return res;}"
.LASF134:
	.string	"__INTMAX_WIDTH__ 64"
.LASF413:
	.string	"_GLIBCXX_CXX_CONFIG_H 1"
.LASF1083:
	.string	"setSize"
.LASF821:
	.string	"GICD_ISENABLER0_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(0)"
.LASF525:
	.string	"_GLIBCXX_HAVE_LDEXPF 1"
.LASF345:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 1"
.LASF790:
	.string	"__stringify_1(x) #x"
.LASF1090:
	.string	"_ZNK11MemoryChunk10getDataEndEv"
.LASF740:
	.string	"INTMAX_MIN"
.LASF640:
	.string	"_T_WCHAR_ "
.LASF673:
	.string	"INT32_MAX __INT32_MAX__"
.LASF517:
	.string	"_GLIBCXX_HAVE_HYPOT 1"
.LASF813:
	.string	"GIC_REDIST_BASE 0x080A0000"
.LASF116:
	.string	"__WCHAR_MIN__ 0U"
.LASF238:
	.string	"__FLT16_DECIMAL_DIG__ 5"
.LASF353:
	.string	"__GCC_ATOMIC_LONG_LOCK_FREE 2"
.LASF402:
	.string	"ARCH_IS_host 1"
.LASF893:
	.string	"GICD_ISACTIVER8_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(8)"
.LASF376:
	.string	"__ARM_ARCH 8"
.LASF595:
	.string	"_GLIBCXX_USE_C99_INTTYPES_TR1 1"
.LASF1077:
	.string	"_ZN11MemoryChunk6setEndEb"
.LASF186:
	.string	"__FLT_RADIX__ 2"
.LASF258:
	.string	"__FLT32_HAS_INFINITY__ 1"
.LASF1100:
	.string	"_ZN11MemoryChunk9moveAheadEm"
.LASF603:
	.string	"_GLIBCXX_USE_SC_NPROCESSORS_ONLN 1"
.LASF666:
	.string	"INT16_MAX"
.LASF732:
	.string	"INTPTR_MAX"
.LASF47:
	.string	"__CHAR32_TYPE__ unsigned int"
.LASF637:
	.string	"__wchar_t__ "
.LASF810:
	.string	"GIC_CPU_BASE 0x08010000"
.LASF231:
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
.LASF10:
	.string	"__LINARO_SPIN__ 0"
.LASF963:
	.string	"ICC_SRE_EL2_GCC_REPR SYS_REG_GCC_REPR(3,4,12,9,5)"
.LASF125:
	.string	"__LONG_LONG_WIDTH__ 64"
.LASF611:
	.string	"_PTRDIFF_T "
.LASF557:
	.string	"_GLIBCXX_HAVE_SYS_TYPES_H 1"
.LASF597:
	.string	"_GLIBCXX_USE_C99_STDINT_TR1 1"
.LASF108:
	.string	"__cpp_threadsafe_static_init 200806"
.LASF1104:
	.string	"_ZN11MemoryChunk5splitEm"
.LASF440:
	.string	"_GLIBCXX_NAMESPACE_CXX11 __cxx11::"
.LASF354:
	.string	"__GCC_ATOMIC_LLONG_LOCK_FREE 2"
.LASF808:
	.string	"INCLUDE_ARCH_COMMON_AARCH64_GICV3_BASE_H_ "
.LASF447:
	.string	"_GLIBCXX_STD_C std"
.LASF884:
	.string	"GICD_ISPENDR31_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(31)"
.LASF739:
	.string	"INTMAX_MAX __INTMAX_MAX__"
.LASF264:
	.string	"__FLT64_MAX_EXP__ 1024"
.LASF642:
	.string	"__WCHAR_T "
.LASF1023:
	.string	"int_least32_t"
.LASF123:
	.string	"__INT_WIDTH__ 32"
.LASF225:
	.string	"__LDBL_MAX__ 1.18973149535723176508575932662800702e+4932L"
.LASF45:
	.string	"__UINTMAX_TYPE__ long unsigned int"
.LASF127:
	.string	"__WINT_WIDTH__ 32"
.LASF951:
	.string	"ICC_HPPIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,2)"
.LASF950:
	.string	"ICC_EOIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,1)"
.LASF31:
	.string	"__CHAR_BIT__ 8"
.LASF863:
	.string	"GICD_ISPENDR10_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(10)"
.LASF360:
	.string	"__SIZEOF_WCHAR_T__ 4"
.LASF931:
	.string	"GICR_ISENABLER0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE + 0x100)"
.LASF480:
	.string	"_GLIBCXX_HAVE_ACOSF 1"
.LASF856:
	.string	"GICD_ISPENDR3_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(3)"
.LASF1040:
	.string	"uintmax_t"
.LASF894:
	.string	"GICD_ISACTIVER9_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(9)"
.LASF828:
	.string	"GICD_ISENABLER7_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(7)"
.LASF678:
	.string	"INT64_MAX"
.LASF236:
	.string	"__FLT16_MAX_EXP__ 16"
.LASF921:
	.string	"GICR_IPRIORITYR3_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(3)"
.LASF94:
	.string	"__cpp_delegating_constructors 200604"
.LASF977:
	.string	"SETUP_REG_MEM_MAPPED_WRITE(name) void Reg ##name::write() const{ *reinterpret_cast<Reg ##name*>(name ##_MEM_MAPPED_ADDR)=*this;}"
.LASF1091:
	.string	"getNextBaseFromEnd"
.LASF451:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_ALGO _GLIBCXX_BEGIN_NAMESPACE_VERSION"
.LASF605:
	.string	"_GLIBCXX_USE_WCHAR_T 1"
.LASF36:
	.string	"__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF972:
	.string	"SETUP_REG_HARD_CODED_READ(name) Reg ##name Reg ##name::read() { Reg ##name res; __asm__ __volatile__( \".4byte 0b\" __stringify(ENCODE_MRS) __stringify(ENCODE_ ##name) __stringify(ENCODE_X0) \"\\n\\t\" \"mov %0,x0 \\n\\t\" :\"=r\"(res)); return res; }"
.LASF153:
	.string	"__INT32_C(c) c"
.LASF1064:
	.string	"endMark"
.LASF731:
	.string	"UINT_FAST64_MAX __UINT_FAST64_MAX__"
.LASF891:
	.string	"GICD_ISACTIVER6_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(6)"
.LASF74:
	.string	"__UINTPTR_TYPE__ long unsigned int"
.LASF882:
	.string	"GICD_ISPENDR29_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(29)"
.LASF390:
	.string	"__AARCH64_CMODEL_TINY__"
.LASF875:
	.string	"GICD_ISPENDR22_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(22)"
.LASF785:
	.string	"NULL_CHAR '\\0'"
.LASF43:
	.string	"__WINT_TYPE__ unsigned int"
.LASF766:
	.string	"INT32_C"
.LASF669:
	.string	"INT16_MIN (-INT16_MAX - 1)"
.LASF958:
	.string	"ICC_PMR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,4,6,0)"
.LASF1081:
	.string	"getSize"
.LASF952:
	.string	"ICC_HPPIR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,2)"
.LASF888:
	.string	"GICD_ISACTIVER3_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(3)"
.LASF1145:
	.string	"L__LINE__"
.LASF1109:
	.string	"_ZN13MemoryManagerC4Ev"
.LASF63:
	.string	"__UINT_LEAST32_TYPE__ unsigned int"
.LASF1019:
	.string	"unsigned int"
.LASF629:
	.string	"_SIZE_T_DEFINED_ "
.LASF1138:
	.string	"max_align_t"
.LASF1098:
	.string	"_ZN11MemoryChunk23setNextValidChunkOffsetEm"
.LASF189:
	.string	"__FLT_MIN_EXP__ (-125)"
.LASF273:
	.string	"__FLT64_HAS_QUIET_NAN__ 1"
.LASF579:
	.string	"_GLIBCXX11_USE_C99_MATH 1"
.LASF510:
	.string	"_GLIBCXX_HAVE_FCNTL_H 1"
.LASF434:
	.string	"_GLIBCXX_THROW_OR_ABORT(_EXC) (__builtin_abort())"
.LASF438:
	.string	"_GLIBCXX_USE_DUAL_ABI 1"
.LASF1037:
	.string	"intptr_t"
.LASF295:
	.string	"__FLT32X_MAX__ 1.79769313486231570814527423731704357e+308F32x"
.LASF271:
	.string	"__FLT64_HAS_DENORM__ 1"
.LASF188:
	.string	"__FLT_DIG__ 6"
.LASF885:
	.string	"GICD_ISACTIVER0_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(0)"
.LASF430:
	.string	"_GLIBCXX_NOEXCEPT_IF(_COND) noexcept(_COND)"
.LASF1086:
	.string	"_ZN11MemoryChunk10getDataPtrEv"
.LASF685:
	.string	"INT_LEAST8_MAX __INT_LEAST8_MAX__"
.LASF183:
	.string	"__FLT_EVAL_METHOD__ 0"
.LASF485:
	.string	"_GLIBCXX_HAVE_CEILF 1"
.LASF965:
	.string	"SETUP_REG_GCC_REPR_READ(name) DEFINE_REG_READ(Reg ##name,name ##_GCC_REPR)"
.LASF194:
	.string	"__FLT_MAX__ 3.40282346638528859811704183484516925e+38F"
.LASF110:
	.string	"__SCHAR_MAX__ 0x7f"
.LASF698:
	.string	"INT_LEAST32_MIN"
.LASF167:
	.string	"__INT_FAST8_WIDTH__ 32"
.LASF93:
	.string	"__cpp_initializer_lists 200806"
.LASF283:
	.string	"__FLT128_EPSILON__ 1.92592994438723585305597794258492732e-34F128"
.LASF445:
	.string	"_GLIBCXX_BEGIN_NAMESPACE_VERSION "
.LASF483:
	.string	"_GLIBCXX_HAVE_ATAN2F 1"
.LASF1134:
	.string	"GNU C++14 7.2.1 20171011 -march=armv8-a -mlittle-endian -mabi=lp64 -g3 -O0 -Og -pedantic-errors -std=c++14 -fmessage-length=0 -fmax-errors=20 -ffreestanding -fno-exceptions -fno-rtti -fsigned-char -fPIC"
.LASF613:
	.string	"_T_PTRDIFF "
.LASF124:
	.string	"__LONG_WIDTH__ 64"
.LASF764:
	.string	"INT16_C"
.LASF324:
	.string	"__DEC64_MIN_EXP__ (-382)"
.LASF234:
	.string	"__FLT16_MIN_EXP__ (-13)"
.LASF120:
	.string	"__SIZE_MAX__ 0xffffffffffffffffUL"
.LASF687:
	.string	"INT_LEAST8_MIN (-INT_LEAST8_MAX - 1)"
.LASF691:
	.string	"INT_LEAST16_MAX __INT_LEAST16_MAX__"
.LASF596:
	.string	"_GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 1"
.LASF0:
	.string	"__STDC__ 1"
.LASF362:
	.string	"__SIZEOF_PTRDIFF_T__ 8"
.LASF371:
	.string	"__ARM_FEATURE_IDIV 1"
.LASF37:
	.string	"__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__"
.LASF53:
	.string	"__UINT8_TYPE__ unsigned char"
.LASF1030:
	.string	"int_fast16_t"
.LASF1107:
	.string	"headChunk"
.LASF1063:
	.string	"nextValidChunkOffset"
.LASF48:
	.string	"__SIG_ATOMIC_TYPE__ int"
.LASF1085:
	.string	"getDataPtr"
.LASF683:
	.string	"UINT64_MAX __UINT64_MAX__"
.LASF90:
	.string	"__cpp_rvalue_reference 200610"
.LASF122:
	.string	"__SHRT_WIDTH__ 16"
.LASF35:
	.string	"__ORDER_PDP_ENDIAN__ 3412"
.LASF330:
	.string	"__DEC128_MANT_DIG__ 34"
.LASF407:
	.string	"_GLIBCXX_CSTDDEF 1"
.LASF1114:
	.string	"_ZN13MemoryManager8allocateEm"
.LASF619:
	.string	"_PTRDIFF_T_DECLARED "
.LASF781:
	.string	"UINTMAX_C(c) __UINTMAX_C(c)"
.LASF279:
	.string	"__FLT128_MAX_10_EXP__ 4932"
.LASF520:
	.string	"_GLIBCXX_HAVE_INT64_T 1"
.LASF290:
	.string	"__FLT32X_MIN_EXP__ (-1021)"
.LASF913:
	.string	"GICD_ISACTIVER28_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(28)"
.LASF693:
	.string	"INT_LEAST16_MIN (-INT_LEAST16_MAX - 1)"
.LASF200:
	.string	"__FLT_HAS_QUIET_NAN__ 1"
.LASF934:
	.string	"GICR_ICFGR1_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE+0xc04)"
.LASF1004:
	.string	"__max_align_ld"
.LASF1045:
	.string	"UNIT_K"
.LASF495:
	.string	"_GLIBCXX_HAVE_ENOSPC 1"
.LASF1003:
	.string	"__max_align_ll"
.LASF140:
	.string	"__INT32_MAX__ 0x7fffffff"
.LASF961:
	.string	"ICC_SGI1R_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,5)"
.LASF881:
	.string	"GICD_ISPENDR28_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(28)"
.LASF377:
	.string	"__ARM_SIZEOF_MINIMAL_ENUM 4"
.LASF870:
	.string	"GICD_ISPENDR17_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(17)"
.LASF49:
	.string	"__INT8_TYPE__ signed char"
.LASF553:
	.string	"_GLIBCXX_HAVE_SYS_PARAM_H 1"
.LASF249:
	.string	"__FLT32_MIN_10_EXP__ (-37)"
.LASF633:
	.string	"___int_size_t_h "
.LASF462:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) "
.LASF851:
	.string	"GICD_ISENABLER30_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(30)"
.LASF96:
	.string	"__cpp_inheriting_constructors 201511"
.LASF999:
	.string	"__gnu_cxx"
.LASF783:
	.string	"AS_MACRO __attribute__((always_inline)) inline"
.LASF802:
	.string	"INCLUDE_MEMORYMANAGER_H_ "
.LASF197:
	.string	"__FLT_DENORM_MIN__ 1.40129846432481707092372958328991613e-45F"
.LASF482:
	.string	"_GLIBCXX_HAVE_AS_SYMVER_DIRECTIVE 1"
.LASF734:
	.string	"INTPTR_MIN"
.LASF559:
	.string	"_GLIBCXX_HAVE_TANF 1"
.LASF1046:
	.string	"print"
.LASF667:
	.string	"INT16_MAX __INT16_MAX__"
.LASF1105:
	.string	"bool"
.LASF763:
	.string	"INT8_C(c) __INT8_C(c)"
.LASF1025:
	.string	"uint_least8_t"
.LASF217:
	.string	"__LDBL_MANT_DIG__ 113"
.LASF550:
	.string	"_GLIBCXX_HAVE_STRINGS_H 1"
.LASF1076:
	.string	"setEnd"
.LASF593:
	.string	"_GLIBCXX_STDIO_SEEK_END 2"
.LASF1021:
	.string	"int_least8_t"
.LASF107:
	.string	"__cpp_sized_deallocation 201309"
.LASF622:
	.string	"_SIZE_T "
.LASF1072:
	.string	"setAllocated"
.LASF1047:
	.string	"_ZN6Output5printEPKcm"
.LASF397:
	.string	"__ARM_FEATURE_QRDMX"
.LASF868:
	.string	"GICD_ISPENDR15_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(15)"
.LASF844:
	.string	"GICD_ISENABLER23_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(23)"
.LASF1039:
	.string	"intmax_t"
.LASF439:
	.string	"_GLIBCXX_USE_CXX11_ABI 1"
.LASF232:
	.string	"__FLT16_MANT_DIG__ 11"
.LASF1006:
	.string	"long double"
.LASF749:
	.string	"SIG_ATOMIC_MAX __SIG_ATOMIC_MAX__"
.LASF928:
	.string	"GICR_IGROUPR0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE + 0x80)"
.LASF880:
	.string	"GICD_ISPENDR27_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(27)"
.LASF899:
	.string	"GICD_ISACTIVER14_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(14)"
.LASF513:
	.string	"_GLIBCXX_HAVE_FMODF 1"
.LASF392:
	.string	"__AARCH64_CMODEL_LARGE__"
.LASF450:
	.string	"_GLIBCXX_STD_A std"
.LASF315:
	.string	"__FLT64X_HAS_QUIET_NAN__ 1"
.LASF275:
	.string	"__FLT128_DIG__ 33"
.LASF147:
	.string	"__INT8_C(c) c"
.LASF253:
	.string	"__FLT32_MAX__ 3.40282346638528859811704183484516925e+38F32"
.LASF935:
	.string	"GICR_ICACTIVER0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE + 0x380)"
.LASF609:
	.string	"_STDDEF_H_ "
.LASF705:
	.string	"INT_LEAST64_MIN (-INT_LEAST64_MAX - 1)"
.LASF312:
	.string	"__FLT64X_DENORM_MIN__ 6.47517511943802511092443895822764655e-4966F64x"
.LASF204:
	.string	"__DBL_MIN_EXP__ (-1021)"
.LASF626:
	.string	"__SIZE_T "
.LASF51:
	.string	"__INT32_TYPE__ int"
.LASF663:
	.string	"INT8_MIN (-INT8_MAX - 1)"
.LASF349:
	.string	"__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2"
.LASF304:
	.string	"__FLT64X_MIN_EXP__ (-16381)"
.LASF862:
	.string	"GICD_ISPENDR9_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(9)"
.LASF247:
	.string	"__FLT32_DIG__ 6"
.LASF690:
	.string	"INT_LEAST16_MAX"
.LASF975:
	.string	"SETUP_REG_MEM_MAPPED_READ(name) Reg ##name Reg ##name::read() { return *reinterpret_cast<Reg ##name*>(name ##_MEM_MAPPED_ADDR);}"
.LASF433:
	.string	"_GLIBCXX_NOTHROW _GLIBCXX_USE_NOEXCEPT"
.LASF308:
	.string	"__FLT64X_DECIMAL_DIG__ 36"
.LASF772:
	.string	"UINT16_C"
.LASF824:
	.string	"GICD_ISENABLER3_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(3)"
.LASF103:
	.string	"__cpp_decltype_auto 201304"
.LASF419:
	.string	"_GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY 1"
.LASF792:
	.string	"HEX32(a,b) 0x ##a ##b"
.LASF229:
	.string	"__LDBL_HAS_DENORM__ 1"
.LASF344:
	.string	"__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1"
.LASF1080:
	.string	"_ZN11MemoryChunk7getNextEv"
.LASF296:
	.string	"__FLT32X_MIN__ 2.22507385850720138309023271733240406e-308F32x"
.LASF435:
	.string	"_GLIBCXX_NOEXCEPT_PARM "
.LASF428:
	.string	"_GLIBCXX17_INLINE "
.LASF457:
	.string	"_GLIBCXX_NAMESPACE_LDBL_OR_CXX11 _GLIBCXX_NAMESPACE_CXX11"
.LASF396:
	.string	"__ARM_FEATURE_CRYPTO"
.LASF492:
	.string	"_GLIBCXX_HAVE_EIDRM 1"
.LASF588:
	.string	"_GLIBCXX_FULLY_DYNAMIC_STRING 0"
.LASF578:
	.string	"STDC_HEADERS 1"
.LASF1110:
	.string	"_ZN13MemoryManagerC4EPvmb"
.LASF986:
	.string	"FORCE_CODE_COHERENT_WITH_VIEW() L ## __LINE__:"
.LASF286:
	.string	"__FLT128_HAS_INFINITY__ 1"
.LASF13:
	.string	"__ATOMIC_ACQUIRE 2"
.LASF706:
	.string	"UINT_LEAST64_MAX"
.LASF52:
	.string	"__INT64_TYPE__ long int"
.LASF341:
	.string	"__WCHAR_UNSIGNED__ 1"
.LASF791:
	.string	"__stringify(x) __stringify_1(x)"
.LASF467:
	.string	"_GLIBCXX_CPU_DEFINES 1"
.LASF1066:
	.string	"size"
.LASF542:
	.string	"_GLIBCXX_HAVE_SINHF 1"
.LASF833:
	.string	"GICD_ISENABLER12_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(12)"
.LASF323:
	.string	"__DEC64_MANT_DIG__ 16"
.LASF1073:
	.string	"_ZN11MemoryChunk12setAllocatedEb"
.LASF818:
	.string	"GICD_ISENABLER_MEM_MAPPED_ADDR(n) (GIC_DIST_BASE + 0x100 + 4*(n))"
.LASF1044:
	.string	"koutBuf"
.LASF993:
	.string	"ASM_POPX() "
.LASF630:
	.string	"_SIZE_T_DEFINED "
.LASF117:
	.string	"__WINT_MAX__ 0xffffffffU"
.LASF702:
	.string	"INT_LEAST64_MAX"
.LASF1016:
	.string	"uint16_t"
.LASF998:
	.string	"ASM_GOTO(sym) __asm__ __volatile__(\"b \" __stringify(sym) \" \\n\\t\")"
.LASF598:
	.string	"_GLIBCXX_USE_FCHMOD 1"
.LASF964:
	.string	"ICC_SRE_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,5)"
.LASF73:
	.string	"__INTPTR_TYPE__ long int"
.LASF465:
	.string	"_GLIBCXX_USE_ALLOCATOR_NEW 1"
.LASF242:
	.string	"__FLT16_DENORM_MIN__ 5.96046447753906250000000000000000000e-8F16"
.LASF841:
	.string	"GICD_ISENABLER20_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(20)"
.LASF747:
	.string	"PTRDIFF_MIN (-PTRDIFF_MAX - 1)"
.LASF80:
	.string	"__cpp_binary_literals 201304"
.LASF768:
	.string	"INT64_C"
.LASF62:
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
.LASF670:
	.string	"UINT16_MAX"
.LASF969:
	.string	"ENCODE_MRS 11010101001"
.LASF625:
	.string	"_T_SIZE "
.LASF46:
	.string	"__CHAR16_TYPE__ short unsigned int"
.LASF289:
	.string	"__FLT32X_DIG__ 15"
.LASF694:
	.string	"UINT_LEAST16_MAX"
.LASF978:
	.string	"SETUP_REG_PC_READ(name) Reg ##name Reg ##name::read() { Reg ##name res; __asm__ __volatile__(\"adr %0,#0\\n\\t\":\"=r\"(res)); return res; }"
.LASF1115:
	.string	"_ZN13MemoryManager8allocateEmm"
.LASF178:
	.string	"__INTPTR_MAX__ 0x7fffffffffffffffL"
.LASF378:
	.string	"__AARCH64EB__"
.LASF168:
	.string	"__INT_FAST16_MAX__ 0x7fffffff"
.LASF554:
	.string	"_GLIBCXX_HAVE_SYS_RESOURCE_H 1"
.LASF501:
	.string	"_GLIBCXX_HAVE_EOWNERDEAD 1"
.LASF398:
	.string	"__FLT_EVAL_METHOD__"
.LASF491:
	.string	"_GLIBCXX_HAVE_ECHILD 1"
.LASF662:
	.string	"INT8_MIN"
.LASF78:
	.string	"__DEPRECATED 1"
.LASF915:
	.string	"GICD_ISACTIVER30_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(30)"
.LASF280:
	.string	"__FLT128_DECIMAL_DIG__ 36"
.LASF1112:
	.string	"_ZN13MemoryManager18normalizeAllocSizeEm"
.LASF985:
	.string	"SETUP_REG_LOAD_STORE_WRITE(name) void Reg ##name::write()const { __asm__ __volatile__(\"ldr \" __stringify(name) \",%0 \\n\\t\"::\"m\"(*this)); }"
.LASF359:
	.string	"__SIZEOF_INT128__ 16"
.LASF17:
	.string	"__pic__ 2"
.LASF725:
	.string	"UINT_FAST32_MAX __UINT_FAST32_MAX__"
.LASF947:
	.string	"ICC_CTLR_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,4)"
.LASF659:
	.string	"_GCC_STDINT_H "
.LASF995:
	.string	"ASM_PUSHW() "
.LASF119:
	.string	"__PTRDIFF_MAX__ 0x7fffffffffffffffL"
.LASF574:
	.string	"_GLIBCXX_PACKAGE_STRING \"package-unused version-unused\""
.LASF826:
	.string	"GICD_ISENABLER5_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(5)"
.LASF674:
	.string	"INT32_MIN"
.LASF155:
	.string	"__INT_LEAST64_MAX__ 0x7fffffffffffffffL"
.LASF1000:
	.string	"__cxx11"
.LASF212:
	.string	"__DBL_DENORM_MIN__ double(4.94065645841246544176568792868221372e-324L)"
.LASF628:
	.string	"_BSD_SIZE_T_ "
.LASF756:
	.string	"WCHAR_MIN"
.LASF643:
	.string	"_WCHAR_T_ "
.LASF695:
	.string	"UINT_LEAST16_MAX __UINT_LEAST16_MAX__"
.LASF400:
	.string	"__FLT_EVAL_METHOD_C99__ 0"
.LASF1111:
	.string	"normalizeAllocSize"
.LASF449:
	.string	"_GLIBCXX_END_NAMESPACE_CONTAINER _GLIBCXX_END_NAMESPACE_VERSION"
.LASF798:
	.string	"INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_REGISTERS_BASE_H_ "
.LASF382:
	.string	"__ARM_FP 14"
.LASF1033:
	.string	"uint_fast8_t"
.LASF945:
	.string	"ICC_BPR1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,3)"
.LASF721:
	.string	"INT_FAST32_MAX __INT_FAST32_MAX__"
.LASF165:
	.string	"__UINT64_C(c) c ## UL"
.LASF1102:
	.string	"_ZNK11MemoryChunk33moveOffsetOfAllocSuchAlignedSpaceEmm"
.LASF805:
	.string	"INCLUDE_TEMPLATES_IMPLEMENTATION_MEMORYMANAGER_H_ "
.LASF543:
	.string	"_GLIBCXX_HAVE_SLEEP 1"
.LASF469:
	.string	"_GLIBCXX_WEAK_DEFINITION "
.LASF401:
	.string	"__ELF__ 1"
.LASF83:
	.string	"__cpp_unicode_literals 200710"
.LASF650:
	.string	"_GCC_WCHAR_T "
.LASF368:
	.string	"__ARM_ARCH_8A 1"
.LASF64:
	.string	"__UINT_LEAST64_TYPE__ long unsigned int"
.LASF644:
	.string	"_BSD_WCHAR_T_ "
.LASF310:
	.string	"__FLT64X_MIN__ 3.36210314311209350626267781732175260e-4932F64x"
.LASF394:
	.string	"_ILP32"
.LASF918:
	.string	"GICR_IPRIORITYR0_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(0)"
.LASF59:
	.string	"__INT_LEAST32_TYPE__ int"
.LASF735:
	.string	"INTPTR_MIN (-INTPTR_MAX - 1)"
.LASF192:
	.string	"__FLT_MAX_10_EXP__ 38"
.LASF6:
	.string	"__GNUC_MINOR__ 2"
.LASF364:
	.string	"__ARM_64BIT_STATE 1"
.LASF621:
	.string	"__SIZE_T__ "
.LASF220:
	.string	"__LDBL_MIN_10_EXP__ (-4931)"
.LASF541:
	.string	"_GLIBCXX_HAVE_SINF 1"
.LASF736:
	.string	"UINTPTR_MAX"
.LASF352:
	.string	"__GCC_ATOMIC_INT_LOCK_FREE 2"
.LASF558:
	.string	"_GLIBCXX_HAVE_S_ISREG 1"
.LASF297:
	.string	"__FLT32X_EPSILON__ 2.22044604925031308084726333618164062e-16F32x"
.LASF176:
	.string	"__UINT_FAST32_MAX__ 0xffffffffU"
.LASF738:
	.string	"INTMAX_MAX"
.LASF910:
	.string	"GICD_ISACTIVER25_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(25)"
.LASF656:
	.string	"_GCC_MAX_ALIGN_T "
.LASF498:
	.string	"_GLIBCXX_HAVE_ENOTRECOVERABLE 1"
.LASF956:
	.string	"ICC_IGRPEN1_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,12,7)"
.LASF215:
	.string	"__DBL_HAS_QUIET_NAN__ 1"
.LASF395:
	.string	"__ILP32__"
.LASF272:
	.string	"__FLT64_HAS_INFINITY__ 1"
.LASF511:
	.string	"_GLIBCXX_HAVE_FLOAT_H 1"
.LASF530:
	.string	"_GLIBCXX_HAVE_LIMIT_VMEM 0"
.LASF583:
	.string	"_GLIBCXX98_USE_C99_MATH 1"
.LASF869:
	.string	"GICD_ISPENDR16_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(16)"
.LASF552:
	.string	"_GLIBCXX_HAVE_STRTOF 1"
.LASF680:
	.string	"INT64_MIN"
.LASF886:
	.string	"GICD_ISACTIVER1_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(1)"
.LASF770:
	.string	"UINT8_C"
.LASF210:
	.string	"__DBL_MIN__ double(2.22507385850720138309023271733240406e-308L)"
.LASF996:
	.string	"ASM_POPW_REG() "
.LASF729:
	.string	"INT_FAST64_MIN (-INT_FAST64_MAX - 1)"
.LASF668:
	.string	"INT16_MIN"
.LASF337:
	.string	"__REGISTER_PREFIX__ "
.LASF336:
	.string	"__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
.LASF91:
	.string	"__cpp_rvalue_references 200610"
.LASF1119:
	.string	"_ZN13MemoryManager11tryDecreaseEPvm"
.LASF1031:
	.string	"int_fast32_t"
.LASF990:
	.string	"ASM_PUSHX_REG() "
.LASF504:
	.string	"_GLIBCXX_HAVE_ETIME 1"
.LASF30:
	.string	"__SIZEOF_SIZE_T__ 8"
.LASF502:
	.string	"_GLIBCXX_HAVE_EPERM 1"
.LASF380:
	.string	"__AARCH64EL__ 1"
.LASF269:
	.string	"__FLT64_EPSILON__ 2.22044604925031308084726333618164062e-16F64"
.LASF822:
	.string	"GICD_ISENABLER1_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(1)"
.LASF145:
	.string	"__UINT64_MAX__ 0xffffffffffffffffUL"
.LASF460:
	.string	"__glibcxx_assert(_Condition) "
.LASF924:
	.string	"GICR_IPRIORITYR6_MEM_MAPPED_ADDR GICR_IPRIORITYR_MEM_MAPPED_ADDR(6)"
.LASF867:
	.string	"GICD_ISPENDR14_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(14)"
.LASF804:
	.string	"INCLUDE_GENERIC_UTIL_H_ "
.LASF535:
	.string	"_GLIBCXX_HAVE_MACHINE_PARAM_H 1"
.LASF846:
	.string	"GICD_ISENABLER25_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(25)"
.LASF1011:
	.string	"short int"
.LASF608:
	.string	"_STDDEF_H "
.LASF724:
	.string	"UINT_FAST32_MAX"
.LASF1142:
	.string	"SvcFunc"
.LASF298:
	.string	"__FLT32X_DENORM_MIN__ 4.94065645841246544176568792868221372e-324F32x"
.LASF161:
	.string	"__UINT16_C(c) c"
.LASF385:
	.string	"__ARM_FEATURE_FP16_SCALAR_ARITHMETIC"
.LASF240:
	.string	"__FLT16_MIN__ 6.10351562500000000000000000000000000e-5F16"
.LASF1020:
	.string	"uint64_t"
.LASF803:
	.string	"INCLUDE_MEMORYCHUNK_H_ "
.LASF852:
	.string	"GICD_ISENABLER31_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(31)"
.LASF970:
	.string	"ENCODE_ICC_IGRPEN0_EL1 1100011001100110"
.LASF1131:
	.string	"func"
.LASF700:
	.string	"UINT_LEAST32_MAX"
.LASF1096:
	.string	"_ZNK11MemoryChunk23getNextValidChunkOffsetEv"
.LASF423:
	.string	"_GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ (\"cxx11\")))"
.LASF306:
	.string	"__FLT64X_MAX_EXP__ 16384"
.LASF538:
	.string	"_GLIBCXX_HAVE_MEMORY_H 1"
.LASF11:
	.string	"__ATOMIC_RELAXED 0"
.LASF618:
	.string	"_GCC_PTRDIFF_T "
.LASF839:
	.string	"GICD_ISENABLER18_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(18)"
.LASF599:
	.string	"_GLIBCXX_USE_FCHMODAT 1"
.LASF214:
	.string	"__DBL_HAS_INFINITY__ 1"
.LASF707:
	.string	"UINT_LEAST64_MAX __UINT_LEAST64_MAX__"
.LASF135:
	.string	"__SIG_ATOMIC_MAX__ 0x7fffffff"
.LASF701:
	.string	"UINT_LEAST32_MAX __UINT_LEAST32_MAX__"
.LASF260:
	.string	"__FLT64_MANT_DIG__ 53"
.LASF576:
	.string	"_GLIBCXX_PACKAGE_URL \"\""
.LASF7:
	.string	"__GNUC_PATCHLEVEL__ 1"
.LASF762:
	.string	"INT8_C"
.LASF696:
	.string	"INT_LEAST32_MAX"
.LASF971:
	.string	"ENCODE_X0 00000"
.LASF27:
	.string	"__SIZEOF_FLOAT__ 4"
.LASF326:
	.string	"__DEC64_MIN__ 1E-383DD"
.LASF99:
	.string	"__cpp_return_type_deduction 201304"
.LASF573:
	.string	"_GLIBCXX_PACKAGE_NAME \"package-unused\""
.LASF208:
	.string	"__DBL_DECIMAL_DIG__ 17"
.LASF600:
	.string	"_GLIBCXX_USE_GETTIMEOFDAY 1"
.LASF84:
	.string	"__cpp_user_defined_literals 200809"
.LASF615:
	.string	"_PTRDIFF_T_ "
.LASF861:
	.string	"GICD_ISPENDR8_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(8)"
.LASF974:
	.string	"SETUP_REG_HARD_CODED_WRITE(name) void Reg ##name::write() const{ __asm__ __volatile( \"mov x0,%0 \\n\\t\" \".4byte 0b\" __stringify(ENCODE_MSR) __stringify(ENCODE_ ##name) __stringify(ENCODE_X0) \"\\n\\t\" : :\"r\"(*this) ); }"
.LASF892:
	.string	"GICD_ISACTIVER7_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(7)"
.LASF765:
	.string	"INT16_C(c) __INT16_C(c)"
.LASF569:
	.string	"_GLIBCXX_HAVE_WCSTOF 1"
.LASF646:
	.string	"_WCHAR_T_DEFINED "
.LASF375:
	.string	"__ARM_FP_FAST"
.LASF489:
	.string	"_GLIBCXX_HAVE_EBADMSG 1"
.LASF139:
	.string	"__INT16_MAX__ 0x7fff"
.LASF373:
	.string	"__ARM_PCS_AAPCS64 1"
.LASF561:
	.string	"_GLIBCXX_HAVE_TGMATH_H 1"
.LASF461:
	.string	"_GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) "
.LASF463:
	.string	"_GLIBCXX_BEGIN_EXTERN_C extern \"C\" {"
.LASF686:
	.string	"INT_LEAST8_MIN"
.LASF274:
	.string	"__FLT128_MANT_DIG__ 113"
.LASF77:
	.string	"__GXX_WEAK__ 1"
.LASF912:
	.string	"GICD_ISACTIVER27_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(27)"
.LASF688:
	.string	"UINT_LEAST8_MAX"
.LASF137:
	.string	"__SIG_ATOMIC_WIDTH__ 32"
.LASF748:
	.string	"SIG_ATOMIC_MAX"
.LASF850:
	.string	"GICD_ISENABLER29_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(29)"
.LASF1097:
	.string	"setNextValidChunkOffset"
.LASF562:
	.string	"_GLIBCXX_HAVE_UNISTD_H 1"
.LASF497:
	.string	"_GLIBCXX_HAVE_ENOSTR 1"
.LASF8:
	.string	"__VERSION__ \"7.2.1 20171011\""
.LASF1094:
	.string	"_ZN11MemoryChunk18setNextBaseFromEndEm"
.LASF1060:
	.string	"digitsMap"
.LASF555:
	.string	"_GLIBCXX_HAVE_SYS_STAT_H 1"
.LASF361:
	.string	"__SIZEOF_WINT_T__ 4"
.LASF372:
	.string	"__ARM_FEATURE_UNALIGNED 1"
.LASF1095:
	.string	"getNextValidChunkOffset"
.LASF838:
	.string	"GICD_ISENABLER17_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(17)"
.LASF602:
	.string	"_GLIBCXX_USE_LONG_LONG 1"
.LASF75:
	.string	"__has_include(STR) __has_include__(STR)"
.LASF645:
	.string	"_WCHAR_T_DEFINED_ "
.LASF166:
	.string	"__INT_FAST8_MAX__ 0x7fffffff"
.LASF257:
	.string	"__FLT32_HAS_DENORM__ 1"
.LASF1140:
	.string	"mergeTrailingsUnallocated"
.LASF797:
	.string	"___INCLUDE_ARCH_COMMON_AARCH64_SYSTEM_COMMON_REGISTERS_H__ "
.LASF317:
	.string	"__DEC32_MIN_EXP__ (-94)"
.LASF56:
	.string	"__UINT64_TYPE__ long unsigned int"
.LASF932:
	.string	"GICR_ICENABLER0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE+0x180)"
.LASF171:
	.string	"__INT_FAST32_WIDTH__ 32"
.LASF648:
	.string	"___int_wchar_t_h "
.LASF594:
	.string	"_GLIBCXX_USE_C99_CTYPE_TR1 1"
.LASF549:
	.string	"_GLIBCXX_HAVE_STRERROR_R 1"
.LASF29:
	.string	"__SIZEOF_LONG_DOUBLE__ 16"
.LASF953:
	.string	"ICC_IAR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,0)"
.LASF100:
	.string	"__cpp_init_captures 201304"
.LASF843:
	.string	"GICD_ISENABLER22_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(22)"
.LASF827:
	.string	"GICD_ISENABLER6_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(6)"
.LASF1092:
	.string	"_ZNK11MemoryChunk18getNextBaseFromEndEv"
.LASF41:
	.string	"__PTRDIFF_TYPE__ long int"
.LASF281:
	.string	"__FLT128_MAX__ 1.18973149535723176508575932662800702e+4932F128"
.LASF733:
	.string	"INTPTR_MAX __INTPTR_MAX__"
.LASF592:
	.string	"_GLIBCXX_STDIO_SEEK_CUR 1"
.LASF873:
	.string	"GICD_ISPENDR20_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(20)"
.LASF933:
	.string	"GICR_ICFGR0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE+0xc00)"
.LASF927:
	.string	"GICR_WAKER_MEM_MAPPED_ADDR (GIC_REDIST_BASE+0x14)"
.LASF267:
	.string	"__FLT64_MAX__ 1.79769313486231570814527423731704357e+308F64"
.LASF745:
	.string	"PTRDIFF_MAX __PTRDIFF_MAX__"
.LASF590:
	.string	"_GLIBCXX_MANGLE_SIZE_T m"
.LASF796:
	.string	"INCLUDE_ASM_INSTRUCTIONS_H_ "
.LASF383:
	.string	"__ARM_FP16_FORMAT_IEEE 1"
.LASF712:
	.string	"UINT_FAST8_MAX"
.LASF836:
	.string	"GICD_ISENABLER15_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(15)"
.LASF113:
	.string	"__LONG_MAX__ 0x7fffffffffffffffL"
.LASF487:
	.string	"_GLIBCXX_HAVE_COSF 1"
.LASF366:
	.string	"__ARM_ALIGN_MAX_PWR 28"
.LASF652:
	.string	"_BSD_WCHAR_T_"
.LASF1005:
	.string	"long long int"
.LASF524:
	.string	"_GLIBCXX_HAVE_LC_MESSAGES 1"
.LASF1018:
	.string	"uint32_t"
.LASF509:
	.string	"_GLIBCXX_HAVE_FABSF 1"
.LASF564:
	.string	"_GLIBCXX_HAVE_UTIME_H 1"
.LASF948:
	.string	"ICC_DIR_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,11,1)"
.LASF233:
	.string	"__FLT16_DIG__ 3"
.LASF180:
	.string	"__UINTPTR_MAX__ 0xffffffffffffffffUL"
.LASF515:
	.string	"_GLIBCXX_HAVE_GETIPINFO 1"
.LASF226:
	.string	"__LDBL_MIN__ 3.36210314311209350626267781732175260e-4932L"
.LASF1034:
	.string	"uint_fast16_t"
.LASF70:
	.string	"__UINT_FAST16_TYPE__ unsigned int"
.LASF548:
	.string	"_GLIBCXX_HAVE_STDLIB_H 1"
.LASF819:
	.string	"GICD_ISPENDR_MEM_MAPPED_ADDR(n) (GIC_DIST_BASE + 0x200 + 4*(n))"
.LASF957:
	.string	"ICC_IGRPEN1_EL3_GCC_REPR SYS_REG_GCC_REPR(3,6,12,12,7)"
.LASF1103:
	.string	"split"
.LASF470:
	.string	"_GLIBCXX_USE_WEAK_REF __GXX_WEAK__"
.LASF776:
	.string	"UINT64_C"
.LASF404:
	.string	"INCLUDE_EXCEPTION_SVC_CALL_H_ "
.LASF114:
	.string	"__LONG_LONG_MAX__ 0x7fffffffffffffffLL"
.LASF414:
	.string	"_GLIBCXX_RELEASE 7"
.LASF692:
	.string	"INT_LEAST16_MIN"
.LASF1137:
	.string	"11max_align_t"
.LASF261:
	.string	"__FLT64_DIG__ 15"
.LASF328:
	.string	"__DEC64_EPSILON__ 1E-15DD"
.LASF195:
	.string	"__FLT_MIN__ 1.17549435082228750796873653722224568e-38F"
.LASF148:
	.string	"__INT_LEAST8_WIDTH__ 8"
.LASF909:
	.string	"GICD_ISACTIVER24_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(24)"
.LASF1057:
	.string	"_ZN6OutputlsEPKc"
.LASF58:
	.string	"__INT_LEAST16_TYPE__ short int"
.LASF1017:
	.string	"short unsigned int"
.LASF529:
	.string	"_GLIBCXX_HAVE_LIMIT_RSS 0"
.LASF780:
	.string	"UINTMAX_C"
.LASF976:
	.string	"SETUP_REG_MEM_MAPPED_UPDATE_READ(name) Reg ##name Reg ##name::updateRead() { return *this=*reinterpret_cast<Reg ##name*>(name ##_MEM_MAPPED_ADDR);}"
.LASF1143:
	.string	"svc_call"
.LASF929:
	.string	"GICR_ISACTIVER0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE + 0x300)"
.LASF832:
	.string	"GICD_ISENABLER11_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(11)"
.LASF715:
	.string	"INT_FAST16_MAX __INT_FAST16_MAX__"
.LASF1068:
	.string	"_ZN6OutputlsEPKv"
.LASF1108:
	.string	"base"
.LASF219:
	.string	"__LDBL_MIN_EXP__ (-16381)"
.LASF902:
	.string	"GICD_ISACTIVER17_MEM_MAPPED_ADDR GICD_ISACTIVER_MEM_MAPPED_ADDR(17)"
.LASF154:
	.string	"__INT_LEAST32_WIDTH__ 32"
.LASF872:
	.string	"GICD_ISPENDR19_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(19)"
.LASF1032:
	.string	"int_fast64_t"
.LASF1084:
	.string	"_ZN11MemoryChunk7setSizeEm"
.LASF651:
	.string	"_WCHAR_T_DECLARED "
.LASF534:
	.string	"_GLIBCXX_HAVE_MACHINE_ENDIAN_H 1"
.LASF815:
	.string	"GIC_REDIST_SGI_BASE (GIC_REDIST_RD_BASE + 1024*64)"
.LASF162:
	.string	"__UINT_LEAST32_MAX__ 0xffffffffU"
.LASF551:
	.string	"_GLIBCXX_HAVE_STRING_H 1"
.LASF518:
	.string	"_GLIBCXX_HAVE_ICONV 1"
.LASF917:
	.string	"GICR_IPRIORITYR_MEM_MAPPED_ADDR(n) (GIC_REDIST_SGI_BASE + 0x400 + 4*(n))"
.LASF779:
	.string	"INTMAX_C(c) __INTMAX_C(c)"
.LASF431:
	.string	"_GLIBCXX_USE_NOEXCEPT noexcept"
.LASF984:
	.string	"SETUP_REG_LOAD_STORE_UPDATE_READ(name) Reg ##name Reg ##name::updateRead() { __asm__ __volatile__(\"str \" __stringify(name)\",%0 \\n\\t\"::\"m\"(*this)); return *this; }"
.LASF801:
	.string	"INCLUDE_TEMPLATES_IMPLEMENTATION_PRINTK_H_ "
.LASF514:
	.string	"_GLIBCXX_HAVE_FREXPF 1"
.LASF1013:
	.string	"int64_t"
.LASF1074:
	.string	"isEnd"
.LASF751:
	.string	"SIG_ATOMIC_MIN __SIG_ATOMIC_MIN__"
.LASF704:
	.string	"INT_LEAST64_MIN"
.LASF744:
	.string	"PTRDIFF_MAX"
.LASF968:
	.string	"ENCODE_MSR 11010101000"
.LASF930:
	.string	"GICR_ISPENDR0_MEM_MAPPED_ADDR (GIC_REDIST_SGI_BASE+0x200)"
.LASF614:
	.string	"__PTRDIFF_T "
.LASF563:
	.string	"_GLIBCXX_HAVE_USLEEP 1"
.LASF607:
	.string	"_GTHREAD_USE_MUTEX_TIMEDLOCK 1"
.LASF288:
	.string	"__FLT32X_MANT_DIG__ 53"
.LASF940:
	.string	"SETUP_REG_STD_UPDATE_READ(regname) DEFINE_REG_UPDATE_READ(Reg ##regname,regname)"
.LASF126:
	.string	"__WCHAR_WIDTH__ 32"
.LASF758:
	.string	"WINT_MAX"
.LASF150:
	.string	"__INT16_C(c) c"
.LASF842:
	.string	"GICD_ISENABLER21_MEM_MAPPED_ADDR GICD_ISENABLER_MEM_MAPPED_ADDR(21)"
.LASF717:
	.string	"INT_FAST16_MIN (-INT_FAST16_MAX - 1)"
.LASF582:
	.string	"_GLIBCXX11_USE_C99_WCHAR 1"
.LASF245:
	.string	"__FLT16_HAS_QUIET_NAN__ 1"
.LASF992:
	.string	"ASM_POPX_REG() "
.LASF15:
	.string	"__ATOMIC_ACQ_REL 4"
.LASF179:
	.string	"__INTPTR_WIDTH__ 64"
.LASF205:
	.string	"__DBL_MIN_10_EXP__ (-307)"
.LASF521:
	.string	"_GLIBCXX_HAVE_INT64_T_LONG 1"
.LASF218:
	.string	"__LDBL_DIG__ 33"
.LASF523:
	.string	"_GLIBCXX_HAVE_ISWBLANK 1"
.LASF820:
	.string	"GICD_ISACTIVER_MEM_MAPPED_ADDR(n) (GIC_DIST_BASE + 0x300 + 4*(n))"
.LASF866:
	.string	"GICD_ISPENDR13_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(13)"
.LASF1050:
	.string	"_ZN6OutputlsEc"
.LASF1056:
	.string	"_ZN6OutputlsEd"
.LASF493:
	.string	"_GLIBCXX_HAVE_ENODATA 1"
.LASF777:
	.string	"UINT64_C(c) __UINT64_C(c)"
.LASF1051:
	.string	"_ZN6OutputlsEh"
.LASF1055:
	.string	"_ZN6OutputlsEi"
.LASF1053:
	.string	"_ZN6OutputlsEj"
.LASF859:
	.string	"GICD_ISPENDR6_MEM_MAPPED_ADDR GICD_ISPENDR_MEM_MAPPED_ADDR(6)"
.LASF1058:
	.string	"_ZN6OutputlsEm"
.LASF949:
	.string	"ICC_EOIR0_EL1_GCC_REPR SYS_REG_GCC_REPR(3,0,12,8,1)"
.LASF1048:
	.string	"_ZN6Output5printEPKc"
.LASF1054:
	.string	"_ZN6OutputlsEs"
.LASF1052:
	.string	"_ZN6OutputlsEt"
.LASF634:
	.string	"_GCC_SIZE_T "
.LASF112:
	.string	"__INT_MAX__ 0x7fffffff"
.LASF164:
	.string	"__UINT_LEAST64_MAX__ 0xffffffffffffffffUL"
.LASF143:
	.string	"__UINT16_MAX__ 0xffff"
.LASF774:
	.string	"UINT32_C"
	.ident	"GCC: (Linaro GCC 7.2-2017.11) 7.2.1 20171011"
