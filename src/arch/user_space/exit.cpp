/*
 * exti.cpp
 *
 *  Created on: Mar 13, 2018
 *      Author: 13774
 */
#include <arch/common_aarch64/exception/svc_call.h>
#include <schedule/PidManager.h>

void destroy(int i)
{
	svc_call<SvcFunc::killProcess>(CURRENT_PID,i);
}

