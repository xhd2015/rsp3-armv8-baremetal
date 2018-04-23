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
#include <driver/uart/PL011.h>
#include <data/Queue.h>

#define TEMPLATE_InterruptHandler template <class IntManager>
#define TEMPLATED_InterruptHandler InterruptHandler<IntManager>

TEMPLATE_InterruptHandler
TEMPLATED_InterruptHandler::InterruptHandler(IntManager & intman)
	:_allowSyncExcep(true),
	 _nestedExceps(0),
	 _intm(&intman)
{}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handle(
		uint64_t  * savedRegs,
		ExceptionType type,
		ExceptionOrigin origin,
		IntID         id
		)
{
//	kout << INFO << "Handling interrupt\n";
//	kout << "exception type = " ;
//	switch(type)
//	{
//	case ExceptionType::IRQ:
//		kout << "IRQ";
//		break;
//	case ExceptionType::SYNC:
//		kout << "SYNC";
//		break;
//	default:
//		kout << "Other";
//		break;
//	}
//	kout << "\n";
//	kout << "exception origin = ";
//	switch(origin)
//	{
//	case ExceptionOrigin::CUR_SP_EL0:
//	case ExceptionOrigin::CUR_SP_ELx:
//		kout << "Current";
//		break;
//	case ExceptionOrigin::FROM_LOWER_A64:
//		kout << "Lower";
//		break;
//	default:
//		kout << "Other";
//		break;
//	}
//	kout << "\n";
//	RegELR_EL1::read().dump();
//	RegESR_EL1::read().dump();
//	RegFAR_EL1::read().dump();
	if(!_allowSyncExcep)
	{
		kout << FATAL << "synchronous exception happened while the handler indicates that synchronous exception is not allowed.\n";
		asm_wfe_loop();
	}
	_allowSyncExcep=false;// 需要保存状态
	_nestedExceps.emplaceBack(savedRegs,type,origin);
	_allowSyncExcep=true;
	switch(type)
	{
	case ExceptionType::IRQ:
	{
		// 这里需要提供intid
		//The CPU interface has two IARs. Reading the IAR returns the INTID, and advances the interrupt
		//state machine. In a typical interrupt handler, one of the first steps when handling an interrupt is to
		//read one of the IARs
		handleIRQ(id);//NOTE:by reading it, we  acknowledged it.So it will change to 1023 after this read
		break;
	}
	case ExceptionType::FIQ:
	{
		handleFIQ(id);
		break;
	}
	case ExceptionType::SError:
	{
		handleSError();
		break;
	}
	case ExceptionType::SYNC:
	{
		auto esr =currentState()._esr;
		switch(esr.EC)
		{
		case ExceptionClass::UNDEF_INST:
			handleUndefinedInstruction();
			break;
		case ExceptionClass::SVC_AA64:
			handleSVC(static_cast<SvcFunc>(lowerMaskBits(16) & esr.ISS));
			break;
		case ExceptionClass::DATA_ABORT_LOWER_EL:  // user error
		case ExceptionClass::DATA_ABORT_SAME_EL: // system error
			handleDataAbort();
			break;
		case ExceptionClass::INSTR_ABORT_LOWER_EL:
		case ExceptionClass::INSTR_ABORT_SAME_EL:
			handleInstructionAbort();
			break;
		case ExceptionClass::SP_ALIGNMENT_FAULT:
			handleSPAlignmentFault();
			break;
		case ExceptionClass::PC_ALIGNMENT_FAULT:
			handlePCAlignmentFault();
			break;
		case ExceptionClass::SERROR_INTERRUPT:
			handleSError();
			break;
		default:
			unhandledException();
			break;
		}
		break;
	}
	case ExceptionType::DEBUG:
	{
		break;
	}
	}
	exitCurrent();
}
TEMPLATE_InterruptHandler
void   TEMPLATED_InterruptHandler::rebase(size_t diff)
{
	assert(_nestedExceps.size()==0); // cannot rebase when there is some interrupts
	_nestedExceps.rebase(diff);
	_intm=pointerInc(_intm, diff);
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleUndefinedInstruction()
{
	kout << INFO << "Undefined instruction\n";
	RegESR_EL1::read().dump();
	RegELR_EL1::read().dump();
//	RegFAR_EL1::read().dump(); //fat not valid

	kout << "instructions are :\n";
	auto instr = reinterpret_cast<const uint32_t*>(RegELR_EL1::read().returnAddr);
//	uint64_t arg= (3ul<<48)|(0x4000);
//	__asm__ __volatile__("isb;tlbi VAE1,%0;isb\n\t"::"r"(arg));
	asm_tlbi_aside1(3);
	// TODO
	auto par=asm_at(reinterpret_cast<uint64_t>(instr));
	if(par.S0.F==1)
	{
		kout << FATAL << "translation failed\n";
	}else{
		kout << "va to pa is " << virtman.translateVAToPA(instr) << "\n";
	}
	kout << INFO << "not processing it\n";
	asm_wfe_loop();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleInstructionAbort()
{
	kout << "Instruction Abort \n";
	auto esr=RegESR_EL1::read();
	RegELR_EL1::read().dump();
	RegSCTLR_EL1::read().dump();
	RegSPSR_EL1::read().dump();
	esr.dump();
	int   farNotValid = getBits(esr.ISS,10,10);
	if(!farNotValid)
	{
		kout << "FAR = " << Hex(RegFAR_EL1::read().faultAddr) << "\n";
	}else{
		kout << "FAR not valid\n";
	}
	kout << "not processing it\n";
	asm_wfe_loop();
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleDataAbort()
{
	kout << INFO << "Data Abort\n";
	kout << INFO << "not processing \n";
	asm_wfe_loop();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleSPAlignmentFault()
{
	kout << INFO << "SP alignment fault\n";
	kout << INFO << "not processing it \n";
	asm_wfe_loop();
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handlePCAlignmentFault()
{
	kout << INFO << "PC alignment fault\n";
	kout << INFO << "not processing it\n";
	asm_wfe_loop();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleSVC(SvcFunc func)
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
//		auto inputId = _intm->standardIntID(INPUT);
		cpuEnableInterrupt<ExceptionType::IRQ>(false);
		size_t i=0;
		while(i<maxNum)
		{
			// 还没有读取到maxNum个数据
			if(inputBuffer.empty()) // 如果没有数据，启用输入中断，并等待
			{
				if(blocked)
				{
					cpuEnableInterrupt<ExceptionType::IRQ>(true);
					while(inputBuffer.empty());// 原子读，不存在同步问题
					cpuEnableInterrupt<ExceptionType::IRQ>(false);
				}else{
					break; // 退出
				}
			}
			buf[i++]=inputBuffer.remove();
			if(returnOnNewLine && (buf[i-1]=='\n' || buf[i-1]=='\r')) // 遇到换行，并且表明换行退出
				break;
		}
		savedRegisters[0]=i;// 返回
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

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleIRQ(IntID id)
{
	// write here to make sure that the event come in order
	if(id == _intm->standardIntID(PROCESS_TIMER))//el1 physical timer interrupt
	{
//		kout << INFO << "handle process timer\n";
//		_intm->endInterrupt(ExceptionType::IRQ,id);
		// this no return
	    processManager.scheduleNextProcess(currentState()._generalRegisters);
	}else if(id == _intm->standardIntID(INPUT)){
//		kout << INFO << "handle INPUT\n";
		handleInputEvent();
	}else{ // others
		kout << INFO << "unhandled irq id=" << id<<"\n";
	}
	_intm->endInterrupt(ExceptionType::IRQ,id);
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleFIQ(IntID id)
{
	kout << INFO <<"processing FIQ_EL1 : " << id << "\n";
	_intm->endInterrupt(ExceptionType::FIQ,id);
//	auto eoi=RegICC_EOIR_EL1<0>::make(0);
//	eoi.INTID =id ; // this must be correctly done, else eret will causes errors
//	eoi.write();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleInputEvent()
{
//	kout << INFO << "handle input event\n";
//	kout << "intc.enableWord(0) = " << Hex(intc.enableWord(0)) << "\n";
//	kout << "intc.enableWord(1) = " << Hex(intc.enableWord(1)) << "\n";
//	kout << "intc.pendingWord(0) = " << Hex(intc.pendingWord(0)) << "\n";
//	kout << "intc.pendingWord(1) = " << Hex(intc.pendingWord(1)) << "\n";
	// DOCME 这里必须已经禁用了输入中断
//	uint16_t ch;
//		kout << "queue old size = " << inputBuffer.size() << "\n";
//	_intm.enableIntID(INT_INPUT, false);
//	_intm->enableInterrupt(_intm->standardIntID(INPUT),false); // 禁止再次输入
//	kout << INFO << "after , inputBuffer.size() = " << inputBuffer.size() << "\n";
	while(pl011.readReady())
	{
		auto ch=pl011.rawRead();
//		delayUS(1000);// 等待一小段时间，
//		kout << INFO << "reading : " << Hex(ch) << "\n";
		// _FIXME 连续输入两个 回车(0xd)时，只有第二个回车输入完成后才会刷新输入
		// 调试这是软件错误还是PuTTY的错误。
		// DOCME 上面的问题是由于PL011的缓冲性质导致的，当输入字符之后，要达到FIFO size的
		//       一定占比才会触发中断，并且占比不会小于1/8
		if(inputBuffer.full())
			kout << WARNING << "input buffer is full,extra inputs are discarded.\n";
		else
			inputBuffer.put(ch);
	}
//	_intm->enableInterrupt(_intm->standardIntID(INPUT),true); // 禁止再次输入
//	kout << INFO << "after , inputBuffer.size() = " << inputBuffer.size() << "\n";
//	kout << INFO << "last reading char = " << Hex(ch) << "\n";
//	_intm->enableInterrupt(_intm->standardIntID(INPUT),true);
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleSError()
{
	kout << INFO << "processing SErrorEL1 \n";
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::unhandledException()
{
	kout << INFO << "Currently unhandled exception\n";
	asm_wfe_loop();
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::exitCurrent()
{
	assert(_nestedExceps.size() > 0);// 当前正在处理
	_allowSyncExcep=false; // 处于中断退出阶段，不允许新的同步异常发生
	_nestedExceps.last().restore();
	_nestedExceps.removeLast();
	_allowSyncExcep=true;
}
