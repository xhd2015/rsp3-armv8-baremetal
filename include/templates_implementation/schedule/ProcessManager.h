/*
 * ProcessManager.h
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_SCHEDULE_PROCESSMANAGER_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_SCHEDULE_PROCESSMANAGER_H_

#include <schedule/ProcessManager.h>

template <class ... Args>
ProcessManager::ProcessLink*   ProcessManager::createNewProcess(Args && ... initArgs)
{
	auto node = _statedProcessList[Process::CREATED_INCOMPLETE].insertTail();
	if(node)
	{
		int initState = node->data<true>().init(std::forward<Args>(initArgs)...);
		(void)initState;
		if(initState==0)
			changeProcessStatus(node, Process::CREATED_INCOMPLETE,Process::CREATED);
	}
	return node;
}

#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_SCHEDULE_PROCESSMANAGER_H_ */
