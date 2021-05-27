// SEASHELL_READONLY

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"
#include "pri-queue.h"

void string_print(const void *str) {
  assert(str);
  printf("%s\n", str);
}

void string_destroy(void *str) {
  assert(str);
  free(str);
}

int main(void) {
  const int ADD = lookup_symbol("add");
  const int REMOVE = lookup_symbol("remove");
  const int FRONT = lookup_symbol("front");
  const int IS_EMPTY = lookup_symbol("isempty");

  struct pri_queue *pq = queue_create(100, string_print, string_destroy);
  int cmd = INVALID_SYMBOL;

  while ((cmd = read_symbol()) != INVALID_SYMBOL) {
    if (cmd == ADD) {
      int priority = 0;
      char name[255];
      if (scanf("%s", name) != 1) {
        break;
      }
      if (scanf("%d", &priority) != 1) {
        break;
      }
      queue_enqueue(pq, name, priority);
    } else if (cmd == REMOVE) {
      char *removed = queue_dequeue(pq);
      string_print(removed);
      string_destroy(removed);
    } else if (cmd == FRONT) {
      string_print(queue_front(pq));
    } else if (cmd == IS_EMPTY) {
      printf("Queue%sempty\n", queue_is_empty(pq) ? " " : " not ");
    } else {
      break;
    }
  }
  queue_destroy(pq);

  return EXIT_SUCCESS;
}
