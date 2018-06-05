/*
 * IntegerFormatter.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTEGERINTEGERFORMATTER_H_
#define INCLUDE_INTEGERINTEGERFORMATTER_H_

#include <io/IntegerFormatter_forward.h>
#include <runtime_def.h> //for formatBuf



template <int Base>
Output & operator<<(Output & out,const IntegerFormatter<Base> &hf);

//== template
template <int Base>
IntegerFormatter<Base>::IntegerFormatter(size_t num,size_t length)
	:num(num),length(length){}

template <int Base>
IntegerFormatter<Base>::IntegerFormatter(const void *p)
	:num(reinterpret_cast<size_t>(p)),length(sizeof(p)){}

template <int Base>
char *IntegerFormatter<Base>::format()const
{
	itos(num, Base, formatBuf, FORMAT_BUF_SIZE);
	return formatBuf;
}

template <int Base>
Output & operator<<(Output &out,const IntegerFormatter<Base> &hf)
{
	out << hf.format();
	return out;
}
#endif //INCLUDE_INTEGERINTEGERFORMATTER_H_
