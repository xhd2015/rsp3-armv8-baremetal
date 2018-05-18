/*
 * GICDefinitions.h
 *
 *  Created on: Mar 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GICDEFINITIONS_H_
#define INCLUDE_INTERRUPT_GICDEFINITIONS_H_

#include <def.h>
/**
 * 定义在写入ack的同时是否将CPU的当前优先级降低，已经是否将中断取消激活状态。
 */
enum EOIMode{
	ack_priority_drop_and_deactivation=0,//!< ack_priority_drop_and_deactivation
	ack_priority_drop_no_deactivation=1, // 用于虚拟化
};


enum class SecurityState { S_NS_2S, S_NS_1S, S_S_2S, S_S_1S};

using IntID = uint32_t;

constexpr IntID INT_ID_IS_INVALID = 0xFFFFFFFF;

constexpr uint8_t INT_IDLE_PRIORITY=0xFF;

template <template <int,class...> class T,int index,class ... Args>
AS_MACRO T<index,Args...>& arrReg(typename T<index,Args...>::ScaleType  reg[])
{
	return *reinterpret_cast<T<index,Args...>*>(reg+index);
}




#endif /* INCLUDE_INTERRUPT_GICDEFINITIONS_H_ */
