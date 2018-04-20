/*
 * GPIO.h
 *
 *  Created on: Apr 16, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_GPIO_GPIO_H_
#define INCLUDE_DRIVER_GPIO_GPIO_H_
#include <io/MemBasedRegReader.h>
#include <utility>
#include <generic/error.h>
#include <generic_util.h>
#include <generic/cpu.h>
/**
 * 在BCM2837中，基地址是0x3F20_0000
 * 读写 GPPUDCLKn(n=0/1)的需要:
 * The GPIO Pull-up/down Clock Registers control the actuation of internal pull-downs on
the respective GPIO pins. These registers must be used in conjunction with the GPPUD
register to effect GPIO Pull-up/down changes. The following sequence of events is
required:
1. Write to GPPUD to set the required control signal (i.e. Pull-up or Pull-Down or neither
to remove the current Pull-up/down)
2. Wait 150 cycles – this provides the required set-up time for the control signal
3. Write to GPPUDCLK0/1 to clock the control signal into the GPIO pads you wish to
modify – NOTE only the pads which receive a clock will be modified, all others will
retain their previous state.
4. Wait 150 cycles – this provides the required hold time for the control signal
5. Write to GPPUD to remove the control signal
6. Write to GPPUDCLK0/1 to remove the clock
 */
class GPIO
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		GPFSELx = 0, // x=0-5
		GPSETx =0x1C, //x=0-1
		GPCLRx =0x28, //x=0-1
		GPLEVx = 0x34, //x=0-1
		GPPUD = 0x94, // Pull-up/down enable
		GPUDCLKx = 0x98,// x=0-1
	};
	enum PUD { P_OFF=0b00, P_EN_PULL_DOWN=0b01, P_EN_PULL_UP=0b10};
	enum ALT { ALT_INPUT=0b000, ALT_OUTPUT=0b001, ALT_0=0b100,ALT_1=0b101,
		       ALT_2=0b110,ALT_3=0b111,ALT_4=0b011,ALT_5=0b010};
	static constexpr size_t MAX_PIN = 60;
	static constexpr size_t SEL_OF_EACH_GROUP=10;
	static constexpr size_t BITS_PER_SEL=3;
	template <class ... Args>
	GPIO(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
		{}
	// no setup for GPIO
//	int init();
	// 等待150个周期
	AS_MACRO static void waitSignalDone() { delayCPU(150);}
	void signalModify(uint32_t pin,PUD initPUD=P_OFF);
	void selectAltFunction(uint32_t pin, ALT alt);
	/**
	 * 注意，当UART尚未初始化完成，而初始化过程中包含设置GPIO,则应当
	 * 调用NoLog版本
	 * @param pin
	 * @param alt
	 */
	void selectAltFunctionNoLog(uint32_t pin, ALT alt);
};

#ifndef _NOT_NEED_GPIO
extern GPIO gpio;
#endif


#endif /* INCLUDE_DRIVER_GPIO_GPIO_H_ */
