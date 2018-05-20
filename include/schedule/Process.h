/*
 * Progress.h
 *
 *  Created on: Mar 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_PROGRESS_H_
#define INCLUDE_SCHEDULE_PROGRESS_H_

#include <data/ForwardList.h>
#include <schedule/PidManager.h>
#include <arch/common_aarch64/registers/system_common_registers.h>
#include <arch/common_aarch64/registers/vmsa_descriptors.h>
#include <programming/define_members.h>
#include <schedule/schedule_forward.h>
#include <memory/VirtualMap.h>
#include <data/Queue.h>
#include <generic_util.h>

// 提供一个统一的view
// 系统层面的Process，不是用户层面的Process
class Process{
public:
	static constexpr size_t REGISTER_NUM=31;
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

	enum Argument{
		ARG_CATCH_INPUT,
		ARG_INPUT_BUFFER_PTR
	};

	enum Signal{
		SIG_WAKEUP,
		SIG_KILL
	};

	// 必须通过检查进程的status来获取当前的状态
	Process(
			uint32_t priority,
			ProcessLink *parent,
			size_t mapPhyPage,// 需要映射到的物理页面
			size_t phyPages,
			size_t memProcessBase,// 分配的内存的基地址
			size_t startVaPage,//起始虚拟地址
			size_t codeStartPage,size_t codePages, // 所有其他的都是正常类型,代码是只读的
			uint64_t stackTopPage,
			size_t   addrBits,
			void    *pmemStart, // 进程的内存管理起始地址
			size_t   pmemSize,  // 大小
			bool     pmemInitChunks  // 是否初始化
			);
	~Process();

	/**
	 * fork的实现
	 * fork进程之间默认是 父子关系，而不是兄弟关系
	 * 前置条件：必须保证Process不为：CREATED_INCOMPLETE, DESTROYED
	 * @param rhs
	 * 返回  CREATED_INCOMPLETE,或者CREATED的进程
	 */
	Process(const Process & rhs);
	Process& operator=(const Process &rhs)=delete;
	Process(Process &&rhs)=delete;
	Process& operator=(Process &&rhs)=delete;

	/**
	 * 填充进程所需的启动参数
	 * @param
	 * @param ptrBase  给进程分配的内存，在用户态所处的基地址。即，内存的映射基地址
	 */
	void fillArguments(const VectorRef<String> &args);

	void saveContext(const uint64_t *savedRegisters);

	// 注意：该过程保证不会发生同步异常
	// 还原进程的状态，如果调用此函数后不需要返回现场，则传递sp的值来设置下次进入EL1时的栈指针。
	// 如果savedSpEL1 为空，表示不设置
	// 注意，初始化程序可能借助设置saedSpEL1来进入用户空间，同时设置下一次进入内核空间的栈地址
	void restoreContextAndExecute(void *savedSpEL1 = nullptr);
	void setArgument(size_t argc,uint64_t *args);
	/**
	 * 前置条件:ptr是低端进程地址
	 * @param ptr
	 * @return
	 */
	template <class T>
	AS_MACRO T convertToKernelPtr(T ptr)
		{return pointerInc(ptr,reinterpret_cast<size_t>(_memory) - _memoryBase);}
	template <class T>
	AS_MACRO T convertToProcessPtr(T ptr)
		{return pointerInc(ptr, - reinterpret_cast<size_t>(_memory) + _memoryBase);}
	ProcessLink* parent() { return _parent;}
	const ProcessLink* parent() const { return _parent;}
	AS_MACRO Pid pid() const { return _pid;}
	AS_MACRO uint32_t priority() const { return _priority;}
	AS_MACRO void priority(uint32_t p) {  _priority=p;}
	uint64_t *      registers() { return _registers;}
	const uint64_t* registers() const { return _registers;}
	AS_MACRO const RegSP_EL0 &spEL0() const { return _spEL0;}
	AS_MACRO Status status() const { return _status;}
	AS_MACRO void   status(Status status) { _status=status;}
	AS_MACRO const RegELR_EL1& ELR() const { return _ELR;}
	AS_MACRO RegSPSR_EL1& SPSR() { return _SPSR;}
	AS_MACRO const RegSPSR_EL1& SPSR() const { return _SPSR;}
	AS_MACRO const VirtualMap& vmap()const { return _vmap;}
	AS_MACRO VirtualMap& vmap() { return _vmap;}
	AS_MACRO const RegTTBR0_EL1& TTBR0() const { return _ttbr0;}
	AS_MACRO bool  catchInput() const {return _catchInput;}
	AS_MACRO void  catchInput(bool c)  {_catchInput=c;}
	// DOCME 为了兼容性，字符是16位的，高8位表示控制信息
	AS_MACRO Queue<uint16_t>* inputBuffer() { return _inputBuffer;}
private:
	Pid           _pid  ;
	uint32_t     _priority;
	Status       _status ;
	ProcessLink *  _parent ; // DOCME _parent是一个有效指针
	// 内存
	void    *    _memory ;
	size_t       _memoryBase ; // 在进程空间中,内核分配的_memory的基地址。一般而言
							   // 进程将0~0x1000(1页)的地址空间标记为不可用，这是为了
	                           // 屏蔽nullptr。
	size_t       _memsize;
	MemoryManager  _pmman; // process memory manager

	// ARMv8 特有的结构
	RegTTBR0_EL1    _ttbr0 ;
	RegSP_EL0       _spEL0;
	RegELR_EL1      _ELR ;
	RegSPSR_EL1     _SPSR ;

	VirtualMap      _vmap;
	// 注意, _registers[0] 通常作为返回值
	uint64_t    _registers[REGISTER_NUM];

	// 与输入相关, _catchInput表明是否获取输入
	//          _inputBuffer则是输入缓冲区，注意，输入总是先放到系统缓冲区，仅当_inputBuffer为空时
	//              才从系统缓冲区移动到该缓冲区
	bool            _catchInput;
	Queue<uint16_t>     * _inputBuffer; // inputBuffer处于进程的内存中,这个参数需要进程创建后传递
									// 该类是通用的。 通过svc_call<SvcFunc::setProcessArgument>()
};


#endif /* INCLUDE_SCHEDULE_PROCESS_H_ */
