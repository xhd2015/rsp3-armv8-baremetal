/*
 * ByteReader.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_IO_BYTEREADER_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_IO_BYTEREADER_H_

#include <io/ByteReader.h>
#include <tuple>
#include <cstring>



// 读一个扇区，然后将其内容的需求部分复制到需要的扇区

// 读取剩余的扇区到中间部分

// 实际上，分配的空间可以更少，只需要一个扇区的空间
template <class T>
Vector<T> ByteReader::read(size_t byteStart,size_t maxCount)
{
	Vector<T> vec(maxCount);
	char  * byteData = reinterpret_cast<char*>(vec.getData());
	size_t sizeStart = adjustOneSecForReadOrWrite(byteStart, true, nullptr, byteData);
	size_t endByte = byteStart +  maxCount * sizeof(T);
	size_t sizeMiddle = maxCount * sizeof(T) - sizeStart - (endByte % getSectorSize());
	size_t sizeEnd = adjustOneSecForReadOrWrite(endByte, false, nullptr, byteData + sizeStart + sizeMiddle);
	(void)sizeEnd;

	if(sizeMiddle>0)
		sreader.read( (byteStart + sizeStart)/getSectorSize(), byteData + sizeStart, sizeMiddle / getSectorSize());

	return std::move(vec);
}

template <class T>
void ByteReader::write(size_t byteStart,const VectorRef<T> &dataRef)
{
	const char * byteData = reinterpret_cast<const char*>(dataRef.getData());
	size_t  sizeStart = adjustOneSecForReadOrWrite(byteStart, true, byteData, nullptr);
	size_t  sizeCount = dataRef.getLen() * sizeof(T);
	size_t  endByte = byteStart + sizeCount;
	size_t  sizeMiddle = sizeCount - sizeStart - (endByte % getSectorSize());
	size_t  sizeEnd = adjustOneSecForReadOrWrite(endByte, false, byteData + sizeStart + sizeMiddle, nullptr);
	(void)sizeEnd;

	if(sizeMiddle>0)
		sreader.write((byteStart + sizeStart)/getSectorSize(),byteData + sizeStart, sizeMiddle/getSectorSize());
}


#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_IO_BYTEREADER_H_ */
