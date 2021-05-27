#include <assert.h>
#include "cs136-trace.h"
#include <stdlib.h>
#include "cs136-symbols.h"

int main(void) {

  assert(my_lookup_symbol("Symbol_1") == 1);
  assert(my_lookup_symbol("Symbol_2") == 2);
  assert(my_lookup_symbol("Symbol_1") == 1);
  
  my_lookup_symbol("test1");
  my_lookup_symbol("test2");
  my_lookup_symbol("test3");

  my_print_symbol(my_lookup_symbol("Symbol_1"));
  my_print_symbol(42);

  return EXIT_SUCCESS;
}