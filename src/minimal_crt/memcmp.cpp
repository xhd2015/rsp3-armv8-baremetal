/* stolen from gcc-7.2.0/libgcc/memXXX.c */
#include <def.h>
#include <cstring>

int memcmp (const void *str1, const void *str2, size_t count)
{
  const unsigned char *s1 = reinterpret_cast<const unsigned char*>(str1);
  const unsigned char *s2 = reinterpret_cast<const unsigned char*>(str2);

  while (count-- > 0)
	{
	  if (*s1++ != *s2++)
	  return s1[-1] < s2[-1] ? -1 : 1;
	}
  return 0;
}
