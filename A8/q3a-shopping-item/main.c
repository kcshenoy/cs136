#include <stdlib.h>
#include "shopping_item.h"

int main(void) {

  struct shpg_item *apple = NULL;
  item_read(&apple);
  item_print(apple);

  struct shpg_item *banana = NULL;
  item_read(&banana);
  item_print(banana);

  struct shpg_item *APPLE = item_create("APPLE", 1, 700, 7);
  item_combine(apple, APPLE);
  item_print(apple);
  
  item_destroy(apple);
  item_destroy(banana);
  item_destroy(APPLE);

  return EXIT_SUCCESS;
}