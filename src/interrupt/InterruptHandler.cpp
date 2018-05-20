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
#include <schedule/TimeRecorder.h>

#define TEMPLATE_InterruptHandler template <class IntManager>
#define TEMPLATED_InterruptHandler InterruptHandler<IntManager>

TEMPLATE_InterruptHandler
TEMPLATED_InterruptHandler::InterruptHandler(IntManager * intman)
	:_allowSyncExcep(true),
	 _nestedExceps(0),
	 _intm(intman)
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
		asm_wfi_loop();
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
		auto esr = RegESR_EL1::make(currentState().esrELx());//ELx的结构都是相同的
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
		case ExceptionClass::SMC_AA64:
		{
			// FIXME 尚且不清楚reset的机制，这里的测试结果表明
			//       qemu的reset只是简单地将PC的值置为RVBAR_EL3
			//       通常而言，就是0地址，而其他寄存器值不变
			//       应该有其他方法进行reset，但绝不是简单的跳转。
//			__asm__ ("mrs x0,RVBAR_EL3 \n\t":::"x0");// 0
			auto func=static_cast<SmcFunc>(lowerMaskBits(16) & esr.ISS);
			if(func==SmcFunc::warmReset)
				ASM_WARM_RESET(3);
			break;
		}
		case ExceptionClass::HVC_AA64:
		{
			auto func=static_cast<HvcFunc>(lowerMaskBits(16) & esr.ISS);
			if(func==HvcFunc::warmReset)
				ASM_WARM_RESET(2);
			break;
		}
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
	asm_wfi_loop();
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
	asm_wfi_loop();
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleDataAbort()
{
	kout << INFO << "Data Abort\n";
	kout << INFO << "not processing \n";
	asm_wfi_loop();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleSPAlignmentFault()
{
	kout << INFO << "SP alignment fault\n";
	kout << INFO << "not processing it \n";
	asm_wfi_loop();
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handlePCAlignmentFault()
{
	kout << INFO << "PC alignment fault\n";
	kout << INFO << "not processing it\n";
	asm_wfi_loop();
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleSVC(SvcFunc func)
{
	auto savedRegisters=currentState().registers();
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
		auto cur = processManager.currentRunningProcess();
		size_t completed = 0;//已经完成的数目
		if(activeInputCatcher && activeInputCatcher==cur) // 仅当具有捕获权时改变缓冲区
		{
			auto buff = activeInputCatcher->data<true>().inputBuffer();
			if(buff && buff->empty()) // 为了安全buff必须为空，因为buff不为空时，数据可能正在被操作
			{
				size_t maxNum = savedRegisters[0];
				bool   blocked = savedRegisters[1];
				if(inputBuffer.empty())
				{
					if(blocked) // 阻塞
					{
						// 阻塞式gets的模型： user请求gets --> 当前没有输入 --> 设置已读取数量，进程阻塞
						//                在某个地方，进程被唤醒 --> 返回用户态，假如第一次唤醒读取数量为0，则user再次请求gets
						//                user第二次请求gets --> 当前已有输入 --> 返回读取的数量
						// 阻塞进程将会在handleInput中唤醒
						// 完全阻塞当前进程，因此当前进程的状态需要提前保存
						processManager.changeProcessStatus(cur, Process::BLOCKED);//当前进程已经阻塞了
						assert(processManager.scheduleNoReturn());//一定不会返回了
						savedRegisters[0]=0;//设置阻塞进程唤醒后的返回值,需要它重新请求一次
						cur->data<true>().saveContext(savedRegisters);
						schedule();
					}
				}else{
					while(completed<maxNum &&
							!inputBuffer.empty() &&
							!buff->full()) // 读取所有
					{
						buff->put(inputBuffer.remove());
						++completed;
					}
				}
			}
		}

		savedRegisters[0]=completed;// 返回
		break;
	}
	case SvcFunc::killProcess: // FIXME 应当包含对block进程的设置，对当前输入进程的设置
	{
		kout << INFO << "kill process [ pid = ";
		// 收回资源： 占用的内存，占用的pid，打开的文件等， 将其从进程队列中清除
		auto pid = static_cast<Pid>(savedRegisters[0]);
//		auto exitCode = static_cast<int>(savedRegisters[1]);
		auto proc = processManager.findAliveProcess(pid);
		if(proc)
		{
			kout << proc->data<true>().pid() << " ]\n";
			if(proc==activeInputCatcher)
			{
				auto nextCacther =  proc->data<true>().parent();
				if(!nextCacther)
					nextCacther=processManager.nextReadyProcess();
				if(!nextCacther)
					nextCacther=processManager.nextBlockedProcess();
				processManager.changeActiveCatcher(nextCacther);
			}
			processManager.killProcess(proc);
			schedule();
		}
        break;
	}
	case SvcFunc::createShell: // shell code is somewhere in the system
	{
		kout << INFO << "creating shell.\n";
		auto cur=processManager.currentRunningProcess();
		constexpr size_t pageSize =  VirtualMap::_D::PAGE_SIZE;
		auto p = mman.allocateAs<char*>(USER_RAM_SIZE,pageSize);
		if(p)
		{
			auto processLink = processManager.createNewProcess(
					10,//priority
					cur,//parent
					reinterpret_cast<size_t>(p)/pageSize,//map to physical address(pa)
					USER_RAM_SIZE/pageSize, // ramsize,in pages
					USER_STACK_START,
					USER_RAM_START/pageSize, // ramstart(va),in pages
					(USER_RAM_START+USER_STACK_SIZE)/pageSize,USER_CODE_SIZE/pageSize,//code,readonly
					(USER_RAM_START + USER_STACK_SIZE)/pageSize,//stack top
					virtman.addressBits(), // virtual address length in bits
					p  + USER_DATA_START - USER_STACK_START, //从stack开始的
					USER_DATA_SIZE,
					true
			);
			Process & process = processLink->data<true>();
			if(processLink)
			{
				extern uint64_t __user_space_start[];
				if(process.status()!=Process::CREATED_INCOMPLETE)
				{
					auto &args = *reinterpret_cast<const VectorRef<String>*>(
							savedRegisters[0]);
					auto fg_or_bg = savedRegisters[1];
					// 将代码和initRAM复制到分配的内存空间
					std::memcpy(p + USER_STACK_SIZE,
							__user_space_start,USER_CODE_SIZE + USER_INITRAM_SIZE);
					process.fillArguments(args);
					processManager.changeProcessStatus(processLink, Process::READY);
					// 进程在队列中等待调度
					savedRegisters[0]=static_cast<uint64_t>(process.pid());
					if(fg_or_bg==0)//foreground,重新定向，阻塞父进程
					{
						if(activeInputCatcher && cur!=activeInputCatcher) // 首先唤醒原进程，避免无限等待
							processManager.signal(Process::SIG_WAKEUP,cur, activeInputCatcher);
						processManager.changeActiveCatcher(processLink);
						schedule(Process::BLOCKED);
					}else if(fg_or_bg==1)//background,不重新定向，不阻塞
					{
						// 什么也不做
					}
					break;//退出
				}else{
					processManager.killProcess(processLink);
				}
			}
		}
		savedRegisters[0]=static_cast<uint64_t>(PID_INVALID);
		break;
	}
	case SvcFunc::setProcessArgument:
	{
		auto pid = static_cast<Pid>(savedRegisters[0]);
		ProcessManager::ProcessLink * proc = processManager.findAliveProcess(pid);
		if(proc)
		{
			proc->data<true>().setArgument(savedRegisters[1],
					reinterpret_cast<uint64_t*>(savedRegisters[2]));
		}
		break;
	}
	case SvcFunc::setInputCatcher:
	{
		auto pid = static_cast<Pid>(savedRegisters[0]);
		auto proc = processManager.findAliveProcess(pid);
		if(proc && proc!=activeInputCatcher)
		{
			if(activeInputCatcher) // 首先唤醒原进程，避免无限等待
				processManager.signal(Process::SIG_WAKEUP,
						processManager.currentRunningProcess(), activeInputCatcher);
			activeInputCatcher = proc;
		}
		break;
	}
	case SvcFunc::sleep:
	{
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
	    schedule();
	    break;
	}
	case SvcFunc::vfsProxy:
	{
		savedRegisters[0]=VirtualProxyKernel::handleVFSProxySVC(savedRegisters);
		break;
	}
	case SvcFunc::warmReset:
	{
		if(highestEL==ExceptionLevel::EL3)
			asm_smc<SmcFunc::warmReset>();
		else if(highestEL==ExceptionLevel::EL2)
			asm_hvc<HvcFunc::warmReset>();
		else
			ASM_WARM_RESET(1);
		break;
	}
	default:
	{
		kout << FATAL << "unhandled svc : " << static_cast<uint64_t>(func) << "\n";
		asm_wfi_loop();
		break;
	}
	}
}

TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::handleIRQ(IntID id)
{
	// write here to make sure that the event come in order
	if(id == _intm->standardIntID(StandardInterruptType::PROCESS_TIMER))//el1 physical timer interrupt
	{
		_intm->endInterrupt(ExceptionType::IRQ,id);
		schedule();
	}else if(id == _intm->standardIntID(StandardInterruptType::INPUT)){
//		kout << INFO << "handle INPUT\n";
//		_intm->enableInterrupt(id,false);
		// DOCME 这里“提前结束”和“处理完毕再结束”两种处理逻辑对输入有很大的影响
		//       在QEMU上，如果采用“处理完毕再结束”这种模型，则至多能接受34个字符，即多余的字符被丢弃
		//         由此可能导致换行符没有被正确接收到。（注：单字符模式至多接受34个字符，FIFO模式可能接受50+，但是
		//         仍然受限制。）
		//       “提前结束”这种模型能够接收更多的字符（满足一般的需求），对于输入程序的体验改善显著。
		//     猜测原因：handleInputEvent()程序耗费一定的时间，在这段时间内，如果不提前结束中断状态，则额外的字符可能
		//     被丢弃。但是真正的原因仍有待查询。  TODO 找出真正的原因。
		// TESTME  尚未在真机上测试。测试方法：分别注释其中的一者，然后输入 abc..xyz * 3，如果程序没有响应，证明
		//         重现了问题。一般而言，第二个模型出现问题的概率基本是100%，第一个基本不出现（不保证不出现）。
		_intm->endInterrupt(ExceptionType::IRQ,id); // 提前结束
		handleInputEvent();
//		_intm->endInterrupt(ExceptionType::IRQ,id); // 处理完毕再结束
//		_intm->enableInterrupt(id,true);
	}else{ // others
		kout << INFO << "unhandled irq id=" << id<<"\n";
		_intm->endInterrupt(ExceptionType::IRQ,id);
	}
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
//	TimeRecorder<BCM2835SystemTimer> r(&sysTimer,1000000);
//	size_t n=0;
//	while(pl011.readReady()) // 每次输入至多33个字符（包括换行）
//	{
//		auto ch=pl011.rawRead();
//		kout << INFO << "reading ["<<(n++)<<"]: " << Hex(ch) << "\n";
//		delayMS(10);
//	}
//	return;
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
	// 唤醒等待程序
	auto cur=processManager.currentRunningProcess();
	if(cur!=activeInputCatcher)
		processManager.signal(Process::SIG_WAKEUP,
				cur, activeInputCatcher);
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
	asm_wfi_loop();
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
TEMPLATE_InterruptHandler
void         TEMPLATED_InterruptHandler::waitReadyProcess()
{
	allowEvent(StandardInterruptType::INPUT, true);
	allowEvent(StandardInterruptType::PROCESS_TIMER, false);
	cpuEnableInterrupt(ExceptionType::IRQ, true);
	while(!processManager.nextReadyProcess()); // FIXME 会不会出现竞争条件？
	cpuEnableInterrupt(ExceptionType::IRQ, false);
	allowEvent(StandardInterruptType::PROCESS_TIMER, true);
}
TEMPLATE_InterruptHandler
void TEMPLATED_InterruptHandler::schedule(Process::Status curStatus)
{
	auto reg=currentState().registers(); // 防止exitCurrent()后不能获取状态
	if(processManager.scheduleNoReturn()) // 如果能调度，意味着程序不返回，因此需要提前做结束动作
	{
		exitCurrent();
	}
	processManager.scheduleNextProcess(reg,curStatus);
}
