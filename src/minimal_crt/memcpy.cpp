/* stolen from gcc-7.2.0/libgcc/memXXX.c */
#include <def.h>
#include <cstring>

void *memcpy (void *dest, const void *src, size_t len)
{
  char *d = reinterpret_cast<char*>(dest);
  const char *s = reinterpret_cast<const char*>(src);
  while (len--)
	*d++ = *s++;
  return dest;
}
