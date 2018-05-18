/*
 * schedule_forward.h
 *
 *  Created on: Apr 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_
#define INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_
#include <def.h>
#include <data/DoublyLinkedList.h>
// Pid不可能使用enum, 因为所有的整数值都是允许的，而enum无法枚举`所有`。
using Pid = uint16_t;
// pid的前面几项保留为特殊使用
constexpr Pid PID_INVALID = 0;// PID_INVALID总是已分配的
constexpr Pid PID_CURRENT = 1 ; // 已分配，总是指向当前进程的PID
constexpr Pid PID_PARENT = 2;  // 表示父进程

constexpr uint32_t NORM_SYS_TIMER_TICK = 100;
	// 100ms,相对于1000ms,100ms是一个在调度和阻塞中都比较可以接受的值
constexpr uint32_t FAST_SYS_TIMER_TICK = 10; // 10ms,fast

class Process;
using ProcessLink = typename DoublyLinkedList<Process>::NodeType;


#endif /* INCLUDE_SCHEDULE_SCHEDULE_FORWARD_H_ */
