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
#include <data_structures/Vector.h>
#include <memory/AddressSpaceDescriptor.h>
#include <memory/VirtualMap.h>
#include <memory/VirtualMemoryDefinition.h>

class VirtualManager{
public:
	using  InitFunctionPtr = void (*)();
	using _D = VirtualMemoryDefinition;

	VirtualManager();

	/**
	 * 启用mmu，并跳转到相应的地址，设置栈指针。
	 * @param jmpFunc  初始化完成后跳转的函数，注意，该函数的第一条指令推荐调用invalidateTTBR0，防止出现使用TTBR0的情况，因为那表明系统存在Bug。
	 * @param newSp    调用函数使用的新的栈指针，该指针可以设置为crt0中最初设置的值
	 */
	void enableMMU(InitFunctionPtr jmpFunc,void *newSp);
	/**
	 * 使TTBR0置为无效，该函数应当在跳转到高端地址之后调用
	 * 通过设置TCR.EPD=1, 重置所有TTBR0的缓存即可。
	 */
	void enableTTBR0(bool enable);
	void updateTTBR0(Descriptor4KBL0 *l0Table);
	void updateTTBR1(Descriptor4KBL0 *l0Table);
	void*  translateVAToPA(const void * va);
	uint64_t  translateVAToPA(uint64_t va);

	AS_MACRO size_t addressBits() const {		return _addressBits;}
	AS_MACRO size_t ttbr1Mask() const {		return _ttbr1Mask;}
	/**
	 * @brief 构造一个按size描述的地址空间，没有间隔。
	 * 原来没有描述的部分使用默认属性代替, addr忽略，且认为第一个描述符的起始地址为0
	 * 如果配置存在错误，返回空
	 * @param config
	 * @return
	 */
	static Vector<AddressSpaceDescriptor> makeFullOrderedDescriptors(const Vector<AddressSpaceDescriptor> &config);

private:
	size_t          _addressBits;
	size_t          _ttbr1Mask;
};

#ifndef _NOT_NEED_VirtualManager
extern VirtualManager  virtman;
#endif




#endif /* INCLUDE_MEMORY_VIRTUALMANAGER_H_ */
