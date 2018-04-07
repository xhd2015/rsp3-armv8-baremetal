/*
 * VirtualAddress.cpp
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */


#include <generic_util.h>


#include <memory/VirtualAddress.h>
#include <memory/VirtualAddress.h>

VirtualAddress::VirtualAddress(uint8_t addrLen)
	:_addr(0),_addrLen(addrLen),_hasTag(false)
{
}

VirtualAddress::VirtualAddress(uint64_t vaddr,uint8_t addrLen)
	:_addr(vaddr), _addrLen(addrLen),_hasTag(false)
{
}

VirtualAddress& VirtualAddress::index(uint8_t which,uint32_t val)
{
	auto initLevel = initialLevel();
	if(which < initLevel ) // 不存在这个级别
		return *this;
	uint8_t lowerBound = 12 + (3-which)*9;
	uint8_t upperBound = lowerBound + 8;//正常情况下9位
	if(which==initLevel)// 更少的位
	{
		// example:_addrLen=40bits, upperBound should be lowerBound.
		upperBound = lowerBound + (_addrLen-rightShiftBits(which))-1;
	}
	setBits(_addr, lowerBound, upperBound,val);
	return *this;
}


uint32_t VirtualAddress::index(uint8_t which) const
{
	auto initLevel = initialLevel();
	if(which < initLevel ) // 不存在这个级别
		return UINT32_MAX;
	uint8_t lowerBound = 12 + (3-which)*9;
	uint8_t upperBound = lowerBound + 8;//正常情况下9位
	if(which==initLevel)// 更少的位
	{
		// example:_addrLen=40bits, upperBound should be lowerBound.
		upperBound = lowerBound + (_addrLen-rightShiftBits(which))-1;
	}
	return getBits(_addr, lowerBound, upperBound);
}
VirtualAddress& VirtualAddress::offset(uint64_t off)
{
	setBits(_addr, 0, 11, off);
	return *this;
}
uint64_t   VirtualAddress::offset()const
{
	return getBits(_addr,0,11);
}

VirtualAddress& VirtualAddress::addrLen(uint8_t len)
{
	_addrLen = len;
	return *this;
}

uint8_t VirtualAddress::addrLen() const
{
	return _addrLen;
}

VirtualAddress& VirtualAddress::addr(uint64_t addr)
{
	_addr = addr;
	return *this;
}

uint64_t VirtualAddress::addr() const
{
	return _addr;
}

int VirtualAddress::ttbrSel()const
{
	// _addr[55]==1, using ttbr1, else using ttbr0 (if the address is valid)
	return ( (_addr >> 55) & 1);
}
VirtualAddress & VirtualAddress::ttbrSel(int i)
{
	if(i==1)
		setBits(_addr, _addrLen, 63, HEX64(ffff,ffff,ffff,ffff));
	else if(i==0)
		setBits(_addr, _addrLen, 63, HEX64(0000,0000,0000,0000));
	return *this;
}

bool VirtualAddress::valid()const
{
	uint64_t hi = ( _addr >> _addrLen); // == 0x...000 or == 0xffff
	return ( hi == 0 || hi==lowerMaskBits(64 - _addrLen));
}
uint8_t VirtualAddress::initialLevel()const
{
	// < 13位  无效
	// 13位,21位: 3   1-9  0-8
	// 22位,30位: 2   10-18 9-17
	// 31位,39位: 1
	// 40位,48位: 0
	// > 48位 无效（最多4级)
	if(_addrLen < 13)
		return UINT8_MAX;
	auto tmp = (_addrLen-13)/9;
	if(tmp > 3)
		return UINT8_MAX;
	return 3-tmp;
}

bool    VirtualAddress::hasLevel(uint8_t which)const
{
	return which >= initialLevel();
}

uint8_t VirtualAddress::rightShiftBits(uint8_t which)const
{
	return 12 + (3-which) * 9;
}

uint64_t  VirtualAddress::levelIndexMask()const
{
	return 0x1ff;
}

