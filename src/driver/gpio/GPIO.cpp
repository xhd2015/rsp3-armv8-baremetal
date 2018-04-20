/*
 * GPIO.cpp
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */


#include <driver/gpio/GPIO.h>
#include <generic_util.h>
#include <io/Output.h>
#include <io/IntegerFormatter.h>

void GPIO::signalModify(uint32_t pin,PUD initPUD)
{
	assert(pin <= MAX_PIN);
	auto grp = pin /32;
	auto offset = pin%32;

	// pull down/up
	reg32(GPPUD)= initPUD;
	waitSignalDone();
	//clock
	reg32(GPUDCLKx + grp*4) = (1u<<offset);
	waitSignalDone();
	// remove clock
	reg32(GPPUD) = P_OFF;
	reg32(GPUDCLKx + grp*4) = 0;

}
void GPIO::selectAltFunction(uint32_t pin, ALT alt)
{
	kout << INFO << "GPIO select pin "<< pin << " to ALT " << Hex(alt) << "\n";
	selectAltFunctionNoLog(pin, alt);
}

void GPIO::selectAltFunctionNoLog(uint32_t pin, ALT alt)
{
	assert(pin <= MAX_PIN);
	auto grp = pin/SEL_OF_EACH_GROUP;
	auto offset=pin%SEL_OF_EACH_GROUP;
	setBits(reg32(GPFSELx + grp*4),offset*BITS_PER_SEL,(offset+1)*BITS_PER_SEL-1,alt);
	signalModify(pin,P_OFF);
}

