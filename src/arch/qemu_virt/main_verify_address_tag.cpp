/*
 * main_vmsa.cpp
 *
 *  Created on: Feb 10, 2018
 *      Author: 13774
 */

#include <arch/common_aarch64/system_common_registers.h>
extern char main_end[];


// description: if TCR_EL.TBI0=1, then the highest 8 bits is address tag,and when loading address to PC the highest 8 bits are write as 0.
// for details see program below.
int main()
{
	// set exception vector of EL1
	__asm__(
			"ldr x0,=ExceptionVectorEL1 \n\t"
			"msr vbar_el1,x0 \n\t");
	// set address tag enabled, TBI1 is for second VA space, we do not use it now.
	auto tcr = readRegTCR_EL1();
	tcr.dump();
//	tcr.TBI0=1;
//	tcr.TBI1=1;
	writeRegTCR_EL1(tcr);

	// set PC,note, the highest 8 bits is 0xfa,not zero, but the branch is succeed, provided that TBI0=1.
	RegPC pc {0};
	pc.PC = HEX64(fa00,0000,0000,0000) | reinterpret_cast<int64_t>(main_end);

	writeRegPC(pc);

	__asm__(".global main_end \n\t"
			"main_end:\n\t");
	// goes here correctly, so the highest 8 bits of PC is 0.
	readRegPC().dump();
	kout << INFO << "end main.";

	return 0;
}


