/*
 * BitRange.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_BITRANGE_H_
#define INCLUDE_GENERIC_BITRANGE_H_
#include <def.h>
//template <size_t _lower,size_t _upper>
//class BitRange{
//	static_assert(_lower<=_upper,"");
//public:
//	static constexpr size_t lower=_lower;
//	static constexpr size_t upper=_upper;
//};

class BitRange{
public:
	BitRange(uint8_t lower,uint8_t upper)
		:_lower(lower),
		 _upper(upper)
	{}
	AS_MACRO uint8_t lower()const { return _lower;}
	AS_MACRO uint8_t upper()const { return _upper;}
private:
	uint8_t _lower;
	uint8_t _upper;
};


#endif /* INCLUDE_GENERIC_BITRANGE_H_ */
