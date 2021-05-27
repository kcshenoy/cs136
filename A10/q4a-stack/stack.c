/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "stack.h"
#include "dllist.h"
#include "cs136-trace.h"

// stack represents a stack ADT
struct stack {
  // your implementation goes here
  struct dllist *list;
  void(*print)(const void *);
  void(*destroy)(void *);
  int len;
};

// stack_create() creates a new stack. Caller must destroy returned stack.
// effects: allocates heap memory
// time: O(1)
struct stack *stack_create(void(*print)(const void *), void(*destroy)(void *)) {
  struct stack *new_stack = malloc(sizeof(struct stack));
  struct dllist *new_list = list_create(print, destroy);
  new_stack->list = new_list;
  new_stack->print = print;
  new_stack->destroy = destroy;
  new_stack->len = 0;
  return new_stack;
}

// stack_destroy(stck) frees all resources used by stck; stck becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates stack
// time: O(n)
void stack_destroy(struct stack *stck) {
  assert(stck);
  list_destroy(stck->list);
  (stck->destroy)(stck);
  free(stck);
}

// stack_top(stck) returns the top item in stck.
// requires: stack must not be empty
// time: O(1)
const void *stack_top(const struct stack *stck) {
  assert(stck);
  assert(stck->len > 0);
  return list_peek_front(stck->list);
}

// stack_pop(stck) returns the top item in stck and removes it from stck. Caller
//   might have to free the returned item.
// requires: stack must not be empty
// time: O(1)
void *stack_pop(struct stack *stck) {
  assert(stck);
  assert(stck->len > 0);
  stck->len -= 1;
  return list_remove_front(stck->list);
}

// stack_push(stck, item) pushes item on top of stck.
// time: O(1)
void stack_push(struct stack *stck, void *item) {
  assert(item);
  list_prepend(stck->list, item);
  stck->len += 1;
}

// stack_is_empty(stck) returns true if stck is empty, and false otherwise.
// time: O(1)
bool stack_is_empty(struct stack *stck) {
  assert(stck);
  return stck->len > 0;
}

// stack_print(stck) prints the items on stck.
// effects: creates console output
// time: O(n)
void stack_print(const struct stack *stck) {
  assert(stck);
  printf("===================================\n");
  struct iter *e = iter_get(stck->list, ITER_FRONT_TO_BACK);
  do {
    (stck->print)(iter_current(e));
  } while (iter_next(e));
  printf("===== ↑↑↑ === BOTTOM === ↑↑↑ ======\n");
}