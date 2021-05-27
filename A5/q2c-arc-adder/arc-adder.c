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
#include <stdio.h>
#include "cs136-trace.h"
#include "binary.h"
#include "adders.h"
#include "arc-adder.h"
#include "boolean.h"

struct binary ARC_ADDER(const struct binary *a, const struct binary *b,
                        BOOL *overflow) {
  
  int a_dec = binary_to_decimal(a);
  int b_dec = binary_to_decimal(b);
  int sum = b_dec + a_dec;
  struct binary new_a = binary_make(sum);
  int max = 0;
  
  // find max between the 2 added numbers:
  if (a_dec > b_dec) {
    max = a_dec;
  }
  else {
    max = b_dec;
  }
  
  // keep dividing sum and max by 2 to see if sum requires more bits than max:
  while (max != 1 && sum != 1) {
    max /= 2;
    sum /= 2;
  }
  trace_int(max);
  trace_int(sum);
  
  // if the loop indicates that sum requires more bits than max, overflow = TRUE:
  if (max < sum) {
    *overflow = TRUE;
  }
  else {
    *overflow = FALSE;
  }
  
  return new_a; 
}