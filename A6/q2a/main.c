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
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

struct statistics {
  int min;
  int max;
  int sum;
};

// stats(arr, arr_len, stats) returns a struct statistics of the
// minimum, maximum, and sum of the array:
// effects: mutates stat
void stats(const int *arr, const int arr_len, struct statistics *stat) {
  assert(arr_len > 0);
  int max = arr[0];  // initializing max element as first of arr
  int min = arr[0];  // initializing max element as first of arr
  int sum = 0;       // initialize sum as 0
  int i = 0;

  for (i = 0; i < arr_len; i++) {
    if (arr[i] >= max) { // check for greater value, then equate max
      max = arr[i];
    }
    if (arr[i] <= min) { // check for lesser value, then equate min
      min = arr[i];
    }
    sum += arr[i];       // add every num to sum
  }

  // assign max, min, and sum to respective struct statistics values
  stat->max = max;
  stat->min = min;
  stat->sum = sum;

}


int main(void) {
  {
    int arr[2] = {2, 2};
    struct statistics sta = {200, 700, 4};
    stats(arr, 2, &sta);
    assert(sta.min == 2);
    assert(sta.max == 2);
    assert(sta.sum == 4);
  }

  {
    int arr[8] = {71, -68, 45, 901, 32, 95, 88, 12};
    struct statistics sta2 = {4, 3, 2};
    stats(arr, 8, &sta2);
    assert(sta2.min == -68);
    assert(sta2.max == 901);
    assert(sta2.sum == 1176);
  }
  {
    int arr[1] = {71};
    struct statistics sta2 = {4, 3, 2};
    stats(arr, 1, &sta2);
    assert(sta2.min == 71);
    assert(sta2.max == 71);
    assert(sta2.sum == 71);
  }
  {
    int arr[8] = {-71, 68, -45, -901, -32, -95, -88, -12};
    struct statistics sta2 = {4, 3, 2};
    stats(arr, 8, &sta2);
    assert(sta2.min == -901);
    assert(sta2.max == 68);
    assert(sta2.sum == -1176);
  }
}
