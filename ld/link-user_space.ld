
MEMORY
{
    ROM (rx) : ORIGIN = 0x0,  LENGTH = 20K
    RAM (rwx) : ORIGIN = 20K, LENGTH = 512
}

SECTIONS{
    .text :{
        *(.text.main)
        *(.text)
        *(.text.*)
        *(.rodata)
        *(.rodata.*)
        *(.note.gnu.build-id)
    } > ROM
    
    /DISCARD/ : {
       
    }
}