/*
 * InterruptHandler.cpp
 *
 *  Created on: Apr 6, 2018
 *      Author: 13774
 */

#include <interrupt/InterruptHandler.h>
#include <interrupt/GenericTimer.h>
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>
#include <arch/common_aarch64/registers/timer_registers.h>
#include <filesystem/VirtualProxyKernel.h>
#include <io/Output.h>
#include <generic/error.h>
#include <io/uart/PL011.h>
#include <data_structures/Queue.h>
#include <interrupt/InterruptManager.h>

InterruptHandler::InterruptHandler()
	:_allowSyncExcep(true),
	 _nestedExceps(0)
{}

void InterruptHandler::handleUndefinedInstruction()
{
	kout << INFO << "Undefined instruction\n";
	kout << INFO << "not processing it\n";
	asm_wfe_loop();
}
void InterruptHandler::handleInstructionAbort()
{
	kout << "Instruction Abort \n";
	auto esr=RegESR_EL1::read();
	uint64_t ifsc=getBits(esr.ISS,0,5);
	(void)ifsc;// 7=level3 translation fault
				// 11=level3 access fault
	int   farNotValid = getBits(esr.ISS,10,10);
	kout << "farNotValid?" << farNotValid << "\n";
	if(!farNotValid)
	{
		kout << INFO << "FAR = " << RegFAR_EL1::read().faultAddr << "\n";
	}
	kout << "not processing it\n";
	asm_wfe_loop();
}

void InterruptHandler::handleDataAbort()
{
	kout << INFO << "Data Abort\n";
	kout << INFO << "not processing \n";
	asm_wfe_loop();
}
void InterruptHandler::handleSPAlignmentFault()
{
	kout << INFO << "SP alignment fault\n";
	kout << INFO << "not processing it \n";
	asm_wfe_loop();
}

void InterruptHandler::handlePCAlignmentFault()
{
	kout << INFO << "PC alignment fault\n";
	kout << INFO << "not processing it\n";
	asm_wfe_loop();
}
void InterruptHandler::handleSVC(SvcFunc func)
{
	auto savedRegisters=currentState()._generalRegisters;
	switch(func)
	{
	case SvcFunc::puts:
	{
		auto str = reinterpret_cast<const char*>(savedRegisters[0]);
		auto len = reinterpret_cast<size_t>(savedRegisters[1]);
		auto printkChars = kout.print(str, len);
		savedRegisters[0] = printkChars; // savedResult
		break;
	}
	case SvcFunc::gets:
	{
		// 禁用输入中断
		auto buf = reinterpret_cast<uint16_t*>(savedRegisters[0]);
		size_t maxNum = savedRegisters[1];
		bool returnOnNewLine = getBit(savedRegisters[2],0);
		bool blocked = getBit(savedRegisters[2],1);
		intm.enableIntID(INT_INPUT,false);
		size_t i=0;
		while(i<maxNum)
		{
			// 还没有读取到maxNum个数据

			if(inputBuffer.empty()) // 如果没有数据，启用输入中断，并等待
			{
				if(blocked)
				{
					intm.enableIntID(INT_INPUT,true);
					intm.cpuIntEnable(InterruptManager::IRQ,true);
					while(inputBuffer.empty());// 原子读，不存在同步问题
					intm.cpuIntEnable(InterruptManager::IRQ,false);
					intm.enableIntID(INT_INPUT,false);
				}else{
					break; // 退出
				}
			}
			buf[i++]=inputBuffer.remove();
			if(returnOnNewLine && (buf[i-1]=='\n' || buf[i-1]=='\a')) // 遇到换行，并且表明换行退出
				break;
		}
		savedRegisters[0]=i;// 返回
		intm.enableIntID(INT_INPUT,true);
		break;
	}
	case SvcFunc::killProcess:
	{
		kout << "killing Process \n";
		// 收回资源： 占用的内存，占用的pid，打开的文件等， 将其从进程队列中清除
		auto pid = static_cast<Pid>(savedRegisters[0]);
		int     status = *reinterpret_cast<int*>(savedRegisters+1);
		(void)status;
		if(pid == PID_CURRENT)
		{
			processManager.killProcess(processManager.currentRunningProcess());
			processManager.scheduleNextProcess(savedRegisters);
		}
		asm_wfe_loop();
         break;
	}
	case SvcFunc::fork:
	{
		// fork父进程返回子进程pid，子进程返回pid=0, 如果失败，返回PID_INVALID
		auto cur = processManager.currentRunningProcess();
		// 更新当前进程的上下文，使其与真实的状态保持对应，这样fork才能正确执行。
		cur->data<true>().saveContext(savedRegisters);
		auto forked = processManager.forkProcess(cur);
		if(forked)
		{
			// 将forked进程加入就绪队列, 注意，这里对返回值的设置，由于是当前进程，所以直接设置savedRegisters即可
			processManager.changeProcessStatus(forked, Process::Status::READY);
			forked->data<true>().registers()[0] = PID_CURRENT ;
			savedRegisters[0] = forked->data<true>().pid();
		}else{
			savedRegisters[0] = PID_INVALID;
		}
        break;
	}
	case SvcFunc::scheduleNext:
	{
	   processManager.scheduleNextProcess(savedRegisters);
       break;
	}
	case SvcFunc::vfsProxy:
	{
		savedRegisters[0]=VirtualProxyKernel::handleVFSProxySVC(savedRegisters);
		break;
	}
	default:
	{
		kout << FATAL << "unhandled svc : " << static_cast<uint64_t>(func) << "\n";
		asm_wfe_loop();
		break;
	}
	}
}

void InterruptHandler::handleIRQ(IntID id)
{
//	kout << "int id = " << id << "\n";
	auto eoi=RegICC_EOIR_EL1<1>::make(0);
	eoi.INTID = id;
	// write here to make sure that the event come in order
	if(id == INT_VIRTUAL_TIMER) // virtual timer event stream
	{
		RegCNTV_CTL_EL0 ctl {0};
		ctl.ENABLE = 0;
		ctl.write();
		ctl.ENABLE = 1;
		ctl.IMASK = 0;
		ctl.write();
		eoi.write();
	}else if(id == INT_NS_PHY_TIMER)//el1 physical timer interrupt
	{
	    ktimer.nextPeriod();
		eoi.write();
		// this no return
	    processManager.scheduleNextProcess(currentState()._generalRegisters);
	}else if(id== INT_INPUT){
		handleInputEvent();
		eoi.write();
	}else{ // others
		eoi.write();
	}
}

void InterruptHandler::handleFIQ(IntID id)
{
	kout << INFO <<"processing FIQ_EL1 : " << id << "\n";
	if(id==INT_SPURIOUS) // assume it is INT_INPUT
	{
		handleInputEvent();
	}
	auto eoi=RegICC_EOIR_EL1<0>::make(0);
	eoi.INTID =id ; // this must be correctly done, else eret will causes errors
	eoi.write();
}
void InterruptHandler::handleInputEvent()
{
	uint16_t ch;
//		kout << "queue old size = " << inputBuffer.size() << "\n";
	intm.enableIntID(INT_INPUT, false);
	while( (ch=pl011.readDataNonBlocked())!=0xFFFF)
	{
		if(inputBuffer.full())
			kout << WARNING << "input buffer is full,extra inputs are discarded.\n";
		else
			inputBuffer.put(ch);
	}
	intm.enableIntID(INT_INPUT, true);
//		kout << "queue new size = " << inputBuffer.size() << "\n";
}
void InterruptHandler::handleSError()
{
	kout << INFO << "processing SErrorEL1 \n";
}
void InterruptHandler::unhandledException()
{
	kout << INFO << "Currently unhandled exception\n";
	asm_wfe_loop();
}

void InterruptHandler::exitCurrent()
{
	assert(_nestedExceps.size() > 0);// 当前正在处理
	_allowSyncExcep=false; // 处于中断退出阶段，不允许新的同步异常发生
	_nestedExceps.last().restore();
	_nestedExceps.resize(_nestedExceps.size() - 1);
	_allowSyncExcep=true;
}
