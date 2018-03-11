/*
 * ByteReader.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_BYTEREADER_H_
#define INCLUDE_BYTEREADER_H_

#include <io/SectorReader.h>
#include <memory/MemoryManager.h>
#include <data_structures/Vector.h>
#include <data_structures/VectorRef.h>
#include <utility>

class ByteReader{
public:
	ByteReader(SectorReader &sreader);
	ByteReader(const ByteReader &)=delete;
	ByteReader & operator=(const ByteReader &)=delete;
	~ByteReader();
	/**
	 * return the adjusted byte count;
	 */
	size_t 		adjustOneSecForReadOrWrite(size_t byteStartOrEnd,bool isStartOrEnd,const char *src,char *dst);
	template <class T>
	Vector<T> read(size_t start,size_t maxLen);
	template <class T>
	void	 write(size_t start,const VectorRef<T> &dataRef);
	size_t   getSectorSize()const;

private:
	/**
	 * returns good or bad(sector read is success or failed)
	 */
	bool     readSectorToBuffer(size_t sectorIndex);
	bool     writeSectorFromBuffer(size_t sectorIndex);

	void			ensureSectorBuffer();

private:
	SectorReader &sreader;
	char		 *buffer;

};

#include <templates_implementation/io/ByteReader.h>



#endif /* INCLUDE_BYTEREADER_H_ */
