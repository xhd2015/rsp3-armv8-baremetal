/*
 * BCM2835MiniUART.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_UART_BCM2835MINIUART_H_
#define INCLUDE_IO_UART_BCM2835MINIUART_H_
#include <io/MemBasedRegReader.h>
#include <utility>
#include <generic/error.h>
#include <runtime_def.h>
#include <generic_util.h>
/**
 * BCM2835有3个AUX外设，其中，AUX_IRQ,AUX_ENABELS是三个外设共用的。
 * 在初始化时，应当将基址设置成共同的AUX外设基址
 */
class BCM2835MiniUART
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		AUX_IRQ = 0,  // 32bits. 0=MiniUART,1=SPI1,2=SPI2,other=RES0
		AUX_ENABLES = 0x4, //32bits,
		IO_DATA = 0x40,// 8bits
		INT_EN = 0x44,
		INT_IDENTIFY = 0x48,// bit0 = notIntPending  bit1-2:clear-on-write, read-to-identify
		LINE_CONTROL = 0x4C,
		MODEM_CONTROL = 0x50,
		LINE_STATUS = 0x54,
		MODEM_STATUS = 0x58,
		SCRATCH = 0x5C,
		EXTRA_CONTROL = 0x60,
		EXTRA_STATUS = 0x64,//32bits
		BAUD_RATE = 0x80, //16bits , baudrate = system_clock_freq/(8*(BAUD_RATE+1))
	};

	template <class ... Args>
	BCM2835MiniUART(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
		{}
	int init();

	AS_MACRO void enable(bool en) { setBit(reg32(AUX_ENABLES),0,en);}
	AS_MACRO char read()const { return static_cast<char>(reg32(IO_DATA));}
	AS_MACRO void write(char ch){ reg32(IO_DATA)=ch;}
	AS_MACRO void enableReceiveInterrupt(bool en){ setBit(reg32(INT_EN),1,en);}
	AS_MACRO void enableSendInterrupt(bool en){ setBit(reg32(INT_EN),0,en);}
	AS_MACRO void enableReceive(bool en) { setBit(reg32(EXTRA_CONTROL),0,en);}
	AS_MACRO void enableSend(bool en) { setBit(reg32(EXTRA_CONTROL),1,en);}
	AS_MACRO bool pendingInt()const { return !getBit(reg32(INT_IDENTIFY),0);}
	AS_MACRO void clearReceiveFIFO(){ setBit(reg32(INT_IDENTIFY),1,1);}
	AS_MACRO void clearSendFIFO(){ setBit(reg32(INT_IDENTIFY),2,1);}
	/**
	 *
	 * @param bits 7 or 8
	 */
	template <size_t bits>
	AS_MACRO void dataSize(){static_assert(bits==7 || bits==8,"");setBit(reg32(LINE_CONTROL),0,bits-7);}
	/**
	 *  至少能够接受一个byte
	 * @return
	 */
	AS_MACRO bool sendReady()const { return getBit(reg32(LINE_STATUS),5);}
	AS_MACRO bool readReady()const { return getBit(reg32(LINE_STATUS),0);}
};


#ifndef _NOT_NEED_BCM2835MiniUART
extern BCM2835MiniUART miniUART;
#endif


#endif /* INCLUDE_IO_UART_BCM2835MINIUART_H_ */