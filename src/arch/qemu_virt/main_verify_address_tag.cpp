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
	RegMIDR_EL1::read().dump();
	RegCurrentEL::read().dump();
	RegPAR_EL1::read().dump();
	__asm__ __volatile__("at S1E1R,%0 \n\t"::"r"(0x112233));
	RegPAR_EL1::read().dump();


	RegID_AA64MMFR0_EL1::read().dump();
	RegTCR_EL1::read().dump();
	kout << INFO << "end main.";

	return 0;
}


