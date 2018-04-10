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


Process::Process()
{}

Process::~Process()
{
	destroy();
}

Process::Process(const Process & rhs)
	:_pid(pidManager.allocate()), // 这些值需要从rhs设置，其他的保留默认值
	 _priority(rhs._priority),
	 _parent(const_cast<decltype(_parent)>(&rhs)),
	 _spEL0(rhs._spEL0),
	 _ELR(rhs._ELR),
	 _SPSR(rhs._SPSR)
{
	if(_pid == PID_INVALID)
		return;
	// 赋值寄存器
	std::memcpy(_registers, rhs._registers, sizeof(_registers));

	// 必须保证在失败的情况下,codeBase等指针为nullptr
	auto err = setupTables(rhs._codeSize, rhs._heapSize, rhs._spSize);

	if(err == Error::SUCCESS)
	{
		std::memcpy(_codeBase, rhs._codeBase, _codeSize);
		std::memcpy(_heapBase, rhs._heapBase, _heapSize);
		std::memcpy(_spBase, rhs._spBase, _spSize);
		_status = CREATED;
	}
}

Process::Error Process::init(size_t addrBitsLen,Process *parent,uint32_t priority,size_t codeSize,size_t heapSize,size_t spSize)
{
	this->_pid = pidManager.allocate();

	if(_pid == PID_INVALID)
		return Error::PID_ALLOCATE_FAILED;
	this->_parent = parent;
	this->_priority = priority;

	VirtualAddress pcVa(0,addrBitsLen);
	pcVa.ttbrSel(0);
	pcVa.index(3,Process::CODE_L3_INDEX);// 将nullptr排除在外
	VirtualAddress spVa(0,addrBitsLen);// 栈的虚拟地址从顶部开始
	spVa.ttbrSel(0);
	spVa.index(0,0);
	spVa.index(1,0);
	spVa.index(2,0);
	spVa.index(3,Process::STACK_L3_INDEX + Process::STACK_L3_ENTRY_NUM);

	this->_spEL0.SP = spVa.addr();
	this->_ELR.returnAddr = pcVa.addr();
	this->_SPSR = RegSPSR_EL1::make(0);// enable all interrutps
//	this->_savedSPSR.EL = 0; //EL=0时SPSel必须等于0
//	this->_savedSPSR.SPSel = 0;

	auto err = setupTables(codeSize, heapSize, spSize);

	if(err == Error::SUCCESS)
		this->_status = CREATED;
	return err;

}

Process::Error Process::setupTables(size_t codeSize,size_t heapSize,size_t spSize)
{
	this->_codeSize = codeSize;
	this->_codeBase = mman.allocate(codeSize,TABLE_ALIGNMENT);
	this->_spSize = spSize;
	this->_spBase = mman.allocate(spSize,TABLE_ALIGNMENT);
	this->_heapSize = heapSize;
	this->_heapBase = mman.allocate(heapSize,TABLE_ALIGNMENT);

	this->_tableL0 = mman.allocateAs<Descriptor4KBL0*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL1 = mman.allocateAs<Descriptor4KBL1*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL2 = mman.allocateAs<Descriptor4KBL2*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL3 = mman.allocateAs<Descriptor4KBL3*>(TABLE_SIZE,TABLE_ALIGNMENT);

	if(_codeBase==nullptr || _heapBase==nullptr|| _spBase==nullptr || _tableL0 == nullptr || _tableL1==nullptr || _tableL2==nullptr || _tableL3==nullptr)
	{
		kout << FATAL << "a level of page table,heap or stack can not be allocated\n";
		return Error::SPACE_ALLCOATE_FAILED;
	}

	auto phyaddr = asm_at(reinterpret_cast<uint64_t>(_tableL0));
	_ttbr0.ASID = _pid;
	_ttbr0.BADDR = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << 48) | (phyaddr.S0.PA47_12 << 12))>>1;
	_ttbr0.CnP = 0;

	for(size_t i=0;i!=512;++i)
	{
		_tableL0[i].Valid = 0; // invalidate all
		_tableL1[i].S0.Valid = 0; // invalidate all
		_tableL2[i].S0.Valid = 0; // invalidate all
		_tableL3[i].Valid = 0; // invalidate all
	}

	Descriptor4KBL0::make(_tableL0+0,0);
	_tableL0[0].Valid = 1;
	_tableL0[0].IsTable = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(_tableL1));
	_tableL0[0].NextLevelTableAddr = (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);


	_tableL1[0].S1.IsTable = 1;
	_tableL1[0].S1.Valid = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(_tableL2));
	_tableL1[0].S1.NextLevelTableAddr = ( static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);


	_tableL2[0].S1.IsTable = 1;
	_tableL2[0].S1.Valid = 1;
	phyaddr = asm_at(reinterpret_cast<uint64_t>(_tableL3));
	_tableL2[0].S1.NextLevelTableAddr = (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12)) | (phyaddr.S0.PA47_12);

	phyaddr = asm_at(reinterpret_cast<uint64_t>(_codeBase));
	// 映射代码到4-24KB
	for(size_t i=0;i!=CODE_L3_ENTRY_NUM;++i)
	{
		_tableL3[CODE_L3_INDEX + i] = {0};
		_tableL3[CODE_L3_INDEX + i].RES1_0 = 1;
		_tableL3[CODE_L3_INDEX + i].AF = 1;
		_tableL3[CODE_L3_INDEX + i].Valid = 1;
		_tableL3[CODE_L3_INDEX + i].nG = 1;
		_tableL3[CODE_L3_INDEX + i].NS = 1;
		_tableL3[CODE_L3_INDEX + i].Contiguous = 1;
		_tableL3[CODE_L3_INDEX + i].AP = 0b11;//RO,EL0
		_tableL3[CODE_L3_INDEX + i].OutputAddr = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12))|phyaddr.S0.PA47_12 )+i;
	}
	auto spPhAddr = asm_at(reinterpret_cast<uint64_t>(_spBase));
	for(size_t i=0;i<Process::STACK_L3_ENTRY_NUM;++i)
	{
		_tableL3[Process::STACK_L3_INDEX+i] = {0};
		_tableL3[Process::STACK_L3_INDEX+i].RES1_0 = 1;
		_tableL3[Process::STACK_L3_INDEX+i].AF = 1;
		_tableL3[Process::STACK_L3_INDEX+i].Valid = 1;
		_tableL3[Process::STACK_L3_INDEX+i].nG = 1;
		_tableL3[Process::STACK_L3_INDEX+i].NS = 1;
		_tableL3[Process::STACK_L3_INDEX+i].Contiguous=0;
		_tableL3[Process::STACK_L3_INDEX+i].AP=0b01;//RW, EL0
		_tableL3[Process::STACK_L3_INDEX+i].OutputAddr = ((static_cast<uint64_t>(spPhAddr.S0.PA51_48) << (48-12))|(spPhAddr.S0.PA47_12)) + i;

	}
	auto headPhyAddr=asm_at(reinterpret_cast<uint64_t>(_heapBase));
	for(size_t i=0;i!=Process::HEAP_L3_ENTRY_NUM;++i)
	{
		_tableL3[Process::HEAP_L3_INDEX + i]={0};
		_tableL3[Process::HEAP_L3_INDEX+i].RES1_0 = 1;
		_tableL3[Process::HEAP_L3_INDEX+i].AF = 1;
		_tableL3[Process::HEAP_L3_INDEX+i].Valid = 1;
		_tableL3[Process::HEAP_L3_INDEX+i].nG = 1;
		_tableL3[Process::HEAP_L3_INDEX+i].NS = 1;
		_tableL3[Process::HEAP_L3_INDEX+i].Contiguous=0;
		_tableL3[Process::HEAP_L3_INDEX+i].AP=0b01;//RW, EL0
		_tableL3[Process::HEAP_L3_INDEX+i].OutputAddr = ((static_cast<uint64_t>(headPhyAddr.S0.PA51_48) << (48-12))|(headPhyAddr.S0.PA47_12)) + i;
	}
	return Error::SUCCESS;
}

void Process::destroy()
{
	if(_status == Process::Status::DESTROYED)
		return;
	// 也许是CREATED_INCOMPLETE
	if(_pid!=PID_INVALID)
	{
		pidManager.deallocate(_pid);
		_pid = PID_INVALID;
	}
	// 可以回收空指针
	mman.deallocate(_spBase);
	mman.deallocate(_heapBase);
	mman.deallocate(_codeBase);
	mman.deallocate(_tableL0);
	mman.deallocate(_tableL1);
	mman.deallocate(_tableL2);
	mman.deallocate(_tableL3);

	//取出_ttbr0的asid
	asm_tlbi_aside1(_ttbr0.ASID);


	// 为了效率考虑，不重置指针值，因为DESTROYED可以判定这些值是否有效。
//	_spBase = nullptr;
//	_heapBase = nullptr;
//	_codeBase = nullptr;
//	_tableL0 = nullptr;
//	_tableL1 = nullptr;
//	_tableL2 = nullptr;
//	_tableL3 = nullptr;
//
//	_spSize = 0;
//	_heapSize = 0;
//	_codeSize = 0;
	_status = Process::Status::DESTROYED;
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

void Process::restoreContextAndExecute(void* savedSpEL1)
{
	this->_ttbr0.write();
	this->_ELR.write();
	this->_SPSR.write();
	this->_spEL0.write();

	// 从低地址开始还原
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

void* Process::codeBase() const {
	return _codeBase;
}

size_t Process::codeSize() const {
	return _codeSize;
}

RegELR_EL1 Process::ELR() const {
	return _ELR;
}

void* Process::heapBase() const {
	return _heapBase;
}

size_t Process::heapSize() const {
	return _heapSize;
}

const Process* Process::parent() const {
	return _parent;
}

Pid Process::pid() const {
	return _pid;
}

uint32_t Process::priority() const {
	return _priority;
}
uint64_t *    Process::registers()
{
	return _registers;
}
const uint64_t* Process::registers() const {
	return _registers;
}

void* Process::spBase() const {
	return _spBase;
}

RegSP_EL0 Process::spEL0() const {
	return _spEL0;
}

size_t Process::spSize() const {
	return _spSize;
}
Process::Status Process::status() const
{
	return _status;
}
void   Process::status(Status status)
{
	_status = status;
}
const RegSPSR_EL1 & Process::SPSR() const {
	return _SPSR;
}

const Descriptor4KBL0* Process::tableL0() const {
	return _tableL0;
}

Descriptor4KBL1* Process::tableL1() const {
	return _tableL1;
}

Descriptor4KBL2* Process::tableL2() const {
	return _tableL2;
}

const Descriptor4KBL3* Process::tableL3() const {
	return _tableL3;
}

const RegTTBR0_EL1& Process::TTBR0() const {
	return _ttbr0;
}
