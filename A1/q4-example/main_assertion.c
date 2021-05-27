#include "cs136.h"

// This example shows how you can use a global variable to store the state of
//   your system and how you can use assertion-tests to assess the correctness
//   of your implementation.

int value = 0;

int plus(int n) {
  value += n;
  return value;
}

int minus(int n) {
  value -= n;
  return value;
}

// The main-function contains your assertion-tests.

int main(void) {
  
  // demo1
  assert(plus(1) == 1);
  assert(plus(1) == 2);
  assert(plus(100) == 102);
 
  // demo2
  value = 0; // reset value before next test
  assert(plus(1) == 1);
  assert(plus(1) == 2);
  assert(minus(2) == 0);
  assert(minus(10) == -10);
  assert(plus(30) == 20);

  return 0;
}
