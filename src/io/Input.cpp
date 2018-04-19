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
		if(ch=='\n' || ch=='\r') // 回车键
			break;
	}
	return std::move(s);
}
