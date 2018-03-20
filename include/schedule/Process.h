/*
 * Progress.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESS_H_
#define INCLUDE_SCHEDULE_PROGRESS_H_

#include <data_structures/ForwardList.h>
#include <schedule/PidManager.h>
#include <arch/common_aarch64/system_common_registers.h>
#include <arch/common_aarch64/vmsa_descriptors.h>
#include <programming/define_members.h>

// 提供一个统一的view
// 系统层面的Process，不是用户层面的Process
class Process{
public:
	enum Config{
		PAGE_SIZE = 4*KiB,
		KERN_ARG_NUM = 4 * sizeof(uint64_t),
		CODE_L3_INDEX = 1, CODE_L3_ENTRY_NUM=5,
		STACK_L3_INDEX=508, STACK_L3_ENTRY_NUM=2,
		HEAP_L3_INDEX = 510,HEAP_L3_ENTRY_NUM = 2,
		TABLE_ALIGNMENT = 4*KiB,
		TABLE_SIZE = 4*KiB,
		CODE_BASE_ALIGNMENT = 4*KiB,
		SP_BASE_ALIGNMENT = 16, // bits[3:0]==0b0000
		REGISTER_NUM = 31,
	};
	enum Status{
		CREATED_INCOMPLETE, // 在创建过程中产生某些错误，此时进程就处于这种状态
		CREATED, // 创建成功
		READY,  // 进程可以运行
		RUNNING,    // 进程正在进行
		BLOCKED,    // 进程阻塞，正在等待某个事件
		STOPPED,    // 进程已经执行完毕，但是使用的资源还没有回收
		DESTROYED, //已经将进程回收了

		STATUS_NUM
	};
	enum Error{
		SUCCESS=0,
		PID_ALLOCATE_FAILED,
		SPACE_ALLCOATE_FAILED,
	};

//	__attribute__((optimize("-Wno-error=effc++")))
	Process();
	~Process();

	// 复制当前进程， fork的实现
	// @return CREATED_INCOMPLETE,或者CREATED的进程
	// 由于pid等资源, 实现隐式的fork构造函数, 不允许赋值，但是允许构造
	// fork进程之间默认是 父子关系，而不是兄弟关系
	Process(const Process & rhs);
	Process& operator=(const Process &rhs)=delete;
	Process(Process &&rhs)=delete;
	Process& operator=(Process &&rhs)=delete;



	// 建立4级页表，申请空间，映射代码到0地址处,4KB对齐
	Error init(size_t addrBitsLen,Process *parent,uint32_t priority,size_t codeSize,size_t heapSize,size_t spSize);
	// set ttbr0,tabelL0~tableL3, {code,heap,sp}{base,size}
	Error setupTables(size_t codeSize,size_t heapSize,size_t spSize);
	void destroy();


	void saveContext(const uint64_t *savedRegisters);
	// 还原进程的状态，如果调用此函数后不需要返回现场，则传递sp的值来设置下次进入EL1时的栈指针。
	// 如果savedSpEL1 为空，表示不设置
	void restoreContextAndExecute(void *savedSpEL1 = nullptr);


	void* codeBase() const;
	size_t codeSize() const;
	RegELR_EL1 ELR() const;
	void* heapBase() const;
	size_t heapSize() const;
	const Process* parent() const;
	Pid pid() const;
	uint32_t priority() const;
	uint64_t *      registers();
	const uint64_t* registers() const;
	void* spBase() const;
	RegSP_EL0 spEL0() const;
	size_t spSize() const;
	Status status() const;
	void   status(Status status);
	const RegSPSR_EL1 SPSR() const;
	const RegDescriptor4KBL0* tableL0() const;
	RegDescriptor4KBL1* tableL1() const;
	RegDescriptor4KBL2* tableL2() const;
	const RegDescriptor4KBL3* tableL3() const;
	const RegTTBR0_EL1& TTBR0() const;

private:
	Pid     _pid  {PID_INVALID};
	uint32_t     _priority {0};
	Status       _status {Process::CREATED_INCOMPLETE};
	Process *   _parent {nullptr};


	// ARMv8 特有的结构
	RegTTBR0_EL1   _ttbr0 {0};
	RegSP_EL0   _spEL0 {0};
	RegDescriptor4KBL0 * _tableL0{nullptr};
	RegDescriptor4KBL1 * _tableL1{nullptr};
	RegDescriptor4KBL2 * _tableL2{nullptr};
	RegDescriptor4KBL3 * _tableL3{nullptr};

	void*         _codeBase{nullptr};
	size_t        _codeSize{0};

	void*         _heapBase{nullptr};
	size_t        _heapSize{0};

	void*        _spBase{nullptr};
	size_t       _spSize{0};

	// 注意, _registers[0] 通常作为返回值
	uint64_t    _registers[REGISTER_NUM];
	RegELR_EL1  _ELR {0};
	RegSPSR_EL1 _SPSR {0};
};


#endif /* INCLUDE_SCHEDULE_PROCESS_H_ */
