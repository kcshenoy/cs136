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
#include "adders.h"
#include <assert.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"


// HALF_ADDER(a, b, carry) adds 2 bits and calculates the sum and carry
// effects: modifies sum and carry
void HALF_ADDER(const BOOL a, const BOOL b, BOOL *sum, BOOL *carry) {
  if (*carry == TRUE) {
    *sum = XNOR(a, b);
    *carry = OR(a, b);
  }
  else {
    *sum = XOR(a, b);
    *carry = AND(a, b);
  }
}

// FULL_ADDER(a, b, carry_in, sum, carry_out) adds to bits along with a carry_in,
// and calculates the sum and carry_out
// effects: modifies sum and carry_out
void FULL_ADDER(const BOOL a, const BOOL b, const BOOL carry_in,
                BOOL *sum, BOOL *carry_out) {
  if (carry_in == TRUE) {
    *sum = XNOR(a, b);
    *carry_out = OR(a, b);
  }
  else {
    *sum = XOR(a, b);
    *carry_out = AND(a, b);
  }
}

// NIBBLE_ADDER(a, b, overflow) adds 2 4-bit binary numbers and returns the sum 
// and whether overlfow occurs:
// effects: may modify overflow
struct binary NIBBLE_ADDER(const struct binary *a, const struct binary *b,
                           BOOL *overflow) {
  BOOL sum0 = 0;
  BOOL sum1 = 0;
  BOOL sum2 = 0;
  BOOL sum3 = 0;

  BOOL carry = 0;      // initialize first carry_in
  BOOL carry_out = 0;  // initialize first carry_out

  struct binary added;
  FULL_ADDER(a->_0, b->_0, carry, &sum0, &carry_out);
  added._0 = sum0;
  carry = carry_out;
  
  FULL_ADDER(a->_1, b->_1, carry, &sum1, &carry_out);
  added._1 = sum1;
  carry = carry_out;

  FULL_ADDER(a->_2, b->_2, carry, &sum2, &carry_out);
  added._2 = sum2;
  carry = carry_out;

  FULL_ADDER(a->_3, b->_3, carry, &sum3, &carry_out);
  added._3 = sum3;

  *overflow = carry_out;
  return added;
}