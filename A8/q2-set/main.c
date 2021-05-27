#include <stdlib.h>
#include "set.h"
#include "cs136-trace.h"

int main(void) {
  struct set *s1 = set_create(10);
  set_print(s1);
  set_add(s1, 20);
  set_add(s1, 18);
  set_add(s1, 19);
  set_add(s1, 21);
  set_add(s1, 22);
  set_add(s1, 23);
  set_add(s1, 24);
  set_add(s1, 25);
  set_add(s1, 26);
  set_add(s1, 27);
  set_add(s1, 28);
  set_print(s1);

  struct set *s2 = set_create(10);
  set_add(s2, 10);
  set_add(s2, 15);
  set_add(s2, 20);
  set_print(s2);

  struct set *u = set_union(s1, s2);
  set_print(u);
  
  struct set *i = set_intersection(s1, s2);
  set_print(i);

  set_destroy(s1);
  set_destroy(s2);
  set_destroy(u);
  set_destroy(i);

  return EXIT_SUCCESS;
}