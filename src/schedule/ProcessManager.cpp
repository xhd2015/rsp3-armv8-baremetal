/*
 * ProcessManager.cpp
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#include <memory/MemoryManager.h>
#include <schedule/ProcessManager.h>
#include <asm_instructions.h>

ProcessManager::ProcessManager()
{
	for(size_t i=0;i!=arrsizeof(_statedProcessList);++i)
	{
		new (&_statedProcessList[i]) ProcessList();
	}
}

ProcessManager::ProcessLink* ProcessManager::currentRunningProcess()
{
	return _statedProcessList[Process::RUNNING].head();
}

void ProcessManager::killProcess(ProcessLink* p)
{
	auto oldStatus = p->data<true>().status();
	p->data<true>().destroy();
	changeProcessStatus(p,oldStatus,Process::DESTROYED);
}


void     ProcessManager::scheduleNextProcess()
{
	auto cur = currentRunningProcess();

	auto nextReady = _statedProcessList[Process::READY].head();

	if(!nextReady)
	{
		if(cur) // 没有下一个就绪的
		{
			kout << "schedule with current continuing\n";
			asm_wfe_loop();
			return;
		}else{ // 当前没有正在运行的进程，于是只能运行 idle进程
			kout << "schedule with idle \n";
			asm_wfe_loop();
			return;
		}
	}else{
		kout << "schedule with next ready process\n";
		asm_wfe_loop();
//		if(cur) //需要执行切换动作
//			cur->saveContext();
//
//		nextReady->data<true>().restoreContext();
	}
}

void          ProcessManager::changeProcessStatus(ProcessLink *p, Process::Status oldStatus,Process::Status newStatus)
{
	if(oldStatus!=newStatus)
	{
		_statedProcessList[oldStatus].removeNode(p);
		_statedProcessList[newStatus].insertTail(p);
	}
	p->data<true>().status(newStatus);
}
void          ProcessManager::changeProcessStatus(ProcessLink *p, Process::Status newStatus)
{
	changeProcessStatus(p, p->data<true>().status(),newStatus);
}
