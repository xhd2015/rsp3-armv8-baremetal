/*
 * VectorRef.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_VECTORREF_H_
#define INCLUDE_DATA_STRUCTURES_VECTORREF_H_

#include <def.h>
#include <data_structures/Vector.h>
#include <printk.h>

template <class T>
class VectorRef{
public:
	VectorRef()=delete;
	VectorRef(const T *data,size_t len);
	VectorRef(const Vector<T> vec,size_t len=SIZE_MAX,size_t offset=0);
	const T * getData()const;
	size_t    getSize()const;
	void	  setData(const T * data);
	void	  setSize(size_t size);
	const T&  operator[](size_t i)const;

private:
	const T *data;
	size_t size;
};

template <class T>
Output & operator<<(Output & out,const VectorRef<T> &ref);

#include <templates_implementation/data_structures/VectorRef.h>

#endif /* INCLUDE_DATA_STRUCTURES_VECTORREF_H_ */
