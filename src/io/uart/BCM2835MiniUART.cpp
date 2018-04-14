/*
 * BCM2835MiniUART.cpp
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#include <io/uart/BCM2835MiniUART.h>

int BCM2835MiniUART::init()
{
	enable(true);
	enableReceive(true);
	enableSend(true);
	enableReceiveInterrupt(false);
	enableSendInterrupt(false);
	return 0;
}
