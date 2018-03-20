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

class Input{
public:
	enum Config{INPUT_BUFFER_SIZE = 512};

	Input()=default;


	Input &operator >>(char &ch);
	Input &operator >>(int &d);

	// will block
	AS_MACRO uint16_t   read()
	{
		return pl011.readDataBlocked();
	}

	AS_MACRO char      getchar()
	{
		return static_cast<char>(pl011.readDataBlocked());
	}


private:
};


//// 使用uint16_t是因为每个输入的字符可能还包括一些额外的状态信息，这样能够简化设计。
//constexpr size_t inputBufferSize = 512;
//extern std::array<uint16_t,inputBufferSize> inputBuffer;

extern Input kin;

#endif /* INCLUDE_IO_INPUT_H_ */
