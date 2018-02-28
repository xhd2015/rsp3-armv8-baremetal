/*
 * VectorDelim.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_VECTORDELIM_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_VECTORDELIM_H_

#include <VectorDelim.h>

template <class T>
VectorDelim<T>::VectorDelim(const Vector<T> &vec,const String &delim)
	:vec(&vec),delim(delim){}

template <class T>
const Vector<T> &VectorDelim<T>::getVector()const
{
	return vec;
}

template <class T>
const String &VectorDelim<T>::getDelim()const
{
	return delim;
}

template <class T>
Output & operator<<(Output &out,const VectorDelim<T> &delim)
{
	auto &vec=delim.getVector();
	auto &delimStr = delim.getDelim();
	for(size_t i=0;i!=vec.getSize();++i)
		out << vec[i] << delim;
	return out;
}


#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_VECTORDELIM_H_ */
