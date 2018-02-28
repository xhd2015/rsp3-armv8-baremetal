/*
 * SectorReader.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SECTORREADER_H_
#define INCLUDE_IO_SECTORREADER_H_

#include <def.h>

class SectorReader{
public:
	size_t read(size_t secIndex,void *dst,size_t maxNumSec);
	size_t write(size_t secIndex,const void *src,size_t maxNumSec);
};



#endif /* INCLUDE_IO_SECTORREADER_H_ */
