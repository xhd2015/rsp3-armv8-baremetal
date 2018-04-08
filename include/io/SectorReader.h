/*
 * SectorReader.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SECTORREADER_H_
#define INCLUDE_IO_SECTORREADER_H_

#include <def.h>
// 多态,一个抽象的多态基类，不提供任何实现
class SectorReader{
public:
	virtual ~SectorReader()=default;
	virtual size_t read(size_t secIndex,void *dst,size_t maxNumSec) =0;
	virtual size_t write(size_t secIndex,const void *src,size_t maxNumSec) =0;
};



#endif /* INCLUDE_IO_SECTORREADER_H_ */
