/*
 * __cxa_pure_virtual.cpp
 *
 *  Created on: Apr 8, 2018
 *      Author: 13774
 */
#include <io/Output.h>
/**
 * 参见
https://stackoverflow.com/questions/920500/what-is-the-purpose-of-cxa-pure-virtual
 *
 */
extern "C" void __cxa_pure_virtual()
{
	kout << "virtual function called during ctor/dtor\n";
	while(true);
}

