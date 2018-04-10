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
	_generalRegisters(nullptr),
	_spsr(),
	_elr(),
	_esr(),
	_far()
{
	reportError("should never be called");
}

ExceptionState::ExceptionState(uint64_t * savedRegs,ExceptionType type,ExceptionOrigin origin)
	:_type(type),
	 _origin(origin),
	_generalRegisters(savedRegs),
	_spsr(),
	_elr(),
	_esr(),
	_far()
{
	_spsr.update();
	_elr.update();
	_esr.update();
	_far.update();
}
void ExceptionState::restore()
{
	_spsr.write();
	_elr.write();
}


