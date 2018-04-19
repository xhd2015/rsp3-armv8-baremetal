/*
 * SDCardStatus.cpp
 *
 *  Created on: Mar 24, 2018
 *      Author: 13774
 */


/**
 * this file tests doxygen
 * @author tester
 */
#include <io/Output.h>
#include <driver/sd/SDCardStatus.h>

/**
 * @brief this is just something
 * @return void
 */
void SDCardStatus::dump()const
{
	// kout << "FUCK\n";
		kout << "SDCardStatus: ";
		kout << " resForTest = " << S1.resForTest << ","
		<< " resForAppCmd = " << S1.resForAppCmd << ","
		<< " AKE_SEQ_ERROR = " << S1.AKE_SEQ_ERROR << ","
		<< " resForSDIO = " << S1.resForSDIO << ","
		<< " EXPECT_APP_CMD = " << S1.EXPECT_APP_CMD << ","
		<< " FX_EVENT_HAPPEN = " << S1.FX_EVENT_HAPPEN << ","
		<< " res0_0 = " << S1.res0_0 << ","
		<< " READY_FOR_DATA = " << S1.READY_FOR_DATA << ","
		<< " CURRENT_STATE = " << S1.CURRENT_STATE << ","
		<< " ERASE_RESET = " << S1.ERASE_RESET << ","
		<< " CARD_ECC_DISABLED = " << S1.CARD_ECC_DISABLED << ","
		<< " WP_ERASE_SKIP = " << S1.WP_ERASE_SKIP << ","
		<< " CSD_OVERWIRTE = " << S1.CSD_OVERWIRTE << ","
		<< " res0_1 = " << S1.res0_1 << ","
		<< " GENERAL_ERROR = " << S1.GENERAL_ERROR << ","
		<< " CC_ERROR = " << S1.CC_ERROR << ","
		<< " CARD_ECC_FAILED = " << S1.CARD_ECC_FAILED << ","
		<< " ILLEGAL_COMMAND = " << S1.ILLEGAL_COMMAND << ","
		<< " COM_CRC_ERROR = " << S1.COM_CRC_ERROR << ","
		<< " LOCK_UNLOCK_FAILED = " << S1.LOCK_UNLOCK_FAILED << ","
		<< " CARD_IS_LOCKED = " << S1.CARD_IS_LOCKED << ","
		<< " WP_VIOLATION = " << S1.WP_VIOLATION << ","
		<< " ERASE_PARAM = " << S1.ERASE_PARAM << ","
		<< " ERASE_SEQ_ERROR = " << S1.ERASE_SEQ_ERROR << ","
		<< " BLOCK_LEN_ERROR = " << S1.BLOCK_LEN_ERROR << ","
		<< " ADDRESS_ERROR = " << S1.ADDRESS_ERROR << ","
		<< " OUT_OF_RANGE = " << S1.OUT_OF_RANGE
		<< "\n";
	}
