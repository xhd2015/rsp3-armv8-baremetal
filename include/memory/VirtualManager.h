/*
 * VirtualMemory.h
 *
 *  Created on: Apr 6, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MANAGER_VIRTUALMEMORY_H_
#define INCLUDE_MANAGER_VIRTUALMEMORY_H_

#include <def.h>
#include <runtime_def.h>
#include <data/Vector.h>
#include <memory/AddressSpaceDescriptor.h>
#include <memory/VirtualMap.h>
#include <memory/VirtualMemoryDefinition.h>

class VirtualManager{
public:
	using _D = VirtualMemoryDefinition;

	/**
	 * 构造一个对象，但是并不立即执行它的功能。
	 * 因为这个对象的功能具有副作用。
	 */
	VirtualManager(size_t addressBits=0);


	int   init();

	/**
	 * 启用mmu，并跳转到相应的地址，设置栈指针。
	 * 所有的指针值都已经调整过。
	 * @param jmpFunc  初始化完成后跳转的函数，注意，该函数的第一条指令推荐调用invalidateTTBR0，防止出现使用TTBR0的情况，因为那表明系统存在Bug。
	 * @param newSp    调用函数使用的新的栈指针，该指针可以设置为crt0中最初设置的值
	 * 			当设置为nullptr时，表示不设置
	 */
	void enableMMU(void* jmpFunc,
			void *virtualmap,
			void *memstart,
			size_t memsize,
			ExceptionLevel highestEL,
			void *newSp=nullptr);
	/**
	 * 使TTBR0置为无效，该函数应当在跳转到高端地址之后调用
	 * 通过设置TCR.EPD=1, 重置所有TTBR0的缓存即可。
	 */
	void enableTTBR0(bool enable);
	void updateTTBR0(const Descriptor4KBL0 *l0Table);
	void updateTTBR1(const Descriptor4KBL0 *l0Table);
	// DOCME because change of PAR_EL1 does not effect the
	//     memory system,so const applies here.
	void*  translateVAToPA(const void * va)const;
	uint64_t  translateVAToPA(uint64_t va)const;

	AS_MACRO size_t addressBits() const {		return _addressBits;}
	AS_MACRO size_t ttbr1Mask() const {		return upperMaskBits(64 - _addressBits);}
	/**
	 * @brief 构造一个按size描述的地址空间，没有间隔。
	 * 原来没有描述的部分使用默认属性代替, addr忽略，且认为第一个描述符的起始地址为0
	 * 如果配置存在错误，返回空
	 * @param config
	 * @return
	 */
	static Vector<AddressSpaceDescriptor> makeFullOrderedDescriptors(const Vector<AddressSpaceDescriptor> &config);
	/**
	 * 注意，需要设置为物理地址
	 * @param ttbr0
	 * @param va   虚拟地址
	 */
	void  setTTBR0Addr(RegTTBR0_EL1 & ttbr0,uint64_t va)const;
private:
	size_t          _addressBits;
};

#ifndef _NOT_NEED_VirtualManager
extern VirtualManager  virtman;
#endif




#endif /* INCLUDE_MEMORY_VIRTUALMANAGER_H_ */
