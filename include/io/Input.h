/*
 * Input.h
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_INPUT_H_
#define INCLUDE_IO_INPUT_H_

#include <array>
#include <io/uart/PL011.h>
#include <runtime_def.h>
#include <data_structures/String.h>

class Input{
public:
	enum Config{INPUT_BUFFER_SIZE = 512};

	Input()=default;


	AS_MACRO Input &operator>>(char &ch) { ch=getchar();return *this;}
	Input &operator>>(int &d);
	//读取字符串，略过空白符，直到遇到下一个空白符 ， 空白符=换行，tab,空格
	Input &operator>>(String &s);
	String readline();

	// will block
	uint16_t   read();
	AS_MACRO char      getchar(){return static_cast<char>(read());}

private:
};


//// 使用uint16_t是因为每个输入的字符可能还包括一些额外的状态信息，这样能够简化设计。
//constexpr size_t inputBufferSize = 512;
//extern std::array<uint16_t,inputBufferSize> inputBuffer;

#ifndef _NOT_NEED_Input
extern Input kin;
#endif

#endif /* INCLUDE_IO_INPUT_H_ */
