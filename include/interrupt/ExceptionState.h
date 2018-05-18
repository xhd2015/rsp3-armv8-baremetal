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
	void update(); //update
	/**
	 * 由于允许多重中断，因此中断相关的关键信息需要保存
	 * 这些信息与中断返回有关
	 */
	void restore();//restore
	AS_MACRO uint32_t  spsrELx() const { return _spsr_elx;}
	AS_MACRO uint64_t  elrELx() const {return _elr_elx;}
	AS_MACRO uint32_t  esrELx() const {return _esr_elx;}
	AS_MACRO uint64_t  farELx() const {return _far_elx;}
	AS_MACRO uint64_t* registers() { return _generalRegisters;}
	AS_MACRO const uint64_t* registers() const { return _generalRegisters;}

	ExceptionType       _type; // 当前中断类型
	ExceptionOrigin     _origin; //中断源
	ExceptionLevel      _currentEL;//当前异常级别
	uint64_t           *_generalRegisters;

	uint32_t           _spsr_elx;
	uint64_t           _elr_elx;
	uint32_t           _esr_elx;
	uint64_t           _far_elx;

//	RegSPSR_EL1        _spsr;
//	RegELR_EL1         _elr;
//	RegESR_EL1         _esr;
//	RegFAR_EL1         _far;
};




#endif /* INCLUDE_INTERRUPT_EXCEPTIONSTATE_H_ */
