
#include <def.h>
#include <arch/qemu-virt/util.h>
#include <asm_instructions.h>
#include <cstring>
#include <io/uart/PL011.h>
#include <new>

//我们需要提供的入口函数,与一般main函数的接口一致
int main();

// NOTE: it is required that this snippet has a unique name so that we can arrange it to head our binary by our hand.
// and it is required that init is placed in .text.boot
__asm__(
".section .text.boot \n\t"
ASM_HALT_SLAVE_CPUS()
ASM_SET_SP_SEL(1)  //使用SP_EL1
ASM_SET_SP_SYM(__stack_top)
"b init \n\t"
);

extern uint64_t __bss_start[];
extern uint64_t __bss_end[];

extern "C"
void init()
{
	// 禁用EL3,EL2，设置EL1
	// TODO

	// p 的值一定是__bss_start吗？ 不一定，如果栈是错误地放在了一块只读内存上，则先存p的副本，然后取出来，其值就是0.
//	setupUnintializedToZero();
	for(auto p=__bss_start;p!=__bss_end;++p)
		*p=0;

	int res = main();
	(void)res;
	// 配置错误时，我们无法进行输出
	asm_wfe_loop();
}


