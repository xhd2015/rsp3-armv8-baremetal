/*
 * CharacterReader.h
 *
 *  Created on: Apr 24, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_IO_CHARACTERREADER_H_
#define INCLUDE_IO_CHARACTERREADER_H_


/**
 * 可以通过queue buffer的方式高效地实现CharacterReader，从而实现具有格式的输出输入
 *
 * 注意与ByteReader概念上的区别：没有地址，所有的读取都是从某个位置连续地开始。
 */
class CharacterReader{
public:
	virtual ~CharacterReader()=default;
	virtual char  read() = 0;
};



#endif /* INCLUDE_IO_CHARACTERREADER_H_ */
