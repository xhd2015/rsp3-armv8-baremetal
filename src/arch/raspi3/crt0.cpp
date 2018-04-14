#include <arch/qemu_virt/crt0.h>
#include <cstring>
#include <asm_instructions.h>

__asm__(
".section .text.boot \n\t"
".global asm_start \n\t"
"asm_start: \n\t"
ASM_HALT_SLAVE_CPUS()
ASM_SET_SP_SEL(1)  //使用SP_ELx
ASM_INIT_CALLER(__stack_top)
//"ldr x0,=" __stringify(__stack_top) "\n\t"
//"mov sp,x0 \n\t"
//"b init \n\t"
);

extern char __bss_start[];
extern char __bss_end[];

// 必须与init位于同一个分区？ 不是，取决于编译选项
// 放在.text.boot分区有利于调试。
__attribute__((section(".text.boot")))
void init(uint64_t currentEL)
{
	std::memset(__bss_start,0,__bss_end - __bss_start );

	int res = main();
	(void)res;

	asm_wfe_loop();
}


