/*
 * InterruptHandler.h
 *
 *  Created on: Apr 6, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_
#define INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_

#include <def.h>
#include <interrupt/exception_def.h>
#include <interrupt/svc_call.h>
#include <interrupt/GICDefinitions.h>
#include <generic_util.h>
#include <arch/common_aarch64/registers/gicv3_registers.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <data/Vector.h>
#include <interrupt/ExceptionState.h>
#include <programming/define_members.h>
#include <schedule/Process.h>

/**
 * 适用于ARMv8，但是ARMv8不一定需要使用GIC中断系统，比如BCM2837使用的就是一个更加简单的模型
 */
template <class _IntManager>
class InterruptHandler{
public:
	using IntManager = _IntManager;
	InterruptHandler(IntManager * intman);
	DELETE_COPY(InterruptHandler);
	/**
	 * 该处理函数被exceptionCHandler调用，为了效率上的考虑，将其inline
	 * @param savedRegs
	 * @param origin
	 * @param sp
	 */
	void handle(uint64_t  * savedRegs,
			ExceptionType type,
			ExceptionOrigin origin,
			IntID         id
			);
	void     rebase(size_t diff);
	void handleUndefinedInstruction();
	void handleInstructionAbort();
	void handleDataAbort();
	void handleSPAlignmentFault();
	void handlePCAlignmentFault();
	void handleSVC(SvcFunc func);
	void handleIRQ(IntID id);
	void handleFIQ(IntID id);
	void handleInputEvent();
	void handleSError();
	void unhandledException();

	/**
	 * 可能经过几重中断，现在寄存器已经不是进入时的状态，需要还原。
	 */
	void exitCurrent();

	ExceptionState & currentState() { return _nestedExceps.last();}
	const ExceptionState & currentState()const{return _nestedExceps.last();}

	AS_MACRO bool allowSyncException()const{return _allowSyncExcep;}
	void          allowSyncException(bool v){_allowSyncExcep=v;}
	void          allowEvent(StandardInterruptType event,bool en) {	_intm->enableInterrupt(
			_intm->standardIntID(event),en);}
	/**
	 * 通过等待那些可能出现READY状态进程的事件
	 */
	void          waitReadyProcess();
private:
	void          schedule(Process::Status curStatus=Process::READY);
private:
	bool          _allowSyncExcep; // 是否允许非同步异常的发生？
	Vector<ExceptionState>  _nestedExceps; // size>0时表明有异常正在处理
	IntManager        * _intm;
};


#endif /* INCLUDE_INTERRUPT_INTERRUPTHANDLER_H_ */
