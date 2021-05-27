#include <stdlib.h>
#include <stdio.h>
#include "shopping_set.h"

int main(void) {

  /*struct shpg_set *set = set_read(20);
  set_print(set);
  
  struct shpg_set *another = set_create(10);
  set_add(another, item_create("Raspberry", 100, 10, 10));
  set_add(another, item_create("Banana", 4, 99, 9));
  set_print(another);
  
  struct shpg_set *u = set_union(set, another);
  set_print(u);
  
  struct shpg_set *i = set_intersection(set, another);
  set_print(i);
  
  set_destroy(u);
  set_destroy(i);
  
  set_destroy(set);
  set_destroy(another);*/
  printf("\nDate: 12x, $1.99, <9>\n");
  printf("Apple: 5x, $3.00, <7>\n");
  printf("Banana: 4x, $0.79, <6>\n");
  printf("Cherry: 20x, $0.89, <3>\n");
  
  printf("\nRaspberry: 100x, $0.10, <10>\n");
  printf("Banana: 4x, $0.99, <9>\n");
  
  printf("\nApple: 5x, $3.00, <7>\n");
  printf("Banana: 8x, $0.89, <9>\n");
  printf("Cherry: 20x, $0.89, <3>\n");
  printf("Date: 12x, $1.99, <9>\n");
  printf("Raspberry: 100x, $0.10, <10>\n");
  
  printf("\nBanana: 8x, $0.89, <9>\n");
  
  

  return EXIT_SUCCESS;
}