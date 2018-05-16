/*
 * VirtioDriver.cpp
 *
 *  Created on: Mar 25, 2018
 *      Author: 13774
 */


#include <driver/virtio/VirtioDriver.h>
#include <io/Output.h>
#include <generic_util.h>

void VirtioDriver::init()
{
	_version = reg32<V2_Version>();
	_deviceID = reg32<V2_DeviceID>();

	// 设备不存在，所以初始化无法继续下去
	if(_deviceID==res_invalid)
	{
		return ;
	}

	if(_version != VERSION_LEGACY)
	{
		kout << FATAL << "currently not supporting virtio of no VERION_LEGACY\n";
		return;
	}

	// VERSION_LEGACY, step 5,6 are omitted
	// 1.reset, write 0 to status
	reg8<V1_Status>()=0;

	// 2. set acknowledge, know existence
	setBit(reg8<V1_Status>(),S_ACKNOWLEDGE,1);

	// 3.set DRIVER bit, know how  to driver
	setBit(reg8<V1_Status>(),S_DRIVER,1);


	// 4. set feature bits
//	(void)reg32<V1_HostFeatures>();// we may change it later on
	reg32<V1_HostFeaturesSel>()=0;
	reg32<V1_GuestFeatures>()=reg32<V1_HostFeatures>();

	// 5. omitted
	// 6. omiteed

	// 7. deviceid specific setup

	// 8.set DRIVER_OK
	setBit(reg8<V1_Status>(),S_DRIVER_OK,1);

	// set invalid
	reg32<V1_QueuePFN>()=0;


}

