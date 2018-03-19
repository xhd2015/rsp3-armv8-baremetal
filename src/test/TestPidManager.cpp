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


#include <test/test_base.h>
#include <test/TestPidManager.h>

void TestPidManager::run()
{
	kout << INFO << "start TestPidManager\n";
	TestPidManager test;
	RUN_TEST(test.clearAllKeepsInvalidAllocated);
	RUN_TEST(test.allocateInvalidPidAlwaysFailed);
	RUN_TEST(test.allocateReturnContinousPids);
	RUN_TEST(test.deallocatePidSuccessfully);
	kout << INFO << "end TestPidManager\n";
}
bool TestPidManager::clearAllKeepsInvalidAllocated()
{
	PidManager pidm;
	return pidm.isAllocated(PID_INVALID)==true;
}

bool TestPidManager::allocateReturnContinousPids()
{
	PidManager pidm;
	auto p1=pidm.allocate();
	auto p2=pidm.allocate();

	return (pidm.isAllocated(p1) && pidm.isAllocated(p2) && p2-p1==1);
}

bool TestPidManager::allocateInvalidPidAlwaysFailed()
{
	PidManager pidm;
	auto pid=pidm.allocate(PID_INVALID);
	return pid==PID_INVALID;
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



