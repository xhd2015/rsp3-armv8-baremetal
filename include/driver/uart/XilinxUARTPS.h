/*
 * XilinxUARTPS.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_UART_XILINXUARTPS_H_
#define INCLUDE_DRIVER_UART_XILINXUARTPS_H_

#include <def.h>
#include <io/MemBasedRegReader.h>
#include <generic_util.h>

class XilinxUARTPS
		:private MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		XUARTPS_CR   =		0x0000U,  /**< Control Register [8:0] */
		XUARTPS_MR   =		0x0004U,  /**< Mode Register [9:0] */
		XUARTPS_IER  =		0x0008U,  /**< Interrupt Enable [12:0] */
		XUARTPS_IDR  =		0x000CU,  /**< Interrupt Disable [12:0] */
		XUARTPS_IMR  =		0x0010U,  /**< Interrupt Mask [12:0] */
		XUARTPS_ISR  =		0x0014U,  /**< Interrupt Status [12:0]*/
		XUARTPS_BAUDGEN  =	0x0018U,  /**< Baud Rate Generator [15:0] */
		XUARTPS_RXTOUT   =	0x001CU,  /**< RX Timeout [7:0] */
		XUARTPS_RXWM    =		0x0020U,  /**< RX FIFO Trigger Level [5:0] */
		XUARTPS_MODEMCR    =	0x0024U,  /**< Modem Control [5:0] */
		XUARTPS_MODEMSR    =	0x0028U,  /**< Modem Status [8:0] */
		XUARTPS_SR    =		0x002CU,  /**< Channel Status [14:0] */
		XUARTPS_FIFO    =		0x0030U,  /**< FIFO [7:0] */
		XUARTPS_BAUDDIV    =	0x0034U,  /**< Baud Rate Divider [7:0] */
		XUARTPS_FLOWDEL    =	0x0038U,  /**< Flow Delay [5:0] */
		XUARTPS_TXWM    =		0x0044U,  /**< TX FIFO Trigger Level [5:0] */
		XUARTPS_RXBS    =		0x0048U,  /**< RX FIFO Byte Status [11:0] */
	};
	XilinxUARTPS(void *base);
	//enable it
	void init();

	void write(char ch);

	char readNonBlocked()const;

	char readBlocked()const;


	// receive not empty
	AS_MACRO bool readable()const{ return !(_status & bitMask<1>()); }
	// write not full
	AS_MACRO bool writeable()const{ return !(_status & bitMask<4>());}

private:

	volatile uint32_t &_control;
	volatile uint32_t &_status;
	volatile uint32_t &_data; // read & write

};

extern XilinxUARTPS xilinxUART;



#endif /* INCLUDE_DRIVER_UART_XILINXUARTPS_H_ */
