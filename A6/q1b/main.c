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

int main(void) {
  int ch = 0;  // initialize char reader
  int num_arr[100] = {};  // initialize array to store number
  int i = 0;
  int j = 0;

  while (scanf("%d", &ch) == 1) {
    num_arr[i] = ch;
    i += 1;
  }
  
  // print all values in order:
  for (j = 0; j < i; j++) {
    printf("%d\n", num_arr[j]);
  }
    
  // start at end, print in reverse:
  for (j = i-1; j >= 0; j--) {
    printf("%d\n", num_arr[j]);
  }
  
  // print in order again:
  for (j = 0; j < i; j++) {
    printf("%d\n", num_arr[j]);
  }
  
  // print rev_arr then num_arr:
  return 0;
}
