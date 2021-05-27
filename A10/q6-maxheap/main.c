// SEASHELL_READONLY

#include <assert.h>
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"
#include "max_heap.h"

void error(char *message) {
  printf("ERROR: %s\n", message);
  exit(EXIT_SUCCESS);
}

int main(void) {
  const int CMD_INSERT = lookup_symbol("insert");
  const int CMD_REMOVE = lookup_symbol("remove");
  const int CMD_PRINT = lookup_symbol("print");

  struct max_heap *heap = heap_create();
  int cmd = INVALID_SYMBOL;
  while ((cmd = read_symbol()) != INVALID_SYMBOL) {
    if (cmd == CMD_INSERT) {
      char name[256] = { '\0' };
      int priority = INT_MIN;
      if (scanf("%s", name) != 1) error("invalid name");
      if (scanf("%d", &priority) != 1) error("invalid priority");
      heap_insert(heap, name, priority);
    } else if (cmd == CMD_REMOVE) {
      char *name = heap_remove(heap);
      printf("Currently serving: \"%s\"\n", name);
      free(name);
    } else if (cmd == CMD_PRINT) {
      heap_print(heap);
    } else {
      error("unknown command");
    }
  }
  heap_destroy(heap);

  return EXIT_SUCCESS;
}