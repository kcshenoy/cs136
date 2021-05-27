#include <stdio.h>

// SEASHELL_READONLY

// program-memory.txt shows the memory model when
// line 14 is reached

const int my_constant = 42;
int my_global = 23;

int my_function(int param_1, int param_2) {
  const int mf_local_1 = param_1 + param_2;
  int mf_local_2;
  printf("Hello, World\n");     // <----- snapshot here
  mf_local_2 = mf_local_1 * mf_local_1;
  return mf_local_2;
}

int main(void) {
  int main_local_1 = 4;
  int main_local_2 = my_function(main_local_1, 8);
  printf("main_local_2 = %d\n", main_local_2);
}
