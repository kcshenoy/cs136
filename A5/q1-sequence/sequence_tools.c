/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include "sequence_tools.h"
// your includes go here
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include "cs136-trace.h"

// sequence_read(seq) reads integers from input and stores them in seq. 
// The order within seq is the same as the order in which the integers were read.
void sequence_read(struct sequence *seq) {
  int ch = 0;
  int i = 0;
  while (scanf("%d", &ch) == 1) {
    sequence_insert_at(seq, i, ch);
    i += 1;
  }    
}

// sequence_map(seq, func) applies func to every item in seq.
// effects: may mutate seq
void sequence_map(struct sequence *seq, int (*func)(int)) {
  assert(func);
  int i = 0;
  while (i < sequence_length(seq)) {
    int item = sequence_remove_at(seq, i);
    int value = func(item);
    sequence_insert_at(seq, i, value);
    i += 1;
  }
}

// sequence_filter(seq, filter) applies filter to every value in seq. 
// Only items for which filter returns true are kept in seq.
// effects: may mutate seq
void sequence_filter(struct sequence *seq, bool (*func)(int)) {
  assert(func);
  int i = 0;
  while (i <= sequence_length(seq)-1) {
    int item = sequence_item_at(seq, i);
    if (!(func(item))) {
      sequence_remove_at(seq, i);
    }
    else {
      i += 1;
    }
  }
}

// sequence_foldr(seq, func, base) folds every values in seq using func, 
// with base as the base value of the fold.
int sequence_foldr(const struct sequence *seq, int (*func)(int, int), int base) {
  assert(func);
  int i = sequence_length(seq) - 1;
  while (i >= 0) {
    int item = sequence_item_at(seq, i);
    base = func(base, item);
    i -=1;
  }    
  return base;
}

// sequence_sort(seq, comp) sorts seq using comp as predicate.
// effects: may mutate seq`
void sequence_sort(struct sequence *seq, bool(*comp)(int, int)) {
  assert(comp);
  int i = 0;
  int j = 0;
  while (i < sequence_length(seq)-1) {
    for (j = 0; j < sequence_length(seq)-1-i; j += 1) {
      int val1 = sequence_item_at(seq, j);
      int val2 = sequence_item_at(seq, j+1);

      if (!(comp(val1, val2))) {
        sequence_remove_at(seq, j);
        sequence_remove_at(seq, j);
        sequence_insert_at(seq, j, val2);
        sequence_insert_at(seq, j+1, val1);
      }
    }
    i += 1;
  }
}








