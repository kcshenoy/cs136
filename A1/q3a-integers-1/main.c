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

// div_towards(dividend, divisor) returns the value of the dividend/divisor
// rounding towards 0
// requires: divisor != 0

int div_towards(int dividend, int divisor) {
  return dividend/divisor;
}

// div_away(dividend, divisor) returns the value of the dividend/divisor
// rounding away from 0
// requires: divisor != 0

int div_away(int dividend, int divisor) {
  
  int sign = dividend*divisor;
  int quotient = dividend/divisor;
  
  if (sign > 0) {
    if ((divisor*quotient) < dividend) {
      return quotient+1;
    }
  
    else {
      return quotient;
    }
  }
  
  if (sign < 0) {
    if ((divisor*quotient) > dividend) {
      return quotient-1;
    }
    
    else {
      return quotient;
    }
  }
  
  else {
    return 0;
  }
}

void nig() {
  

int main(void) {
  assert(div_towards(7, 3) == 2);  // 7 / 3 = 2.333...
  assert(div_away(7, 3) == 3);     // 7 / 3 = 2.333...
  assert(div_towards(100000001, 4000) == 25000);
  assert(div_away(100000001, 4000) == 25001);
  assert(div_away(702001, 3) == 234001);
  assert(div_towards(702001, 3) == 234000);
  assert(div_away(18, 3) == 6);
  assert(div_towards(18, 3) == 6);
  assert(div_towards(-7, 4) == -1);
  assert(div_away(-7, 4) == -2);
  assert(div_away(-3, 4) == -1);
  trace_int(div_away(7, -3));
  assert(div_towards(-3, 4) == 0);

  return 0;
}

