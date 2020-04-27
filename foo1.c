#include <stdio.h>
static void
init ()
{
  printf (__FILE__"\t\tinit_array\n");
}
static void (*const init_array []) ()
  __attribute__ ((used, section (".init_array"), aligned (sizeof (void *))))
  = { init };
static void
fini ()
{
  printf (__FILE__"\t\tfini_array\n");
}
static void (*const fini_array []) ()
  __attribute__ ((used, section (".fini_array"), aligned (sizeof (void *))))
  = { fini };
static void
ctor ()
{
  printf (__FILE__"\t\tctor\n");
}
static void (*const ctors []) ()
  __attribute__ ((used, section (".ctors"), aligned (sizeof (void *))))
  = { ctor };
static void
dtor ()
{
  printf (__FILE__"\t\tdtor\n");
}
static void (*const dtors []) ()
  __attribute__ ((used, section (".dtors"), aligned (sizeof (void *))))
  = { dtor };
  
void foo1(void);
void foo1(void) 
{
    printf(__FILE__ "\t\thello\n");
}