/*
 * SDCardOperationCond.cpp
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */

#include <driver/sd/SDCardOperationCond.h>
#include <io/Output.h>

void SDCardOperationCond::dump()const
{
	kout << "SDCardOperationCond:"
		<< "_res0_0 = " << _res0_0 << ","
		<< "_res0_1 = " << _res0_1 << ","
		<< "_res0_forLowVoltage = " << _res0_forLowVoltage << ","
		<< "_res0_2 = " << _res0_2 << ","
		<< "_supportVoltage = " << _supportVoltage << ","
		<< "_switch1v8Accepted = " << _switch1v8Accepted << ","
		<< "_res0_3 = " << _res0_3 << ","
		<< "_UHS_IISupported = " << _UHS_IISupported << ","
		<< "_sdsc_or_sdhc_sdxc = " << _sdsc_or_sdhc_sdxc << ","
		<< "_powerUpDone = " << _powerUpDone
		<< "\n";
}
