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
		ProcessLink *parent,
		size_t mapPhyPage,
		size_t phyPages,
		size_t memProcessBase,
		size_t startVaPage,
		size_t codeStartPage,size_t codePages, // 所有其他的都是正常类型,代码是只读的
		uint64_t stackTopPage,//va
		size_t  addrBits,
		void    *pmemStart,
		size_t   pmemSize,
		bool     pmemInitChunks
		)
	: _pid(pidManager.allocate()),
	  _priority(priority),
	  _status(CREATED_INCOMPLETE),
	  _parent(parent),
	  _memory(reinterpret_cast<void*>(mapPhyPage*VirtualMap::_D::PAGE_SIZE)),
	  _memoryBase(memProcessBase),
	  _memsize(phyPages*VirtualMap::_D::PAGE_SIZE),
	  _pmman(pmemStart,pmemSize,pmemInitChunks),
	  _ttbr0(RegTTBR0_EL1::make(0)), // FIXME 使用0值初始化
	  _spEL0(RegSP_EL0::make(0)),
	  _ELR(RegELR_EL1::make(0)),
	  _SPSR(RegSPSR_EL1::make(0)),
	  _vmap(mapPhyPage, phyPages,
			  false,
			  reinterpret_cast<void*>(startVaPage * VirtualMap::_D::PAGE_SIZE),
			  addrBits),
	  _catchInput(false),
	  _inputBuffer(nullptr)
{
	if(_pid == PID_INVALID)
		return;
	// 必须在范围以内
	assert(codeStartPage>=startVaPage &&
			codeStartPage-startVaPage<=phyPages - codePages);

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
	// _FIXME 这里应当是cacheable
//	bool cacheable=false;
	bool cacheable=true;
	//start-codeStart之间 是正常可读写的
	if(codeStart>start)
		vec.emplaceBack(
				reinterpret_cast<void*>(start),
				codeStart - start,//size
				AddressSpaceDescriptor::T_NORMAL,false,cacheable,true);

	// FIXME code应当是read only的
	vec.emplaceBack(
			reinterpret_cast<void*>(codeStart),
			codeSize,
			AddressSpaceDescriptor::T_NORMAL,
			true,
			cacheable,
			true
			);
	// 因为start已经算在里面了，所以 第一部分的size=codeStart-start
	// 那么  -(codeStart-start)=-codeStart + start
	vec.emplaceBack(
			reinterpret_cast<void*>(codeStart+codeSize),
			phyPages*pageSize - codeStart - codeSize + start, // all left size
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
	mman.deallocate(_memory);
	//取出_ttbr0的asid
	asm_tlbi_aside1(_ttbr0.ASID);
	// 为了效率考虑，不重置指针值，因为DESTROYED可以判定这些值是否有效。
	_status = Process::Status::DESTROYED;
}

Process::Process(const Process & rhs)
	:_pid(pidManager.allocate()), // 这些值需要从rhs设置，其他的保留默认值
	 _priority(rhs._priority),
	 _status(CREATED_INCOMPLETE),
	 _parent(processManager.findAliveProcess(rhs.pid())),//TESTME 正确吗
	 _memory(mman.allocate(rhs._memsize,VirtualMap::_D::PAGE_SIZE)),
	 _memoryBase(rhs._memoryBase),
	 _memsize(rhs._memsize),
	 _pmman(_memory,_memsize,false),
	 _ttbr0(rhs._ttbr0),
	 _spEL0(rhs._spEL0),
	 _ELR(rhs._ELR),
	 _SPSR(rhs._SPSR),
	 _vmap(rhs._vmap),
	 _catchInput(rhs._catchInput),
	 _inputBuffer(rhs._inputBuffer)
{
	if(_pid == PID_INVALID)
		return;
	assert(_memory);//占用的内存不为空
	std::memcpy(_memory, rhs._memory,_memsize);
	// 改变L3层所指的页面基地址
	_vmap.rebaseL3(reinterpret_cast<uint64_t>(_memory)/VirtualMap::_D::PAGE_SIZE);
	// 赋值寄存器
	// FIXME 使用高效的memcpy
	std::memcpy(_registers, rhs._registers, sizeof(_registers));
	// DOCME 将ttbr0设置为物理地址，这十分重要
	virtman.setTTBR0Addr(_ttbr0,
			reinterpret_cast<uint64_t>(_vmap.l0Table()));
}

void Process::fillArguments(const VectorRef<String>& args)
{
	kout << INFO << "process filling arguments\n";
	kout << INFO << "process mman base = " << Hex(_pmman.base()) << "\n";
	kout << INFO << "process mman size = " << Hex(_pmman.size()) << "\n";
	_registers[0]=_pid;
	_registers[1]=args.size();
	size_t *p = _pmman.allocateAs<size_t*>(args.size() * sizeof(char*));
	for(size_t i=0;i!=args.size();++i)
	{
		char * cstr = _pmman.allocateAs<char*>(args[i].size() + 1);
		p[i] = reinterpret_cast<size_t>(convertToProcessPtr(cstr));
		cstr[args[i].size()]='\0';
		std::memcpy(cstr, args[i].data(), args[i].size());
	}
	_registers[2] = reinterpret_cast<uint64_t>(convertToProcessPtr(p));
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
//void dumpFromTTBR0Addr();//FIXME
void Process::restoreContextAndExecute(void* savedSpEL1)
{
//	kout << "\n";
//	kout << INFO << "Process restore\n";
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

void Process::setArgument(size_t argc,uint64_t *args)
{
	constexpr size_t dim=2;
	for(size_t i=0;i!=argc;++i)
	{
		switch(static_cast<Argument>(args[i*dim]))
		{
		case ARG_CATCH_INPUT:
			_catchInput = static_cast<bool>(args[i*dim + 1]);
			break;
		case ARG_INPUT_BUFFER_PTR:
			_inputBuffer = reinterpret_cast<Queue<uint16_t>*>(args[i*dim+1]);
			break;
		default:
			kout << FATAL << "unknown process argument\n";
			break;
		}
	}
}
