/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from the following sources:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
////////////////////////////////////////////////////////////////////////////

#include "cs136-trace.h"
#include "merge_sort.h"
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// print_array(a[], len) prints a num from a[] per line:
void print_array(int a[], int len) {
  for (int i = 0; i < len; ++i) {
    printf("%d\n", a[i]);
  }
}

int main(void) {
  int i = 0;
  int num_arr[100] = {};
  int ch = 0;

  // push scanned chars onto num_arr[] while index < 100:
  while (scanf(" %d", &ch) == 1 && i < 100) {
    num_arr[i] = ch;
    i += 1;
  }

  // sort in ascending order, then print array:
  merge_sort(num_arr, i);
  print_array(num_arr, i);
  return 0;
}
