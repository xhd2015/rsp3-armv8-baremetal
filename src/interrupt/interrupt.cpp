/*
 * interrupt.cpp
 *
 *  Created on: Apr 23, 2018
 *      Author: 13774
 */


#include <interrupt/exception_def.h>

void cpuEnableInterrupt(ExceptionType etp,bool en)
{
//	static_assert(etp!=ExceptionType::SYNC,"");
	auto daif=RegDAIF::read();
	switch(etp)
	{
	case ExceptionType::IRQ:
		daif.I=(!en);break;
	case ExceptionType::FIQ:
		daif.F=(!en);break;
	case ExceptionType::DEBUG:
		daif.D=(!en);break;
	case ExceptionType::SError:
		daif.A=(!en);break;
	default:
		break;
	}
	daif.write();
}


