#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dllist.h"

void test_simple(void) {
  struct dllist *list = list_create();
  list_append(list, "CCC");
  list_prepend(list, "A");
  list_insert_at(list, "BB", 1);
  list_print(list, ITER_FRONT_TO_BACK);

  struct iter *e = iter_get(list, ITER_BACK_TO_FRONT);
  do {
    printf("Length of \"%s\" is %d.\n", iter_current(e), (int)strlen(iter_current(e)));
  } while (iter_next(e));

  list_destroy(list);
}

int main(void) {

  test_simple();

  return EXIT_SUCCESS;
}