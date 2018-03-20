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


template <int Base>
class IntegerFormatter{
public:
	IntegerFormatter(size_t num);
	IntegerFormatter(const void *p);
	char *format()const;
private:
	size_t num;
};


using Hex=IntegerFormatter<16>;
using Dec=IntegerFormatter<10>;
using Bin=IntegerFormatter<2>;

template <int Base>
Output & operator<<(Output & out,const IntegerFormatter<Base> &hf);



#include <templates_implementation/IntegerFormatter.h>



#endif /* INCLUDE_INTEGERINTEGERFORMATTER_H_ */
