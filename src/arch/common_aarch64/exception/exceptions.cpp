#include <arch/common_aarch64/exception/exceptions.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <def.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/timer_registers.h>
#include <asm_instructions.h>
#include <io/Output.h>
#include <arch/common_aarch64/exception/svc_call.h>
#include <io/IntegerFormatter.h>
#include <schedule/PidManager.h>
#include <schedule/ProcessManager.h>
#include <interrupt/InterruptManager.h>
#include <interrupt/GenericTimer.h>
#include <interrupt/GICDefinitions.h>

__asm__(//".align  11 \n\t" // for ARM, this is lower order zero bits, but seems not working. we must get depend on the final linker script
		".text \n\t"
		".align 11 \n\t"
		".global ExceptionVectorEL1 \n\t"
		"ExceptionVectorEL1:  \n\t" // this only applies to EL1

		// **Current Exception level with SP_EL0.
		"b enterSynchronousEL1ExceptionHandle_no_prologue \n\t"
		". = ExceptionVectorEL1 + 0x080 \n\t"
		"b enterIRQEL1ExceptionHandle_no_prologue\n\t"
		". = ExceptionVectorEL1 + 0x100 \n\t"
		"b enterFIQEL1ExceptionHandle_no_prologue \n\t"
		". = ExceptionVectorEL1 + 0x180 \n\t"
		"b enterSErrorEL1ExceptionHandle_no_prologue \n\t"

		// **Current Exception level with SP_ELx, x>0
		". = ExceptionVectorEL1 + 0x200 \n\t" //for EL1-->EL1,syn=0x200
		"b enterSynchronousEL1ExceptionHandle_no_prologue \n\t"  // just call for it
		". = ExceptionVectorEL1 + 0x280 \n\t" // IRQ or vIRQ
		"b enterIRQEL1ExceptionHandle_no_prologue \n\t"
		". = ExceptionVectorEL1 + 0x300 \n\t" // FIQ or vFIQ
		"b enterFIQEL1ExceptionHandle_no_prologue \n\t"
 		". = ExceptionVectorEL1 + 0x380 \n\t" // SError or vSError
		"b enterSErrorEL1ExceptionHandle_no_prologue \n\t"

		// ** aarch64下，从低异常级而来的异常
		". = ExceptionVectorEL1 + 0x400 \n\t"
		"b enterSynchronousEL1ExceptionHandle_no_prologue \n\t"
		". = ExceptionVectorEL1 + 0x480 \n\t"
		"b enterIRQEL1ExceptionHandle_no_prologue\n\t"
		". = ExceptionVectorEL1 + 0x500 \n\t"
		"b enterFIQEL1ExceptionHandle_no_prologue\n\t"
		". = ExceptionVectorEL1 + 0x580 \n\t"
		"b enterSErrorEL1ExceptionHandle_no_prologue\n\t"


		// ** aarch32下, 从低异常级而来的异常

		// 异常表的最后一项
		". = ExceptionVectorEL1 + 0x780 \n\t"
		// 为最后一项预留128字节的空间
		". =. + 0x80 \n\t"
		);

// on entering, we must use svc or other ExceptionGeneration instructions,on leaving,we must use eret, no magics
void enterSynchronousEL1ExceptionHandle()
{
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__("enterSynchronousEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"mov     x0, sp \n\t"
		"bl      SynchronousEL1Handle \n\t"
	);
	RESTORE_REGS();
	asm_eret();
}
void enterIRQEL1ExceptionHandle()
{
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__("enterIRQEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"mov     x0, sp \n\t"
		"bl      IRQEL1Handle \n\t"
	);
	RESTORE_REGS();
	asm_eret();
}
void enterFIQEL1ExceptionHandle()
{
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__("enterFIQEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"mov     x0, sp \n\t"
		"bl      FIQEL1Handle \n\t"
	);
	RESTORE_REGS();
	asm_eret();
}

void enterSErrorEL1ExceptionHandle()
{
	FORCE_CODE_COHERENT_WITH_VIEW();
	__asm__("enterSErrorEL1ExceptionHandle_no_prologue: \n\t");
	SAVE_REGS();
	__asm__(
		"bl      SErrorEL1Handle \n\t"
	);
	RESTORE_REGS();
	asm_eret();
}

//========the C++ handles================
// NOTE:no eret is needed, not need to save anything



extern "C"
void SynchronousEL1Handle(uint64_t *savedRegisters)//savedRegisters[31], from X30-X0
{
	kout <<INFO<< "processing SynchronousEL1 \n";
	auto curEL = RegCurrentEL::read();
	kout << INFO << "CurrentEL = " << curEL.EL << "\n";
	uint32_t fromEL = RegSPSR_EL1::read().EL;
	kout << INFO << "From EL = " << fromEL << "\n";

	auto far = RegFAR_EL1::read();
	auto elr = RegELR_EL1::read();
	auto spsr = RegSPSR_EL1::read();
	auto esr = RegESR_EL1::read();
	esr.dump();
	elr.dump();
	far.dump();
	spsr.dump();
	if(esr.EC == ExceptionClass::UNDEF_INST)
	{
		kout << INFO << "Undefined instruction\n";
		kout << INFO << "not processing it\n";
		asm_wfe_loop();
	}

	else if(esr.EC == ExceptionClass::SVC_AA64)
	{
		uint16_t svcNumber = lowerMaskBits(16)&esr.ISS;
		kout << INFO << "svc targeting number : " << svcNumber<< "\n";
		if(svcNumber == static_cast<decltype(svcNumber)>(SvcFunc::puts)) //  需要参数，参数保存在哪里？保存在栈上
		{
			auto str = reinterpret_cast<const char*>(savedRegisters[0]);
			auto len = reinterpret_cast<size_t>(savedRegisters[1]);
			auto printkChars = kout.print(str, len);
			savedRegisters[0] = printkChars; // savedResult
		}else if(svcNumber == static_cast<decltype(svcNumber)>(SvcFunc::killProcess)){
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
		}else if(svcNumber == static_cast<decltype(svcNumber)>(SvcFunc::fork)){
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
		}else if(svcNumber == static_cast<decltype(svcNumber)>(SvcFunc::scheduleNext)){
			processManager.scheduleNextProcess(savedRegisters);
		}
	}else if(esr.EC == ExceptionClass::INSTR_ABORT_LOWER_EL){
		kout << "Instruction Abort \n";
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
	}else if(esr.EC == ExceptionClass::DATA_ABORT_LOWER_EL){
		kout << INFO << "Data Abort from lower EL\n";
		kout << INFO << "not processing it\n";
		asm_wfe_loop();
	}else if(esr.EC == ExceptionClass::DATA_ABORT_SAME_EL){
		kout << INFO << "Data Abort at same EL\n";
		kout << INFO << "not processing \n";
		asm_wfe_loop();
	}else if(esr.EC == ExceptionClass::PC_ALIGNMENT_FAULT){
		kout << INFO << "PC alignment fault\n";
		kout << INFO << "not processing it\n";
		asm_wfe_loop();
	}else if(esr.EC == ExceptionClass::SP_ALIGNMENT_FAULT){
		kout << INFO << "SP alignment fault\n";
		kout << INFO << "not processing it \n";
		asm_wfe_loop();
	}else if(esr.EC == ExceptionClass::SERROR_INTERRUPT){
		kout << INFO << "SError interrupt\n";
		kout << INFO << "not processing it\n";
		asm_wfe_loop();
	}else{
		kout << INFO << "Currently unhandled exception\n";
		asm_wfe_loop();
	}
}

extern "C"
void IRQEL1Handle(uint64_t *savedRegisters)
{
	kout << INFO <<"processing IRQ_EL1 \n";

	auto iar = RegICC_IAR_EL1<1>::read(); // NOTE:by reading it, we  acknowledged it.So it will change to 1023 after this read
	auto eoi=RegICC_EOIR_EL1<1>::make(0);
	eoi.INTID = iar.INTID;
	RegICC_RPR_EL1::read().dump();
	RegICC_PMR_EL1::read().dump();
//	RegGICD_ISACTIVER0::read().dump();
//	RegGICR_ISACTIVER0::read().dump();
//	RegGICD_ISPENDR0::read().dump();
//	RegGICR_ISPENDR0::read().dump();
	RegISR_EL1::read().dump();
	iar.dump();
	// write here to make sure that the event come in order
	if(iar.INTID == 27) // virtual timer event stream
	{
		RegCNTV_CTL_EL0 ctl {0};
		ctl.ENABLE = 0;
		ctl.write();
		ctl.ENABLE = 1;
		ctl.IMASK = 0;
		ctl.write();
		eoi.write();
	}else if(iar.INTID == INT_NS_PHY_TIMER)//el1 physical timer interrupt
	{
	    ktimer.nextPeriod();
		eoi.write();
		// this no return
//	    processManager.scheduleNextProcess(savedRegisters);
	}else{ // others
		eoi.write();
	}
}


//The CPU interface has two IARs. Reading the IAR returns the INTID, and advances the interrupt
//state machine. In a typical interrupt handler, one of the first steps when handling an interrupt is to
//read one of the IARs

extern "C"
void FIQEL1Handle()
{
	kout << INFO <<"processing FIQ_EL1 \n";
    RegICC_RPR_EL1::read().dump();
	auto iar = RegICC_IAR_EL1<0>::read();
	iar.dump();
	auto eoi=RegICC_EOIR_EL1<0>::make(0);
	eoi.INTID = iar.INTID; // this must be correctly done, else eret will causes errors
	eoi.write();
}

extern "C"
void SErrorEL1Handle()
{
	kout << INFO << "processing SErrorEL1 \n";
}





