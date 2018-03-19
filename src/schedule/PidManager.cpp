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

bool PidManager::isAllocated(Pid pid)const
{
	return  (getBit(_masks[indexOfMask(pid)], bitIndexOfMask(pid)) == 1);
}
Pid PidManager::allocate()
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
	return PID_INVALID;
}
Pid PidManager::allocate(Pid desiredPid)
{
	if(isReservedPid(desiredPid))
		return PID_INVALID;
	auto i=indexOfMask(desiredPid);
	auto j=bitIndexOfMask(desiredPid);
	if(getBit(_masks[i],j)==1)
		return PID_INVALID;
	setBit(_masks[i],j,1);
	return desiredPid;
}
void    PidManager::deallocate(Pid pid)
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

bool    PidManager::isReservedPid(Pid pid)
{
	return (pid==PID_INVALID || pid==PID_PARENT || pid==PID_CURRENT);
}

void PidManager::setPidBit(Pid pid,uint8_t v)
{
	setBit(_masks[indexOfMask(pid)], bitIndexOfMask(pid), v);
}
void PidManager::forceReservedPidPresetValue()
{
	setPidBit(PID_INVALID, 1);
	setPidBit(PID_PARENT, 1);
	setPidBit(PID_CURRENT, 1);
}

