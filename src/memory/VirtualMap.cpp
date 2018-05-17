/*
 * VirtualMap.cpp
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */
#include <memory/VirtualMap.h>
#include <generic/error.h>
#include <cstring>
#include <asm_instructions.h>
#include <memory/VirtualManager.h>

VirtualMap::VirtualMap()
:_l0Table(nullptr),
 _l1Table(nullptr),
 _l2Table(nullptr),
 _l3Table(nullptr),
 _startAddr(),
 _phyAddr(0),
 _pageCount(0),
 _global(false)
{}

VirtualMap::VirtualMap(size_t phyPageStart,size_t pageCount,bool global,const void *vaAddr,size_t addrBits)
	:_l0Table(nullptr),
	 _l1Table(nullptr),
	 _l2Table(nullptr),
	 _l3Table(nullptr),
	 _startAddr(reinterpret_cast<uint64_t>(vaAddr),addrBits),
	 _phyAddr(reinterpret_cast<const void*>(phyPageStart * _D::PAGE_SIZE)),
	 _pageCount(pageCount),
	 _global(global)
{
	allocateTables();
}
VirtualMap::~VirtualMap()
{
	if(_l0Table) // 通过_l0Table来判断
	{
		mman.deallocate(_l0Table);
		_l0Table=nullptr;
	}
}

VirtualMap::VirtualMap(const VirtualMap & map)
	:VirtualMap(
			reinterpret_cast<size_t>(map._phyAddr)/_D::PAGE_SIZE,
			map._l0Table?_pageCount:0, // 0避免分配不必要的内存
			map._global,
			reinterpret_cast<const void*>(map._startAddr.addr()),
			map._startAddr.addrLen()
			)
{
	if(_l0Table && map._l0Table)
	{
		mapL0();
		mapL1();
		mapL2();
		std::memcpy(_l3Table, map._l3Table,_sizes[3]*_D::PAGE_SIZE);
	}
}
void VirtualMap::mapL0()
{
	kout << INFO << "VirtuaMap mapL0\n";
	uint64_t  basePhyPage = reinterpret_cast<uint64_t>(virtman.translateVAToPA(_l1Table))>>_D::PAGE_BITS;
	size_t index=_startAddr.index(0);
	for(size_t i=index;i!=_sizes[0];++i)
//	for(size_t i=0;i!=_sizes[0];++i)
	{
		// 必须翻译成物理地址
		Descriptor4KBL0::make(_l0Table+i,0);
		_l0Table[i].IsTable = 1;
		_l0Table[i].Valid = 1;
		_l0Table[i].NextLevelTableAddr = basePhyPage + i - index;
	}
}
void VirtualMap::mapL1()
{
	kout << INFO << "VirtuaMap mapL1\n";
	uint64_t  basePhyPage = reinterpret_cast<uint64_t>(virtman.translateVAToPA(_l2Table))>>_D::PAGE_BITS;
	size_t index=_startAddr.index(1);
	for(size_t i=index;i!=_sizes[1];++i)
	{
		Descriptor4KBL1::make(_l1Table+i,0);
		_l1Table[i].S1.IsTable = 1;
		_l1Table[i].S1.Valid = 1;
		_l1Table[i].S1.NextLevelTableAddr = basePhyPage+i-index;
	}
}
void VirtualMap::mapL2()
{
	kout << INFO << "VirtuaMap mapL2\n";
	uint64_t  basePhyPage = reinterpret_cast<uint64_t>(virtman.translateVAToPA(_l3Table))>>_D::PAGE_BITS;
	size_t index=_startAddr.index(2);
	for(size_t i=index;i!=_sizes[2];++i)
	{
		Descriptor4KBL2::make(_l2Table+i,0);
		_l2Table[i].S1.IsTable = 1;
		_l2Table[i].S1.Valid = 1;
		_l2Table[i].S1.NextLevelTableAddr = (basePhyPage+i-index);
	}
}
// FIXME 这里可以采用更高效的方式，比如只设置第一个，其他的使用复制，改变地址即可
void VirtualMap::mapL3(const Vector<AddressSpaceDescriptor> &descr)
{
	kout << INFO << "VirtuaMap mapL3\n";
	for(size_t i=0;i!=descr.size();++i) // 必须是4KB的整数倍
		assert(descr[i].size() % _D::PAGE_SIZE == 0);
	// 设置curGroup
	size_t curGroup=0;
	while(curGroup <descr.size() && descr[curGroup].size()==0)
		++curGroup;
	if(curGroup==descr.size())
		return;
	size_t curGroupLeftSize=descr[curGroup].size();
	size_t basePage = reinterpret_cast<size_t>(virtman.translateVAToPA(_phyAddr)) >> _D::PAGE_BITS;
	size_t index=_startAddr.index(3);
	kout << "start index = " << index << "\n";
	kout << "basePhyPage = " << Hex(basePage) << "\n";
	kout << "l3Table[0] va = " << Hex(_l3Table) << "\n";
	for(size_t i=index;i!=_sizes[3];++i)
	{
		if(i%100000==0 || i==_sizes[3]-1 )
			kout << "Setting L3Table[" << i <<"]\n";
		// max=262143,too much
		Descriptor4KBL3::make(_l3Table + i, 0);
		// 仅当不是NOT_VALID,UNKNOWN的配置时，才映射，否则保留未配置状态
		auto type=descr[curGroup].type();
		if(i== (PERIPHBASE>>12))
		{
			kout << "Setting peripheral starting from [" <<i<<"]\n";
			kout << "type = " << type <<"\n";
		}
//		(void)type;
		if(type != AddressSpaceDescriptor::T_NOT_VALID && type!=AddressSpaceDescriptor::T_UNKOWN)
		{
			_l3Table[i].Valid=1;
			_l3Table[i].RES1_0=1;
			_l3Table[i].NS=1;
//			_l3Table[i].NS=0;
			_l3Table[i].OutputAddr = basePage+i-index; //VA[12:0] = OA[12:0]
			_l3Table[i].AF = 1; // if AF=0, the first access will generate a fault
//			_l3Table[i].AttrIndex=_D::MEMORY_ATTR_NORMAL;
			if(type==AddressSpaceDescriptor::T_NORMAL)
			{
				// FIXME 还原原来的设置
//				_l3Table[i].AttrIndex = _D::MEMORY_ATTR_PERIPHERAL;
				if(descr[curGroup].cacheable())
					_l3Table[i].AttrIndex = _D::MEMORY_ATTR_NORMAL;
				else
					_l3Table[i].AttrIndex = _D::MEMORY_ATTR_NON_CACHEABLE;
			}
			else if(type==AddressSpaceDescriptor::T_PERIPHERAL)
			{
				_l3Table[i].AttrIndex = _D::MEMORY_ATTR_PERIPHERAL;
			}

//			_l3Table[i].PXN = 0;
//			_l3Table[i].UXN = 0;
			// TESTME 真的很重要吗？ 可能tlbi才是重要的吧
//			if(i!=_sizes[3]-1) // 最后一个 // DOCME 非常重要，最后一个必须设置为 非连续的
//				_l3Table[i].Contiguous = 1;
			// DOCME contiguous very important

			_l3Table[i].nG = (!_global); // apply to all ASID
//			_l3Table[i].nG=0;
			// no AP[0], AP[2]=0:read-write 1:read-only  AP[1]= can be access from EL0
			uint8_t ap=0;
			if(descr[curGroup].readOnly())
				ap|=(1<<1);
			if(descr[curGroup].el0Accessiable())
				ap|=1;
			(void)ap;
			_l3Table[i].AP = ap ;// set read-only(1), or read-write(0) ,
								// and not from EL0(0) or else(1)
//			_l3Table[i].AP = 0;
			_l3Table[i].SH = 0b10; //outer-shareable
//			_l3Table[i].SH = 0b11;
		}
		curGroupLeftSize -= _D::PAGE_SIZE;
		if(curGroupLeftSize == 0)
		{
			while(++curGroup <descr.size() && descr[curGroup].size()==0);// 略过所有size为0 的配置组
			if(curGroup == descr.size())
				break;
			curGroupLeftSize = descr[curGroup].size();
		}
	}
}
void VirtualMap::rebaseL3(size_t basePage)
{
	size_t index=_startAddr.index(3);
	for(size_t i=index;i!=_sizes[3];++i)
	{
		_l3Table[i].OutputAddr = basePage + i-index;
	}
}
void VirtualMap::allocateTables()
{
	kout << INFO << "VirtualMap allocateTables\n";
	auto size = _pageCount * _D::PAGE_SIZE;
	kout << INFO << "memory needed to map = " << Hex(size) << "\n";
	size_t pagesNeeded=0;
	for(size_t i=0;i!=4;++i)
	{
		size_t itPages=alignAhead(alignAhead(size,_D:: MAP_SIZE[i])/_D::MAP_SIZE[i]*_D::ENTRY_SIZE,_D::PAGE_SIZE)/_D::PAGE_SIZE;
		pagesNeeded += itPages;
		_sizes[i] = itPages*_D::PAGE_SIZE/_D::ENTRY_SIZE;
	}
	kout << INFO << "pages needed to allocate = " << Hex(pagesNeeded) <<"\n";
	kout << INFO << "memory needed to allocate = " << Hex(pagesNeeded*_D::PAGE_SIZE) <<"\n";
	auto p = mman.allocateAs<char*>(pagesNeeded * _D::PAGE_SIZE, _D::PAGE_SIZE);
	assert(p);
	// bug的所在
	// FIXME 在启用MMU之后SD不能发送CMD8，可能memset超限
//	std::memset(p, 0, pagesNeeded * _D::PAGE_SIZE);
	_l0Table = reinterpret_cast<Descriptor4KBL0*>(p);
	_l1Table = reinterpret_cast<Descriptor4KBL1*>(_l0Table + _sizes[0]);
	_l2Table = reinterpret_cast<Descriptor4KBL2*>(_l1Table + _sizes[1]);
	_l3Table = reinterpret_cast<Descriptor4KBL3*>(_l2Table + _sizes[2]);
	kout << "l0Table = " << Hex(_l0Table) << "\n";
	kout << "l1Table = " << Hex(_l1Table) << "\n";
	kout << "l2Table = " << Hex(_l2Table) << "\n";
	kout << "l3Table = " << Hex(_l3Table) << "\n";
}
size_t   VirtualMap::size()const
{
	size_t sum=0;
	for(size_t i=0;i!=arrsizeof(_sizes);++i)
		sum+=_sizes[i];
	return sum;
}
