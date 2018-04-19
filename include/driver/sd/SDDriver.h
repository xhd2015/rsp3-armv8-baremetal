/*
 * SDCardDriver.h
 *
 *  Created on: Mar 20, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_SDHCI_SDCARDDRIVER_H_
#define INCLUDE_IO_SDHCI_SDCARDDRIVER_H_

#include <driver/sd/CardSpecData.h>
#include <generic_util.h>
#include <io/MemBasedRegReader.h>
#include <utility>
#include <driver/sd/SDCardStatus.h>

/**
 *  SD,SDIO,MMC
 *
 *  The controller is compatible with:
• SD host controller standard specification version 3.00.
• SD memory card specification version 3.01.
• SD memory card security specification version 1.01.
• SDIO card specification version 3.0.
• eMMC specification version 4.51.
• MMC specification version 4.51.

    从Xilinx ZCU102实现。
 */
class SDDriver
	:public MemBasedRegReader<true>
{
public:
	// 表明命令发送的状态，正确值为0，一般异常值为1，其他异常值为自定义的常数
	class CommandStatus{
	public:
		CommandStatus(int32_t value=0)
			:_value(value)
		{}
		CommandStatus(uint32_t value)
			:_value(value)
		{}
		CommandStatus(bool bvalue)
			:_value(bvalue?0:1)
		{}
		AS_MACRO operator bool()const{return _value==0;}
		AS_MACRO operator int32_t()const{return _value;}
	private:
		int32_t _value;
	};
	enum RegOffset : MemBasedRegReader::RegOffset{
		reg_sdmasysaddrlo = 0x0000, //16bits,RW
		reg_sdmasysaddrhi = 0x0002, //16bits,RW
		reg_blocksize = 0x0004, //16bits,RW
		reg_blockcount = 0x0006,// *
		reg_argument1lo = 0x0008,// *
		reg_argument1hi = 0x000A,// *
		reg_transfermode = 0x000C,// *
		reg_command = 0x000E, // 16bits,RW,
		reg_response0 = 0x0010, // 16bits,RO, can also be treated as 128bits
		reg_response1 = 0x0012, // 16bits,RO
		reg_response2 = 0x0014, // 16bits,RO
		reg_response3 = 0x0016, // 16bits,RO
		reg_response4 = 0x0018, // 16bits,RO
		reg_response5 = 0x001A, // 16bits,RO
		reg_response6 = 0x001C, // 16bits,RO
		reg_response7 = 0x001E, // 16bits,RO
		reg_dataport = 0x0020, // 32bits,RW
		reg_presentstate = 0x0024, //32bits,RO,reset=0x0008000
		reg_hostcontrol1 = 0x0028,//8bits,RW
		reg_powercontrol = 0x0029,//8bits,RW
		reg_timeoutcontrol = 0x002E, //8bits,RW
		reg_clockcontrol = 0x002C, // 16bits

		reg_softwarereset = 0x002F, //8bits, for reset
		reg_normalintrsts = 0x0030, //16bits,Mixed
		reg_errorintrsts  = 0x0032, //16bits, WTC(to clear)
		reg_normalintrstsena = 0x0034, // 16bits,Mixed,to enable
		reg_errorintrstsena = 0x0036, //16bits,RW
		reg_normalintrsigena = 0x0038,//16bits,MIXED
		reg_errorintrsigena = 0x003A,
		reg_hostcontrol2 = 0x003E, //16bits,RW
		reg_maxcurrentcap = 0x0048,//64bits,RO


		reg_capabilities = 0x0040, //64bits,RO,RESET_VALUE=0x280737EC6481
		reg_presetvalue1 = 0x0062, //16bits,RO,RESET=0x00000004
		reg_hostcontrollerver = 0x00FE, //16bits,RO,RESET=0x00001002,VENDOR VERSION
	};
	enum {
		XSDPS_APP_CMD_PREFIX=0x8000U,
        CMD0=0x0000U,
        CMD1=0x0100U,
        CMD2=0x0200U,
        CMD3=0x0300U,
        CMD4=0x0400U,
        CMD5=0x0500U,
        CMD6=0x0600U,
        ACMD6=(XSDPS_APP_CMD_PREFIX + 0x0600U),
        CMD7=0x0700U,
        CMD8=0x0800U,
        CMD9=0x0900U,
        CMD10=0x0A00U,
        CMD11=0x0B00U,
        CMD12=0x0C00U,
		CMD13=0x0D00U,
        ACMD13=(XSDPS_APP_CMD_PREFIX + 0x0D00U),
        CMD16=0x1000U,
        CMD17=0x1100U,
        CMD18=0x1200U,
        CMD19=0x1300U,
        CMD21=0x1500U,
        CMD23=0x1700U,
        ACMD23=(XSDPS_APP_CMD_PREFIX + 0x1700U),
        CMD24=0x1800U,
        CMD25=0x1900U,
        CMD41=0x2900U,
        ACMD41=(XSDPS_APP_CMD_PREFIX + 0x2900U),
        ACMD42=(XSDPS_APP_CMD_PREFIX + 0x2A00U),
        ACMD51=(XSDPS_APP_CMD_PREFIX + 0x3300U),
        CMD52=0x3400U,
        CMD55=0x3700U,
        CMD58=0x3A00U,

        XSDPS_CMD_RESP_NONE_MASK=0x00000000U, /**< No Response */
        XSDPS_CMD_RESP_L136_MASK=0x00000001U, /**< Response length 138 */
        XSDPS_CMD_RESP_L48_MASK=0x00000002U, /**< Response length 48 */
        XSDPS_CMD_RESP_L48_BSY_CHK_MASK=0x00000003U, /**< Response length 48 &check busy after							response */
		XSDPS_CMD_CRC_CHK_EN_MASK = 0x00000008U,
		XSDPS_CMD_INX_CHK_EN_MASK = 0x00000010U,
		XSDPS_DAT_PRESENT_SEL_MASK = 0x00000020U,
        XSDPS_CMD_TYPE_MASK=0x000000C0U, /**< Command Type */
        XSDPS_CMD_TYPE_NORM_MASK=0x00000000U, /**< CMD Type - Normal */
        XSDPS_CMD_TYPE_SUSPEND_MASK=0x00000040U, /**< CMD Type - Suspend */
        XSDPS_CMD_TYPE_RESUME_MASK=0x00000080U, /**< CMD Type - Resume */
        XSDPS_CMD_TYPE_ABORT_MASK=0x000000C0U, /**< CMD Type - Abort */
        XSDPS_CMD_MASK=0x00003F00U, /**< Command Index Mask -
							Set to CMD0-63,
							AMCD0-63 */

        XSDPS_CARD_SD=1U,
        XSDPS_CARD_MMC=2U,
        XSDPS_CARD_SDIO=3U,
        XSDPS_CARD_SDCOMBO=4U,
        XSDPS_CHIP_EMMC=5U,

		HC_VER_1=0x0u,
		HC_VER_2=0x1u,
		HC_VER_3=0x2u,

		SD_VER_1 = 0x1u,
		SD_VER_2 = 0x2u,



        RESP_NONE=static_cast<uint32_t>(XSDPS_CMD_RESP_NONE_MASK),
        RESP_R1=static_cast<uint32_t>(XSDPS_CMD_RESP_L48_MASK) | static_cast<uint32_t>(XSDPS_CMD_CRC_CHK_EN_MASK) | static_cast<uint32_t>(XSDPS_CMD_INX_CHK_EN_MASK),

        RESP_R1B=static_cast<uint32_t>(XSDPS_CMD_RESP_L48_BSY_CHK_MASK) | static_cast<uint32_t>(XSDPS_CMD_CRC_CHK_EN_MASK) | static_cast<uint32_t>(XSDPS_CMD_INX_CHK_EN_MASK),

        RESP_R2=static_cast<uint32_t>(XSDPS_CMD_RESP_L136_MASK) | static_cast<uint32_t>(XSDPS_CMD_CRC_CHK_EN_MASK),
        RESP_R3=static_cast<uint32_t>(XSDPS_CMD_RESP_L48_MASK),

        RESP_R6=static_cast<uint32_t>(XSDPS_CMD_RESP_L48_BSY_CHK_MASK) | static_cast<uint32_t>(XSDPS_CMD_CRC_CHK_EN_MASK) | static_cast<uint32_t>(XSDPS_CMD_INX_CHK_EN_MASK),

		// 变量名的含义是与该位为1时对应
		// bitsMix<TRANS_MODE_CARD_TO_HOST,TRANS_MODE_ENABLE_DMA, void,>; //base0
		TRANS_MODE_CARD_TO_HOST=0,
		TRANS_MODE_ENABLE_DMA=2
	};

	using R = RegOffset;

	template <class ... Args>
	SDDriver(Args && ... args)
	:MemBasedRegReader(std::forward<Args>(args)...)
	{}
	// 仅当卡存在时能够初始化
	bool init();

	// NOTE: from Xilinx only
	enum { CAP_RESET_VALUE = 0x280737EC6481};

	AS_MACRO bool hasCorrectBase()const{return reg<uint64_t,reg_capabilities>()==CAP_RESET_VALUE;}
	AS_MACRO bool hasCorrectPresetValue()const{return reg<uint64_t,reg_presetvalue1>()==0x00000004;}


	void resetController();

	AS_MACRO bool cardsExists()const { return reg<uint32_t,reg_presentstate>() & bitMask<16>();} //bit16==1

	//0x00001002
	AS_MACRO uint16_t vendorVersion()const{return reg<uint16_t,reg_hostcontrollerver>();}

	bool hasResponse()const{return reg<uint16_t,reg_normalintrsts>() & 0b1;}
	void clearResponseBit(){setBit(reg<uint16_t,reg_normalintrsts>(),1,0);}
	void setBlockSize();
	uint8_t  busWidth()const;
	void     busWidth(uint8_t newWidth);
	uint8_t  busSpeed()const;
	void     busSpeed(uint8_t newSpeed);

	CommandStatus     clockFreq(uint32_t newFreq);
	uint32_t frameCommand(uint32_t cmd)const;
	CommandStatus     transferCommand(uint32_t cmd,uint32_t arg,uint32_t blckCnt);
	CommandStatus     readPolled(uint32_t arg,uint32_t blkCnt,uint8_t *buff);


	void     sendPullup();
	void     setupADMA2DescriptorTable();

	AS_MACRO void transferMode(uint16_t mode){ _transferMode=mode;}
	size_t    readSingleBlockNoDMA(size_t startSec,void * buffer);
	size_t    readBlocksNoDMA(size_t startSec,size_t blocks,void * buffer);
	size_t    writeSingleBlockNoDMA(size_t startSec,const void *buffer);
	size_t    writeBlocksNoDMA(size_t startSec,size_t blocks,const void *buffer);
	SDCardStatus  cardStatus();
	AS_MACRO void     clearIntErrStatus(){	reg<uint16_t,reg_normalintrsts>()=0x0000FFFFu;
	reg<uint16_t,reg_errorintrsts>()=0x0000F3FFu;}


//	AS_MACRO void normalIntStatus(uint16_t mask){reg<uint16_t,reg_normalintrsts>() = mask;}
//	AS_MACRO void errorIntStatus(uint16_t mask){reg<uint16_t,reg_errorintrsts>() = mask;}
//	AS_MACRO void argumentLo(uint16_t argLo){reg<uint16_t,reg_argument1lo>()=argLo;}
//	AS_MACRO void argumentHi(uint16_t argHi){reg<uint16_t,reg_argument1hi>()=argHi;}
//	AS_MACRO void timeoutControl(uint8_t vl){reg<uint8_t,reg_timeoutcontrol>()=vl;}


private:
	uint16_t _transferMode {0};
	uint8_t  _hostControlVersion {0};
	bool     _cardInserted {false};
	uint64_t _capabilities {0};
	uint32_t _baseClockFreq {0};
	uint32_t _clockFreq {0};
	uint32_t _blockSize {0};
	uint8_t  _cardType {0};
	uint8_t  _cardVersion {0};
	uint32_t _cardID[4];
	uint32_t _relativeCardAddr {0}; // shifted的状态，16位有效值存在在高16位，为了在发送该值时无需移位
	CardSpecData _cardSpecData {0};
	uint64_t _secCount {0};
};



#endif /* INCLUDE_IO_SDHCI_SDDRIVER_H_ */
