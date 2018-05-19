/*
 * PL011.cpp
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#include <driver/uart/PL011.h>
#include <generic_util.h>

/**
 * The UART_CR Register is the control register.
NOTE:
To enable transmission, the TXE bit and UARTEN bit must be set to 1.
Similarly, to enable reception, the RXE bit and UARTEN bit, must be set to 1.
NOTE:
Program the control registers as follows:
1. Disable the UART.
2. Wait for the end of transmission or reception of the current character.
3. Flush the transmit FIFO by setting the FEN bit to 0 in the Line Control
Register, UART_LCRH.
4. Reprogram the Control Register, UART_CR.
5. Enable the UART.

NOTE: The UART_LCRH, UART_IBRD, and UART_FBRD registers must not
be changed:
when the UART is enabled
when completing a transmission or a reception when it has been programmed
to become disabled

 */
int PL011::init()
{
	enable(false);
	clearIntFlags();
	reg32(UARTIBRD) = 0x2;//配置波特率
	reg32(UARTFBRD) = 0xB;// 115200 baud
	reg32(UARTCR) = bitOnes<8,9>();// 启用8,9位 enable Send/Receive
	// 屏蔽所有的中断
	reg32<UARTIMSC>() = 0;//lowerMaskBits(11); // 高5位res0
	reg32(UARTLCR_H) = bitOnes<5,6>();// bit5,6必须设置， 此处设置数据的长度为8位。  bit4 选择传输模式：1：FIFO mode 2：1-byte mode
//	enableFIFO(false);//禁用FIFO模式
//	readInterruptLevel(L_1of8); // 配置触发模式，仅当FIFO启用有效
	enable(true);

	return 0;
}
uint16_t PL011::readDataBlocked()const
{
	// BUGFIX busy只与发送有关，因此这里不检测busy位
	while(bitsAnySet<4>(reg16<UARTFR>())) //still busy or still recive empty
		;
	return reg32<UARTDR>();
}

void   PL011::writeDataBlocked(char ch)
{
	// BUGFIX bit3=busy,但是只要不空都可传送，因此不必检测bit3
	while(bitsAnySet<5>(reg32<UARTFR>())) //still busy or still send full
			;
	reg32(UARTDR)=ch;

}
uint16_t PL011::readDataNonBlocked()const
{
	if(bitsAnySet<4>(reg32<UARTFR>()))
		return 0xffff;
	return reg32<UARTDR>();
}
void     PL011::waitInput()const
{
	while(!readReady());
	rawRead();
}


