/*
 * SDDefinitions.cpp
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */
#include <driver/sd/SDDefinitions.h>
uint32_t SDDefinitions::makeSendOpCondArg(uint32_t ocr,bool S18R,bool XPC)
{
	uint32_t res=0;
	setBits(res,0,23,ocr);//ocr[0:23]
	setBit(res,30,getBit(ocr,30));// HCS
	setBit(res,28,XPC);
	setBit(res,24,S18R);
	return res;
}



