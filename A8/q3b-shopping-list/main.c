#include <stdlib.h>
#include "cs136-trace.h"
#include "shopping_list.h"
#include "shopping_item.h"

int main(void) {

  struct shpg_item **list = NULL;
  int list_len = list_read(&list, 20); 
  list_print(list, list_len);

  list_sort(list, list_len, comp_by_priority_name);
  list_print(list, list_len);

  list_destroy(list, list_len);

  return EXIT_SUCCESS;
}