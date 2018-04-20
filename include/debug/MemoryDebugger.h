/*
 * MemoryDebugger.h
 *
 *  Created on: Apr 17, 2018
 *      Author: 13774
 */

#ifndef INCLUDE_DEBUG_MEMORYDEBUGGER_H_
#define INCLUDE_DEBUG_MEMORYDEBUGGER_H_
#include <io/Output.h>
#include <memory/MemoryManager.h>
#include <data/String.h>
#include <functional>
// 在类中定义，为了放在.text分区，必须定义为const
//extern const char * const REG_NAME_MAP[];
// DOCME 注意,类中的static和类外的extern相同
class MemoryDebugger
{
public:
	static constexpr int EXIT=-1;
	static constexpr int ARG_NOT_ENOUGH=-2;
	static constexpr int INVALID_COMMAND=-3;
	// 不可以在类中定义extern变量
	// 注意：REG_NAME_MAP是可重定位的，但是其内容却是不可重定位的。（指针值并不会变化）
	// 所以必须放在.text.relocptr中，然后进行rebase操作。
	static const char * const REG_NAME_MAP[3];
	MemoryDebugger()
		:_base(0),_val(0),_len(8){}
	MemoryDebugger(uint64_t base)
		:_base(base),_val(0),_len(8){}

	using CommandProcess = std::function<int(const Vector<String> &)>;
	int mainloop(const String &prompt);

	enum RegName { R_GENERAL, R_VBAR, R_CURRENTEL };

	int executeCommand(const Vector<String> & cmd);
	int executeRead(const void *p,size_t length);
	int executeWrite(void *p,size_t val,size_t length);
	int executeDumpReg(RegName name, size_t optArg);


	bool parseAddr(const String &s);
	bool parseUnsigned(const String &s);
	bool parseOptional(const Vector<String> &s, size_t index,size_t defaultVal);
private:
	uint64_t  _base;
	size_t    _val;
	uint8_t   _len;
};



#endif /* INCLUDE_DEBUG_MEMORYDEBUGGER_H_ */
