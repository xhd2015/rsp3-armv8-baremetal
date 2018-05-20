/*
 * ProgressManager.h
 *
 *  Created on: Mar 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESSMANAGER_H_
#define INCLUDE_SCHEDULE_PROGRESSMANAGER_H_

#include <data/DoublyLinkedList.h>
#include <schedule/Process.h>
#include <schedule/schedule_forward.h>
#include <programming/define_members.h>

class ProcessManager{
public:
//	enum Config{ PROCESSOR_NUM=4 };
	using ProcessList = DoublyLinkedList<Process>;
	using ProcessLink = ::ProcessLink;

	ProcessManager();
	DELETE_COPY(ProcessManager);
	// 如果是单核的，则某一时刻只有一个PID在运行
	// 实际上即使是多核情况下，我们对某个核实际上只赋予一个唯一的正在运行的进程
	AS_MACRO ProcessLink* currentRunningProcess()
			{return _runningProcess;}
	AS_MACRO ProcessLink* nextReadyProcess()
	        {return _ready.head();}
	AS_MACRO ProcessLink* nextBlockedProcess()
	         {return _ready.head();}
	/**
	 * 前置条件：pid不为保留的pid
	 * @param status
	 * @param pid
	 * @return
	 */
	ProcessLink* findProcess(Process::Status status,Pid pid);
	/**
	 * 查找生存的进程，即不包括destroyed的进程
	 * @param pid
	 * @return
	 */
	ProcessLink* findAliveProcess(Pid pid);

	void     killProcess(ProcessLink *p);

	// 必须保证该函数只能被中断处理器调用
	// 选择一个进程进行运行，如果有当前有正在运行的进程，则将其值为READY状态
	// 调度
	// 如果没有任何一个进程可以调度，也就是说当前没有进程运行，就绪队列没有进程，则等待。
	// TODO 这里不应当引入savedRegisters参数，因为并不是所有的架构都需要。
	// 这里或许传递一个CPU保存的参数会比较好，但是，目前最简单的方法就是传递该参数。
	/**
	 *
	 * @param savedRegsiers
	 * @param curStatus      改变 当前进程的状态
	 */
	void     scheduleNextProcess(uint64_t *savedRegsiers,Process::Status curStatus=Process::READY);
	bool     scheduleNoReturn();
	void     signal(Process::Signal sig,ProcessLink *src, ProcessLink *target);

	/**
	 * 创建一个新的进程，如果成功，将其加入READY队列
	 * TODO 新增其他状态可能
	 * @param initArgs
	 * @return
	 */
	template <class ... Args>
	ProcessLink*  createNewProcess(Args && ... initArgs);

	// 子进程会被加入到CREATED或者CREATED_INCOMPLETE
	ProcessLink*  forkProcess(ProcessLink *origin);

	// oldStatus表明p所在的组,缺省时使用p的状态
	/**
	 * 前置条件:oldStatus,newStatus对processList返回均非空
	 *        p不为空
	 * @param p
	 * @param oldStatus   p当前实际所在的组，可与与p的当前状态不一致
	 * @param newStatus   p的新状态
	 */
	void          changeProcessStatus(ProcessLink *p, Process::Status oldStatus,Process::Status newStatus);
	/**
	 *
	 * @param p
	 * @param newStatus
	 */
	void          changeProcessStatus(ProcessLink *p,Process::Status newStatus);
	void          changeActiveCatcher(ProcessLink *newCatcher);
private:
	ProcessList *  processList(Process::Status status);
private:
	// 当前队列
//	ForwardList<Process> _processList;
//	ForwardNode<Process*> _statedProcessList[Process::STATUS_NUM];
//	ProcessList _statedProcessList[Process::STATUS_NUM];
	ProcessLink * _runningProcess;
	ProcessList _ready;
	ProcessList _blocked;
	ProcessList _destroyed;
	   // FIXME 对特定CPU而言，RUNNING进程实际至多一个，因此可以仅仅使用一个变量而不是一个队列

};

#ifndef _NOT_NEED_ProcessManager
extern ProcessManager processManager;
#endif

//== template
template <class ... Args>
ProcessManager::ProcessLink*   ProcessManager::createNewProcess(Args && ... initArgs)
{
	auto node = _destroyed.insertTail(std::forward<Args>(initArgs)...); // 默认放在destroyed中
	if(node)
	{
		if(node->template data<true>().status()==Process::Status::CREATED)
			changeProcessStatus(node, Process::DESTROYED,Process::READY);
		else //创建失败
		{
			_destroyed.removeNode(node);
			delete node;
			return nullptr;
		}
	}
	return node;
}


#endif /* INCLUDE_SCHEDULE_PROCESSMANAGER_H_ */
