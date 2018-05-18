/*
 * TimeRecorder_forward.h
 *
 *  Created on: May 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_TIMERECORDER_FORWARD_H_
#define INCLUDE_SCHEDULE_TIMERECORDER_FORWARD_H_


#include <def.h>
/**
 * 需要Timer提供： countToTimeUS(),  counterValue()
 */
template <class Timer>
class TimeRecorder{
public:
	TimeRecorder(Timer * timer,size_t timeUS);
	void    restart();
	size_t  remainder()const;
	bool    timedout()const;
private:
	Timer    *_timer;
	size_t  _startCount;
	size_t  _timeUS; // 剩余的微秒数
};


#endif /* INCLUDE_SCHEDULE_TIMERECORDER_FORWARD_H_ */
