/*
 * PidManager.h
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PIDMANAGER_H_
#define INCLUDE_SCHEDULE_PIDMANAGER_H_

#include <def.h>
#include <memory/MemoryManager.h>
#include <generic_util.h>
#include <cstring>

using PidType = uint16_t;
// pid的前面几项保留为特殊使用
constexpr PidType INVALID_PID = 0;// INVALID_PID总是已分配的
constexpr PidType CURRENT_PID = 1 ; // 已分配，总是指向当前进程的PID
constexpr PidType PARENT_PID = 2;  // 表示父进程

class PidManager{
public:
	// effective PID range [0,1023], needs 2^10/2^3=2^7bytes=128bytes
	enum { MASK_NUM = 128 };

	PidManager();
	bool isAllocated(PidType pid)const;
	PidType allocate();
	PidType allocate(PidType desiredPid);
	void    deallocate(PidType pid);
	void    clearAll();
private:
	AS_MACRO size_t indexOfMask(PidType pid)const
	{
		return pid/8;
	}
	AS_MACRO size_t bitIndexOfMask(PidType pid)const
	{
		return pid%8;
	}
	void setPidBit(PidType pid,uint8_t v);
	static bool    isReservedPid(PidType pid);
	void forceReservedPidPresetValue();
private:
	uint8_t _masks[MASK_NUM];
};

extern PidManager pidManager;

#endif /* INCLUDE_SCHEDULE_PIDMANAGER_H_ */
