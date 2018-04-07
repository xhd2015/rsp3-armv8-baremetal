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

class VirtualManager{
public:
	using  InitFunctionPtr = void (*)();
	static constexpr size_t ADDRESS_BITS=40;
	static constexpr size_t PAGE_BITS=12;
	static constexpr size_t ENTRY_BITS=3;
	static constexpr size_t ENTRY_SIZE=(1<<ENTRY_BITS);
	static constexpr size_t ENTRY_NUM = (1 << (PAGE_BITS - ENTRY_BITS));
	static constexpr size_t PAGE_SIZE=4096;//4KB
	static const size_t MAP_SIZE[4];
//	static constexpr size_t PA_BITS_MAP[]={32,  36,  40,  42,  44,  48,  52};

	static constexpr size_t MEMORY_ATTR_NORMAL=0;  // typically:RAM
	static constexpr size_t MEMORY_ATTR_PERIPHERAL=1; // PERIPHERAL
	static constexpr size_t MEMORY_ATTR_NON_CACHEABLE=2; //不可缓存
	static constexpr size_t MEMORY_AP_RW = 0;
	static constexpr size_t MEMORY_AP_RO = 1;

	/**
	 *
	 * @param jmpFunc  初始化完成后跳转的函数，注意，该函数的第一条指令推荐调用invalidateTTBR0，防止出现使用TTBR0的情况，因为那表明系统存在Bug。
	 * @param newSp    调用函数使用的新的栈指针，该指针可以设置为crt0中最初设置的值
	 * @return
	 * 注意，在调用该函数前，应当通过calculateFlatMapPageNum来计算需要使用的页数目。
	 */
	int init(size_t mmuBasePage,size_t sizeAttrGroup[][3],size_t groupNum,InitFunctionPtr jmpFunc,void *newSp);


	/**
	 * 计算当使用4级页表，从0地址映射size大小的内存块时，所需的总得页表数目
	 * @param size
	 * @return
	 */
	size_t calculateFlatMapPageNum(size_t size)const;

	/**
	 * 使用4KB粒度,0-3级页表进行TTBR0和TTBR1的直接映射.
	 * @param mmuBasePage  用于映射的表基地址，注意，必须保证预留足够的空间，所需的总的页表数目从calculateFlatMapPageNum获取
	 * @param sizeAttrGroup  三元组，包括(size, attrIndex,read-only)属性， 用于标记一个内存块的属性 。  注意，由于是直接映射，所以其实地址默认为0 。  size必须是PAGE的整数倍，否则无法实现映射。
	 *                   注意，该三元组支持size=0的元组，这种情况下它将被忽略掉
	 * @param groupNum     sizeAttrGroup的大小
	 *
	 * 调用该函数的前提是调用者知道所需的所有页的数目
	 *
	 */
	void setFlatMap(size_t mmuBasePage,size_t sizeAttrGroup[][3],size_t groupNum);

	/**
	 * 使TTBR0置为无效，该函数应当在跳转到高端地址之后调用
	 * 通过设置TCR.EPD=1, 重置所有TTBR0的缓存即可。
	 */
	void disableTTBR0();

	/**
	 * 通过内存和外设的信息来构造一个sizeAttrGroup,groupNum初始至少是10个，函数返回后是实际的值
	 * @param ramStart
	 * @param ramSize
	 * @param periphbase
	 * @param periphsize
	 * @param sizeAttrGroup
	 * @return  成功与否。失败是，表明给定的配置有错误（存在覆盖的情况）
	 */
	static bool makeSizeAttrGroup(size_t ramStart,size_t ramSize,size_t periphbase,size_t periphsize,size_t sizeAttrGroup[][3],size_t &groupNum);

	AS_MACRO size_t addressBits() const {		return _addressBits;}
	AS_MACRO size_t ttbr1Mask() const {		return _ttbr1Mask;}

private:
	size_t _addressBits;
	size_t _ttbr1Mask;
};

#ifndef _NOT_NEED_VirtualManager
extern VirtualManager  virtman;
#endif




#endif /* INCLUDE_MEMORY_VIRTUALMANAGER_H_ */
