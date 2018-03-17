/*
 * TestPidManager.cpp
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */


#include <io/Output.h>
#include <test/TestPidManager.h>

/*
 * TestPidManager.cpp
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */


#include <test/TestPidManager.h>

bool TestPidManager::clearAllKeepsInvalidAllocated()
{
	PidManager pidm;
	return pidm.isAllocated(INVALID_PID)==true;
}

bool TestPidManager::allocateReturnContinousPids()
{
	PidManager pidm;
	auto p1=pidm.allocate();
	auto p2=pidm.allocate();

	return (pidm.isAllocated(p1) && pidm.isAllocated(p2) && p1==1 && p2==2);
}

bool TestPidManager::allocateInvalidPidAlwaysFailed()
{
	PidManager pidm;
	auto pid=pidm.allocate(INVALID_PID);
	return pid==INVALID_PID;
}

bool TestPidManager::deallocatePidSuccessfully()
{
	PidManager pidm;
	auto p1=pidm.allocate();
	auto p2=pidm.allocate();
	bool res = (pidm.isAllocated(p1) && pidm.isAllocated(p2));
//	kout << res << "\n";
	pidm.deallocate(p1);
	pidm.deallocate(p2);
	res &= ( (!pidm.isAllocated(p1)) && (!pidm.isAllocated(p2) ));
//	kout << res << "\n";
	return res;
}



