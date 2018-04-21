/*
 * Progress.cpp
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */


#include <schedule/Process.h>
#include <schedule/PidManager.h>
#include <asm_instructions.h>
#include <interrupt/exception_def.h>
#include <memory/VirtualAddress.h>
#include <memory/VirtualManager.h>


Process::Process(
		uint32_t priority,
		Process *parent,
		size_t mapPhyPage,
		size_t pagesNeeded,
		size_t startVaPage,
		size_t codeStartPage,size_t codePages, // 所有其他的都是正常类型,代码是只读的
		uint64_t stackTopPage,//va
		size_t  addrBits
		)
	: _pid(pidManager.allocate()),
	  _priority(priority),
	  _status(CREATED_INCOMPLETE),
	  _parent(parent),
	  _ttbr0(RegTTBR0_EL1::make(0)), // FIXME 使用0值初始化
	  _spEL0(RegSP_EL0::make(0)),
	  _ELR(RegELR_EL1::make(0)),
	  _SPSR(RegSPSR_EL1::make(0)),
	  _vmap(mapPhyPage, pagesNeeded,
			  false,
			  reinterpret_cast<void*>(startVaPage * VirtualMap::_D::PAGE_SIZE),
			  addrBits)
{
	if(_pid == PID_INVALID)
		return;
	// 必须在范围以内
	assert(codeStartPage>=startVaPage &&
			codeStartPage-startVaPage<=pagesNeeded - codePages);

	constexpr size_t pageSize=VirtualMap::_D::PAGE_SIZE;
	auto start = startVaPage * pageSize;
//	auto size = pagesNeeded * pageSize;
	auto codeStart = codeStartPage*pageSize;
	auto codeSize = codePages * pageSize;

	for(size_t i=0;i!=REGISTER_NUM;++i)
		_registers[i]=0;
	_registers[0]=_pid;//设置启动参数
	// 组成有序的页表映射
	Vector<AddressSpaceDescriptor>  vec;
	// FIXME 这里应当是cacheable
	bool cacheable=false;
	if(codeStart>start)
		vec.emplaceBack(
				reinterpret_cast<void*>(start),
				codeStart,
				AddressSpaceDescriptor::T_NORMAL,false,cacheable,true);
	vec.emplaceBack(
			reinterpret_cast<void*>(codeStart),
			codeSize,
			AddressSpaceDescriptor::T_NORMAL,
			true,
			cacheable,
			true
			);
	vec.emplaceBack(
			reinterpret_cast<void*>(codeStart+codeSize),
			pagesNeeded*pageSize - codeStart - codeSize,
			AddressSpaceDescriptor::T_NORMAL,
			false,
			cacheable,
			true
	);
	_vmap.mapL0();
	_vmap.mapL1();
	_vmap.mapL2();
	_vmap.mapL3(vec);
	_ttbr0.ASID = _pid;
	virtman.setTTBR0Addr(_ttbr0,
			reinterpret_cast<uint64_t>(_vmap.l0Table()));
	_spEL0.SP = stackTopPage*pageSize;
	_ELR.returnAddr = codeStart;
	// _SPSR = 0, allow more
	_SPSR.EL = 0;
	_SPSR.SPSel =0;
	_status = CREATED;
}

Process::~Process()
{
	if(_status == Process::Status::DESTROYED)
		return;
	// 也许是CREATED_INCOMPLETE
	if(_pid!=PID_INVALID)
	{
		pidManager.deallocate(_pid);
		_pid = PID_INVALID;
	}
	//取出_ttbr0的asid
	asm_tlbi_aside1(_ttbr0.ASID);
	// 为了效率考虑，不重置指针值，因为DESTROYED可以判定这些值是否有效。
	_status = Process::Status::DESTROYED;
}

Process::Process(const Process & rhs)
	:_pid(pidManager.allocate()), // 这些值需要从rhs设置，其他的保留默认值
	 _priority(rhs._priority),
	 _status(CREATED_INCOMPLETE),
	 _parent(const_cast<decltype(_parent)>(&rhs)),
	 _ttbr0(rhs._ttbr0),
	 _spEL0(rhs._spEL0),
	 _ELR(rhs._ELR),
	 _SPSR(rhs._SPSR),
	 _vmap(rhs._vmap)
{
	if(_pid == PID_INVALID)
		return;
	// 赋值寄存器
	// FIXME 使用高效的memcpy
	std::memcpy(_registers, rhs._registers, sizeof(_registers));
	_registers[0]=_pid;
	// DOCME 将ttbr0设置为物理地址，这十分重要
	virtman.setTTBR0Addr(_ttbr0,
			reinterpret_cast<uint64_t>(_vmap.l0Table()));
}



void Process::saveContext(const uint64_t *savedRegisters)
{
	if(savedRegisters)
		std::memcpy(this->_registers, savedRegisters, sizeof(savedRegisters[0])*REGISTER_NUM);
	this->_ttbr0.update();
	this->_ELR.update();
	this->_SPSR.update();
	this->_spEL0.update();
}
void dumpFromTTBR0Addr();//FIXME
void Process::restoreContextAndExecute(void* savedSpEL1)
{
	kout << INFO << "Process restore\n";
//	_ttbr0.dump();
	this->_ttbr0.write();
	asm_tlbi_vmallel1(); // FIXME 可以通过判断_ttbr0更新与否来选择是否重置
//	dumpFromTTBR0Addr();
	this->_ELR.write();
	this->_SPSR.write();
	this->_spEL0.write();

	// 从低地址开始还原, 绝对不会发生同步异常
	__asm__ __volatile__(
		"cbz %1, 1f \n\t" // if savedSpEL1==nullptr, branch
		"mov  sp,  %1 \n\t" // else set sp=savedSpEL1
		"1: \n\t"
		"mov  x30, %0 \n\t"
		RESTORE_REGS_ASM_INSTR_X30_BASE()
		"eret \n\t"
		::"r"(_registers),"r"(savedSpEL1)
		:"sp"
	);

}
