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
#include <schedule/schedule_forward.h>
// 将PidManager从ProcessManager中，主要是考虑解耦的问题。
class PidManager{
public:
	// effective PID range [0,1023], needs 2^10/2^3=2^7bytes=128bytes
	enum { MASK_NUM = 128 };

	PidManager();
	bool isAllocated(Pid pid)const;
	Pid allocate();
	Pid allocate(Pid desiredPid);
	void    deallocate(Pid pid);
	void    clearAll();
private:
	AS_MACRO size_t indexOfMask(Pid pid)const
	{
		return pid/8;
	}
	AS_MACRO size_t bitIndexOfMask(Pid pid)const
	{
		return pid%8;
	}
	void setPidBit(Pid pid,uint8_t v);
	static bool    isReservedPid(Pid pid);
	void forceReservedPidPresetValue();
private:
	uint8_t _masks[MASK_NUM];
};

#ifndef _NOT_NEED_PidManager
extern PidManager pidManager;
#endif

#endif /* INCLUDE_SCHEDULE_PIDMANAGER_H_ */
