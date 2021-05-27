#include <assert.h>
#include <stdlib.h>
#include "arrayfun_improved.h"
#include "cs136-trace.h"

int main(void) {
  
  int a[6] = {1, 2, 1, 1, 2, 4};
  assert(!k_in_row(a, 6, 3));
  assert(max_diff(a, 6) == 3);
  assert(max_freq(a, 6) == 1);
  
  int b[7] = {6, 6, 5, 5, 5, 6, 6};
  assert(k_in_row(b, 7, 3));
  assert(max_freq(b, 7) == 6);
  assert(max_diff(b, 7) == 1);
  
  int c[1] = {17};
  assert(max_diff(c, 1) == 0);
  assert(max_freq(c, 1) == 17);
  assert(!k_in_row(c, 1, 2));
  
  int d[8] = {-7, 9, -4, 18, 18, -5, 30, 0};
  assert(max_diff(d, 8) == 37);
  assert(max_freq(d, 8) == 18);
  assert(!k_in_row(d, 8, 3));
  
  
  // more tests go here
  
  return EXIT_SUCCESS;
}
