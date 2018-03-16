/*
 * VectorDelim.h
 *
 *  Created on: Feb 2, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_VECTORDELIM_H_
#define INCLUDE_VECTORDELIM_H_

#include <data_structures/Vector.h>
#include "io/printk.h"

template <class T>
class VectorDelim{
public:
	VectorDelim()=delete;
	VectorDelim(const Vector<T> &vec,const String &delim);
	const Vector<T> &getVector()const;
	const String &getDelim()const;
private:
	const Vector<T> *vec;
	String delim;
};

template <class T>
Output & operator<<(Output &out,const VectorDelim &delim);

#include <templates_implementation/VectorDelim.h>




#endif /* INCLUDE_VECTORDELIM_H_ */
