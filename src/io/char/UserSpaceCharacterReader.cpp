/*
 * UserSpaceCharacterReader.cpp
 *
 *  Created on: May 17, 2018
 *      Author: 13774
 */
#include <io/char/UserSpaceCharacterReader.h>
#include <runtime_def.h>
#include <interrupt/svc_call.h>
#include <generic_util.h>

char  UserSpaceCharacterReader::read()
{
	if(inputBuffer.empty())
	{
		inputBuffer.reset(0);
		while(true)
		{
			// 因为是BLOCKED的，返回时数据仍然不足是可能的
			size_t n= svc_call<SvcFunc::gets>(
							inputBuffer.capacity(),
							true //blocked
							);
			if(n>0)
				break;
		}
	}
	return inputBuffer.remove();
}



