/*
 * InterruptManager.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_
#define INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_

#include <def.h>
#include <runtime_def.h>
#include <interrupt/GICDefinitions.h>
#include <interrupt/GICDistributor.h>
#include <interrupt/GICRedistributor.h>
#include <interrupt/GICCPUInterface.h>

// 更加直接的读写方式
// 不需要中间变量
// 某个功能就是直接对寄存器变量的读写

class InterruptManager
	: private GICDistributor,
	  private GICRedistributor,
	  private GICCPUInterface
{
public:
	enum CPUIntBit{FIQ=6,IRQ=7,SError=8,Debug=9};
	InterruptManager(void *gicdAddr,void *gicrAddr)
		:GICDistributor(gicdAddr),
		 GICRedistributor(gicrAddr),
		 GICCPUInterface()
	{}

	// 所有中断默认都是启用的， 将Redistributor唤醒
	int init(void * vecAddr,bool a3vEn,EOIMode mode,uint8_t lowestPrty,uint8_t initPrty);
	AS_MACRO void rebase(size_t diff) { GICDistributor::rebase(diff);GICRedistributor::rebase(diff);}

	template <CPUIntBit intBit>
	void cpuIntEnable(bool v);


	AS_MACRO bool systemRegistersSupported()const
	{
		return RegID_AA64PFR0_EL1::read().GIC;
	}

	// 重载RegVBAR的operator=
	AS_MACRO void    vectorAddr(void *addr)
	{
		RegVBAR_EL1::make(reinterpret_cast<uint64_t>(addr)).write();
	}
	template <class Base>
	AS_MACRO Base & cast(){return *static_cast<Base*>(this);}
	template <class Base>
	AS_MACRO const Base & cast()const{return *static_cast<const Base*>(this);}

	void clearAllPendings();
	void disableAllInterrupts();
	volatile uint32_t & enableWord(int intGrp);
	volatile uint32_t & disableWord(int intGrp);


	using GICCPUInterface::sgiTarget;
	using GICCPUInterface::sgiSelf;
	using GICCPUInterface::sgiTargetList;
	using GICCPUInterface::sgiAllOtherCPUs;
	using GICCPUInterface::ack;
	using GICCPUInterface::eoi;
private:
};

#ifndef _NOT_NEED_InterruptManager
extern InterruptManager intm;
#endif



#endif /* INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_ */
