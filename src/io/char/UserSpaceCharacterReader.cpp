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
		uint64_t flags = bitOnes<SvcConfig::F_BLOCKED_BIT,SvcConfig::F_RETURN_ON_NEW_LINE>();
		while(true)
		{
			size_t n= svc_call<SvcFunc::gets>(reinterpret_cast<uint64_t>(inputBuffer.data()),
							inputBuffer.capacity(),
							flags
							);
			if(n>0)
			{
				inputBuffer.reset(n);
				break;
			}
		}
	}
	return inputBuffer.remove();
}



