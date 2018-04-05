/*
 * PL011.h
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_UART_PL011_H_
#define INCLUDE_IO_UART_PL011_H_

#include <def.h>
#include <runtime_def.h>
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
		UARTFR=0x018, //flags register:
		//		15:9 res0   8:ring indicator  7:transmit empty  6:receive full  5:transmit full  4:receive empty  3:busy transmitting data 2:  1: 0:
		UARTILPR=0x020,
		UARTIBRD=0x024,
		UARTFBRD = 0x028,
		UARTLCR_H = 0x02C,
		UARTCR = 0x030,
		UARTIFLS = 0x034,
		UARTRIS = 0x03C, // raw interrupt status register
		 UARTMIS  = 0x040, // masked intterupt status register
		UARTICR = 0x044, // interrupt clear register
		UARTDMACR = 0x048,

		UARTPeriphID0 = 0xFE0, //8bits, reset value=0x11

	};
	template <class...Args>
	PL011(Args && ... args)
		:MemBasedRegReader(std::forward<Args>(args)...),
		_writeDataReg(reg<char,UARTDR>()),
		  _readDataReg(reg<uint16_t,UARTDR>()),
		  _statusReg(reg<uint16_t,UARTFR>())
	{}

	// set baudrate, and enable it
	void init();

	AS_MACRO void writeData(char ch)
	{
		_writeDataReg = ch;
	}

	AS_MACRO uint16_t readData()const
	{
		return _readDataReg;
	}
	AS_MACRO bool    hasCorrectBase()const
	{
		return reg<uint8_t,UARTPeriphID0>()==0x11u;
	}
	uint16_t readDataBlocked()const;
	uint16_t readDataNonBlocked()const;

private:
	// 下面三个是比较常用的，因此先将它们的地址计算出来。
	volatile char & _writeDataReg;
	volatile uint16_t &_readDataReg;
	volatile uint16_t &_statusReg;
};

#ifndef _NOT_NEED_PL011
extern PL011 pl011;
#endif




#endif /* INCLUDE_IO_UART_PL011_H_ */
