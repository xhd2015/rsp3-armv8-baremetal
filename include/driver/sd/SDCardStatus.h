/*
 * SDCardStatus.h
 *
 *  Created on: Mar 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SDHCI_SDCARDSTATUS_H_
#define INCLUDE_IO_SDHCI_SDCARDSTATUS_H_
#include <def.h>
class SDCardStatus{
public:
	SDCardStatus(uint32_t v)
		:value(v){}
	union{
		uint32_t value;
		struct {
			uint32_t resForTest:2;
			uint32_t resForAppCmd:1;
			uint32_t AKE_SEQ_ERROR:1;
			uint32_t resForSDIO:1;
			uint32_t EXPECT_APP_CMD:1;
			uint32_t FX_EVENT_HAPPEN:1;
			uint32_t res0_0:1;
			uint32_t READY_FOR_DATA:1;
			uint32_t CURRENT_STATE:4;//0=idle, 4=trans,6=recv,
			uint32_t ERASE_RESET:1;
			uint32_t CARD_ECC_DISABLED:1;
			uint32_t WP_ERASE_SKIP:1;
			uint32_t CSD_OVERWIRTE:1;
			uint32_t res0_1:2;
			uint32_t GENERAL_ERROR:1;
			uint32_t CC_ERROR:1;//internal card control error
			uint32_t CARD_ECC_FAILED:1;
			uint32_t ILLEGAL_COMMAND:1;
			uint32_t  COM_CRC_ERROR:1;
			uint32_t  LOCK_UNLOCK_FAILED:1;
			uint32_t  CARD_IS_LOCKED:1;
			uint32_t  WP_VIOLATION:1;
			uint32_t  ERASE_PARAM:1;
			uint32_t  ERASE_SEQ_ERROR:1;
			uint32_t  BLOCK_LEN_ERROR:1;
			uint32_t  ADDRESS_ERROR:1;
			uint32_t  OUT_OF_RANGE:1;
		}S1;
	};

	void dump()const;

}__attribute__((packed));



#endif /* INCLUDE_IO_SD_SDCARDSTATUS_H_ */
