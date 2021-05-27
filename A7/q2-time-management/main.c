#include <assert.h>
#include <stdlib.h>
#include "exp.h"
#include "cs136-trace.h"

int main(void) {
 
  assert(slow_exp(5, 2) == 25);
  assert(fast_exp(5, 2) == 25);
  assert(slow_exp(-5, 2) == 25);
  assert(fast_exp(-5, 2) == 25);
  assert(slow_exp(293, 0) == 1);
  assert(fast_exp(-12345, 0) == 1);
  assert(slow_exp(7, 3) == 343);
  assert(fast_exp(8, 2) == 64);
  assert(slow_exp(15, 1) == 15);
  assert(fast_exp(2, 8) == 256);
  
  // add more test here
  
  return EXIT_SUCCESS;
}