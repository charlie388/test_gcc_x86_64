#include <stdio.h>

void foo1(void);
void foo2(void);

int main ()
{
  printf (__FILE__"\thello\n");
  foo1();
  foo2();
  return 0;
}
