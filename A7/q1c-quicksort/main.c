// SEASHELL_READONLY

#include <stdlib.h>
#include "array_tools.h"
#include "quick_sort.h"

int main(void) {

  int data[MAX_LEN] = { 0 };
  int data_len = array_read(data, MAX_LEN);
  quick_sort(data, data_len);

  return EXIT_SUCCESS;
}
