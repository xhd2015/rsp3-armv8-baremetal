/*
 * PL011.h
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_UART_PL011_H_
#define INCLUDE_DRIVER_UART_PL011_H_

#include <def.h>
#include <generic_util.h>
#include <io/MemBasedRegReader.h>
#include <utility>


class PL011
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		UARTDR=0x000,
		UARTRSR=0x004,
		UARTECR=0x004,
		UARTFR=0x018, //flags register:  标识寄存器，RO  16bits
		//		15:9 res0   8:ring indicator  7:transmit empty  6:receive full  5:transmit full  4:receive empty  3:busy transmitting data 2:  1: 0:
		UARTILPR=0x020,
		UARTIBRD=0x024,
		UARTFBRD = 0x028,// 波特率，16bits
		UARTLCR_H = 0x02C, // line控制
		UARTCR = 0x030, // 控制, 16bits,0:UARTEN 8:SendEN 9:ReceiveEN
		UARTIFLS = 0x034, //16bits， 用于控制合适产生中断， 即当FIFO达到1/n满时产生中断
		UARTIMSC = 0x038, //16bits,RW, 用于控制中断的屏蔽与否，reset=0x000, 1启用，0禁用
		                   // bit5=TXIM 发送中断,bit4=RXIM 接受中断
		UARTRIS = 0x03C, // 中断状态，RO，raw interrupt status register
		UARTMIS  = 0x040, // masked intterupt status register, 中断屏蔽，RO,11bits
		UARTICR = 0x044, //WO interrupt clear register,11bits
		UARTDMACR = 0x048,

		UARTPeriphID0 = 0xFE0, //8bits, reset value=0x11
	};
	enum Level{ L_1of8, L_1of4,L_1of2, L_3of4, L_7of8 };//0b101-0b111保留
	template <class...Args>
	PL011(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...)
	{}

	// set baudrate, and enable it
	int init();

	AS_MACRO void clearIntFlags() { reg32(UARTICR)=0x7ff;}
	AS_MACRO void rawWrite(char ch)	{		reg32(UARTDR) = ch;	}
	AS_MACRO uint16_t rawRead()const	{		return reg32(UARTDR);	}
	AS_MACRO bool    hasCorrectBase()const	{		return reg<uint8_t,UARTPeriphID0>()==0x11u;	}
	/**
	 * 在qemu中，输入并不是按字符的，而是按行的。也就是说，当你在终端输入单个字符时，qemu并不发送这些字符；只有当你敲完回车键后，qemu才将这些字符统一发送
	 * @return
	 */
	uint16_t readDataBlocked()const;
	void   writeDataBlocked(char ch);
	// 0xffff 表明失败
	uint16_t readDataNonBlocked()const;
	AS_MACRO bool readReady()const { return bitsNonSet<4>(reg32<UARTFR>());}
	AS_MACRO bool writeReady()const { return bitsNonSet<5>(reg32<UARTFR>());}
	AS_MACRO bool busy() const { return bitsAnySet<3>(reg32(UARTFR));}
	AS_MACRO void enable(bool enable){ setBit(reg32<UARTCR>(),0,enable);}
	AS_MACRO void enableReceive(bool enable){ setBit(reg32<UARTCR>(),9,enable);}
	AS_MACRO void enableSend(bool enable){ setBit(reg32<UARTCR>(),8,enable);}
	AS_MACRO void readInterruptLevel(Level level) {setBits(reg32<UARTIFLS>(),3,5,level);}
	AS_MACRO void enableReceiveInterrupt(bool enable) { setBit(reg32<UARTIMSC>(), 4,enable);}
	AS_MACRO bool receiveInterrupted()const { return getBit(reg32(UARTRIS),4);}
	AS_MACRO void enableFIFO(bool en){ setBit(reg32(UARTLCR_H),4,en);}
	void     waitInput()const;
private:
	// 下面三个是比较常用的，因此先将它们的地址计算出来。
	// DEPRECATED 因为rebase的原因
//	volatile char & _writeDataReg;
//	volatile uint16_t &_readDataReg;
//	volatile uint16_t &_statusReg;
};

#ifndef _NOT_NEED_PL011
extern PL011 pl011;
#endif




#endif /* INCLUDE_DRIVER_UART_PL011_H_ */
