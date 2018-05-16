/*
 * printk.c
 *
 *  Created on: Jan 27, 2018
 *      Author: 13774
 */


#include <io/Output.h>
#include <generic_util.h>
#include <data/StringRef.h>
#include <io/IntegerFormatter.h>

size_t Output::print(const char *s,size_t len)
{
//	return printk(s, len);
	size_t n=0;
	for(size_t i=0;i!=len;++i)
		n+=_chWriter->write(s[i]);
	return n;
}
size_t Output::print(const char *s)
{
//	return printk(s);
	size_t n=0;
	while(*s)
		n+=_chWriter->write(*s++);
	return n;
}
Output & Output::operator<<(char ch)
{
//	printk(ch);
	_chWriter->write(ch);
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
	while(*s)
		_chWriter->write(*s++);
	return *this;
}
Output & Output::operator<<(size_t i)
{
	return *this << IntegerFormatter<10>(i).format();
}
Output & Output::operator<<(const void *p)
{
	return *this << IntegerFormatter<16>(p).format();
}

Output & Output::operator<<(const volatile void *p)
{
	return *this << const_cast<const void*>(p);
}
Output & Output::flush()
{
	_chWriter->flush();
	return *this;
}


Output & operator<<(Output &out,const StringRef& ref)
{
	size_t len=ref.size();
	const char *p=ref.data();
	if(len)
		while(len--)
			out << *p++;
	return out;
}


// 实例化
//template class IntegerFormatter<16>;
//template Output & operator<<(Output & out,const IntegerFormatter<16> &);
