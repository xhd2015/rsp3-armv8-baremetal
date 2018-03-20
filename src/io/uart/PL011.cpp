/*
 * PL011.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#include <io/uart/PL011.h>


void PL011::init()
{
	reg<uint16_t,UARTIBRD>()=0x10;
	reg<uint16_t,UARTCR>() = 0xc301;
}
uint16_t PL011::readDataBlocked()const
{
	while(true)
	{
		auto status=_statusReg; // 必需使用一次性读，否则多次读其结果不统一
		// while busy or empty
		if( (status & bitMask<3>())==0 && //non-busy
			 (status & bitMask<4>())==0  //receive non-empty
				)
			return _readDataReg;
	}
}
uint16_t PL011::readDataNonBlocked()const
{
	auto status = _statusReg;
	if( (status & bitMask<3>())==0 && //non-busy
		 (status & bitMask<4>())==0  //receive non-empty
			)
		return _readDataReg;
	return 0xffff;
}



