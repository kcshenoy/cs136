#include <assert.h>
#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "llist.h"

// === print and destroy for a string in stack ===============================

// print_string(data) prints out data to the console.
// requires: data must be a C string
void string_print(const void *data) {
  assert(data);
  const char *str = data;
  printf("%s -> ", str);
}

void string_destroy(void *data) {
}

// === definition, create, destroy, and print for a struct foo in heap =======

struct foo {
  char *text;
  int length;
};

struct foo *foo_create(const char *text, int length) {
  assert(text);
  struct foo *new = malloc(sizeof(struct foo));
  assert(new);
  new->text = malloc(sizeof(char) * (strlen(text) + 1));
  assert(new->text);
  strcpy(new->text, text);
  new->length = length;
  return new;
}

void foo_destroy(void *data) {
  assert(data);
  struct foo *foo = data;
  free(foo->text);
  free(foo);
}

void foo_print(const void *data) {
  const struct foo *tmp = data;
  printf("\"%s\" (string length is %d, eh, %d) -> ", tmp->text, tmp->length, (int)strlen(tmp->text));
}

// ===========================================================================

int main(void) {

  struct llist *string_list = list_create(string_print, string_destroy);
  list_append(string_list, "A");
  list_append(string_list, "BB");
  list_append(string_list, "CCC");
  list_print(string_list);

  struct iter *e = iter_get(string_list);
  do {
    printf("Length of \"%s\" is %d.\n", iter_current(e), (int)strlen(iter_current(e)));
  } while (iter_next(e));

  list_destroy(string_list);

  struct llist *foo_list = list_create(foo_print, foo_destroy);
  list_append(foo_list, foo_create("Welcome to the Great White North.", 34));
  list_append(foo_list, foo_create("How is to going, eh?", 20));
  list_append(foo_list, foo_create("I'm Bob McKenzie, this is my brother Doug.", 40));
  list_print(foo_list);

  list_destroy(foo_list);

  return EXIT_SUCCESS;
}