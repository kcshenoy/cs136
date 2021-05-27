// SEASHELL_READONLY

#include <assert.h>
#include <stdio.h>
#include "binary.h"

// === HELPER FUNCTOINS ========================================================

// pow2(e) returns 2^e
// requires: e >= 0
int pow2(int e) {
  assert(e >= 0);
  int ret_val = 1;
  for (;e > 0; --e) {
    ret_val *= 2;
  }
  return ret_val;
}

// =============================================================================

// see binary.h
struct binary binary_make(int n) {
  assert(0 <= n && n < pow2(sizeof(struct binary) / sizeof(BOOL)));
  struct binary number = { 0 };
  // setting pField to the first field in b, counting up in the for-loop
  int *pField = &number._0;
  for (int i = 0; i < sizeof(struct binary) / sizeof(BOOL); ++i, ++pField) {
    *pField = n % 2;
    n /= 2;
  }
  return number;
}

// see binary.h
int binary_to_decimal(const struct binary *b) {
  assert(b);
  int value_dec = 0;
  // setting pField to the last field in b, counting down in the for-loop
  const int *pField = &(b->_0) + sizeof(struct binary) / sizeof(BOOL) - 1;
  for (int i = 0; i < sizeof(struct binary) / sizeof(BOOL); ++i, --pField) {
    value_dec *= 2;
    value_dec += *pField;
  }
  return value_dec;
}

// see binary.h
void binary_print(const struct binary *b) {
  assert(b);
  // setting pField to the last field in b, counting down in the for-loop
  const int *pField = &(b->_0) + sizeof(struct binary) / sizeof(BOOL) - 1;
  for (int i = 0; i < sizeof(struct binary) / sizeof(BOOL); ++i, --pField) {
    printf("%d", *pField);
  }
  printf(" => %d\n", binary_to_decimal(b));
}