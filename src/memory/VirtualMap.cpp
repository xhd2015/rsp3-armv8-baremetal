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
	mman.deallocate(_l0Table);
}
void VirtualMap::mapL0()
{
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
void VirtualMap::mapL3(const Vector<AddressSpaceDescriptor> &descr)
{
	// 设置curGroup
	size_t curGroup=0;
	while(descr[curGroup].size()==0)
		++curGroup;
	size_t curGroupLeftSize=descr[curGroup].size();
	size_t basePage = reinterpret_cast<size_t>(_phyAddr) >> _D::PAGE_BITS;
	size_t index=_startAddr.index(3);
	for(size_t i=index;i!=_sizes[3];++i)
	{
		Descriptor4KBL3::make(_l3Table + i, 0);
		// 仅当不是NOT_VALID,UNKNOWN的配置时，才映射，否则保留未配置状态
		auto type=descr[curGroup].type();
//		(void)type;
		if(type != AddressSpaceDescriptor::T_NOT_VALID && type!=AddressSpaceDescriptor::T_UNKOWN)
		{
			_l3Table[i].Valid=1;
			_l3Table[i].RES1_0=1;
			_l3Table[i].NS=1;
			_l3Table[i].OutputAddr = basePage+i-index; //VA[12:0] = OA[12:0]
			_l3Table[i].AF = 1; // if AF=0, the first access will generate a fault
//			_l3Table[i].AttrIndex=_D::MEMORY_ATTR_NORMAL;
			if(type==AddressSpaceDescriptor::T_NORMAL)
			{
				if(descr[curGroup].cacheable())
					_l3Table[i].AttrIndex = _D::MEMORY_ATTR_NORMAL;
				else
					_l3Table[i].AttrIndex = _D::MEMORY_ATTR_NON_CACHEABLE;
			}
			else if(type==AddressSpaceDescriptor::T_PERIPHERAL)
				_l3Table[i].AttrIndex = _D::MEMORY_ATTR_PERIPHERAL;

			_l3Table[i].PXN = 0;
			_l3Table[i].UXN = 0;
			_l3Table[i].Contiguous = 1;
			_l3Table[i].nG = (!_global); // apply to all ASID
//			_l3Table[i].nG=0;
			// no AP[0], AP[2]=0:read-write 1:read-only  AP[1]= can be access from EL0
			uint8_t ap=0;
			if(descr[curGroup].readOnly())
				ap|=(1<<1);
			if(descr[curGroup].el0Accessiable())
				ap|=1;
//			(void)ap;
			_l3Table[i].AP = ap ;// set read-only(1), or read-write(0) , and not from EL0
//			_l3Table[i].AP = 0;
			_l3Table[i].NS = 1; // non-secure
			_l3Table[i].SH = 0b10; //outer-shareable
		}
		curGroupLeftSize -= _D::PAGE_SIZE;
		if(curGroupLeftSize == 0)
		{
			while(descr[++curGroup].size()==0) // 略过所有size为0 的配置组
				;
			curGroupLeftSize = descr[curGroup].size();
		}
	}
}
void VirtualMap::allocateTables()
{
	auto size = _pageCount * _D::PAGE_SIZE;
	size_t pagesNeeded=0;
	for(size_t i=0;i!=4;++i)
	{
		size_t itPages=alignAhead(alignAhead(size,_D:: MAP_SIZE[i])/_D::MAP_SIZE[i]*_D::ENTRY_SIZE,_D::PAGE_SIZE)/_D::PAGE_SIZE;
		pagesNeeded += itPages;
		_sizes[i] = itPages*_D::PAGE_SIZE/_D::ENTRY_SIZE;
	}
	auto p = mman.allocateAs<char*>(pagesNeeded * _D::PAGE_SIZE, _D::PAGE_SIZE);
	assert(p);
	std::memset(p, 0, pagesNeeded * _D::PAGE_SIZE);
	_l0Table = reinterpret_cast<Descriptor4KBL0*>(p);
	_l1Table = reinterpret_cast<Descriptor4KBL1*>(_l0Table + _sizes[0]);
	_l2Table = reinterpret_cast<Descriptor4KBL2*>(_l1Table + _sizes[1]);
	_l3Table = reinterpret_cast<Descriptor4KBL3*>(_l2Table + _sizes[2]);
}
