//SEASHELL_OFF_READONLY

#include "boolean.h"

// ARC_ADDER(a, b, overflow) returns the sum of a and b. It indicates an integer
//   overflow by setting overflow to TRUE; otherwise, it will be FALSE. This
//   adder can process binary numbers of arbitrary length.
// effects: may mutate overflow
struct binary ARC_ADDER(const struct binary *a, const struct binary *b,
                        BOOL *overflow);
