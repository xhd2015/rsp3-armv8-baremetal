/*
 * GICCPUInterface.h
 *
 *  Created on: Apr 4, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICCPUINTERFACE_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICCPUINTERFACE_H_

#include <interrupt/GICCPUInterface.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>

template <int grp>
IntID   GICCPUInterface::ack()
{
	return RegICC_IAR_EL1<grp>::read().INTID;
}
template <int grp>
void  GICCPUInterface::eoi(IntID id)
{
	RegICC_EOIR_EL1<grp>::make(id & 0xFFFFFF).wrte();
}

template <int grp>
void   GICCPUInterface::subPriorityBits(size_t n)
{
	if(n<1 || n>8)
		return;
	auto reg=RegICC_BPR_EL1<grp>::make(0);
	reg.BinaryPoint=n-1;
	reg.write();
}

template <int grp>
void GICCPUInterface::enableGroup(bool enable)
{
	auto en=RegICC_IGRPEN_EL1<grp>::make(0);
	en.Enable=enable;
	en.write();
}


template <int grp>
void GICCPUInterface::sgiTarget(IntID id,uint8_t aff3,uint8_t aff2,uint8_t aff1,uint8_t aff0)
{
	sgiTargetList<grp>(id, aff3, aff2, aff1, (0x1 << aff0));
}
template <int grp>
void GICCPUInterface::sgiSelf(IntID id)
{
	auto mpid = RegMPIDR_EL1::read();
	sgiTarget<grp>(id, mpid.Aff3, mpid.Aff2, mpid.Aff1, mpid.Aff0);
}
template <int grp>
void GICCPUInterface::sgiTargetList(IntID id,uint8_t aff3,uint8_t aff2,uint8_t aff1,uint16_t aff0Bits)
{
	auto sgir=RegICC_SGIR_EL1<grp>::make(0);
	sgir.Aff3= aff3;
	sgir.Aff2= aff2;
	sgir.Aff1= aff1;
	sgir.TargetList = aff0Bits;;// has effect,must target itself.
	sgir.INTID=id;
	sgir.IRM=RegICC_SGIR_EL1<grp>::IRMmode::ByAffinity;
	sgir.write();
}
template <int grp>
void GICCPUInterface::sgiAllOtherCPUs(IntID id)
{
	auto sgir=RegICC_SGIR_EL1<grp>::make(0);
	sgir.INTID=id;
	sgir.IRM=RegICC_SGIR_EL1<grp>::IRMmode::AllNoSelf;
	sgir.write();
}



#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_INTERRUPT_GICCPUINTERFACE_H_ */
