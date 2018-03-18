/*
 * TestPidManager.h
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEST_TESTPIDMANAGER_H_
#define INCLUDE_TEST_TESTPIDMANAGER_H_


#include <schedule/PidManager.h>

class TestPidManager{
public:
	static void run();
	bool clearAllKeepsInvalidAllocated();
	bool allocateReturnContinousPids();
	bool allocateInvalidPidAlwaysFailed();
	bool deallocatePidSuccessfully();
};



#endif /* INCLUDE_TEST_TESTPIDMANAGER_H_ */
