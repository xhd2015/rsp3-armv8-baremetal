/*
 * PidManager.cpp
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */
#include <io/Output.h>
#include <schedule/PidManager.h>

PidManager::PidManager()
{
	clearAll();
}

bool PidManager::isAllocated(PidType pid)const
{
	return  (getBit(_masks[indexOfMask(pid)], bitIndexOfMask(pid)) == 1);
}
PidType PidManager::allocate()
{
	for(size_t i=0;i!=MASK_NUM;++i)
	{
		if(_masks[i] != 0xff )
		{
			auto mask=_masks[i];
			size_t  j=0;
			while( (mask & 1)!=0 ) // 找到第一个未分配的位置
			{
				mask = (mask >> 1);
				++j;
			}
			setBit(_masks[i],j,1);
			return i*8 + j;
		}
	}
	return INVALID_PID;
}
PidType PidManager::allocate(PidType desiredPid)
{
	if(isReservedPid(desiredPid))
		return INVALID_PID;
	auto i=indexOfMask(desiredPid);
	auto j=bitIndexOfMask(desiredPid);
	if(getBit(_masks[i],j)==1)
		return INVALID_PID;
	setBit(_masks[i],j,1);
	return desiredPid;
}
void    PidManager::deallocate(PidType pid)
{
	if(isReservedPid(pid))
		return;
	auto i=indexOfMask(pid);
	auto j=bitIndexOfMask(pid);
	if(getBit(_masks[i],j)==1)
	{
		setBit(_masks[i],j,0);
	}
}
void    PidManager::clearAll()
{
	std::memset(_masks, 0, MASK_NUM);
	forceReservedPidPresetValue();
}

bool    PidManager::isReservedPid(PidType pid)
{
	return (pid==INVALID_PID || pid==PARENT_PID || pid==CURRENT_PID);
}

void PidManager::setPidBit(PidType pid,uint8_t v)
{
	setBit(_masks[indexOfMask(pid)], bitIndexOfMask(pid), v);
}
void PidManager::forceReservedPidPresetValue()
{
	setPidBit(INVALID_PID, 1);
	setPidBit(PARENT_PID, 1);
	setPidBit(CURRENT_PID, 1);
}

