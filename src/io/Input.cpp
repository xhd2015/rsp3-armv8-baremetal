/*
 * Input.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */




#include <io/Input.h>

String Input::readline()
{
	String s;
	char ch;
	while(true)
	{
		ch=getchar();
		s.pushBack(ch);
		if(ch=='\n')
			break;
	}
	return std::move(s);
}
