/*
 * SDSectorReader.h
 *
 *  Created on: Apr 21, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SDSECTORREADER_H_
#define INCLUDE_IO_SDSECTORREADER_H_
#include <io/block/SectorReader.h>
#include <driver/sd/SDDriverV3.h>

class SDSectorReader
	:public SectorReader
{
public:
	SDSectorReader(SDDriverV3 & driver,size_t baseSec)
		:_driver(driver), _baseSec(baseSec){}
	virtual ~SDSectorReader()=default;

	virtual size_t read(size_t secIndex,void *dst,size_t maxNumSec) override;
	virtual size_t write(size_t secIndex,const void *src,size_t maxNumSec) override;
private:
	SDDriverV3 & _driver;
	size_t       _baseSec;
};



#endif /* INCLUDE_IO_SDSECTORREADER_H_ */
