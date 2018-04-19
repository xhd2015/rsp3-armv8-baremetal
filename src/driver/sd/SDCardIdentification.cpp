/*
 * SDCardIdentification.cpp
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */
#include <driver/sd/SDCardIdentification.h>
#include <io/Output.h>
void SDCardIdentification::dump()const
{
	kout << "SDCardIdentification:"
	<< "_res1 = " << _res1 << ","
	<< "_crc7 = " << _crc7 << ","
	<< "_manufacturingData = " << _manufacturingData << ","
	<< "_res0 = " << _res0 << ","
	<< "_productSerialNumber = " << _productSerialNumber << ","
	<< "_productRevision = " << _productRevision << ","
	<< "_productName = " << _productName << ","
	<< "_oemID = " << _oemID << ","
	<< "_manufacturerID = " << _manufacturerID
	<< "\n";
}



