/*
 * GICCPUInterface.cpp
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#include <interrupt/GICCPUInterface.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>

int GICCPUInterface::init(uint8_t lowestPriority,EOIMode mode)
{
	// make sure _ctrl proper
	_ctrl.update();

	enableSystemRegister();
	lowestAllowedPriority(lowestPriority);


//	_ctrl.A3V=a3vEn; // write ignored
	_ctrl.EOImode=mode; // EOI at the same time or what
	_ctrl.write();

	// enable group 0(fiq),1(irq)
	enableGroup<0>(true);
//	if(securityState==SecurityState::S_S_2S && exceptionLevel==ExceptionLevel::EL3) // only control from EL3-S
	enableGroup<1>(true);

	return 0;
}

void    GICCPUInterface::lowestAllowedPriority(uint8_t priorty)
{
	// write to priority
	auto maskPrty = RegICC_PMR_EL1::make(0);
	maskPrty.Priortiy = priorty;
	maskPrty.write();
}

void GICCPUInterface::enableSystemRegister()
{
	auto  sre = RegICC_SRE_EL1::read();
	sre.SRE=1;
	sre.write();
}

