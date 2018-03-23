/*
 * CardSpecData.h
 *
 *  Created on: Mar 22, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SDHCI_CARDSPECDATA_H_
#define INCLUDE_IO_SDHCI_CARDSPECDATA_H_

/*
 * CardSpecData.h
 *
 *  Created on: Mar 22, 2018
 *      Author: 13774
 */


// CSD

class CardSpecData{
public:
		union{
			struct
			{
				uint32_t _data[4];
			}__attribute__((packed)) S0;

			struct
			{
//				  uint64_t res1_0:1;
//				  uint64_t crc:7;
			  uint64_t res0_1:2;
			  uint64_t fileFormat:2;
			  uint64_t tmpWriteProctect:1;
			  uint64_t permWriteProctet:1;
			  uint64_t copyFlag:1;
			  uint64_t fileFormatGrp:1;

			  uint64_t res0_2:5;
			  uint64_t unconcern_0:26;
			  uint64_t cSizeMult:3;
			  uint64_t unconcern_1:12;

			  uint64_t deviceSize:12;
			  uint64_t res0_3:2;
			  uint64_t unconcern_2:3;
			  uint64_t readBlPartial:1;
			  uint64_t readBlLen:4;
			  uint64_t cardCommandClass:12;
			  uint64_t unconcern_3:30;
			  uint64_t csdVersion:2;
			}__attribute__((packed)) V1;

			struct
			{

			}__attribute__((packed)) V2;
		};
};




#endif /* INCLUDE_IO_SD_CARDSPECDATA_H_ */
