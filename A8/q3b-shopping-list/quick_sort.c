// SEASHELL_READONLY

#include <assert.h>
#include "quick_sort.h"

// swap(a, b) swaps the value of a and b.
// effect: mutates a and b
// time: O(1)
static void swap(int *a, int *b) {
  int tmp = *a;
  *a = *b;
  *b = tmp;
}

// partition(int *start, int *end) separates the range between low and high into
//   two ranges: in the left, all values are smaller than a pivot value; on the
//   right, all values are larger than a pivot value. The function returns the
//   address of the pivot value.
// requires: start < end
// time: O(n), where n is end - start
static int *partition(int *start, int *end) {
  assert(start < end);
  int *pivot = start;
  int *swapper = end;
  // partitions sub-array
  for(int *mover = end; mover > start; --mover) {
    if (*mover > *pivot) {
      swap(mover, swapper);
      --swapper;
    }
  }
  // swaps value of pivot into place
  swap(swapper, pivot);
  return swapper;
}

// quick_sort_worker(start, end) sorts the data between start and end.
// time: O(n^2)
void quick_sort_worker(int *start, int *end) {
  assert(start);
  assert(end);
  if (start < end) {
    int *pivot = partition(start, end);
    quick_sort_worker(start, pivot - 1);
    quick_sort_worker(pivot + 1, end);
  }
}

// see quick_sort.h for documentation
void quick_sort(int *data, const int data_len) {
  assert(data);
  assert(data_len > 0);
  quick_sort_worker(data, data + data_len - 1);
}