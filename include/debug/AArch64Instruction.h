/*
 * AArch64Instruction.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DEBUG_AARCH64INSTRUCTION_H_
#define INCLUDE_DEBUG_AARCH64INSTRUCTION_H_
#include <generic_util.h>
#include <generic/BitRange.h>

class AArch64Instruction{
public:
	// Rd , immhi, immlo,op
	static constexpr BitRange PC_REL_BITS[] = { {0,4}, {5,23}, {29,30},{31,31} };
	// Rd, Rn ,imm12,shift,S,op,sf
	static constexpr BitRange ARITH_IMM_BITS[] = { {0,4}, {5,9}, {10,21},{22,23},{29,29},{30,30},{31,31}};
	// Rt, imm19,V,opc
	static constexpr BitRange LOAD_LITERAL_BITS[]={ {0,4}, {5,23}, {26,26},{30,31}};

	AS_MACRO bool unallocated() const { return getBits(_instr,27,28)==0b00;}
	uint32_t  mainType()const;

private:
	uint32_t  *_addr;
	uint32_t  _instr;
	uint32_t  _type;
}__attribute__((packed));



#endif /* INCLUDE_DEBUG_AARCH64INSTRUCTION_H_ */
