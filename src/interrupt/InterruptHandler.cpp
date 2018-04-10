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
	switch(func)
	{
	case SvcFunc::puts:
	{
		auto str = reinterpret_cast<const char*>(_savedRegisters[0]);
		auto len = reinterpret_cast<size_t>(_savedRegisters[1]);
		auto printkChars = kout.print(str, len);
		_savedRegisters[0] = printkChars; // savedResult
		break;
	}
	case SvcFunc::killProcess:
	{
		kout << "killing Process \n";
		// 收回资源： 占用的内存，占用的pid，打开的文件等， 将其从进程队列中清除
		auto pid = static_cast<Pid>(_savedRegisters[0]);
		int     status = *reinterpret_cast<int*>(_savedRegisters+1);
		(void)status;
		if(pid == PID_CURRENT)
		{
			processManager.killProcess(processManager.currentRunningProcess());
			processManager.scheduleNextProcess(_savedRegisters);
		}
		asm_wfe_loop();
         break;
	}
	case SvcFunc::fork:
	{
		// fork父进程返回子进程pid，子进程返回pid=0, 如果失败，返回PID_INVALID
		auto cur = processManager.currentRunningProcess();
		// 更新当前进程的上下文，使其与真实的状态保持对应，这样fork才能正确执行。
		cur->data<true>().saveContext(_savedRegisters);
		auto forked = processManager.forkProcess(cur);
		if(forked)
		{
			// 将forked进程加入就绪队列, 注意，这里对返回值的设置，由于是当前进程，所以直接设置savedRegisters即可
			processManager.changeProcessStatus(forked, Process::Status::READY);
			forked->data<true>().registers()[0] = PID_CURRENT ;
			_savedRegisters[0] = forked->data<true>().pid();
		}else{
			_savedRegisters[0] = PID_INVALID;
		}
        break;
	}
	case SvcFunc::scheduleNext:
	{
	   _processing=false;//设置未处理状态
	   processManager.scheduleNextProcess(_savedRegisters);
       break;
	}
	case SvcFunc::vfsProxy:
	{
		_savedRegisters[0]=VirtualProxyKernel::handleVFSProxySVC(_savedRegisters);
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
	kout << "int id = " << id << "\n";
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
		_processing=false;
	    processManager.scheduleNextProcess(_savedRegisters);
	}else{ // others
		eoi.write();
	}
}

void InterruptHandler::handleFIQ(IntID id)
{
	kout << INFO <<"processing FIQ_EL1 \n";
	RegICC_RPR_EL1::read().dump();
	auto eoi=RegICC_EOIR_EL1<0>::make(0);
	eoi.INTID =id ; // this must be correctly done, else eret will causes errors
	eoi.write();
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

