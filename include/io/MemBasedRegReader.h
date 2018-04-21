/*
 * MemBasedReg.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_UART_MEMBASEDREG_H_
#define INCLUDE_IO_UART_MEMBASEDREG_H_

#include <def.h>
#include <type_traits>
#include <utility>

template <bool is_volatile=true>
class MemBasedRegReader{
protected:
	using RegOffset = uint32_t;
	using BaseAddrType = std::conditional_t<is_volatile,volatile char *, char*>;
	template <class T>
	using QualType = std::conditional_t<is_volatile,volatile T,T>;
	template <class T>
	using QualPointerType = std::conditional_t<is_volatile,volatile T*,T*>;
	template <class T>
	using QualConstPointerType = std::conditional_t<is_volatile,const volatile T*,const T*>;
	// TODO 将所有的子类的函数替换为单参数，而非可变参数形式
	template <class AddrType>
	MemBasedRegReader(AddrType base)
		:_base(reinterpret_cast<BaseAddrType>(base)){}
	MemBasedRegReader(nullptr_t base)
		:_base(base){}
public:
	AS_MACRO void rebase(size_t diff){ _base += diff;}
	template <class T,RegOffset offset>
	AS_MACRO T regcopy()
	{
		return *reinterpret_cast<T*>(const_cast<char*>(_base) + offset);
	}
	// T 一定去除了volatile类型
	template <class T,RegOffset offset>
	AS_MACRO QualType<T> & reg()
	{
		static_assert(!std::is_volatile<T>::value && !std::is_const<T>::value,"T cannot be volatile or const");
		return *reinterpret_cast<QualPointerType<T>>(_base +  offset);
	}
	template <class T,RegOffset offset>
	AS_MACRO const QualType<T> &  reg()const
	{
		static_assert(!std::is_volatile<T>::value && !std::is_const<T>::value,"T cannot be volatile or const");
		return *reinterpret_cast<QualConstPointerType<T>>(_base +  offset);
	}
	template <class T>
	AS_MACRO QualType<T> & reg(RegOffset offset)
	{
		static_assert(!std::is_volatile<T>::value && !std::is_const<T>::value,"T cannot be volatile or const");
		return *reinterpret_cast<QualPointerType<T>>(_base +  offset);
	}
	template <class T>
	AS_MACRO const QualType<T> &  reg(RegOffset offset)const
	{
		static_assert(!std::is_volatile<T>::value && !std::is_const<T>::value,"T cannot be volatile or const");
		return *reinterpret_cast<QualConstPointerType<T>>(_base +  offset);
	}
	template <RegOffset offset>
	AS_MACRO QualType<uint8_t> & reg8(){return reg<uint8_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const QualType<uint8_t> & reg8()const{return reg<uint8_t,offset>();}
	template <RegOffset offset>
	AS_MACRO QualType<uint16_t> & reg16(){return reg<uint16_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const QualType<uint16_t>& reg16()const{return reg<uint16_t,offset>();}
	template <RegOffset offset>
	AS_MACRO QualType<uint32_t> & reg32(){return reg<uint32_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const QualType<uint32_t> & reg32()const{return reg<uint32_t,offset>();}
	template <RegOffset offset>
	AS_MACRO QualType<uint64_t> & reg64(){return reg<uint64_t,offset>();}
	template <RegOffset offset>
	AS_MACRO const QualType<uint64_t> & reg64()const{return reg<uint64_t,offset>();}

	AS_MACRO QualType<uint8_t> & reg8(RegOffset offset){return reg<uint8_t>(offset);}
	AS_MACRO const QualType<uint8_t> & reg8(RegOffset offset)const{return reg<uint8_t>(offset);}
	AS_MACRO QualType<uint16_t> & reg16(RegOffset offset){return reg<uint16_t>(offset);}
	AS_MACRO const QualType<uint16_t>& reg16(RegOffset offset)const{return reg<uint16_t>(offset);}
	AS_MACRO QualType<uint32_t> & reg32(RegOffset offset){return reg<uint32_t>(offset);}
	AS_MACRO const QualType<uint32_t> & reg32(RegOffset offset)const{return reg<uint32_t>(offset);}
	AS_MACRO QualType<uint64_t> & reg64(RegOffset offset){return reg<uint64_t>(offset);}
	AS_MACRO const QualType<uint64_t> & reg64(RegOffset offset)const{return reg<uint64_t>(offset);}

	AS_MACRO QualPointerType<void> regPtr(RegOffset offset){return _base + offset;}
	AS_MACRO QualConstPointerType<void> regPtr(RegOffset offset)const{return _base + offset;}
protected:
	BaseAddrType _base;
};


#endif /* INCLUDE_IO_UART_MEMBASEDREGREADER_H_ */
