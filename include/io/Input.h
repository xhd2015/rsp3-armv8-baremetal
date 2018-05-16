/*
 * Input.h
 *
 *  Created on: Mar 19, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_INPUT_H_
#define INCLUDE_IO_INPUT_H_

#include <data/String.h>
#include <driver/uart/PL011.h>
#include <io/char/CharacterReader.h>

/**
 * 必须保证reader不为nullptr(因为内部没有检查)
 */
class Input{
public:
	enum Config{INPUT_BUFFER_SIZE = 512};

	Input(CharacterReader * reader):_chReader(reader){}
	Input(const Input &)=delete;
	Input & operator=(const Input &)=delete;
	AS_MACRO void redirect(CharacterReader * reader){ _chReader=reader;}

	AS_MACRO Input &operator>>(char &ch) { ch=getchar();return *this;}
	Input &operator>>(int &d);
	//读取字符串，略过空白符，直到遇到下一个空白符 ， 空白符=换行，tab,空格
	Input &operator>>(String &s);
	String readline();

	// will block
	AS_MACRO char      getchar(){return _chReader->read();}

private:
	CharacterReader * _chReader;
};


//// 使用uint16_t是因为每个输入的字符可能还包括一些额外的状态信息，这样能够简化设计。
//constexpr size_t inputBufferSize = 512;
//extern std::array<uint16_t,inputBufferSize> inputBuffer;

#ifndef _NOT_NEED_Input
extern Input kin;
#endif

#endif /* INCLUDE_IO_INPUT_H_ */
