
MEMORY
{
    ROM (rx) : ORIGIN = 4K,  LENGTH = 20K
    RAM (rwx) : ORIGIN = RAM_START , LENGTH = RAM_SIZE
}

SECTIONS{
    .text 4K: AT(0){
        *(.text.init)
        *(.text)
        *(.text.*)
        *(.note.gnu.build-id)
        *(.init_array)
    } > ROM
    
    .rodata : {
    	*(.rodata)
    	*(.rodata.*)
    } > ROM
    
    /* 该区需要初始化为0 */
    .bss (NOLOAD): AT(ADDR(.rodata) + SIZEOF(.rodata)){
    	. = ALIGN(8);
    	PROVIDE(bssStart = .);
    	*(.bss)
    	*(COMMON)
    	. = ALIGN(8);
    	PROVIDE(bssEnd = .);
    } > RAM
    
    /* 这区需要代码的手动初始化 */
    .data : AT(ADDR(.bss) + SIZEOF(.bss)){
    	*(.data)
    	*(.data.*)
    } > RAM
    
    /* 该区为可以使用的RAM(HEAP)空间 */
    .freeram :AT(ADDR(.data) + SIZEOF(.data))  {
    	. = ALIGN(4);
    	PROVIDE(freeRamStart = . );
    	. = ABSOLUTE(RAM_START + RAM_SIZE);
    	PROVIDE(freeRamEnd = .);
    } > RAM
    
    
    /DISCARD/ : {
      /* *(.comment) */
      /* *(.debug_*)  */
    }
}