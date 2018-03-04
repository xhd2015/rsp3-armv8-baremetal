
#include <iostream>
#include <cstdio>
int main()
{
	unsigned int a=-1;
	unsigned int upperBits = a >> 4 << 4;
	unsigned int lowerBits = ~upperBits;
	printf("a=%x\n",a);
	printf("upperBits = %x\n",upperBits) ;
	printf("lowerBits = %x\n",lowerBits) ;

	return 0;
}
