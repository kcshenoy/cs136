#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "stack.h"
#include "cs136-trace.h"
#include "dllist.h"

// === A Book Datatype =======================================================
// It assumes that both title and author are stack-strings and, therefore do
//   not have to be freed.

struct book {
  char *title;
  char *author;
  int year;
};

void book_print(const void *book) {
  assert(book);
  const struct book *tmp = book;
  printf("\"%s\" by %s (%d)\n", tmp->title, tmp->author, tmp->year);
}

void book_destroy(void *book) {
}

// ===========================================================================

void test_simple(void) {
    struct book library[3] = {
    { "Frankenstein; or, The Modern Prometheus", "Mary Shelley", 1818 },
    { "A Wizard of Earthsea", "Ursula LeGuin", 1968 },
    { "Re: Colonised Planet 5, Shikasta", "Doris Lessing", 1979 } };

  struct stack *my_stack = stack_create(book_print, book_destroy);

  stack_push(my_stack, &library[0]);
  stack_push(my_stack, &library[1]);
  stack_push(my_stack, &library[2]);
  stack_print(my_stack);
  book_print(stack_pop(my_stack));
  stack_pop(my_stack);
  stack_print(my_stack);

  stack_destroy(my_stack);
}

int main(void) {

  test_simple();

  return EXIT_SUCCESS;
}