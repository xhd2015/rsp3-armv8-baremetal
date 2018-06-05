
#include <io/char/RAMFileCharacterWriter.h>

size_t  RAMFileCharacterWriter::write(char ch)
{
	_file->append(ch);
	return 1;
}

