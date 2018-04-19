/*
 * SDDefinitions.cpp
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */
#include <driver/sd/SDDefinitions.h>

uint32_t SDDefinitions::makeACMD41Arg(uint32_t voltageWindow,bool hcs,bool S18R,bool XPC)
{
	uint32_t res=0;
	setBits(res,0,23,voltageWindow);
	setBit(res,30,hcs);// HCS
	setBit(res,28,XPC);
	setBit(res,24,S18R);
	return res;
}



