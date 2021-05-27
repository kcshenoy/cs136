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
#include "cs136.h"
#include "stack.h"

void example_test(void) {
  stack_push(10);
  assert(stack_is_empty() == false);
  assert(stack_top() == 10);
  assert(stack_pop() == 10);
  assert(stack_is_empty() == true);
  stack_reset();
  assert(stack_is_empty() == true);
}

int main(void) {
  stack_create();
  
  // Add more tests here.
  assert(stack_is_empty() == true);
  stack_push(25);
  stack_push(-220);
  assert(stack_top() == -220);
  assert(stack_pop() == -220);
  assert(stack_top() == 25);
  assert(stack_count() == 1);
  stack_reset();
  assert(stack_count() == 0);
  stack_push(1);
  stack_push(12);
  stack_push(34);
  assert(stack_pop() == 34);
  assert(stack_count() == 2);
  stack_reset();
  stack_push(11);
  assert(stack_pop() == 11);
  assert(stack_count() == 0);
  stack_push(4 * -3);
  stack_push(7/3);
  stack_push(1+3);
  assert(stack_top() == 4);
  stack_push(15);
  assert(stack_top() == 15);
  assert(stack_count() == 4);
  stack_reset();
  // example_test();

  stack_destroy();
}
