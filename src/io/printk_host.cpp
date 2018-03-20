/*
 * printk-impl.cpp
 *
 *  Created on: Jan 30, 2018
 *      Author: 13774
 */

#include <iostream>
#include <ctype.h>
#include <data_structures/StringRef.h>
#include <io/IntegerFormatter.h>
#include <io/printk.h>
#include <iostream>
static bool isGood(char ch)
{
	if(ch=='\0')
		return false;
	else if(  isalnum(ch) || ispunct(ch) || ch=='\n' || ch=='\r' || ch=='\a' || ch=='\t' || ch==' ')
		return true;
	return false;
}
size_t printk(char ch)
{
	if(isGood(ch))
		std::cout << ch;
	else
	{
		const char *str = Hex(ch).format();
		std::cout << "\\x"<< str[0] << str[1];
	}
	return 1;
}

void flush()
{
	std::cout << std::flush;
}



