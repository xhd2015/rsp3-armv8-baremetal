MEMORY
{
	BIOS (rx) : ORIGIN = BIOS_START + IMAGE_BASE, LENGTH = BIOS_SIZE
	STACK (rw) : ORIGIN = RAM_START + IMAGE_BASE , LENGTH = STACK_SIZE
	RAM  (rwx) : ORIGIN = RAM_START + STACK_SIZE + IMAGE_BASE, LENGTH = RAM_SIZE - STACK_SIZE
}


SECTIONS{
	/* NOTE: .text.boot must be ahead of any thing*/
	/* .text.*，比如.text._ZN9FormatterILi16EEC2Em，是类的函数放置的地方 */
	.text KERNEL_ADDRESS + IMAGE_BASE : {
		*(.text.boot) /* PC对齐检查 */
	    /* *(.text.enmmu)  */  /* 启用MMU的代码必须在低1GB以内,这是为了flat map,但是通常是足够的 */
		*(.text)
		*(.text.*)  /* 如果后面再放置.text.vector，则有可能没有放置成功，因为此处已经放置了 */
	
		
		/* for initailize  */
		*(.preinit_array)
		*(.init)
		*(.init_array) 
	} > BIOS
	
	.vtable_begin : { PROVIDE( __vt_rom_begin = . ); } > BIOS
	/* .vtable 需要读取 ,进行rebase*/
	.vtable : AT(__vt_rom_begin){
		PROVIDE(__vt_begin = . );
		*(.rodata._ZTV*)
		PROVIDE(__vt_end = .);
	} > RAM
	
	.got (__vt_rom_begin + SIZEOF(.vtable)): { 
		 *(.got)   /* -fPIC's section */
		 *(.got.*)
	 } > BIOS 

	/* .rodata.*,比如 */
	.rodata (ADDR(.got) + SIZEOF(.got)): { 
		. = ALIGN(0x4); 
		*(.rodata) 
		*(.rodata.*) 
		*(.note.gnu.build-id)
	 } > BIOS
	 
	/* for user space */
	.user_space (BIOS_START + USER_SPACE_START + IMAGE_BASE): {
	/*   . = ABSOLUTE(); */
	   . = . + USER_SPACE_SIZE;
	} > BIOS
	
	/* RAM 是不可加载的，因此必须使用NOLOAD方式 */
	/* .data区存放不为零的全局变量,所以应当避免使用 */
	.data (ADDR(.vtable) + SIZEOF(.vtable)) (NOLOAD): { 
		PROVIDE(_data = . );
		*(.data)
		. = ALIGN(0x1000); /* 4KB 对齐 */
		PROVIDE(_end = .);
	} > RAM
	
	/* .bss 未赋值的变量，比如未赋初值全局类对象，默认构造函数;或者初始化为0的变量 */
	.bss (ADDR(.data) + SIZEOF(.data)) (NOLOAD): {
		. = ALIGN(0x8); /* 必须与8字节对齐，为了快速处理 */
		PROVIDE(__bss_start = .);
		*(.bss)
		*(COMMON)
		. = ALIGN(0x8);
		PROVIDE(__bss_end = . );
		
		/*下面的放法是错误的，分区内的符号在汇编引用中是标号而不是值，但是在c++引用中都是内存地址*/
		/*PROVIDE(__bss_dw_size = (. - __bss_start) >> 3);*/
		
	} > RAM
	
	/* 此区中存放的是ABS下标地址 */
    /* 其他比如.debug_line,.debug_macro,.debug_abbrev,.debug_str, .debug_loc,...,.comment,*/
	
	
	.freeram (ADDR(.bss) + SIZEOF(.bss)) (NOLOAD) : {
		PROVIDE(ramStart = .);
		. = ABSOLUTE( RAM_START + RAM_SIZE + IMAGE_BASE);
		PROVIDE(ramEnd = . );
	} > RAM
	
	/* 4K的栈 */
	PROVIDE(__stack_top = RAM_START + STACK_SIZE + IMAGE_BASE);
}