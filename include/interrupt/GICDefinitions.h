/*
 * GICDefinitions.h
 *
 *  Created on: Mar 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICDEFINITIONS_H_
#define INCLUDE_INTERRUPT_GICDEFINITIONS_H_

#include <def.h>
#include <runtime_def.h>
/**
 * 定义在写入ack的同时是否将CPU的当前优先级降低，已经是否将中断取消激活状态。
 */
enum EOIMode{
	ack_priority_drop_and_deactivation=0,//!< ack_priority_drop_and_deactivation
	ack_priority_drop_no_deactivation=1, // 用于虚拟化
};


enum class SecurityState { S_NS_2S, S_NS_1S, S_S_2S, S_S_1S};
enum class ExceptionLevel {EL0,EL1,EL2,EL3};

using IntID = uint32_t;

constexpr IntID INT_IS_SECURE_GRP1=1020,//由IAR0返回
		        INT_IS_NON_SECURE_GRP1=1021,
		        INT_LEGACY=1022,
				INT_VIRTUAL_MAINTENCE=5,
				INT_HYP_TIMER=26,
				INT_VIRTUAL_TIMER=27,
				INT_S_PHY_TIMER=29,
			    INT_NS_PHY_TIMER=30,
				INT_SPURIOUS=1023; // no interrupt

#ifdef TARGET_ARCH_IS_qemu_virt
constexpr IntID		INT_INPUT = 33; //  UART的中断
#endif

constexpr uint8_t INT_IDLE_PRIORITY=0xFF;

template <template <int,class...> class T,int index,class ... Args>
AS_MACRO T<index,Args...>& arrReg(typename T<index,Args...>::ScaleType  reg[])
{
	return *reinterpret_cast<T<index,Args...>*>(reg+index);
}

#ifndef _NOT_NEED_SecurityState
extern SecurityState securityState;
#endif
#ifndef _NOT_NEED_ExceptionLevel
extern ExceptionLevel exceptionLevel;
#endif




#endif /* INCLUDE_INTERRUPT_GICDEFINITIONS_H_ */
