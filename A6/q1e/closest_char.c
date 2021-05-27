#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"
#include "merge_sort.h"
struct char_posn {
  char mid_char; // the middle character in an array of characters
  int mid_pos; // the middle position in and array of characters
  char closest_char; // the closest character to the middle character in lexicographical order
  int closest_pos; // the lowest index position of the closest character to midddle
};

// abs_sub(a, b) returns the absolute value of a-b:
int abs_sub(int a, int b) {
  int sub = a - b;
  if (sub < 0) {
    return sub *= -1;
  }
  else {
    return sub;
  }
}

// closest_char(arr, arr_len) returns the char_posn given an array 
// of char:
struct char_posn closest_char(const int *arr, const int arr_len) {
  assert(arr_len > 0);
  int i = 0;
  char closest = 126;
  int closest_pos = 0;
  struct char_posn new_posn;
  
  // assign middle_char and middle_pos:
  new_posn.mid_char = arr[arr_len/2];
  new_posn.mid_pos = arr_len/2;
  
  // find the minimum absolute value of every char - middle_char, 
  // aka the closest char:
  for (i = 0; i < arr_len; i++) {
    int abs = abs_sub(arr[i], new_posn.mid_char);
    if (abs < closest && i != new_posn.mid_pos) {
      closest = abs;
      new_posn.closest_char = arr[i];
    }
  }
  
  // given the closest char, we find the first occurrence of
  // closest:
  for (i = 0; i < arr_len; i++) {
    int abs = abs_sub(arr[i], new_posn.mid_char);
    if (closest == abs) {
      closest_pos = i;
      break;
    }
  }

  new_posn.closest_pos = closest_pos;
  return new_posn;

}
