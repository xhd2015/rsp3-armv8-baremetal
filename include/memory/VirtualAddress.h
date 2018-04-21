/*
 * VirtualAddress.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORY_VIRTUALADDRESS_H_
#define INCLUDE_MEMORY_VIRTUALADDRESS_H_

#include <def.h>
// [0]: 47-39  [1]:38-30   [2]:29-21   [3]:20-12
// lo(i) = (3-i)*9 + 12
// lo(i)+8, lo(i)
// right shift  =  12+(3-i)*9
class VirtualAddress{
public:
	struct SegmentedAddress{
			uint64_t offset:12;
			uint64_t index0:9;
			uint64_t index1:9;
			uint64_t index2:9;
			uint64_t index3:9;
			uint64_t upperBits:16;
	};
public:
	VirtualAddress(uint8_t addrLen=48);
	VirtualAddress(uint64_t vaddr,uint8_t addrLen=48);
	VirtualAddress(const VirtualAddress &va)=default;
	VirtualAddress &operator=(const VirtualAddress &va)=default;

	// which from 0-4
	VirtualAddress& index(uint8_t which,uint32_t val);

	// return  UINT32_MAX means INVALID
	uint32_t   index(uint8_t which)const;

	// offset
	VirtualAddress& offset(uint64_t off);
	uint64_t   offset()const;

	VirtualAddress&  addrLen(uint8_t len);
	uint8_t    addrLen()const;

	VirtualAddress&  addr(uint64_t addr);
	uint64_t addr()const;

	// 0=TTBR0, 1=TTBR1
	VirtualAddress & ttbrSel(int i);
	int  ttbrSel()const;

	bool valid()const;
	uint8_t initialLevel()const;
	bool    hasLevel(uint8_t which)const;


private:
	uint8_t rightShiftBits(uint8_t which)const;
	uint8_t minimalLevelLength(uint8_t which)const;
	// 将来可能扩展到16KB,64Kb
	uint64_t  levelIndexMask()const;



private:
	union{
		uint64_t  _addr;
		SegmentedAddress _segAddr;
	};
	uint8_t   _addrLen;// 地址长度
	bool 	  _hasTag;

};

#endif /* INCLUDE_MEMORY_VIRTUALADDRESS_H_ */
