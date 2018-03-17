/*
 * Progress.cpp
 *
 *  Created on: Mar 16, 2018
 *      Author: 13774
 */


#include <schedule/Process.h>
#include <schedule/PidManager.h>
#include <arch/common_aarch64/mmu/VirtualAddress.h>
#include <asm_instructions.h>

int Process::init(size_t addrBitsLen,Process *parent,uint32_t priority,size_t codeSize,size_t heapSize,size_t spSize)
{
	this->_status = CREATED_INCOMPLETE;
	this->_pid = pidManager.allocate();

	if(_pid == INVALID_PID)
		return 1;
	this->_parent = parent;
	this->_priority = priority;



	VirtualAddress pcVa(0,addrBitsLen);
	pcVa.ttbrSel(0);
	VirtualAddress spVa(0,addrBitsLen);// 栈的虚拟地址从顶部开始
	spVa.ttbrSel(0);
	spVa.index(0,0);
	spVa.index(1,0);
	spVa.index(2,0);
	spVa.index(3,Process::STACK_L3_INDEX + Process::STACK_L3_ENTRY_NUM);

	this->_spEL0.SP = spVa.addr();
	this->_ELR.returnAddr = pcVa.addr();
	this->_SPSR = {0};
//	this->_savedSPSR.EL = 0;
//	this->_savedSPSR.SPSel = 0;

	// 由于代码，栈，堆都是需要进行页映射的，而最佳的映射方式是与表对齐。
	this->_codeSize = codeSize;
	this->_codeBase = mman.allocate(codeSize,TABLE_ALIGNMENT);
	this->_spSize = spSize;
	this->_spBase = mman.allocate(spSize,TABLE_ALIGNMENT);
	this->_heapSize = heapSize;
	this->_heapBase = mman.allocate(heapSize,TABLE_ALIGNMENT);

	this->_tableL0 = mman.allocateAs<RegDescriptor4KBL0*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL1 = mman.allocateAs<RegDescriptor4KBL1*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL2 = mman.allocateAs<RegDescriptor4KBL2*>(TABLE_SIZE,TABLE_ALIGNMENT);
	this->_tableL3 = mman.allocateAs<RegDescriptor4KBL3*>(TABLE_SIZE,TABLE_ALIGNMENT);

	if(_codeBase==nullptr || _heapBase==nullptr|| _spBase==nullptr || _tableL0 == nullptr || _tableL1==nullptr || _tableL2==nullptr || _tableL3==nullptr)
	{
		kout << FATAL << "a level of page table,heap or stack can not be allocated\n";
		return 1;
	}

	auto phyaddr = asm_at(reinterpret_cast<uint64_t>(_tableL0));
	_ttbr0.ASID = 0;
	_ttbr0.BADDR = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << 48) | (phyaddr.S0.PA47_12 << 12))>>1;
	_ttbr0.CnP=0;

	for(size_t i=0;i!=512;++i)
	{
		_tableL0[i].Valid = 0; // invalidate all
		_tableL1[i].S0.Valid = 0; // invalidate all
		_tableL2[i].S0.Valid = 0; // invalidate all
		_tableL3[i].Valid = 0; // invalidate all
	}

	_tableL0[0] = {0};
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
	// 映射代码到0-20KB
	for(size_t i=0;i!=5;++i)
	{
		_tableL3[i] = {0};
		_tableL3[i].RES1_0 = 1;
		_tableL3[i].AF = 1;
		_tableL3[i].Valid = 1;
		_tableL3[i].nG = 1;
		_tableL3[i].NS = 1;
		_tableL3[i].Contiguous = 1;
		_tableL3[i].AP = 0b11;//RO,EL0
		_tableL3[i].OutputAddr = ( (static_cast<uint64_t>(phyaddr.S0.PA51_48) << (48-12))|phyaddr.S0.PA47_12 )+i;
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

	this->_status = CREATED;
	return 0;

}

void* Process::getCodeBase() const {
	return _codeBase;
}

size_t Process::getCodeSize() const {
	return _codeSize;
}

void* Process::getHeapBase() const {
	return _heapBase;
}

size_t Process::getHeapSize() const {
	return _heapSize;
}

const Process* Process::getParent() const {
	return _parent;
}

PidType Process::getPid() const {
	return _pid;
}

uint32_t Process::getPriority() const {
	return _priority;
}

RegELR_EL1 Process::getELR() const {
	return _ELR;
}

const uint64_t* Process::getRegisters() const {
	return _Registers;
}

const RegSPSR_EL1 Process::getSPSR() const {
	return _SPSR;
}

const void* Process::getSpBase() const {
	return _spBase;
}

RegSP_EL0 Process::getSpEL0() const {
	return _spEL0;
}

size_t Process::getSpSize() const {
	return _spSize;
}

Process::Status Process::getStatus() const {
	return _status;
}

const RegDescriptor4KBL0* Process::getTableL0() const {
	return _tableL0;
}

const RegDescriptor4KBL1* Process::getTableL1() const {
	return _tableL1;
}

const RegDescriptor4KBL2* Process::getTableL2() const {
	return _tableL2;
}

const RegDescriptor4KBL3* Process::getTableL3() const {
	return _tableL3;
}

RegTTBR0_EL1 Process::getTTBR0() const {
	return _ttbr0;
}
