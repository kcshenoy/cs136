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

// median(a[], len) returns the median element of the array; when
// sorted, median = middle num if len is odd, median = average of 
// middle 2 num if len is even:
int median(int a[], int len) {
  assert(len > 0);   
  int median = a[0];  // initialize median
  int half = len/2;   // initialize halfway point of a[]
  merge_sort(a, len); // sort a[] in increasing order

  // if len is even, median = 2 middle numbers / 2
  if (!(len % 2)) {
    median = (a[half] + a[half-1])/2;
  }

  // if len is odd, median = middle number
  else {
    median = a[half];
  }

return median;
}

int main(void) {
  {
    int a[5] = {1, 4, 1, 3, 5};
    assert(median(a,5) == 3);
  }

  {
    int b[13] = {1, 5, 2, 98, 923, 92, 92, 95, 12, 390, 7, 720, 93};
    assert(median(b, 13) == 92);
  }

  {
    int b[12] = {1, 5, 2, 1234, 9213, 92, 92, 900, 12, 390, 7, 720};
    assert(median(b, 12) == 92);
  }

  {
    int arr[1] = {71};
    assert(median(arr, 1) == 71);
  }
}
