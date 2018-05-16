/*
 * VirtioSectorReader.cpp
 *
 *  Created on: Apr 7, 2018
 *      Author: 13774
 */

#include <io/block/VirtioSectorReader.h>
VirtioSectorReader::VirtioSectorReader(VirtioBlockDriver & driver)
	:_blkDriver(driver)
{}

// virtio不允许0长度
size_t VirtioSectorReader::read(size_t secIndex,void *dst,size_t maxNumSec)
{
	if(maxNumSec==0)
		return 0;
	return _blkDriver.readSector(secIndex, maxNumSec, dst);
}
size_t VirtioSectorReader::write(size_t secIndex,const void *src,size_t maxNumSec)
{
	if(maxNumSec==0)
		return 0;
	return _blkDriver.writeSector(secIndex, maxNumSec, src);
}
