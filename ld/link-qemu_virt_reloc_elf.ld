MEMORY
{
	BIOS (rx) : ORIGIN = 0x0 + IMAGE_BASE, LENGTH = 1M
	STACK (rw) : ORIGIN = CONFIG_RAM_START + IMAGE_BASE , LENGTH = 4K
	RAM  (rwx) : ORIGIN = CONFIG_RAM_START + 4K + IMAGE_BASE, LENGTH = CONFIG_RAM_SIZE - 4K
}


SECTIONS{
	/* NOTE: .text.boot must be ahead of any thing*/
	/* .text.*，比如.text._ZN9FormatterILi16EEC2Em，是类的函数放置的地方 */
	.text : {
	    .  = ABSOLUTE(KERNEL_ADDRESS + IMAGE_BASE);
		. = ALIGN(0x4);
		*(.text.boot) /* PC对齐检查 */
		/* *(.text.enmmu)  */  /* 启用MMU的代码必须在低1GB以内,这是为了flat map,但是通常是足够的 */
		*(.text)
		*(.text.*)  /* 如果后面再放置.text.vector，则有可能没有放置成功，因为此处已经放置了 */
		
		
		/* for initailize  */
		*(.preinit_array)
		*(.init)
		*(.init_array) 
	} > BIOS
	
	.got : { 
		 *(.got)   /* -fPIC's section */
		 *(.got.*)
	 } > BIOS 

	/* .rodata.*,比如 */
	.rodata : { 
		. = ALIGN(0x4); 
		*(.rodata) 
		*(.rodata.*)
		*(.note.gnu.build-id)
	 } > BIOS
	 
	 
	
	/* RAM 是不可加载的，因此必须使用NOLOAD方式 */
	/* .data区存放不为零的全局变量,所以应当避免使用 */
	.data (NOLOAD): { 
		PROVIDE(_data = . );
		*(.data)
		. = ALIGN(0x1000); /* 4KB 对齐 */
		PROVIDE(_end = .);
		PROVIDE(L0Table = .); /* L0Table */
		. = . + 0x1000;
		PROVIDE(L1Table = .); /* L1Table */
		. = . + 0x1000;
	} > RAM
	
	/* .bss 未赋值的变量，比如未赋初值全局类对象，默认构造函数;或者初始化为0的变量 */
	.bss (NOLOAD): {
		. = ALIGN(0x4);
		PROVIDE(__bss_start = .);
		*(.bss)
		*(COMMON)
		
		/*下面的放法是错误的，分区内的符号在汇编引用中是标号而不是值，但是在c++引用中都是内存地址*/
		/*PROVIDE(__bss_dw_size = (. - __bss_start) >> 3);*/
		
	} > RAM
	/* 此区中存放的是ABS下标地址 */
    
    /* 其他比如.debug_line,.debug_macro,.debug_abbrev,.debug_str, .debug_loc,...,.comment,*/
    /*8字节的数量*/
    PROVIDE(__bss_dw_size = (. - __bss_start) >> 3);
	
	/* for user space */
	.last : {
	   . = ABSOLUTE(USER_SPACE_START + IMAGE_BASE);
	   . = . + USER_SPACE_SIZE;
	} > BIOS
	
	
	.freeram (NOLOAD) : {
		PROVIDE(ramStart = .);
		. = ABSOLUTE( CONFIG_RAM_START + CONFIG_RAM_SIZE + IMAGE_BASE);
		PROVIDE(ramEnd = . );
	} > RAM
	

	/* 4K的栈 */
	PROVIDE(__stack_top = CONFIG_RAM_START + 4K);
	
	PROVIDE( uart_base = UART_BASE + IMAGE_BASE );
}