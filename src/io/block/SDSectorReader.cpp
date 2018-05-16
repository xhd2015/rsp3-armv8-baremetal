/*
 * SDSectorReader.cpp
 *
 *  Created on: Apr 21, 2018
 *      Author: 13774
 */

#ifndef SRC_IO_SDSECTORREADER_CPP_
#define SRC_IO_SDSECTORREADER_CPP_


#include <io/block/SDSectorReader.h>
#include <generic/error.h>


size_t SDSectorReader::read(size_t secIndex,void *dst,size_t maxNumSec)
{
	assert(_baseSec + secIndex<=UINT32_MAX);
	return _driver.transferBlocks(static_cast<uint32_t>(_baseSec + secIndex),
			maxNumSec,dst,nullptr);

}
size_t SDSectorReader::write(size_t secIndex,const void *src,size_t maxNumSec)
{
	assert(_baseSec + secIndex<=UINT32_MAX);
	return _driver.transferBlocks(static_cast<uint32_t>(_baseSec + secIndex),
			maxNumSec,nullptr,src);
}

#endif /* SRC_IO_SDSECTORREADER_CPP_ */
