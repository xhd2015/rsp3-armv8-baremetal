/*
 * VirtualMap.h
 *
 *  Created on: Apr 9, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_MEMORY_VIRTUALMAP_H_
#define INCLUDE_MEMORY_VIRTUALMAP_H_
#include <memory/MemoryManager.h>
#include <arch/common_aarch64/registers/vmsa_descriptors.h>
#include <programming/define_members.h>
#include <memory/VirtualAddress.h>
#include <memory/AddressSpaceDescriptor.h>
#include <data/Vector.h>
#include <memory/VirtualMemoryDefinition.h>

/**
 * 将从phyPageStart开始的n个页面映射到虚拟地址vaAddr处
 *
 * 我们只设置必要的项，也就是说，只考虑基地址p到p+size之间的有效映射
 * p以下，p+size以上的映射均不考虑。
 *
 *
 */
class VirtualMap{
public:
	using _D = VirtualMemoryDefinition;

	VirtualMap();
	/**
	 *
	 * @param phyPageStart 物理地址
	 * @param pageCount
	 * @param global
	 * @param vaAddr      虚拟地址， 注意：不包括高位（即TTBR选择位）
	 * @param addrBits
	 */
	VirtualMap(size_t phyPageStart,size_t pageCount,
			bool global,const void *vaAddr,size_t addrBits);
	// TODO 完成移动构造
	VirtualMap(VirtualMap && map);
	const VirtualMap & operator=(VirtualMap && map);
	~VirtualMap();
	// 实现了复制语义，只复制L3的属性，因为L0~L2都是与配置无关的，只与内存有关的
	VirtualMap(const VirtualMap & map);
	VirtualMap & operator=(const VirtualMap &rhs)=delete;

	/**
	 *
	 * @param l0Table
	 * @param l0Size
	 * @param l1TableAddr 必须保证是page_size的整数倍。
	 */
	void mapL0();
	void mapL1();
//	void mapL1(const Vector<AddressSpaceDescriptor> &descr);
	void mapL2();
//	void mapL2(const Vector<AddressSpaceDescriptor> &descr); // 以L2为Descriptor

//	template <class Descriptor>
//	void mapAsDescriptor(const Vector<AddressSpaceDescriptor> &descr);
//	template <class Descriptor>
//	void mapAsTable();
	/**
	 *
	 * @param l2Table
	 * @param l3Size
	 * @param descr  descr必须
	 */
	void mapL3(const Vector<AddressSpaceDescriptor> &descr);
	void rebaseL3(size_t basePage);

	bool globalPages()const { return _global;}
	void globalPages(bool v){ _global=v;}

	AS_MACRO Descriptor4KBL0* l0Table()  {		return _l0Table;}
	AS_MACRO const Descriptor4KBL0* l0Table() const {		return _l0Table;}
	AS_MACRO void l0Table(Descriptor4KBL0* l0Table) {		_l0Table = l0Table;}
	AS_MACRO Descriptor4KBL1* l1Table() {		return _l1Table;}
	AS_MACRO void l1Table(Descriptor4KBL1* l1Table) {		_l1Table = l1Table;}
	AS_MACRO Descriptor4KBL2* l2Table()  {		return _l2Table;}
	AS_MACRO void l2Table(Descriptor4KBL2* l2Table) {		_l2Table = l2Table;}
	AS_MACRO Descriptor4KBL3* l3Table()  {		return _l3Table;}
	AS_MACRO void l3Table(Descriptor4KBL3* l3Table) {		_l3Table = l3Table;}
	size_t   size()const;
	size_t   size(size_t i)const { assert(i<4);return _sizes[i];}
private:
	void allocateTables();
private:
	Descriptor4KBL0 * _l0Table;
	Descriptor4KBL1 * _l1Table;
	Descriptor4KBL2 * _l2Table;
	Descriptor4KBL3 * _l3Table;
	size_t            _sizes[4];

	VirtualAddress    _startAddr;
	const void           *  _phyAddr; //
	size_t            _pageCount;
	bool              _global;

};



#endif /* INCLUDE_MEMORY_VIRTUALMAP_H_ */
