/*
 * GICCPUInterface.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICCPUINTERFACE_H_
#define INCLUDE_INTERRUPT_GICCPUINTERFACE_H_

#include <def.h>
#include <interrupt/GICDefinitions.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <utility>

/**
 *  操纵一个寄存器组
 */
class GICCPUInterface{
public:
	GICCPUInterface()=default;
	int init(uint8_t lowestPriority,EOIMode mode);


	AS_MACRO uint8_t runningPriority()const{return 0;}

	// 0xFF(lowest) --> 0x00(highest)
	void    lowestAllowedPriority(uint8_t priorty);
	uint8_t lowestAllowedPrioirty()const;

	// only group 0,1 is allowed
	template <int grp>
	AS_MACRO IntID   ack();
	template <int grp>
	AS_MACRO void  eoi(IntID id);


	template <int grp>
	void   subPriorityBits(size_t n);

	// read-only
	AS_MACRO size_t  IDBits()const
	{
		return _ctrl.IDbits==0?16:24;// 0:16, 1:24
	}
	// read only, pribits-1
	AS_MACRO size_t PRIBits()const
	{
		return _ctrl.PRIbits;
	}


	template <int grp>
	void enableGroup(bool enable);
	void enableSystemRegister();

	template <int grp>
	void sgiTarget(IntID id,uint8_t aff3,uint8_t aff2,uint8_t aff1,uint8_t aff0);
	template <int grp>
	void sgiSelf(IntID id);
	template <int grp>
	void sgiTargetList(IntID id,uint8_t aff3,uint8_t aff2,uint8_t aff1,uint16_t aff0Bits);
	template <int grp>
	void sgiAllOtherCPUs(IntID id);

private:
	RegICC_CTLR_EL1 _ctrl;


};



//== template
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




#endif /* INCLUDE_INTERRUPT_GICCPUINTERFACE_H_ */
