/*
 * XilinxUARTPS.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */
#include <driver/uart/XilinxUARTPS.h>



XilinxUARTPS::XilinxUARTPS(void *base)
	:MemBasedRegReader(base),
	_control(reg<uint32_t,XUARTPS_CR>()),
	_status(reg<uint32_t,XUARTPS_SR>()),
	_data(reg<uint32_t,XUARTPS_FIFO>())
{}

//enable it
void XilinxUARTPS::init()
{
	// bit4=TX enable, bit2=RX enable
	_control = (_control & ~0x0000003CU)|bitMask<4>() |bitMask<2>();
}

void XilinxUARTPS::write(char ch)
{
	while(!writeable());
	_data=ch;
}

char XilinxUARTPS::readNonBlocked()const
{
	if(readable())
		return static_cast<char>(_data);
	return 0;
}

char XilinxUARTPS::readBlocked()const
{
	while(!readable());
	return static_cast<char>(_data);
}

