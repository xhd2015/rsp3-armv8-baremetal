/*
 * ExceptionRegisters.h
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_EXCEPTIONREGISTERS_H_
#define INCLUDE_INTERRUPT_EXCEPTIONREGISTERS_H_
#include <def.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <interrupt/exception_def.h>
#include <type_traits>

class ExceptionState
{
public:
	static constexpr size_t GENERAL_REG_NUM=31;
	ExceptionState();
	ExceptionState(uint64_t * savedRegs,ExceptionType type,ExceptionOrigin origin);//save
	void restore();//restore

	ExceptionType       _type; // 当前中断类型
	ExceptionOrigin     _origin; //中断源
	uint64_t           *_generalRegisters;
	RegSPSR_EL1        _spsr;
	RegELR_EL1         _elr;
	RegESR_EL1         _esr;
	RegFAR_EL1         _far;
};




#endif /* INCLUDE_INTERRUPT_EXCEPTIONSTATE_H_ */
