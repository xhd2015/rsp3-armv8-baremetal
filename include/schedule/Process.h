/*
 * Progress.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESS_H_
#define INCLUDE_SCHEDULE_PROGRESS_H_

#include <data_structures/LinkedList.h>
#include <schedule/PidManager.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <arch/common_aarch64/vmsa_descriptors.h>

// 提供一个统一的view
// 系统层面的Process，不是用户层面的Process
class Process{
public:
	enum Config{
		PAGE_SIZE = 4*KiB,
		KERN_ARG_NUM = 4 * sizeof(uint64_t),
		STACK_L3_INDEX=508, STACK_L3_ENTRY_NUM=2,
		HEAP_L3_INDEX = 510,HEAP_L3_ENTRY_NUM = 2,
		TABLE_ALIGNMENT = 4*KiB,
		TABLE_SIZE = 4*KiB,
		CODE_BASE_ALIGNMENT = 4*KiB,
		SP_BASE_ALIGNMENT = 16, // bits[3:0]==0b0000
	};
	enum Status{
		CREATED_INCOMPLETE, // 在创建过程中产生某些错误，此时进程就处于这种状态
		CREATED, // 创建成功
		READY,  // 进程可以运行
		RUNNING,
		BLOCKED,
		STOPPED
	};

	Process();

	// 建立4级页表，申请空间，映射代码到0地址处,4KB对齐
	int init(size_t addrBitsLen,Process *parent,uint32_t priority,size_t codeSize,size_t heapSize,size_t spSize);

	void destroy();
	void* getCodeBase() const;
	size_t getCodeSize() const;
	void* getHeapBase() const;
	size_t getHeapSize() const;
	const Process* getParent() const;
	PidType getPid() const;
	uint32_t getPriority() const;
	RegELR_EL1 getELR() const;
	const uint64_t* getRegisters() const;
	const RegSPSR_EL1 getSPSR() const;
	const void* getSpBase() const;
	RegSP_EL0 getSpEL0() const;
	size_t getSpSize() const;
	Status getStatus() const;
	const RegDescriptor4KBL0* getTableL0() const;
	const RegDescriptor4KBL1* getTableL1() const;
	const RegDescriptor4KBL2* getTableL2() const;
	const RegDescriptor4KBL3* getTableL3() const;
	RegTTBR0_EL1 getTTBR0() const;

private:
	PidType     _pid;
	uint32_t     _priority;
	Status       _status;
	Process *   _parent;


	// ARMv8 特有的结构
	RegTTBR0_EL1   _ttbr0;
	RegSP_EL0   _spEL0;
	RegDescriptor4KBL0 * _tableL0;
	RegDescriptor4KBL1 * _tableL1;
	RegDescriptor4KBL2 * _tableL2;
	RegDescriptor4KBL3 * _tableL3;

	void*         _codeBase;
	size_t        _codeSize;

	void*         _heapBase;
	size_t        _heapSize;

	void*        _spBase;
	size_t       _spSize;

	uint64_t    _Registers[31];
	RegELR_EL1  _ELR;
	RegSPSR_EL1 _SPSR;
};


#endif /* INCLUDE_SCHEDULE_PROCESS_H_ */
