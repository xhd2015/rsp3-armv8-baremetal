/*
 * OffsetChunk.h
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORY_OFFSETCHUNK_H_
#define INCLUDE_MEMORY_OFFSETCHUNK_H_
#include <def.h>
class OffsetChunk{
public:
	enum { OFFSET_BITS = 7, END_BITS=1, };
	enum {MAX_OFFSET = (1ul<<OFFSET_BITS), };
	AS_MACRO OffsetChunk(uint8_t chunkOffset,bool end)
		:_chunkOffset(chunkOffset),
		 _end(end)
	{}
	AS_MACRO bool validChunk()const { return (!_end && _chunkOffset==0);}
	AS_MACRO bool endChunk()const { return _end;}
	AS_MACRO bool offsetChunk()const { return (!_end && _chunkOffset!=0);}
	AS_MACRO uint8_t chunkOffset() const {return _chunkOffset;}
	AS_MACRO void chunkOffset(uint8_t chunkOffset){_chunkOffset = chunkOffset;}
	AS_MACRO void end(bool end){		_end = end;	}
private:
	uint8_t  _chunkOffset:OFFSET_BITS;
	uint8_t  _end        :END_BITS;

}__attribute__((packed));


static_assert(sizeof(OffsetChunk)==1,"error OffsetChunk size!=1");


#endif /* INCLUDE_MEMORY_OFFSETCHUNK_H_ */
