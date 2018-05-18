/*
 * ExceptionState.cpp
 *
 *  Created on: Apr 11, 2018
 *      Author: 13774
 */

#include <interrupt/ExceptionState.h>
#include <generic/error.h>

ExceptionState::ExceptionState()
	:_type(static_cast<ExceptionType>(0)),
	 _origin(static_cast<ExceptionOrigin>(0)),
	 _currentEL(static_cast<ExceptionLevel>(RegCurrentEL::read().EL)),
	_generalRegisters(nullptr),
	_spsr_elx(0),
	_elr_elx(0),
	_esr_elx(0),
	_far_elx(0)
{
	reportError("should never be called");
}

ExceptionState::ExceptionState(uint64_t * savedRegs,ExceptionType type,ExceptionOrigin origin)
	:_type(type),
	 _origin(origin),
	 _currentEL(static_cast<ExceptionLevel>(RegCurrentEL::read().EL)),
	_generalRegisters(savedRegs),
	_spsr_elx(0),
	_elr_elx(0),
	_esr_elx(0),
	_far_elx(0)
{
	update();
}
void ExceptionState::update()
{
#define __UPDATE(el) \
	_spsr_elx = RegSPSR_EL##el::read().get(); \
	_elr_elx = RegELR_EL##el::read().get(); \
	_esr_elx = RegESR_EL##el::read().get(); \
	_far_elx = RegFAR_EL##el::read().get()

	switch(_currentEL)
	{
	case ExceptionLevel::EL1:
		__UPDATE(1);
		break;
	case ExceptionLevel::EL2:
		__UPDATE(2);
		break;
	case ExceptionLevel::EL3:
		__UPDATE(3);
		break;
	default:;
	}
#undef __UPDATE
}
void ExceptionState::restore()
{
#define __RESTORE(el) \
		RegSPSR_EL##el::make(_spsr_elx).write(); \
		RegELR_EL##el::make(_elr_elx).write()
	switch(_currentEL)
	{
	case ExceptionLevel::EL1:
		__RESTORE(1);
		break;
	case ExceptionLevel::EL2:
		__RESTORE(2);
		break;
	case ExceptionLevel::EL3:
		__RESTORE(3);
		break;
	default:;
	}
#undef __RESTORE
}


