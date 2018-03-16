

#include <arch/aarch64/uart1.h>
#include "../../../include/io/printk.h"

void printk(const char *s)
{
	uart1Puts(s);
}
