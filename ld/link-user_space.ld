/* DOCME 改变USER_SPACE_SIZE的值必须同样改变在Process.h中的值
布局： STACK(不用加载)  CODE  INITRAM DATA
*/
MEMORY
{
	STACK(rw) : ORIGIN = USER_STACK_START , LENGTH = USER_STACK_SIZE
	CODE(rx) : ORIGIN = USER_CODE_START , LENGTH = USER_CODE_SIZE
	INITRAM(rw) : ORIGIN = USER_INITRAM_START , LENGTH = USER_INITRAM_SIZE
	BSS  (rw)  : ORIGIN = USER_BSS_START , LENGTH = USER_BSS_SIZE
	DATA (rw) : ORIGIN = USER_DATA_START , LENGTH = USER_DATA_SIZE 
}

SECTIONS{
	/* DOCME 为什么这里, objcopy的行为是将其放到0地址处？ 而对于其他有空隙的地方，却又是生成0的方式 
	难道所有的NOLOAD会被略过吗？ 但是这样就与 "默认情况下LA=VA"矛盾了
	*/
    .text : {
        *(.text.init)
        *(.text)
        *(.text.*)
        *(.note.gnu.build-id)
        *(.init_array)
    } > CODE
    
    .rodata : {
    	*(.rodata)
    	*(.rodata.*)
    } > CODE
    
    /* 该区需要初始化为0 */
    .bss (NOLOAD) : {
    	. = ALIGN(8);
    	PROVIDE(bssStart = .);
    	*(.bss)
    	*(COMMON)
    	. = ALIGN(8);
    	PROVIDE(bssEnd = .);
    } > BSS
    
    /* 这区需要代码的手动初始化 */
    .data :  {
    	*(.data)
    	*(.data.*)
    } > INITRAM
    
    /* 该区为可以使用的RAM(HEAP)空间 */
    .freeram  (NOLOAD) : {
    	. = ALIGN(8);
    	PROVIDE(freeRamStart = . );
    	. = ABSOLUTE(USER_DATA_START + USER_DATA_SIZE); /* 到达最顶部，全部为HEAP */
    	PROVIDE(freeRamEnd = .);
    } > DATA
}