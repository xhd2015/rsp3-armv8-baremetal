

#include <printk.h>
#include <arch/aarch64/uart1.h>

void printk(const char *s)
{
	uart1Puts(s);
}
