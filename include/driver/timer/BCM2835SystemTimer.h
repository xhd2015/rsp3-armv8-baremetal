/*
 * BCM2835SystemTimer.h
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_TIMER_BCM2835SYSTEMTIMER_H_
#define INCLUDE_DRIVER_TIMER_BCM2835SYSTEMTIMER_H_
#include <io/MemBasedRegReader.h>
#include <generic/error.h>
#include <generic_util.h>
#include <generic/cpu.h>

/**
 * BASE= 0x3F003000
 *
 * 根据我们查找的信息， 在linux的arch/arm/boot/dts/bcm283x.dsti中，找到下面的代码：
 *
  		timer@7e003000 {
			compatible = "brcm,bcm2835-system-timer";
			reg = <0x7e003000 0x1000>;
			interrupts = <1 0>, <1 1>, <1 2>, <1 3>;
			 // This could be a reference to BCM2835_CLOCK_TIMER,
			 // but we don't have the driver using the common clock
			 // support yet.
			 //
			clock-frequency = <1000000>;
		};
 * 由此可知系统时钟的频率是1MHz,并且还可知中断号就是 IRQ_1的0,1,2,3
 *
 * NOTE:  在实际的测试中，发现该Timer的Timer0和Timer2可以产生中断，但是中断寄存器没有任何提示（也就是说中断实际上发生了，但是状态寄存器全部是0值），似乎是因为内部的线路有bug。
 *  我们将使用Timer1和Timer3作为系统的定时器。
 */
class BCM2835SystemTimer
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		CS=0, // 状态寄存器和控制寄存器，bit0-3 包括4个compare value的匹配情况，当向相应的位写入1时清除匹配记录，同时取消中断的激活状态
		CLO=0x4, // 计数器的低32位
		CHI=0x8,  // 计数器高32位
		C0=0xC, // compare value ， 每当 CLO与Cx相等时，就在CS中的x上置位并产生中断
		C1=0x10,
		C2=0x14,
		C3=0x18
	};
	template <class ... Args>
	BCM2835SystemTimer(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
		{}
	uint64_t counterValue()const;
	AS_MACRO void compareValueMS(size_t n,uint32_t ms) {compareValue(n, timeToCountMS(ms));}
	AS_MACRO void compareValue(size_t n,uint32_t cval){ assert(n<=3);reg32(C0+n*4)=cval;}
	// 将compareValue设置为下一个周期
	AS_MACRO void addCompareValue(size_t n,uint32_t cdiff) { assert(n<=3);reg32(C0+n*4)=counterValue()+cdiff;}
	AS_MACRO void addCompareValueMS(size_t n,uint32_t diffms) {addCompareValue(n, timeToCountMS(diffms));}
	AS_MACRO bool valueMatches(size_t n) { assert(n<=3); return reg32(CS)&(1u<<n);}
	AS_MACRO void clearIntStatus(size_t n){ assert(n<=3);reg32(CS)=(1u<<n);}
	AS_MACRO uint64_t clockFreq() const { return 1000000;}
	// c = t*freq , t = c/freq
	// 当freq=1000000时，每经过1个计数,经历的时间是1us；如果频率稍微增大，则经历的时间将是0
	AS_MACRO uint64_t timeToCountS(uint32_t s)const{ return clockFreq()*s;}
	AS_MACRO uint64_t timeToCountMS(uint32_t ms)const{ return clockFreq()*ms/1000;}
	// 标准接口
	AS_MACRO size_t   timeToCountUS(size_t us)const{ return clockFreq()*us/1000000;}
	AS_MACRO size_t   countToTimeUS(size_t count) const
			{return 1000000*count/clockFreq();}
	void delayMS(uint32_t ms)const;
private:

};

#ifndef _NOT_NEED_BCM2835SystemTimer
extern BCM2835SystemTimer sysTimer;
extern uint32_t           sysTimerTick;//ms
#endif



#endif /* INCLUDE_DRIVER_TIMER_BCM2835SYSTEMTIMER_H_ */
