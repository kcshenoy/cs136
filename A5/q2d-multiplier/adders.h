// SEASHELL_READONLY

#include "boolean.h"
#include "binary.h"

// HALF_ADDER(a, b, sum, carry) implements a Half Adder. It adds a and b, and
//   stores the results in sum and the overflow in carry.
// effects: may mutate sum
//          may mutate carry
void HALF_ADDER(const BOOL a, const BOOL b, BOOL *sum, BOOL *carry);

// FULL_ADDER(a, b, sum, carry) implements a Full Adder. It adds a, b, and
//   carry_in, and stores the results in sum and the overflow in carry_out.
// effects: may mutate sum
//          may mutate carry_out
void FULL_ADDER(const BOOL a, const BOOL b, const BOOL carry_in,
                BOOL *sum, BOOL *carry_out);

// NIBBLE_ADDER(a, b, overflow) returns the sum of a and b. It indicates an
//   integer overflow by setting overflow to TRUE; otherwise, it will be FALSE.
// effects: may mutate overflow
struct binary NIBBLE_ADDER(const struct binary *a, const struct binary *b,
                           BOOL *overflow);