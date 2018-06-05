/*
 * IntegerFormatter_forward.h
 *
 *  Created on: May 21, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_INTEGERFORMATTER_FORWARD_H_
#define INCLUDE_IO_INTEGERFORMATTER_FORWARD_H_
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
Output & operator<<(Output &out,const IntegerFormatter<Base> &hf);



#endif /* INCLUDE_IO_INTEGERFORMATTER_FORWARD_H_ */
