/*
 * BCM2836MailBox.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */


#include <driver/gpu/BCM2836MailBox.h>

int BCM2836MailBox::call(Request req)
{
	// 必须在低32位地址，以及低4位为0
	assert(reinterpret_cast<uint64_t>(_mbox) < UINT32_MAX && reinterpret_cast<uint64_t>(_mbox)%16==0 && req<=0xf);
	uint32_t u32Addr=static_cast<uint32_t>(reinterpret_cast<uint64_t>(&_mbox));
	// 等待可写
	while(!writeable());
	reg32(MBOX_WRITE) = u32Addr | (req&0xf);
	// 等待响应
	while(true)
	{
		// 等待读
		while(!readable());
		uint32_t r=reg32(MBOX_READ);
		// 是我们所发送的request
		if(static_cast<Request>(r & 0xF)==req && (r&~0xF)==u32Addr)
			return _mbox[1]==MBOX_RESPONSE;
	}
	return 0;
}

void BCM2836MailBox::setUARTClockRate(uint32_t freq)
{
	_mbox[0]=8*4;//message length
	_mbox[1]=MBOX_REQUEST;
	_mbox[2]=T_SETCLKRATE;// set clock rate
	_mbox[3]=12;
	_mbox[4]=8;
	_mbox[5]=2;   // UART clock
	_mbox[6]=freq;
	_mbox[7]=T_LAST;
	call(REQ_CH_PROP);
}

