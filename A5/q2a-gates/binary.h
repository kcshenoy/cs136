// SEASHELL_READONLY

#ifndef _BINARY_H
#define _BINARY_H

#include "boolean.h"

// binary stores the value of a number in a binary representation;
//   e.g., 5 => 0 1 0 1 (values of fields _3, _2, _1, and _0).
struct binary {
  BOOL _0; // n * 2^0 => least significant bit
  BOOL _1; // n * 2^1
  BOOL _2; // n * 2^2
  BOOL _3; // n * 2^3 => most significant bit
};

// binary binary_make(n) turns n into its binary representation.
// requires: 0 <= n < 2^f, where f is the number of fields in struct binary
struct binary binary_make(int n);

// binary_to_decimal(b) turns b into its decimal representation, by interpreting
//    b as an unsigned binary number.
int binary_to_decimal(const struct binary *b);

// binary_print(b) prints the value of b in binary and decimal.
// effects: creates output
void binary_print(const struct binary *b);

#endif