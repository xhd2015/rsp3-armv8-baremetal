
#include <iostream>
using namespace std;

int main()
{
	extern char localSym[];
	extern char globalSym[];
	cout << "testing local and global symbol \n";
	__asm__("localSym:\n\t");
	__asm__(".global globalSym \n\t"
		"globalSym: \n\t");
	cout << "localSym = " << (size_t)localSym << "\n";
	cout << "globalSym = " << (size_t)globalSym << "\n";
	return 0;
}
