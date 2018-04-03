/*
 * InterruptManager.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_
#define INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_

#include <def.h>
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
	InterruptManager()=default;

	AS_MACRO bool systemRegistersSupported()const
	{
		return RegID_AA64PFR0_EL1::read().GIC;
	}
	AS_MACRO void enableICCRegisters(bool allow)
	{

	}

	// 重载RegVBAR的operator=
	AS_MACRO void    vectorAddr(void *addr)
	{
		_vbarel1.Addr = reinterpret_cast<uint64_t>(addr);
		_vbarel1.write();
	}
	AS_MACRO void    awakeRedistributor(){ GICRedistributor::awake();}

	AS_MACRO void    sgi(){}

	// 方法声明
	using GICCPUInterface::eoiMode;

	template <int grp>
	void ACKIntGroup();

private:
	RegVBAR_EL1    _vbarel1;
};




#endif /* INCLUDE_INTERRUPT_INTERRUPTMANAGER_H_ */
