/*
 * GICRedistributor.cpp
 *
 *  Created on: Mar 27, 2018
 *      Author: 13774
 */

#include <interrupt/GICRedistributor.h>


void GICRedistributor::awake()
{
	_weaker.ProcessorSleep=0;
	_weaker.write(); // if not writing this bit,ChildrenAsleep will hang
	while(_weaker.updateRead().ChildrenAsleep)
			;
}
