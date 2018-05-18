/*
 * TimeRecorder.h
 *
 *  Created on: May 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_SCHEDULE_TIMERECORDER_H_
#define INCLUDE_SCHEDULE_TIMERECORDER_H_

#include <schedule/TimeRecorder_forward.h>

template <class Timer>
TimeRecorder<Timer>::TimeRecorder(Timer * timer,size_t timeUS)
	:_timer(timer),
	 _startCount(0),
	 _timeUS(timeUS)
{
	restart();
}
template <class Timer>
void    TimeRecorder<Timer>::restart()
{
	_startCount=_timer->counterValue();
}
template <class Timer>
size_t  TimeRecorder<Timer>::remainder()const
{
	auto passed =  _timer->countToTimeUS(_timer->counterValue() - _startCount);
	if(passed > _timeUS)
		return 0;
	return _timeUS - passed;
}
template <class Timer>
bool    TimeRecorder<Timer>::timedout()const
{
	return remainder()==0;
}

#endif /* INCLUDE_SCHEDULE_TIMERECORDER_H_ */
