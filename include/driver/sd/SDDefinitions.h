/*
 * SDDefinitions.h
 *
 *  Created on: Apr 18, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DRIVER_SD_SDDEFINITIONS_H_
#define INCLUDE_DRIVER_SD_SDDEFINITIONS_H_
#include <def.h>
#include <generic_util.h>

/**
 * command参考 SD Physical L1, P82
 */
namespace SDDefinitions {
// Command中的bit0-4  bit0-1,bit4,bit3
enum RespType { R_NONE=0b0000,
	        R2=0b01001,
//			R2_nocheck=0b00001,
			R3=0b00010,R4=R3,
			R1=0b11010,R5=R1,R6=R1,R7=R1,
//			R1_nocheck=0b00010, R5_nocheck=R1_nocheck,R6_nocheck=R1_nocheck,R7_nocheck=R1_nocheck,
			R1b=0b11011,R5b=R1b,
//			R1b_nocheck=0b00011,R5b_nocheck=R1b_nocheck
};

// BUGFIX
//  对于command寄存的的bit5-Data Present Select,描述如下：
//		在下面的情况下设置为0：
//			1.只使用CMD线的命令   2.使用DAT[0]传送信号的命令,如R1b和R5b 3.Resume command
//  因此原来对于R1b和R5b设置bit5的做法是错误的
template <uint8_t index,
		RespType tp,
		int cmd_write_read,//0=cmd,has_data=false, 1=write,has data=true 2=read,has data=true,
		int block_single_multi_infinit, //0=single,1=multi,2=infinit
		bool dma>
static constexpr uint32_t makeTransCommand()
{
	uint32_t res=0;
	res=makeBits<uint32_t,24,29,index>(res);
	if(cmd_write_read==1 || cmd_write_read==2)
	{
		res=makeBits<uint32_t,21,21,1>(res); //setBit(res,21,1);
		res=makeBits<uint32_t,0,0,dma>(res);//setBit(res,0,dma);
		res=makeBits<uint32_t,4,4,cmd_write_read-1>(res);
		if(block_single_multi_infinit==0)
		{
			res=makeBits<uint32_t,5,5,0>(res);
			res=makeBits<uint32_t,1,1,0>(res);
		}else if(block_single_multi_infinit==1){
			res=makeBits<uint32_t,5,5,1>(res);
			res=makeBits<uint32_t,1,1,1>(res);
		}else if(block_single_multi_infinit==2){
			res=makeBits<uint32_t,5,5,1>(res);
			res=makeBits<uint32_t,1,1,0>(res);
		}
	}
//	else if(tp==RespType::R1b){
//		res=makeBits<uint32_t,21,21,1>(res);
//	}
	res=makeBits<uint32_t,16,20,tp>(res);
	return res;
}

uint32_t makeACMD41Arg(uint32_t voltageWindow,bool hcs,bool S18R,bool XPC);


enum Command {
	IDLE=makeTransCommand<0,RespType::R_NONE,0,0,false>(),CMD0=IDLE,
	ALL_SEND_CID=makeTransCommand<2,RespType::R2,0,0,false>(),CMD2=ALL_SEND_CID,
	SEND_RELATIVE_ADDR=makeTransCommand<3,RespType::R6,0,0,false>(),
//		0x07030000u
	SELECT_DESELECT_CARD=makeTransCommand<7,RespType::R1b,0,0,false>(),
	SEND_IF_COND=makeTransCommand<8,RespType::R1,0,0,false>(),
	VOLTAGE_SWITCH_1V8=makeTransCommand<11,RespType::R1,0,0,false>(), CMD11=VOLTAGE_SWITCH_1V8,
	STOP_TRANSMISSION=makeTransCommand<12,RespType::R1b,0,0,false>(),CMD12=STOP_TRANSMISSION,
	SEND_STATUS=makeTransCommand<13,RespType::R1,0,0,false>(),CMD13=SEND_STATUS,
	SET_BLOCKLEN=makeTransCommand<16,RespType::R1,0,0,false>(),
	READ_SINGLE_BLOCK=makeTransCommand<17,RespType::R1,2,0,false>(),
	READ_MULTIPLE_BLOCK=makeTransCommand<18,RespType::R1,2,1,false>(),
	SET_BLOCK_COUNT=makeTransCommand<23,RespType::R1,0,0,false>(),
	WRITE_SINGLE_BLOCK=makeTransCommand<24,RespType::R1,1,0,false>(),
	WRITE_MULTIPLE_BLOCK=makeTransCommand<25,RespType::R1,1,1,false>(),
			//  参数是地址，地址对于不同的版本含义不一样。
			// SDSC Card (CCS=0) uses byte unit address and SDHC and SDXC Cards (CCS=1)
			// use block unit address (512 Bytes unit)
	CMD52=makeTransCommand<52,RespType::R_NONE,0,0,false>(),
	APP = makeTransCommand<55,RespType::R1,0,0,false>(),
	APP_SEND_OP_COND = makeTransCommand<41,RespType::R3,0,0,false>(),
			// bit0-23 =voltage window
			// bit24 = S18R(switch to 1V8)
			// bit28=XPC, max power,0=0.36w, 1=0.54w
			// bit30=HCS,(设置为OCR[30], 即HCS=CCS, card capacity status)
};

}

#endif /* INCLUDE_DRIVER_SD_SDDEFINITIONS_H_ */
