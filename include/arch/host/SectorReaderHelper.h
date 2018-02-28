/*
 * SectorReaderHelper.h
 *
 *  Created on: Jan 31, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_ARCH_HOST_SECTORREADERHELPER_H_
#define INCLUDE_ARCH_HOST_SECTORREADERHELPER_H_

#include <fstream>

class SectorReaderHelper{//we read it from file
public:
	~SectorReaderHelper();
	void setCurrentFile(const char *file);
	void invalidateCurrentFile();
	size_t read(size_t secIndex,void *dst,size_t maxNumSec);
	size_t write(size_t secIndex,const void *src,size_t maxNumSec);

private:
	std::fstream *fileStream {nullptr};

};

extern SectorReaderHelper sys_sectorReaderHelper;



#endif /* INCLUDE_ARCH_HOST_SECTORREADERHELPER_H_ */
