/*
 * PL011.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#include <io/uart/PL011.h>
#include <generic_util.h>


void PL011::init()
{
	reg<uint16_t,UARTIBRD>()=0x10;//配置波特率
//	reg<uint16_t,UARTCR>() = 0xc301;
	reg<uint16_t,UARTCR>() = bitOnes<0,8,9,15,14>();// 启用0,8,9位，这是关键的
	// 屏蔽所有的中断
	reg16<UARTIMSC>() = 0;//lowerMaskBits(11); // 高5位res0
	readInterruptLevel(L_1of8);
}
uint16_t PL011::readDataBlocked()const
{
	while(bitsAnySet<3,4>(reg16<UARTFR>())) //still busy or still recive empty
		;
	return reg16<UARTDR>();
}
uint16_t PL011::readDataNonBlocked()const
{
	if(bitsAnySet<3,4>(reg16<UARTFR>()))
		return 0xffff;
	return reg16<UARTDR>();
}



