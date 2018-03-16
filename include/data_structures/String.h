/*
 * String.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_STRING_H_
#define INCLUDE_DATA_STRUCTURES_STRING_H_

#include <data_structures/Vector.h>
#include "../io/printk.h"

class String
	:public Vector<char>
{
public:
	using Vector<char>::append;


	String(size_t initSize=0);
	String(String &&s);

	String(const char *s);
	String &operator=(const char *s);
	String & append(const char* s,size_t len=SIZE_MAX);
};


#endif /* INCLUDE_DATA_STRUCTURES_STRING_H_ */
