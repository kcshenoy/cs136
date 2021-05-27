// SEASHELL_READONLY

#include <stdlib.h>
#include "array_tools.h"
#include "bucket_sort.h"

int main(void) {

  struct array *data = array_read();
  bucket_sort(data);
  array_destroy(data);

  return EXIT_SUCCESS;
}
