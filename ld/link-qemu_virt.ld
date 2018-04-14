/*内存模型： 所有的数据均位于RAM中*/

MEMORY
{
    DTB (r)  : ORIGIN = RAM_START + IMAGE_BASE , LENGTH = DTB_SIZE
	STACK (rw) : ORIGIN = RAM_START + IMAGE_BASE + DTB_SIZE , LENGTH = STACK_SIZE
	CODE (rx) : ORIGIN = RAM_START + IMAGE_BASE + DTB_SIZE + STACK_SIZE , LENGTH = CODE_SIZE
	USER_SPACE (rw) : ORIGIN = RAM_START + IMAGE_BASE + DTB_SIZE + STACK_SIZE + CODE_SIZE   , LENGTH = USER_SPACE_SIZE
	DATA  (rw) : ORIGIN = RAM_START + IMAGE_BASE + DTB_SIZE + STACK_SIZE + CODE_SIZE + USER_SPACE_SIZE , LENGTH = RAM_SIZE - CODE_SIZE - STACK_SIZE - DTB_SIZE - USER_SPACE_SIZE
}
/*.vtable必须位于CODE中以便加载，但是加载后必须被复制到RAM中以便重新定位(rebase)*/


SECTIONS{
	/* NOTE: .text.boot must be ahead of any thing*/
	/* .text.*，比如.text._ZN9FormatterILi16EEC2Em，是类的函数放置的地方 */
	PROVIDE(DTB_START = RAM_START);
	PROVIDE(STACK_START = DTB_START + IMAGE_BASE + DTB_SIZE);
	PROVIDE(CODE_START =  STACK_START + IMAGE_BASE  + STACK_SIZE);
	PROVIDE(USER_SPACE_START = CODE_START + IMAGE_BASE + CODE_SIZE);
	PROVIDE(DATA_START = USER_SPACE_START + IMAGE_BASE + USER_SPACE_SIZE);
	PROVIDE(DATA_SIZE  = RAM_SIZE - DTB_SIZE - STACK_SIZE - CODE_SIZE - USER_SPACE_SIZE);
	.text IMAGE_BASE + RAM_START + DTB_SIZE + STACK_SIZE + KERNEL_OFFSET : {
		*(.text.boot) /* PC对齐检查 */
	    /* *(.text.enmmu)  */  /* 启用MMU的代码必须在低1GB以内,这是为了flat map,但是通常是足够的 */
		*(.text)
		*(.text.*)  /* 如果后面再放置.text.vector，则有可能没有放置成功，因为此处已经放置了 */
	
		
		/* for initailize  */
		*(.preinit_array)
		*(.init)
		*(.init_array) 
	} > CODE
	
	.vtable_begin : { PROVIDE( __vt_rom_begin = . ); } > CODE
	/* .vtable 需要读取 ,进行rebase*/
	.vtable : AT(__vt_rom_begin){
		PROVIDE(__vt_begin = . );
		*(.rodata._ZTV*)
		PROVIDE(__vt_end = .);
	} > DATA
	
	.got (__vt_rom_begin + SIZEOF(.vtable)): { 
		 *(.got)   /* -fPIC's section */
		 *(.got.*)
	 } > CODE

	/* .rodata.*,比如 */
	.rodata (ADDR(.got) + SIZEOF(.got)): { 
		. = ALIGN(0x4); 
		*(.rodata) 
		*(.rodata.*) 
		*(.note.gnu.build-id)
	 } > CODE
	
	/* DATA 是不可加载的，因此必须使用NOLOAD方式 */
	/* .data区存放不为零的全局变量,所以应当避免使用 */
	.data (ADDR(.vtable) + SIZEOF(.vtable)) (NOLOAD): { 
		*(.data)
	} > DATA
	
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
		
	} > DATA
	
	/* 此区中存放的是ABS下标地址 */
    /* 其他比如.debug_line,.debug_macro,.debug_abbrev,.debug_str, .debug_loc,...,.comment,*/
	
	
	.freeram (ADDR(.bss) + SIZEOF(.bss)) (NOLOAD) : {
		PROVIDE(ramStart = .);
		. = ABSOLUTE(RAM_SIZE - USER_SPACE_SIZE + RAM_START + IMAGE_BASE);
		PROVIDE(ramEnd = . );
	} > DATA
	
	.stack :{ . = . + STACK_SIZE ; PROVIDE(__stack_top = . ); } > STACK
	.userspace : { PROVIDE(user_space_start = .); . = . + USER_SPACE_SIZE; } > USER_SPACE
}