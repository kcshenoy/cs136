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

// fibonacci(n) returns the nth number in the fibonacci sequence
// requires: n >= 0

int fibonacci(int n) {
  
  if (n == 0) {
    return 0;
  }
  
  if (n == 1) {
    return 1;
  }
  
  else {
    return(fibonacci(n-1) + fibonacci(n-2));
  }
}


int main(void) {
  assert(fibonacci(3) == 2);
  assert(fibonacci(9) == 34);
  assert(fibonacci(0) == 0);
  assert(fibonacci(5) == 5);
  assert(fibonacci(25) == 75025);
  assert(fibonacci(1) == 1);
  assert(fibonacci(2) == 1);
  return 0;
}

