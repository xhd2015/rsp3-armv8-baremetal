/*
 * VirtioIOSectorReader.h
 *
 *  Created on: Apr 7, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_VIRTIOSECTORREADER_H_
#define INCLUDE_IO_VIRTIOSECTORREADER_H_
#include <driver/virtio/VirtioBlockDriver.h>
#include <io/block/SectorReader.h>

class VirtioSectorReader
	:public SectorReader
{
public:
	VirtioSectorReader(VirtioBlockDriver & driver);
	virtual ~VirtioSectorReader()=default;

	virtual size_t read(size_t secIndex,void *dst,size_t maxNumSec) override;
	virtual size_t write(size_t secIndex,const void *src,size_t maxNumSec) override;

	AS_MACRO VirtioBlockDriver & getBlockDriver() { return _blkDriver;}
	AS_MACRO const VirtioBlockDriver & getBlockDriver() const { return _blkDriver;}
private:
	VirtioBlockDriver & _blkDriver;
};


#endif /* INCLUDE_IO_VIRTIOSECTORREADER_H_ */
