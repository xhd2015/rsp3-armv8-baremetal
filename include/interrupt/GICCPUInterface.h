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

/**
 *  操纵一个寄存器组
 */
class GICCPUInterface{
public:



	AS_MACRO void eoiMode(EOIMode mode){ _iccCtrl.EOImode=mode;_iccCtrl.write();}
	AS_MACRO void sgiAffinity3Valid(bool b){ _iccCtrl.A3V=b;_iccCtrl.write();}

	AS_MACRO uint8_t runningPriority()const{return 0;}

	// 0xFF(lowest) --> 0x00(highest)
	void    lowestAllowedPriority(uint8_t priorty);
	uint8_t lowestAllowedPrioirty()const;

	// only group 0,1 is allowed
	template <int grp>
	IntID   ackGroup();

	template <>
	AS_MACRO IntID   ackGroup<0>(){return RegICC_IAR0_EL1::read().INTID;}
	template <>
	AS_MACRO IntID   ackGroup<1>(){}


private:

private:
	RegICC_CTLR_EL1 _iccCtrl;

};



#endif /* INCLUDE_INTERRUPT_GICCPUINTERFACE_H_ */
