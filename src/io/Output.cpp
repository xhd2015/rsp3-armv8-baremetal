/*
 * printk.c
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */


#include <io/Output.h>

#include <generic_util.h>
#include <data_structures/StringRef.h>
#include <io/IntegerFormatter.h>
#include <io/printk.h>

size_t Output::print(const char *s,size_t len)
{
	return printk(s, len);
}
size_t Output::print(const char *s)
{
	return printk(s);
}
Output & Output::operator<<(char ch)
{
	printk(ch);
	return *this;
}
Output & Output::operator<<(uint8_t u)
{
	return *this << static_cast<size_t>(u);
}
Output & Output::operator<<(uint16_t u)
{
	return *this << static_cast<size_t>(u);
}
Output & Output::operator<<(uint32_t u)
{
	return *this << static_cast<size_t>(u);
}

Output & Output::operator<<(bool i)
{
	return *this << (i?"true":"false");
}
Output & Output::operator<<(short i)
{
	return *this << static_cast<size_t>(i);
}
Output & Output::operator<<(int i)
{
	return *this << static_cast<size_t>(i);
}
Output & Output::operator<<(double d)
{
	return *this << static_cast<size_t>(d);
}
Output & Output::operator<<(const char *s)
{
	printk(s);
	return *this;
}
Output & Output::operator<<(size_t i)
{
	printk(IntegerFormatter<10>(i).format());
	return *this;
}
Output & Output::operator<<(const void *p)
{
	printk(IntegerFormatter<16>(p).format());
	return *this;
}

Output & Output::operator<<(const volatile void *p)
{
	return *this << const_cast<const void*>(p);
}
Output & Output::flush()
{
	::flush();
	return *this;
}


Output & operator<<(Output &out,const StringRef& ref)
{
	size_t len=ref.getSize();
	const char *p=ref.getData();
	if(len)
		while(len--)
			out << *p++;
	return out;
}


// 实例化
//template class IntegerFormatter<16>;
//template Output & operator<<(Output & out,const IntegerFormatter<16> &);
