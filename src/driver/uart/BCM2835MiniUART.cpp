/*
 * BCM2835MiniUART.cpp
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#include <driver/uart/BCM2835MiniUART.h>

int BCM2835MiniUART::init()
{
	enable(true);
	enableReceive(true);//reset to true
	enableSend(true); // reset to true
	dataSize<8>();

	enableReceiveInterrupt(false);
	enableSendInterrupt(false);

	clearReceiveFIFO();
	clearSendFIFO();
	baudrate(270);    // 115200 baud
	return 0;
}
