/*
 * BCM2835MiniUART.h
 *
 *  Created on: Apr 14, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_UART_BCM2835MINIUART_H_
#define INCLUDE_DRIVER_UART_BCM2835MINIUART_H_
#include <utility>
#include <generic/error.h>
#include <generic_util.h>
#include <io/MemBasedRegReader.h>
/**
 * BCM2835有3个AUX外设，其中，AUX_IRQ,AUX_ENABELS是三个外设共用的。
 * 在初始化时，应当将基址设置成共同的AUX外设基址
 *
 * 注意：BCM2835的文档中，P12,和P13的寄存器标题是错误的，应当以SYNOPSIS为准。
 * 这是从qemu的hw/char/bcm2835_aux.c中观察到的。
 */
class BCM2835MiniUART
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		AUX_IRQ = 0,  // RO,32bits. 0=MiniUART,1=SPI1,2=SPI2,other=RES0
		AUX_ENABLES = 0x4, //32bits,
		IO_DATA = 0x40,// 8bits
		IER_INT_ENABLED = 0x44,// bit0,1 = READ，WRITE interrupt enabled, RO(only when DLAB==1)
		IIR_INT_IDENTITY = 0x48, // bit0 = notIntPending  bit1-2:clear-on-write, read-to-identify
		LINE_CONTROL = 0x4C,
		MODEM_CONTROL = 0x50,
		LINE_STATUS = 0x54,
		MODEM_STATUS = 0x58,
		SCRATCH = 0x5C,
		EXTRA_CONTROL = 0x60,
		EXTRA_STATUS = 0x64,//32bits
		BAUD_RATE = 0x80, //16bits , baudrate = system_clock_freq/(8*(BAUD_RATE+1))
	};
	// 当有中断时，返回中断的类型。
	enum IntStatus { I_NO_INT=0b00, I_SEND_READY=0b01,I_RECEIVED=0b10};

	template <class ... Args>
	BCM2835MiniUART(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
		{}
	int init();

	AS_MACRO void enable(bool en) { setBit(reg32(AUX_ENABLES),0,en);}
	AS_MACRO char rawRead()const { return static_cast<char>(reg32(IO_DATA));}
	AS_MACRO void rawWrite(char ch){ reg32(IO_DATA)=ch;}
	AS_MACRO void enableReceiveInterrupt(bool en){ setBit(reg32(IER_INT_ENABLED),1,en);}
	AS_MACRO void enableSendInterrupt(bool en){ setBit(reg32(IER_INT_ENABLED),0,en);}
	AS_MACRO void enableReceive(bool en) { setBit(reg32(EXTRA_CONTROL),0,en);}
	AS_MACRO void enableSend(bool en) { setBit(reg32(EXTRA_CONTROL),1,en);}
	AS_MACRO bool pendingInt()const { return !getBit(reg32(IIR_INT_IDENTITY),0);}
	AS_MACRO void clearReceiveFIFO(){ setBit(reg32(IIR_INT_IDENTITY),1,1);}
	AS_MACRO void clearSendFIFO(){ setBit(reg32(IIR_INT_IDENTITY),2,1);}
	AS_MACRO void baudrate(uint32_t rate) { reg32(BAUD_RATE)=rate;}
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
	AS_MACRO bool writeReady()const { return getBit(reg32(LINE_STATUS),5);}
	AS_MACRO bool readReady()const { return getBit(reg32(LINE_STATUS),0);}

	AS_MACRO IntStatus intStatus() const { return static_cast<IntStatus>(getBits(reg32(IIR_INT_IDENTITY),1,2));}
};


#ifndef _NOT_NEED_BCM2835MiniUART
extern BCM2835MiniUART miniUART;
#endif


#endif /* INCLUDE_DRIVER_UART_BCM2835MINIUART_H_ */
