/*
 * GenericTimer.h
 *
 *  Created on: Apr 5, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_INTERRUPT_GENERICTIMER_H_
#define INCLUDE_INTERRUPT_GENERICTIMER_H_

#include <def.h>
#include <arch/common_aarch64/registers/timer_registers.h>
#include <runtime_def.h>

// 主要操作EL1下的计时器， 中断号是30（PPI 14，Non-Secure physical timer event)
class GenericTimer{
public:
	void enableTimerWork(bool enable);
	void enableTimerInt(bool enable);
	AS_MACRO bool timerConditionMet()const{ return RegCNTP_CTL_EL0::read().ISTATUS;}
	AS_MACRO int32_t timerValue()const{return RegCNTP_TVAL_EL0::read().TimerValue;}
	//	ktimer.timerValue(-10000); // 如果是cval < counter, 则中断一一直发生。
	AS_MACRO void timerValue(int32_t timerValue){ RegCNTP_TVAL_EL0::make(timerValue).write();}
	void timerValueMS(uint32_t ms);
	AS_MACRO uint64_t compareValue()const{return RegCNTP_CVAL_EL0::read().CompareValue;}
	AS_MACRO void compareValue(uint64_t value){ RegCNTP_CVAL_EL0::make(value).write();}
	AS_MACRO uint64_t counterValue()const{return RegCNTPCT_EL0::read().PhysicalCount;}
	// Hz
	AS_MACRO uint32_t clockFreq()const{return RegCNTFRQ_EL0::read().ClockFrq;}
	void delayUS(uint32_t us)const;
	// calculate needed count to pass time: second-->count
	AS_MACRO uint64_t timeToCountS(uint32_t s)const{ return static_cast<uint64_t>(clockFreq())*s;}
	AS_MACRO uint64_t timeToCountMS(uint32_t ms)const{ return static_cast<uint64_t>(clockFreq())/1000*ms;}
	AS_MACRO uint64_t timeToCountUS(uint32_t us)const { return static_cast<uint64_t>(clockFreq())/1000*us/1000;}
	/**
	 * MS作为单位
	 * @return
	 */
	AS_MACRO uint32_t   timerPeriod() const {return _timerPeriod;}
	AS_MACRO void       timerPeriod(uint32_t timerPeriod) {_timerPeriod = timerPeriod;}
	AS_MACRO void       nextPeriod(){ timerValueMS(static_cast<int32_t>(_timerPeriod));}
private:
	uint32_t  _timerPeriod;//定期产生中断的计数时间,ms为单位
};

#ifndef _NOT_NEED_GenericTimer
extern GenericTimer ktimer;
#endif



#endif /* INCLUDE_INTERRUPT_GENERICTIMER_H_ */
