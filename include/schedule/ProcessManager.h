/*
 * ProgressManager.h
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESSMANAGER_H_
#define INCLUDE_SCHEDULE_PROGRESSMANAGER_H_

#include <schedule/Process.h>

class ProcessManager{
public:

	// 如果是单核的，则某一时刻只有一个PID在运行
	Process* currentRunningProcess();

	void     killProcess(Process *p);
private:
	// 调度队列
	LinkedList<Process> _processQueue;
};


extern ProcessManager processManager;


#endif /* INCLUDE_SCHEDULE_PROCESSMANAGER_H_ */
