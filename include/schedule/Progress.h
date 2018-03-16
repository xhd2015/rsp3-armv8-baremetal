/*
 * Progress.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESS_H_
#define INCLUDE_SCHEDULE_PROGRESS_H_

// 提供一个统一的view
// 系统层面的Progress，不是用户层面的Progress
class Progress{
public:
	enum Config{PAGE_SIZE = 4*1024,
		KERN_ARG_NUM = 4 * sizeof(uint64_t),
		STACK_L3_INDEX=508, STACK_L3_ENTRY_NUM=2,HEAP_L3_INDEX = 510,HEAP_L3_ENTRY_NUM = 2 };

private:
};


#endif /* INCLUDE_SCHEDULE_PROGRESS_H_ */
