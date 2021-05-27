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

// slow_exp(b, n) returns b^n
// time: O(n)
int slow_exp(int b, int n) {
  int base = b;
  
  if (n == 0) {
    return 1;
  }
  while (n > 1) {
    b *= base;
    n -= 1;
  }
  return b;
}

// fast_exp(b, n) returns b^n
// time: O(logn)
int fast_exp(int b, int n) {
  if (n == 0) {
    return 1;
  }

  int temp = 1;
  // using the concept of (b^2)^(n/2) * b, keep dividing n by 2:
  while (n > 0) {
    if (n % 2 == 1) {
      temp *= b;
    }
    n /= 2;
    b *= b;
  }
    
  return temp;
}
