/*
 * schedule_forward.h
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_
#define INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_
#include <def.h>
// Pid不可能使用enum, 因为所有的整数值都是允许的，而enum无法枚举`所有`。
using Pid = uint16_t;
// pid的前面几项保留为特殊使用
constexpr Pid PID_INVALID = 0;// PID_INVALID总是已分配的
constexpr Pid PID_CURRENT = 1 ; // 已分配，总是指向当前进程的PID
constexpr Pid PID_PARENT = 2;  // 表示父进程



#endif /* INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_ */
