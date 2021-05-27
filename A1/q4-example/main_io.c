#include "cs136.h"
#include "iotest_driver.h"

// This example shows how you can use a global variable to store the state of
//   your system and how you can use I/O tests to assess the correctness of
//   your implementation.

int value = 0;

int plus(int n) {
  value += n;
  return value;
}

int minus(int n) {
  value -= n;
  return value;
}

// The main-function starts the I/O test driver (iotest_driver).

int main(void) {
  iotest_driver();
  return 0;
}