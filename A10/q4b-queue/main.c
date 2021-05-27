#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "queue.h"

// === A Customer Datatype ===================================================
// It assumes that the name is a stack-string and, therefore does not have to 
//   be freed.

struct customer {
  char *name;
  int priority;
};

void customer_print(const void *customer) {
  assert(customer);
  const struct customer *tmp = customer;
    printf("%s, priority <%d>\n", tmp->name, tmp->priority);
}

void customer_destroy(void *customer) {
}

// ===========================================================================

void test_simple(void) {
  struct customer lineup[5] = {
    { "Alice", 6 },
    { "Bob", 4 },
    { "Craig", 6 },
    { "Eve", 8 },
    { "Grace", 99 } };

  struct queue *my_queue = queue_create(customer_print, customer_destroy);

  /*queue_enqueue(my_queue, &lineup[0]);
  queue_enqueue(my_queue, &lineup[1]);
  customer_print(queue_front(my_queue)); // Alice
  queue_enqueue(my_queue, &lineup[2]);
  queue_print(my_queue); // Alice -> Bob -> Craig
  customer_print(queue_dequeue(my_queue)); // Alice
  queue_dequeue(my_queue);
  queue_enqueue(my_queue, &lineup[3]);
  queue_enqueue(my_queue, &lineup[4]);
  queue_print(my_queue); // Craig -> Eve -> Grace
  queue_destroy(my_queue);*/
  
}

int main(void) {

  test_simple();
  
  return EXIT_SUCCESS;
}