#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
// provide RegDescriptor4KBL0,RegDescriptor4KBL1..., see include/arch/common_aarch64/vmsa_descriptors.py for its raw definitions
#include <arch/common_aarch64/vmsa_descriptors.h>
#include <arch/common_aarch64/general_registers.h>
#include <generic_util.h>
#include <interrupt/exceptions.h>
#include <interrupt/svc_call.h>
#include <kernel.h>

// 程序测试了svc_call的调用及返回值
int main()
{
	// must be at EL1
	auto curEl = RegCurrentEL::read();
	if(curEl.EL != 1)
	{
		kout << FATAL << " Not at EL1 \n";
		return 1;
	}
	// set SPSel to 1
	RegSPSel spsel{0};
	spsel.SP = 1;
	spsel.write();

	// set exception vector of EL1
	extern char ExceptionVectorEL1[];
	RegVBAR_EL1 vbar;
	vbar.Addr = reinterpret_cast<uint64_t>(ExceptionVectorEL1);
	vbar.write();

//	__asm__ __volatile__("mov x0,#0 \n\t":::"x0");
//	__asm__ __volatile__("mov x1,#123 \n\t":::"x1");
//	__asm__ __volatile__("mov x2,#456 \n\t":::"x2");

	// following is wrong, x0,x1 must be combined to ensure that they have coherent values
//	__asm__ __volatile__("mov x0, %0 \n\t"::"r"("SVC call \n"):"x0");
//	__asm__ __volatile__("mov x1, %0 \n\t"::"r"(0):"x1");


	// example 1: manually
	__asm__ __volatile__("mov x0, %0 \n\t"
						"mov  x1, %1 \n\t"
						::"r"("SVC call \n"),"r"(0):"x0","x1");
	asm_svc(SvcFunc::puts);

	// example 2: overloaded funcitons, can get returned result
	uint64_t num = svc_call(SvcFunc::puts,reinterpret_cast<uint64_t>("SVC call \n"),0);

	kout << INFO << "print number is " << num << "\n";

	return 0;
}


