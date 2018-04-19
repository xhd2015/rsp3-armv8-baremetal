/*
 * VectorRef_tempdecl.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_VECTORREF_TEMPDECL_H_
#define INCLUDE_DATA_VECTORREF_TEMPDECL_H_



#include <def.h>
#include <io/Output.h>
#include <data/forward_decl.h>
#include <generic/error.h>

/**
 * 对Vector的引用，可以从任意位置开始，包含任意允许的数量。
 * 引用可以是常量，也可以修改
 */
template <class T>
class VectorRef{
public:
	VectorRef()=delete;
	VectorRef(const T *_data,size_t len);
	VectorRef(const Vector<T>& vec,size_t len=SIZE_MAX,size_t offset=0);
	AS_MACRO const T * data()const { return _data;}
	AS_MACRO size_t    size()const { return _size;}
	AS_MACRO void	  data(const T * data) { _data=data;}
	AS_MACRO void	  size(size_t size) { _size = size;}
	AS_MACRO const T&  operator[](size_t i)const { assert(i<_size);return _data[i];}


private:
	const T *_data;
	size_t _size;
};

template <class T>
Output & operator<<(Output & out,const VectorRef<T> &ref);




#endif /* INCLUDE_DATA_VECTORREF_TEMPDECL_H_ */
