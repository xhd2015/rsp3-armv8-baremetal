/*内存模型： 所有的数据均位于RAM中*/
/*qemu_virt和raspi3共享相同的内存布局模型*/
/* 命名风格概述： 内存布局的区域-大写字母  不打算提供给汇编的符号-大写字母 打算提供给汇编的符号-两个下划线+小写字母 */
MEMORY
{
	/* DOCME 在修改内存布局之后应当修改objcopy/dd生成文件的部分，起始地址  
		AHEAD_CODE 作为PADDING
	*/
    DTB (r)  : ORIGIN = DTB_START , LENGTH = DTB_SIZE
    STACK_EL2_3 (rw) : ORIGIN = STACK_EL2_3_START , LENGTH = STACK_EL2_3_SIZE
	STACK (rw) : ORIGIN = STACK_START , LENGTH = STACK_SIZE
	AHEAD_CODE (rw) : ORIGIN = AHEAD_CODE_START , LENGTH = AHEAD_CODE_SIZE
	CODE (rx) : ORIGIN = CODE_START , LENGTH = CODE_SIZE 
	INITRAM (rw) : ORIGIN = INITRAM_START, LENGTH = INITRAM_SIZE
	USER_SPACE (rw) : ORIGIN = USER_SPACE_START , LENGTH = USER_SPACE_SIZE
	/* TODO 这里可以增加AFTER_CODE区域，以便反映真实的布局，AFTER_CODE (rw) */
	DATA  (rw) : ORIGIN = DATA_START , LENGTH = DATA_SIZE 
	VIDEO_RAM (rw) : ORIGIN = VIDEO_RAM_START , LENGTH = VIDEO_RAM_SIZE
}
/*.vtable必须位于CODE中以便加载，但是加载后必须被复制到RAM中以便重新定位(rebase)*/


SECTIONS{
	/* NOTE: .text.boot must be ahead of any thing*/
	/* .text.*，比如.text._ZN9FormatterILi16EEC2Em，是类的函数放置的地方 */
	/* DOCME objcopy的结果就是将这个放在物理0地址处 */
	.text : {
		*(.text.boot) /* PC对齐检查 */
	    /* *(.text.enmmu)  */  /* 启用MMU的代码必须在低1GB以内,这是为了flat map,但是通常是足够的 */
		*(.text)
		*(.text.*)  /* 如果后面再放置.text.vector，则有可能没有放置成功，因为此处已经放置了 */
	
		
		/* for initailize  */
		*(.preinit_array)
		*(.init)
		*(.init_array) 
	} > CODE
	
	/* global offset table */
	.got : { 
		 *(.got)   /* -fPIC's section */
		 *(.got.*)
	 } > CODE
	 
	
	/* initram表示需要加载的*/
	.initram_start : {
		PROVIDE(__init_ram_start = . );
	} > INITRAM
	
	/* DOCME 这里.rodata必须放在.rodata.*之前 */
	/* .vtable 需要读取 ,进行rebase*/
	/* DEPRECATED 直接放在DATA中 */
	/* 	.vtable : AT(__vt_rom_begin){ */
	.vtable : {
		PROVIDE(__vt_begin = . );
		*(.rodata._ZTV*)
		PROVIDE(__vt_end = .);
	} > INITRAM
	
	.relocptr : {
		PROVIDE(__reloc_ptr_start = .);
		*(.relocptr)
		PROVIDE(__reloc_ptr_end = . );
	} > INITRAM
	.ctors : {
		KEEP(*(.ctors))
	} > INITRAM
	.dtors : {
		KEEP(*(.dtors))
	} > INITRAM

	 /* .rodata.*,比如 */
	.rodata : { 
		. = ALIGN(0x4); 
		*(.rodata) 
		*(.rodata.*) 
		*(.note.gnu.build-id)
	 } > CODE
	
	/* DATA 是不可加载的，因此必须使用NOLOAD方式 */
	/* .data区存放不为零的全局变量,所以应当避免使用 */
	.data : { 
		*(.data)
	} > INITRAM
	/* initram表示需要加载的部分*/
	.initram_end : {
		PROVIDE(__init_ram_end = .);
	} > INITRAM
	
	/* .bss 未赋值的变量，比如未赋初值全局类对象，默认构造函数;或者初始化为0的变量 */
	.bss (NOLOAD): {
		. = ALIGN(0x8); /* 必须与8字节对齐，为了快速处理 */
		PROVIDE(__bss_start = .);
		*(.bss)
		*(COMMON)
		. = ALIGN(0x8);
		PROVIDE(__bss_end = . );
	} > DATA
	
	/* 此区中存放的是ABS下标地址 */
    /* 其他比如.debug_line,.debug_macro,
    	.debug_abbrev,.debug_str, .debug_loc,...,.comment,*/
	.freeram (NOLOAD) : {
		PROVIDE(ramStart = .);
		. = ABSOLUTE(DATA_START + DATA_SIZE); /* --> DATA_END */
		PROVIDE(ramEnd = . );
	} > DATA
	
	/* 无需加载 */
	.ahead_code (NOLOAD) : { . = . + AHEAD_CODE_SIZE ; } > AHEAD_CODE
	.stackel2_3 (NOLOAD) :
		 { . = . + STACK_EL2_3_SIZE ;
		  PROVIDE(__stack_top_el2 = . );
		  PROVIDE(__stack_top_el3 = . );
		  } > STACK_EL2_3
	.stack (NOLOAD):{ 
		. = . + STACK_SIZE ; 
		PROVIDE(__stack_top_el1 = . );
		PROVIDE(__stack_top = .);
	 } > STACK
	/* USERSPACE使用dd命令写入 */
	.userspace (NOLOAD): { 
			PROVIDE(__user_space_start = .); 
			. = . + USER_SPACE_SIZE; 
			PROVIDE(__user_space_end = .);
	} > USER_SPACE
	.videoram (NOLOAD): {. = . + VIDEO_RAM_SIZE ;} > VIDEO_RAM
}