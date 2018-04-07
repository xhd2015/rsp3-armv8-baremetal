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
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <utility>

/**
 *  操纵一个寄存器组
 */
class GICCPUInterface{
public:
	GICCPUInterface()=default;
	int init(uint8_t lowestPriority,bool a3vEn,EOIMode mode);


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

#include <templates_implementation/interrupt/GICCPUInterface.h>



#endif /* INCLUDE_INTERRUPT_GICCPUINTERFACE_H_ */
