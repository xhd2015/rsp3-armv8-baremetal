SECTIONS{
	. = KERNEL_ADDRESS;
	PROVIDE(__stack_top = .);
	/* NOTE: .text.boot must be ahead of any thing*/
	.text : {
		*(.text.boot)
		*(.text)
	}

	. = ALIGN(16);
	.rodata : { *(.rodata) }
	
	. = ALIGN(16);
	.data : { *(.data) }
	
	. = ALIGN(16);
	.bss : {
		PROVIDE(__bss_start = .);
		*(.bss)
		*(COMMON)
		
		/*下面的放法是错误的，分区内的符号是标号而不是值*/
		/*PROVIDE(__bss_dw_size = (. - __bss_start) >> 3);*/
		
	}
	/*8字节的数量*/
	PROVIDE(__bss_dw_size = (. - __bss_start) >> 3);
	.other (NOLOAD): { 
		*(.note.gnu.build-id) /*prevent WARNING of --build-id*/
	}
	
	/DISCARD/ : {
		*(.eh_frame) 
		*(.debug_*)
		*(.comment)
	}
	
}