#include <stdio.h>
#include <ctype.h>

main(){
   int foo = 10, bar = 15, mult = 2;
   __asm__ __volatile__(
         "addl  %%ebx,%%eax;"
         "imull %%ecx,%%eax"
         :"=a"(foo)
         :"a"(foo), "b"(bar), "c"(mult)
   );
   printf("foo+bar=%d\n", foo);
   return 0;
}
