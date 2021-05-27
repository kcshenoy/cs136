#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "llist.h"

void test_simple(void) {
  struct llist *list = list_create();
  list_append(list, "A");
  list_append(list, "BB");
  list_append(list, "CCC");
  list_print(list);

  struct iter *e = iter_get(list);
  do {
    printf("Length of \"%s\" is %d.\n", iter_current(e), (int)strlen(iter_current(e)));
  } while (iter_next(e));

  list_destroy(list);

}

int main(void) {

  test_simple();

  return EXIT_SUCCESS;
}