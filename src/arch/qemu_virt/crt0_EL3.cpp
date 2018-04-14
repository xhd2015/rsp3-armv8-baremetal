
#include <def.h>
#include <arch/qemu-virt/util.h>
#include <asm_instructions.h>
#include <cstring>
#include <io/uart/PL011.h>
#include <new>
#include <arch/qemu-virt/crt0.h>

// NOTE: it is required that this snippet has a unique name so that we can arrange it to head our binary by our hand.
// and it is required that init is placed in .text.boot
__asm__(
".section .text.boot \n\t"
".global asm_start \n\t"
"asm_start: \n\t"
ASM_HALT_SLAVE_CPUS()
ASM_SET_SP_SEL(1)  //使用SP_ELx
ASM_INIT_CALLER(__stack_top)
);

extern uint64_t __bss_start[];
extern uint64_t __bss_end[];

// EL1,SPSel=1, DAIF=0b1111
// EL3需要设置SCR
// EL2需要设置HCR
void init(uint64_t currentEL)
{
	// 我们假定有EL2，实际上可能有EL3但是没有EL2，但那不是通常的情况
	// 在没有EL2的情况下，访问HCR_EL2会失败，那正是我们想要的。
	if(currentEL >= 2) // set HCR
	{
		auto hcr=RegHCR_EL2::read();
		hcr.RW=1; // aa64
		hcr.VM=0; // disable virtualization
		hcr.TGE=0; // do not trap EL1 exceptions
		hcr.write();
	}
	if(currentEL==3)
	{
		auto scr=RegSCR_EL3::read();
		scr.RW=1; // aa64
		scr.SIF=0;//allow prefecth from non-secure
		scr.NS=1;// non-secure
		scr.write();

		InterruptManager::preconfigEL3(
				reinterpret_cast<volatile void *>(GIC_DIST_BASE),
				reinterpret_cast<volatile void*>(GIC_REDIST_BASE),
				false, // secure
				1, // group
				true, // allow G1S
				true  // allow G1NS
				);
	}

	// 跳转到EL1
	// SPSR=  0b  0000_0000_0000_0000_0000_0011_1100_0101 = 0x3c5
	if(currentEL==2)
		__asm__ __volatile__(
				ASM_ERET_FROM(2,0x3c5)
			);
	else if(currentEL==3)
		__asm__ __volatile__(
				ASM_ERET_FROM(3,0x3c5)
		);

	// p 的值一定是__bss_start吗？ 不一定，如果栈是错误地放在了一块只读内存上，则先存p的副本，然后取出来，其值就是0.
//	setupUnintializedToZero();
	for(auto p=__bss_start;p!=__bss_end;++p)
		*p=0;

	int res = main();
	(void)res;
	// 配置错误时，我们无法进行输出
	asm_wfe_loop();
}


