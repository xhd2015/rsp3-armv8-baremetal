/*
 * GICDistributor.h
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICDISTRIBUTOR_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICDISTRIBUTOR_H_

#include <interrupt/GICDistributor.h>
#include <generic_util.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <generic/error.h>

template <int grp>
void GICDistributor::enableGroup(bool enable)
{
	static_assert(grp==0||grp==1,"group must be 0,1\n");
	assert(securityState!=SecurityState::S_NS_2S || grp==1); //when NS of 2S, grp must be 1
	auto distr=RegGICD_CTLR::read(regPtr(ctrl));
	if(grp==0)
	{
		if(securityState==SecurityState::S_S_2S)
			distr.S0.EnableGrp0=enable;
//		else if(_sstate==S_NS_2S) //error
//			distr.S1.E=enable;
		else
			distr.S2.EnableGrp0=enable;
	}else{
		if(securityState==SecurityState::S_S_2S)
		{
			distr.S0.EnableGrp1NS=enable;
			distr.S0.EnableGrp1S=enable;
		}
		if(securityState==SecurityState::S_NS_2S)
		{
			distr.S1.EnableGrp1=enable;
			distr.S1.EnableGrp1A=enable;
		}else{
			distr.S2.EnableGrp1=enable;
		}
	}
	distr.write(regPtr(ctrl));
}




#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICDISTRIBUTOR_H_ */
