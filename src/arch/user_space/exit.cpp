/*
 * exti.cpp
 *
 *  Created on: Mar 13, 2018
 *      Author: 13774
 */
#include <interrupt/svc_call.h>
#include <schedule/PidManager.h>

void destroy(int i)
{
	svc_call<SvcFunc::killProcess>(PID_CURRENT,i);
}
