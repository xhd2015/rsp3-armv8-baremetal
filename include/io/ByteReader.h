/*
 * ByteReader.cpp
 *
 *  Created on: Apr 7, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_BYTEREADER_H_
#define INCLUDE_IO_BYTEREADER_H_

#include <data/forward_decl.h> // Vector String StringRef

// 多态
class ByteReader{
public:
	virtual ~ByteReader()=default;

	virtual String       read(size_t byteStart,size_t maxCount)=0;
	virtual size_t	     write(size_t byteStart,const StringRef &dataRef) =0;
	virtual size_t       read(size_t byteStart,void *buffer,size_t maxCount) =0;
	virtual size_t       write(size_t byteStart,const void *buffer,size_t maxCount)=0;
};



#endif /* INCLUDE_IO_BYTEREADER_H_ */
