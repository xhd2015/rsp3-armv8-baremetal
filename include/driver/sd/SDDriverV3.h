/*
 * SDDriverV3.h
 *
 *  Created on: Apr 21, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_SD_SDDRIVERV3_H_
#define INCLUDE_DRIVER_SD_SDDRIVERV3_H_


#include <io/MemBasedRegReader.h>
#include <generic_util.h>
#include <driver/sd/SDDefinitions.h>
#include <driver/sd/SDCardOperationCond.h>
#include <driver/sd/SDCardIdentification.h>
/**
 * Base = 0x3F300000
 *
 * for BCM2835/6/7 only， but may be adapted to others.
 *
 * 根据SDA的SD 3.0技术手册：
 *    The Host Controller shall support byte, word and double word accesses to these registers.
 * 可知，控制器应当支持1,2,4字节的读写。
 *  术语：
 *  	RO:只读,重置无影响  ROC:只读，重置0  RW：读写   RW1C:可读，写入1时清除，0无影响
 *  	RWAC：RW，自动清除    HwInit：硬件初始化，初始化后只读   Rsvd：保留     WO：只写。并不是物理上的寄存器，而是寄存器可写的地址。
 *
 * 电源控制策略：写入支持的最大值。
 *
 * CardStatus：R1中应当包含32位卡状态信息，参见SDCardStatus
 *
 * CardRegisters：在SD卡中的寄存器， 6个 OCR CID CSD RCA DSR SCR，这些寄存器只能由特定的命令获取
 * 			OCR(Operation Condition Register):32bits
 * 					bit0-14 reserved
 * 					bit15~23: (2.7v,2.8v) (2.8v,2.9v) ... (3.5v,3.6v)  称为VDD Voltage Window
 * 						相应的位表明某个范围的电压是否支持
 * 					bit24：（只有UHS-I支持该位） S18A  = switching to 1.8v accepted
 * 					bit29:UHS-II card status, 用于检测是否支持UHS-II接口
 * 					bit30:CardCapacityStatus, 仅当bit31=1时有效。 0=SDSC，1=SDHC 或SDXC
 * 						 驱动应当读取该位来判断卡的类型
 * 					bit31:CardPowerUp 当卡启动完成时，该位设置。
 * 			CID(Card Identification) 128bits  参见SDCardIdentification
 * 					bit0:res1
 * 					bit1-7:CRC7 checksum,计算寄存器内容的校验值
 * 					bit8-19:MDR，Manufacturing date,生产日期
 * 					bit24-55:PSR， Product serial number
 * 					bit56-63:PRV, Product Revision
 * 					bit64-103:PNM , Product Name
 * 					bit104-119:OEM ID
 * 					bit120-127:Manufacture ID
 * 			CSD(Card specific data):128bits  参见CardSpecData
 * 				最高两位bit126-128决定版本号，0=V1,SC（Standard Capacity)
 * 										 1=V2,HC&EC(High & Extended Capacity), 其他保留
 * 			RCA(Relative Card Address)  16bits  0000表示对所有的卡的命令。 在卡的初始化过程中由卡生成
 * 			DSR(driver stage register) 可选支持
 * 			SCR(SDCard Configuration Register) 作为对CSD的补充  64位
 *
 */
class SDDriverV3
	:public MemBasedRegReader<true>
{
public:
	enum RegOffset : MemBasedRegReader::RegOffset{
		SDMA_ARG2=0x0,
		BLOCK_SIZE=0x4,
		BLOCK_COUNT=0x6,
		ARG1 = 0x8,
		CMD_TRANS=0xC, // used for both trans & cmd
						// 32bits
		TRANS_MODE=0xC, // bit0=DMAEnable
						// bit1=BlockCountEnable
						// bit2-3= AutoCMDEnable,00=disable,01=AutoCMD12,10=AutoCMD23
						// AutoCMD23只能在CMD18和25之间使用。需要：1.控制器支持AutoCMD23 2.SD卡支持（SCR[33]=1)
						//                       3.如果启用DMA
						// bit4=DATLine Direction,DAT线数据之间的方向
						// bit5=Multi/Single Block Select, 仅在多个块传送时设置，其他命令该位应当设置为0.
						// 16bits  注意，该寄存器应当在发送传输数据的命令时、或者恢复时设置。其他命令不用设置。
		COMMAND = 0xE,	// bit0-1=ResponseTypeSelect
						//     00:NoResp 01:resp len=136,10:resp len 48,11:resp len 48,check busy
						//  和其他位的关系(bit0-1,bit4,bit3)： NoResp=0000 R2=0101
						//								R3,R4=1000 R1,R5,R6,R7=1011,
						//								R1b,R5b=1111
						// bit3=CRCCheckEnable, 当response crc错误时，报告CommandCRCError
						// bit4=CommandIndexCheckEnable,检查response的index域
		                // bit5=DataPresentSelect， 使用DAT线时应当设置。下列情况应当设置为0：
						//            1.只使用CMD线的命令（如CMD52）
						//            2.没有数据传输，但是使用DAT[0]来检测busy位的，(R1b,R5b,如CMD38）
						//            3.Resume command.
						// bit6-7=CommandType,
						//   00:normal 01:suspend(CMD52) 10:Resume(CMD52) 11:abort(CMD12,CMD52)
						// bit8-13=CommandIndex (CMD0-63,ACMD0-63)
						// 16bits, 写入高位字节时产生命令。  在发送命令前，应当检查CommandInhibit(CMD和DAT).
		RESP = 0x10,    // 所有的响应都是通过CMD线发送的，下面所说的位数是指没有去处开始/停止，CRC的长度。
						// R1: 48bits 包括 card status,command index, SD模式中只保留必要的部分。
						//    CMD13,且b[15]=0发送card status
						// R1b: 同R1，但是DAT线上发送busy
						// R2(CID,CSD): 136bits, CMD2,CMD10->CID  CMD9->CSD
						// R3(OCR): 48bits,ACMD41 , OCR共32位
						// R6(RCA):48  包括16位RCA， 16位Card Status   CMD3
						// R7(Card interface condition): 48bits,  CMD8  包含一个回显的检测数据，以及可以接受的电压范围
						//       电压范围：0：未定义  1：2.7~3.6  其他：保留
		BUFF_DATA_PORT=0x20,
		PRESENT_STATE=0x24,// bit0=CommandInhibit(CMD), 表明是否可通过CMD线发送命令。在接受完RESPONE之后该位清除。 0->1产生CommandComplete中断
							//bit1=CommandInhibit(DAT), 表明数据是否在传输。0时可传输数据。   0->1产生TransferComplete中断
							// bit2=DAT Line Active
							// bit8=WriteTransferActive, 1表明Transfering Data，
							// bit9=ReadTransferActive  1->0 产生TransferComplete
							// bit10=BufferWriteEnable  0->1 产生BufferWriteReady中断
							// bit11=BUfferReadEnable   0->1产生BufferReadReady中断
							// bit16=CardInserted       0->1产生Card Insertion中断,1->0产生CardRemoval中断  RO,重置不影响
							// bit20-23=DAT[0-3],当DAT[0]=0时，表示busy，=1时表示空闲。
							// 32bits
		HOST_CTRL1=0x28,// bit0=LED Control, 该灯用于提示用户正在访问数据卡，不应当被移除
						// bit1=Data Transfer Width, 数据传输的宽度，驱动器应当设置为与SD卡匹配的值
						//		0=1-bit 1=4-bit
						// bit2=HightSpeedEnable,可选
						// bit3-4=DMA Select ,00=SDMA 01=保留 10=32bit ADMA2 11=保留
						// bit5=ExtendedDataWidth, 0:由bit1决定   1：8-bit模式
						// bit6=CardDectectTestLevel
						// bit7=CardDetectSignalSelection 0:SDCD#,正常  1:使用bit6。 改变该位之前必须先禁用相应的中断。
						// 8bits
		POWER_CTRL=0x29,  //bit0=SD Bus Power, 在设置该位之前，应当设置SDBusVoltageSelect。
						   //                 如果没有检测到卡,该位应当被清除 。 1=Power ON,0=Off
							//bit1-3  101:1.8V  110:3.0V  111:3.3V
		BLOCK_GAP_CTRL=0x2A,
		WAKEUP_CTRL=0x2B,
		CLOCK_CTRL=0x2C,//bit0=InternalClockEnable 表示启用/禁用控制器
						//bit1=InternalClockStable
						//bit2=SDClockEnable, 控制SD卡上的SDCLK。 只有该位为0时可以改变sd卡的频率
						//bit5=ClockGeneratorSelect, 影响频率的除数， 0=使用除数 1=使用Capabilities中的ClockMultiplier
						// bit8-15  SDCLK Frequency Select,选择频率。值必须是2的幂，00,01,02,04 ... 80, 对于N， freq=baseFreq/2N
						// 频率越高，速度越快。  最大的频率是25MHz（正常模式），50MHz(高速模式）， 一般设置400KHz
						// 16bits
		TIMEOUT_CTRL=0x2E,// bit0-3 DataTimeout Error
						//8bits   注意，在写入该寄存器之前， 应当禁用DataTimeoutError
		SOFTWARE_RESET=0x2F, // bit0  包括重置CMD线和DAT线的状态
							//  bit1 重置CMD线，包括：重置Present中的CommandInhibit(CMD)，重置Interrupt中的command complete
							// bit2 重置DAT，包括DataPort中的数据，Present中与读写相关的(包括CommadInhibit(DAT)) Interrupt中的
							//  8bits
		NORM_INT_STATUS=0x30,// 写入1清除这些位
							// bit0=CommandComplete
							 // bit1=TransferComplete
							//  bit2=BlockGapEvent, bit3=DMA Int, bit4=BufferWriteReady bit5=BufferReadReady
		                    // bit6=CardInsertation  bit7=CardRemoval
							// bit15=ErrorInterrupt  逻辑OR所有的中断
							//  16bits

		ERR_INT_STATUS=0x32, // bit0=CommandTimeout	bit1=CommandCRCError bit2=CommandEnd
							//  bit3=CommandIndexError  bit4=DataTimeout  bit5=DataCRCError
		                    // bit6=DataEndBit   bit7=CurrentLimitError  bit8=AutoCMDError
							//bit9=ACMDError ，bit10=TuningError
							//bit12-15=VendorSpecific, vendor自定义。
							// 16bits
		NORM_INT_EN=0x34, // 与NORM_INT_STATUS对应
		ERR_INT_EN=0x36,
		NORM_INT_SIG_EN=0x38, // 这里指的是CPU中断，而不是中断状态
		ERR_INT_SIG_EN=0x3A,
		AUTO_CMD_ERR_STATUS=0x3C,
		HOST_CTRL2=0x3E,// bit0-2=UHS Mode select,改变该位前应当禁用SDClock
						// bit3=1.8V singaling Enable,  0=3.3V 1=1.8V
						// bit4-5=DriverStrengthSelect, 该域只影响1.8v模式。
						//    当PresetValueEnable=1时， 自动从PresetValue中选择
						//     否则，00=TypeB 01=TypeA 10=TypeC 11=TypeD
						//  bit15=Preset ValueEnable,仅3.0支持该位
						//    决定SDCLK,ClockGeneratorSelect(ClockControl中),以及Driver Strength Select(Host Control2)
						// 16bits
		CAPABILITIES=0x40,//   bit0-bit5=TimeOutClockFreq,非0值表示有效，根据bit7确定单位(0:KHz,1:MHz),范围1~63
							// bit7  bit0-bit5的 单位
							// bit8-15 BaseClockFreqForSDClock,指定sd卡时钟频率最大值。 V1~V2支持6bit， V3支持8bit。 非0时有效，范围1MHz~255MHz
							// bit16-17 maxBlockLength。 表明无需等待传输的最小单位，00:512 01:1024 10:2048 11:保留。 注意SDMemory卡总是512
							// bit18 8-bit Bus Supported
							// bit19  ADMA2 supported， bit21=HighSpeedSupport,bit22=SDMASupported,bit23=SuspendResumeSupportd
							// bit24=3.3VSupported  bit25=3.0VSupported,bit26=1.8VSupported
							// bit28=64BitBusSupported  bit29=AsyncIntSupported(SDIO3.0)
		                    // bit30-31=SlotType 00:Removable 01:Embed 10:SharedBusSlot 11:rsvd
							// bit48-55=ClockMultiplier, 00:not supported, 01~FF=2~256
							// 64bits
		MAX_CURRENT_CAP=0x48,
		FORCE_EVENT_FOR_ATUO_CMD_ERROR=0x50,
		FORCE_EVENT_FOR_ERR_INT_STATUS=0x52,
		ADMA_ERR_STATUS=0x54,
		ADMA_SYS_ADDR=0x58,
		PRESET_VALUE = 0x60,//0x60-0x6F
		SHARED_BUS_CTRL_OPT=0xE0,//optional
		SLOT_INT_STATUS=0xFC,
		SLOTISR_VER = 0xFC,// bit0:7= each slot's interrupt status OR
						  //  bit16:23 = Host Controller版本 , 0:V1 1:V2 2:V3 其他：保留
				          //  bit24:31 = Vendor Version Number
		HOST_CTRL_VER=0xFE,
	};
	using Command = SDDefinitions::Command;
	using RespType = SDDefinitions::RespType;

	enum HCVersion { V_1,V_2,V_3 };
	enum VoltageSel { _3V3=0b111,_3V0=0b110,_1V8=101};
	enum VHS {UNDEF=0, RANGE_2v7_3v6=1,
		RES_LOW=0b10,RES_1=0b100,RES_2=0b1000}; // host supplied voltage

	template <class ... Args>
	SDDriverV3(Args && ... args)
	:MemBasedRegReader(std::forward<Args>(args)...),
	 _hcver(V_3),
	 _capabilities(0),
	 _rca(0),
	 _blockSize(512),
	 _cid(),
	 _ocr()
	{}

	int init();
	int reset();
	/**
	 * 通过发送ACMD41获取OCR，来启动SDCard
	 * @return
	 */
	int powerUpSDCard();
	/**
	 * legacy card，即不支持CMD8的卡
	 * @return
	 */
	int initLegacyCard();
	int signalVoltageSwitch();

	// 为了支持不同的卡类型，有些卡可能永远都不会返回
	int sendCommand(Command cmd,uint32_t arg,uint32_t waitMS=0xFFFFFFFF);
	int sendAppCommand(Command cmd,uint32_t arg,uint32_t waitMS=0xFFFFFFFF);
	static bool commandUsesDAT(Command cmd);
	/**
	 * 主要指的是R1b,R5b的command
	 * @param cmd
	 * @param type
	 * @return
	 */
	static bool commandNeedsTransferComplete(Command cmd,RespType type);
	AS_MACRO void clearNormInt(){	reg16(NORM_INT_STATUS) = 0xFFFFu;}
	AS_MACRO void clearErrInt() {   reg16(ERR_INT_STATUS) = 0xF3FFu;}
	AS_MACRO void clearNormErrInt() {   clearErrInt();clearNormInt();}
	AS_MACRO bool lastCommandCompleted()const {return bitsAnySet<0>(reg16(NORM_INT_STATUS));}
	AS_MACRO bool lastTransferCompleted()const { return bitsAnySet<1>(reg16(NORM_INT_STATUS));}
	AS_MACRO bool bufferReadReady()const { return bitsAnySet<5>(reg16(NORM_INT_STATUS));}
	AS_MACRO bool bufferWriteReady()const { return bitsAnySet<4>(reg16(NORM_INT_STATUS));}
	AS_MACRO void clearReadReady()  { reg16(NORM_INT_STATUS)=bitOnes<5>();}
	AS_MACRO void clearWriteReady() { reg16(NORM_INT_STATUS)=bitOnes<4>();}
	void softwareResetAll();
	void softwareResetCMD();
	void softwareResetDAT();
	uint32_t response(size_t i=0)const{ return reg32(RESP+i*4);}
	const char*  responseTypeString(RespType r)const;
	// read or write
	size_t  transferBlocks(uint32_t blockAddr,size_t num,void *readBuf,const void *writeBuf=nullptr);

	/**
	 * 要求任意一个连接的卡发送RCA。
	 * 如果某个卡发送了RCA，则响应值包含非0值。
	 * 注意：RCA包含在32位的高16位，低16位应当被忽略
	 * @return
	 */
	uint32_t getAnyRCA();
	int     setRCA(uint32_t rca) ;

	// present
	// 检测是否可写入命令
	AS_MACRO bool commandInbitit()const;
	AS_MACRO bool bufferWriteable()const;
	AS_MACRO bool bufferReadable()const;

	// 检测capabilities寄存器
	AS_MACRO bool SDMASupported()const { return getBit(_capabilities,22);}
	AS_MACRO bool ADMA2Supported()const{ return getBit(_capabilities,19);}
	AS_MACRO bool suspendSupported()const { return getBit(_capabilities,23);}
	AS_MACRO uint64_t baseSDCardFreq()const { return getBits(_capabilities,8,15)*1000000;}

	AS_MACRO bool    cardInserted()const { return getBit(reg32(PRESENT_STATE),16);}
	AS_MACRO bool    busy()const {return bitsAnySet<0,1>(reg32(PRESENT_STATE));}
	AS_MACRO bool    dataBusy()const { return bitsAnySet<1>(reg32(PRESENT_STATE));}
	AS_MACRO bool    cmdBusy()const { return bitsAnySet<0>(reg32(PRESENT_STATE));}
	AS_MACRO void    completeLastCommand() { reg16(NORM_INT_STATUS)=0b1;}
	AS_MACRO void    completeLastTransfer() { reg16(NORM_INT_STATUS)=0b10;}
	/**
	 * 在发送命令前必须设置clock的频率
	 * @param freq
	 */
	void    setSDClockFreq(size_t freq);
	uint8_t clockDivisor(size_t targetFreq)const;
	uint32_t  clockDivisorForEMMC(uint32_t freq)const;
	// 在传输命令期间不应当停止
	void    stopSDClock(bool stop);
	VoltageSel maxSupportVoltage()const;
	/**
	 * 如果选择的电压不被支持，则sd卡power off（关闭状态）
	 * Operation Conditions Register = OCR
	 */
	void       setVoltage();
	void    dumpStatus()const;
private:
	HCVersion  _hcver;
	uint64_t   _capabilities;
	uint32_t   _rca;// shifted rca
	size_t     _blockSize;//512
	SDCardIdentification _cid;
	SDCardOperationCond  _ocr;
};




#endif /* INCLUDE_DRIVER_SD_SDDRIVERV3_H_ */
