/*
 * BitSet.h
 *
 *  Created on: Mar 22, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_BITSET_H_
#define INCLUDE_GENERIC_BITSET_H_
#include <def.h>
static constexpr size_t numBytes(size_t bitLength)
{
	return (bitLength%8==0?bitLength/8 : (bitLength/8+1));
}

template <size_t bitLength>
class BitSet{
public:

	BitSet value(size_t lower,size_t upper)const;
//	BitSet value(size_t lower,size_t upper,)


private:
	uint8_t _data[numBytes(bitLength)];
};


#endif /* INCLUDE_GENERIC_BITSET_H_ */
