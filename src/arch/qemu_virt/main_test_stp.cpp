
#include <asm_instructions.h>
#include <arch/common_aarch64/system_common_registers.h>
// provide RegDescriptor4KBL0,RegDescriptor4KBL1..., see include/arch/common_aarch64/vmsa_descriptors.py for its raw definitions
#include <arch/common_aarch64/vmsa_descriptors.h>
#include <generic_util.h>
#include <kernel.h>

// 程序测试了stp指令存储的数据布局, stp x1,x2,...,  存储的位置x1在前,x2在后.  x1在低位置，x2在高位置
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

	uint64_t curSp1=0;
	__asm__ __volatile__("mov %0,sp \n\t":"=r"(curSp1));
	kout << "curSp1 = " << curSp1 << "\n";
	__asm__ __volatile__("stp %0,%1,[sp,#-16]! \n\t"::"r"('X'),"r"('h'));//'X' 低位置, 'h'高位置
	__asm__ __volatile__("mov %0,sp \n\t":"=r"(curSp1));
	kout << "curSp1 = " << curSp1 << "\n";
	kout << "'X','h' = " << static_cast<uint64_t>('X') << "," << static_cast<uint64_t>('h') << "\n";
	uint64_t *data=reinterpret_cast<uint64_t*>(curSp1);
	kout << "data[0],data[1]="<<data[0]<<"," << data[1]<<"\n";

	return 0;
}


