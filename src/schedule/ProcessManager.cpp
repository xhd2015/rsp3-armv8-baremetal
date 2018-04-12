/*
 * ProcessManager.cpp
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#include <memory/MemoryManager.h>
#include <schedule/ProcessManager.h>
#include <asm_instructions.h>
#include <interrupt/InterruptHandler.h>

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


void     ProcessManager::scheduleNextProcess(uint64_t *savedRegsiers)
{
	auto cur = currentRunningProcess();

	auto nextReady = _statedProcessList[Process::READY].head();

	if(!nextReady)
	{
		if(cur) // 没有下一个就绪的，且有当前进程，则继续运行
		{
//			kout << "schedule with current continuing\n";
//			cur->data<true>().restoreContextAndExecute();
			return;// 直接从中断现场返回
		}else{ // 当前没有正在运行的进程，于是只能运行 idle进程(所谓idle进程并不是一个真正的进程，而是表示系统所处的状态：当前没有正在运行的进程， 只能等待某个进程被唤醒。)
			kout << "schedule with idle \n";

			// 进入idle的前提条件： RUNNING为空
			// 无就绪进程 --> 等待中断发生
			// 中断发生     --> 系统处于idle状态  --> 直接调度就绪的进程
			//                             若无就绪进程，则继续等待
			asm_wfe_loop();
		}
	}else{
		kout << "schedule with next ready process\n";
		intHandler.exitCurrent();// 这里是从中断而来的，不返回。
		if(cur) //需要执行切换动作
		{
			cur->data<true>().saveContext(savedRegsiers);
			changeProcessStatus(cur, Process::READY);
		}
		changeProcessStatus(nextReady, Process::RUNNING);
		nextReady->data<true>().restoreContextAndExecute();
	}
}

ProcessManager::ProcessLink*  ProcessManager::forkProcess(ProcessLink *origin)
{
	// 调用 COPY构造函数,隐式fork
	auto node = _statedProcessList[Process::Status::CREATED_INCOMPLETE].insertTail(origin->data<true>());
	if(node && node->data<true>().status()==Process::Status::CREATED)
	{
		changeProcessStatus(node, Process::CREATED_INCOMPLETE,Process::CREATED);
	}
	return node;
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
