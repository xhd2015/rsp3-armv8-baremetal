/*
 * IntegerFormatter.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_
#define INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_

#include <IntegerFormatter.h>
#include <generic_util.h>
#include <printk.h>

template <int Base>
IntegerFormatter<Base>::IntegerFormatter(size_t num)
	:num(num){}

template <int Base>
IntegerFormatter<Base>::IntegerFormatter(const void *p)
	:num(reinterpret_cast<size_t>(p)){}

template <int Base>
char *IntegerFormatter<Base>::format()const
{
	itos(num, Base, koutBuf, koutBufSize);
	return koutBuf;
}

template <int Base>
Output & operator<<(Output &out,const IntegerFormatter<Base> &hf)
{
	out << hf.format();
	return out;
}




#endif /* INCLUDE_TEMPLATES_IMPLEMENTATION_INTEGERFORMATTER_H_ */
