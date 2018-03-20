/*
 * String.h
 *
 *  Created on: Feb 1, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DATA_STRUCTURES_STRING_H_
#define INCLUDE_DATA_STRUCTURES_STRING_H_

#include <data_structures/Vector.h>
#include <io/printk.h>
#include <utility>

class String
	:public Vector<char>
{
public:

	using Vector::operator=;
	using Vector<char>::append;

	String(size_t initSize=0);
	String(const String &s):Vector(s){}
	String & operator=(const String &s){Vector::operator =(s);return *this;}
	String(String &&s):Vector(std::move(s)){}
	String & operator=(String &&s){ Vector::operator =(std::move(s));return *this;}

	String(const char *s);
	String &operator=(const char *s);


	String & append(const char* s,size_t len);
	String & append(const char *s);

};


#endif /* INCLUDE_DATA_STRUCTURES_STRING_H_ */
