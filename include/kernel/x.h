void TEMPLATED_InterruptHandler::handleSVC(SvcFunc func)
{
	auto savedRegisters=currentState().registers();
	switch(func)
	{
        case SvcFunc::puts:
        {
            // 获取参数
            auto str = reinterpret_cast<const char*>(savedRegisters[0]);
            auto len = reinterpret_cast<size_t>(savedRegisters[1]);
            auto printkChars = terminalOut.print(str, len); // 使用terminalOut输出
            savedRegisters[0] = printkChars; // 设置返回值
            break;
        }
    }
    /* ... 其他系统调用功能*/
}

void handleSVC(SvcFunc func)
{
	auto savedRegisters=currentState().registers();
	switch(func)
	{
        case SvcFunc::puts:
        {
            /*... 具体处理*/
        }
        /* ... 其他系统调用功能*/
    }
}