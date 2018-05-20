/*
 * ProcessManager.cpp
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#include <memory/MemoryManager.h>
#include <schedule/ProcessManager.h>
#include <asm_instructions.h>
#include <runtime_def.h>

ProcessManager::ProcessManager()
	:_runningProcess(nullptr),
	 _ready(),
	 _blocked(),
	 _destroyed()
{
}


ProcessManager::ProcessLink* ProcessManager::findProcess(Process::Status status,Pid pid)
{
	auto list=processList(status);
	if(list)
	{
		auto p=list->head();
		while(p && p->data<true>().pid()!=pid)
			p=p->next();
		if(p)
			return p;
	}
	return nullptr;
}
ProcessManager::ProcessLink* ProcessManager::findAliveProcess(Pid pid)
{
	if(pid==PID_CURRENT)
		return currentRunningProcess();
	else if(pid==PID_PARENT || pid==PID_INVALID)
		return nullptr;
	auto p=findProcess(Process::READY, pid);
	if(!p)
		p=findProcess(Process::BLOCKED, pid);
	return p;

}
// FIXME killProcess应当适时清除DESTROYED的进程
void ProcessManager::killProcess(ProcessLink* p)
{
	auto status=p->data<true>().status();//old status
	p->data<true>().~Process();
	changeProcessStatus(p,status,Process::DESTROYED);
}


void     ProcessManager::scheduleNextProcess(uint64_t *savedRegsiers,Process::Status curStatus)
{
	assert(curStatus!=Process::RUNNING);
	auto cur = currentRunningProcess();
	auto next = nextReadyProcess();

	// 进入idle的前提条件： RUNNING为空
	// 无就绪进程 --> 等待中断发生 wfi
	// 中断发生     --> 系统处于idle状态  --> 直接调度就绪的进程
	//                             若无就绪进程，则继续等待
	// idle进程状态：没有任何就绪进程和正在运行的进程
	//   退出idle的可能： 输入中断-->唤醒某个进程
	//				     持续检查READY队列，直到有为止
	//  因此，idle应当： 只允许输入中断，允许IRQ中断，等待100us，禁用IRQ中断，检查READY队列
	//  因为ProcessManager应当是通用的，所有只允许输入中断这件事情应当由中断处理器完成。

	if(!next)
	{
		if(cur) // 没有下一个就绪的，且有当前进程，则继续运行
		{
//			kout << "schedule with current continuing\n";
			return;// 直接从中断现场返回
		}else{ // 当前没有正在运行的进程，于是只能运行 idle进程
			// (所谓idle进程并不是一个真正的进程，而是表示系统所处的状态：当前没有正在运行的进程， 只能等待某个进程被唤醒。)
//			kout << INFO << "schedule with idle \n";
			// 在此情况下，为了快速响应，sysTimerTick变为10ms
//			sysTimerTick = 10;

			// idle状态
			intHandler.waitReadyProcess();
			// 退出idle状态
			next = nextReadyProcess();
			changeProcessStatus(next, Process::RUNNING);
			next->data<true>().restoreContextAndExecute();
		}
	}else{
//		kout << "schedule with next ready process\n";
		if(cur) //需要执行切换动作
		{
			cur->data<true>().saveContext(savedRegsiers);
			changeProcessStatus(cur, curStatus);
		}
		changeProcessStatus(next, Process::RUNNING);
		next->data<true>().restoreContextAndExecute();
	}
}
bool     ProcessManager::scheduleNoReturn()
{
	return nextReadyProcess() || (!currentRunningProcess()); // nextReady设置，或者两个都不设置
}

void     ProcessManager::signal(Process::Signal sig,ProcessLink *src, ProcessLink *target)
{
	if(target)
	{
		switch(sig)
		{
		case Process::SIG_WAKEUP:
			if(target->data<true>().status()==Process::BLOCKED)
			{
				changeProcessStatus(target, Process::READY);
			}
			break;
		case Process::SIG_KILL:
			killProcess(target);
			break;
		default:;
		}
	}
}
ProcessManager::ProcessLink*  ProcessManager::forkProcess(ProcessLink *origin)
{
	return createNewProcess(origin->data<true>());
}

void          ProcessManager::changeProcessStatus(ProcessLink *p, Process::Status oldStatus,Process::Status newStatus)
{
	if(oldStatus!=newStatus)
	{
		if(oldStatus==Process::RUNNING && p==_runningProcess) // 确认p在status描述的组
		{
			_runningProcess=nullptr;
			processList(newStatus)->insertTail(p);
		}else if(newStatus==Process::RUNNING && _runningProcess==nullptr) // 由于RUNNIG没有队列，因此必须保证runnig是空的
		{
			processList(oldStatus)->removeNode(p);
			_runningProcess=p;
		}else{
			auto oldList=processList(oldStatus);
			auto newList = processList(newStatus);
			if(oldList && newList)
			{
				oldList->removeNode(p);
				newList->insertTail(p);
			}
		}
	}
	p->data<true>().status(newStatus);
}
void          ProcessManager::changeProcessStatus(ProcessLink *p, Process::Status newStatus)
{
	changeProcessStatus(p, p->data<true>().status(),newStatus);
}

// TESTME
void          ProcessManager::changeActiveCatcher(ProcessLink *newCatcher)
{
	// 先刷新输出,再更改
	if(activeInputCatcher && activeInputCatcher!=newCatcher)
	{
		// DOCME 由于当前进程可能不是输入截获进程，因而它的inputBuffer返回的地址不一定
		//       是正确的，所以我们将输入直接丢弃。但是正确的处理应当是将inputBuffer
		//       转换成内核地址
		auto &proc= activeInputCatcher->data<true>();
		auto buf = proc.convertToKernelPtr(proc.inputBuffer());
		if(buf)
		{
			while(!inputBuffer.empty() && !buf->full())
				buf->put(inputBuffer.remove());
			inputBuffer.reset(0); // 如果还有剩余的，直接丢弃
		}
	}
	activeInputCatcher=newCatcher;
}
ProcessManager::ProcessList * ProcessManager::processList(Process::Status status)
{
	switch(status)
	{
	case Process::READY:
		return &_ready;
	case Process::BLOCKED:
		return &_blocked;
	case Process::DESTROYED:
		return &_destroyed;
	default:
		return nullptr;
	}
}
