/* stolen from gcc-7.2.0/libgcc/memXXX.c */
#include <def.h>
#include <cstring>
#include <io/Output.h>

void * memset (void *dest, int val, size_t len)
{
  unsigned char *ptr = reinterpret_cast<unsigned char *>(dest);
  while (len-- > 0)
  {
	  *ptr++ = static_cast<char>(val);
  }
  return dest;
}
