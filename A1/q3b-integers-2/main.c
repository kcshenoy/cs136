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


// div_round(dividend, divisor) returns the value of dividend/divisor
// rounded to the nearest integer
// requires: divisor != 0

int div_round(int dividend, int divisor) {
  int quotient = dividend/divisor;
  int sign = divisor*dividend;
  
  if (sign > 0) {
    if (dividend < ((divisor*quotient) + (divisor/2))) {
      return quotient;
    }
    else {
      return quotient+1;
    }
  }
  
  if (sign < 0) {
    if (dividend > ((divisor*quotient) - (divisor/2))) {
      return quotient;
    }
    else {
      return quotient-1;
    }
  }
  
  else {
    return 0;
  }
}

int main(void) {
  assert(div_round(100, 50) == 2); // 100 / 50 = 2
  assert(div_round(10, 4) == 3);
  assert(div_round(104, 40) == 3);
  assert(div_round(4647, 300) == 15); // 4647/300 = 15.49
  assert(div_round(4651, 300) == 16); // 4651/300 = 15.5033...
  assert(div_round(-7, 4) == -2);
  assert(div_round(4, 7) == 1);
  assert(div_round(-7, -2) == 4);
  trace_int(div_round(100, -20));
  assert(div_round(-4, 7) == -1);

  return 0;
}

