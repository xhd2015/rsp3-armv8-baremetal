/* stolen from gcc-7.2.0/libgcc/memXXX.c */
#include <def.h>
#include <cstring>

void * memmove (void *dest, const void *src, size_t len)
{
  char *d = reinterpret_cast<char*>(dest);
  const char *s = reinterpret_cast<const char*>(src);
  if (d < s)
	while (len--)
	  *d++ = *s++;
  else
	{
	  const char *lasts = s + (len-1);//note:original gcc is char * lasts
	  char *lastd = d + (len-1);
	  while (len--)
		*lastd-- = *lasts--;
	}
  return dest;
}
