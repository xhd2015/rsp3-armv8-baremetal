/*
 * IntegerFormatter.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTEGERINTEGERFORMATTER_H_
#define INCLUDE_INTEGERINTEGERFORMATTER_H_

#include <def.h>
#include <io/Output.h>
#include <generic_util.h>

template <int Base>
class IntegerFormatter{
public:
	IntegerFormatter(size_t num,size_t length=sizeof(size_t));
	IntegerFormatter(const void *p);
	char *format()const;
private:
	size_t num;
	size_t length;
};


using Hex=IntegerFormatter<16>;
using Dec=IntegerFormatter<10>;
using Bin=IntegerFormatter<2>;

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
	itos(num, Base, koutBuf, koutBufSize);
	return koutBuf;
}

template <int Base>
Output & operator<<(Output &out,const IntegerFormatter<Base> &hf)
{
	out << hf.format();
	return out;
}
#endif //INCLUDE_INTEGERINTEGERFORMATTER_H_
