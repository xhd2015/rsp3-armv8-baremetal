/*
 * BitRange.h
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_GENERIC_BITS_BITRANGE_H_
#define INCLUDE_GENERIC_BITS_BITRANGE_H_
#include <def.h>
/**
 *  usage: BitRange<0,3>=10;
 */
//template <size_t lower,size_t upper=lower, bool valid=(lower<=upper)>
//class BitRange{
//public:
//	static constexpr size_t lowerBound=lower;
//	static constexpr size_t upperBound=upper;
//};
//
//template <size_t lower,size_t upper>
//class BitRange<lower,upper,false>{
//	static_assert(false,"invalid range\n");
//};

class _BitRange{
public:
	_BitRange(size_t lowerBound,size_t upperBound)
		:lowerBound(lowerBound),
		 upperBound(upperBound),
		 isResValue(false),
		 resValue(0)
	{}
	_BitRange(size_t lowerBound,size_t upperBound,size_t resValue)
		:lowerBound(lowerBound),
		 upperBound(upperBound),
		 isResValue(true),
		 resValue(resValue)
	{}


	size_t lowerBound;
	size_t upperBound;
	bool   isResValue;
	size_t resValue;
};


class Uses{
public:
	enum{
		EnableGrp1,EnableGrp1A,RES0_0,ARE,RES0_1,DS,E1NWF,RES0_2,RWP
	};
//	static constexpr _BitRange ranges[] = {
//			{0,0},
//			{1,1},
//			{
//	};
};





#endif /* INCLUDE_GENERIC_BITS_BITRANGE_H_ */
