
#include <def.h>
#include <arch/aarch64/util.h>

//我们需要提供的入口函数,与一般main函数的接口一致
int main();


AS_MACRO void CPUWaitForEvent()
{
	__asm__ ("wfe \n\t");
}

AS_MACRO void haltSlaveCPUs()
{
	__asm__(
		"mrs     x0, mpidr_el1 \n\t"
		"and     x0, x0, #3 \n\t"
		"cbz     x0, 2f \n\t"
		"1:  	wfe	\n\t"
		"b       1b	\n\t"
		"2: \n\t"
	);
}
AS_MACRO void setupStackTop()
{
    __asm__(
        "ldr x0,=__stack_top \n\t"
	    "mov sp,x0 \n\t"
    );
}
AS_MACRO void setupUnintializedToZero()
{
    __asm__(
	"ldr	x0,=__bss_start \n\t"
	"ldr	w1,=__bss_dw_size \n\t"
    "0:	\n\t"
    "cbz	w1,1f \n\t"
	"str	xzr,[x0],#8 \n\t"
	"sub	w1,w1,#1 \n\t"
	"cbnz	w1,0b \n\t"
    "1: \n\t"
    );
}

// NOTE: it is required that this snippet has a unique name so that we can arrange it to head our binary by our hand.
// and it is required that init is placed in .text.boot
__asm__(
".section .text.boot \n\t"
"b start_line\n\t"
);

__attribute__((section(".text.boot")))
void init()
{
    __asm__("start_line:\n\t");
    haltSlaveCPUs();
    setupStackTop();
    setupUnintializedToZero();

    main();

    while(true)
    	CPUWaitForEvent();
}


