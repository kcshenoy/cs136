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
#include "stack.h"
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>


int main(void) {
  struct stack *int_stack = stack_create();
  char ch = 0;

  // print in order when reading chars from input, while pushing onto
  // stack in same order:
  while (scanf(" %c", &ch) == 1) {
    printf("%c", ch);
    stack_push(int_stack, ch);
  }

  // print chars in the given stack until empty:
  while (!(stack_is_empty(int_stack))) {
    char top = stack_pop(int_stack);
    printf("%c", top);
  }

  printf("\n");


  stack_destroy(int_stack);
  return EXIT_SUCCESS;
}
