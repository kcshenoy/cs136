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

// your includes go here
#include "cs136-trace.h"
#include "stack.h"
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>

int main(void) {
  struct stack *int_stack = stack_create();
  struct stack *int_stack_2 = stack_create();
  char ch = 0;

  // while reading input, print in order, and push each ch onto stack:
  while (scanf(" %c", &ch) == 1) {
    printf("%c", ch);
    stack_push(int_stack, ch);
  }

  // when given int_stack is not empty, print stack elements from top to bottom
  // and push onto int_stack_2 in same order:
  while (!(stack_is_empty(int_stack))) {
    char top = stack_pop(int_stack);
    printf("%c", top);
    stack_push(int_stack_2, top);
  }

  // when int_stack_2 is given, print elements in order and push onto original
  // stack for the second time:
  while (!(stack_is_empty(int_stack_2))) {
    char top = stack_pop(int_stack_2);
    printf("%c", top);
    stack_push(int_stack, top);
  }

  // print elements in original stack once more:
  while (!(stack_is_empty(int_stack))) {
    char top = stack_pop(int_stack);
    printf("%c", top);
  }

  printf("\n");
  stack_destroy(int_stack);
  stack_destroy(int_stack_2);
  return EXIT_SUCCESS;
}
