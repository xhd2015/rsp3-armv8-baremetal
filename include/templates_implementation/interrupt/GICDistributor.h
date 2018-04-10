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


template <int grp>
void GICDistributor::enableGroup(bool enable)
{
	static_assert(grp==0||grp==1,"group must be 0,1\n");
	auto distr=RegGICD_CTLR::read(regPtr(ctrl));
	if(grp==0)
	{
		distr.EnableGrp0=enable;
	}else{
		distr.EnableGrp1NS=enable;
	}
	distr.write(regPtr(ctrl));
}




#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICDISTRIBUTOR_H_ */
