/*
 * InterruptHandler.h
 *
 *  Created on: Apr 6, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_
#define INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_

#include <def.h>
#include <runtime_def.h>
#include <interrupt/exception_def.h>
#include <interrupt/svc_call.h>
#include <interrupt/GICDefinitions.h>
#include <generic_util.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <arch/common_aarch64/registers/system_common_registers.h>

class InterruptHandler{
public:

	/**
	 * 该处理函数被exceptionCHandler调用，为了效率上的考虑，将其inline
	 * @param savedRegs
	 * @param origin
	 * @param sp
	 */
	AS_MACRO void handleInlined(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin);

	void handleUndefinedInstruction();
	void handleInstructionAbort();
	void handleDataAbort();
	void handleSPAlignmentFault();
	void handlePCAlignmentFault();
	void handleSVC(SvcFunc func);
	void handleIRQ(IntID id);
	void handleFIQ(IntID id);
	void handleSError();
	void unhandledException();

private:
	bool          _processing;//正在处理中断？
	ExceptionType _curType; // 当前中断类型
	ExceptionOrigin _curOrigin; //中断源
	uint64_t       *_savedRegisters;
};

void InterruptHandler::handleInlined(uint64_t  * savedRegs,ExceptionType type,ExceptionOrigin origin)
{
	_processing = true;
	_savedRegisters = savedRegs;
	_curType = type;
	_curOrigin = origin;
//	auto far = RegFAR_EL1::read();
//	auto elr = RegELR_EL1::read();
//	auto spsr = RegSPSR_EL1::read();
	switch(type)
	{
	case ExceptionType::IRQ:
	{
		//The CPU interface has two IARs. Reading the IAR returns the INTID, and advances the interrupt
		//state machine. In a typical interrupt handler, one of the first steps when handling an interrupt is to
		//read one of the IARs
		handleIRQ(RegICC_IAR_EL1<1>::read().INTID);//NOTE:by reading it, we  acknowledged it.So it will change to 1023 after this read
		break;
	}
	case ExceptionType::FIQ:
	{
		handleFIQ(RegICC_IAR_EL1<0>::read().INTID);
		break;
	}
	case ExceptionType::SError:
	{
		handleSError();
		break;
	}
	case ExceptionType::SYNC:
	{
		auto esr = RegESR_EL1::read();
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
	}
	_processing=false;
}

#ifndef _NOT_NEED_InterruptHandler
extern InterruptHandler intHandler;
#endif





#endif /* INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_ */
