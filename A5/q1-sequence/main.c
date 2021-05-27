#include "sequence.h"
#include "sequence_tools.h"
// your includes go here
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"
// === Map functions ==========================================================

// map_add1(a) returns the increment of a.
int map_add1(int a) {
  return a + 1;
}

// === Filter functions =======================================================

// filter_odd(a) retains all odd numbers.
bool filter_odd(int a) {
  return abs(a) % 2 == 1;
}

// === Fold functions =========================================================

// fold_add(a, b) adds a and b.
int fold_add(int a, int b) {
  return a + b;
}

// === Comparator functions ===================================================

// comp_lt(a, b) sorts in increasing order.
//   (It returns true if a is less than b, and false otherwise.)
bool comp_lt(int a, int b) {
  return a < b;
}

// comp_lt(a, b) sorts in decreasing order.
//   (It returns true if a is greater than b, and false otherwise.)
bool comp_gt(int a, int b) {
  return a > b;
}

// comp_eo_lt(a, b) sorts all even numbers before all odd numbers; when
//   comparing between two even or two odd numbers, the predicate sorts in
//   increasing order.
bool comp_eo_lt(int a, int b) {
  if ((a % 2 == 0) && (b % 2 != 0)) {
    return true;
  }
  else if ((b % 2 == 0) && (a % 2 != 0)) {
    return false;
  }
  else {
    return a < b;
  }
}

// ============================================================================

// This is a simple implementation of a main-function, which provides basic
//   I/O-testing. Please feel free to modify it to fit your needs.
int main(void) {
  
  struct sequence *seq = sequence_create(); // create an empty sequence
  
  sequence_print(seq);                      // print empty seq
  
  sequence_read(seq);                       // store all int from input in seq
  sequence_print(seq);
  
  sequence_map(seq, map_add1);              // increment all seq items by one
  sequence_print(seq);
  
  int sum = sequence_foldr(seq, fold_add, 0); // calculate sum of all seq items
  printf("The sum of seq is: %d\n", sum);
  
  sequence_sort(seq, comp_eo_lt);              // sort seq items in ascending order
  sequence_print(seq);
  
  sequence_sort(seq, comp_gt);                
  sequence_print(seq);
  
  sequence_sort(seq, comp_lt);
  sequence_print(seq);
  
  sequence_filter(seq, filter_odd);         // remove all even seq items
  sequence_print(seq);
  
  sequence_destroy(seq);                    // destroy seq and release resources
         
  return EXIT_SUCCESS;
}