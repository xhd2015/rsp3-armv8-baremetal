/*
 * strlen.cpp
 *
 *  Created on: Feb 5, 2018
 *      Author: 13774
 */


#include <cstring>


size_t strlen(const char *src)
{
	const char *p=src;
	while(*p++);
	return (p-src-1);
}
