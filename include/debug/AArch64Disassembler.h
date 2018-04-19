/*
 * AArch64Disassembler.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DEBUG_AARCH64DISASSEMBLER_H_
#define INCLUDE_DEBUG_AARCH64DISASSEMBLER_H_

/**
 * 每次解析指令的i,j位，并提供一些上下文信息，返回下一步需要解析的i,j范围。
 * 最终确定具体的指令，指令的参数
 */
class AArch64Disassembler{
public:
	enum InstrClass {
		IC_UNALLOCATED, IC_DATA_PROC_IMM,IC_BRANCH_EXP,IC_LOAD_STORE,
		IC_DATA_PROC_REG, IC_DATA_PROC_SIMD
	};
	/**
	 *  返回指令是否解析完成。
	 * @param i
	 * @param j
	 * @return
	 */
	bool parse(int &i, int &j);

};



#endif /* INCLUDE_DEBUG_AARCH64DISASSEMBLER_H_ */
