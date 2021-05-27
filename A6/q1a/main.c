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
/////////////////////////////////////////////////////////////////////////////

#include "cs136-trace.h"
#include "merge_sort.h"
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// occur_count(arr, arr_len, x) counts the occurrences of x in arr:
int occur_count(int arr[], int arr_len, int x) { 
  int base = 0; 
  for (int i = 0; i < arr_len; i++) 
    if (x == arr[i]) {
    base += 1;
  }
  return base; 
}

// check_array(arr, arr_len, num) returns true if num is not in arr
bool check_array(int arr[], int arr_len, int num) {
  int i = 0;
  for (i = 0; i < arr_len; i++) {
    if (arr[i] == num) {
      return false;
    }
  }
  return true;
}

// max_pos(arr, arr_len) returns the position of the largest number in arr:
int max_pos(int arr[], int arr_len) {
  assert(arr_len > 0);
  int i = 0; 
  int base = arr[0];
  int pos = 0;

  for (i = 0; i < arr_len; i++) {
    if (arr[i] >=  base) {
      base = arr[i];
      pos = i;
    }
  }
  return pos; 
} 

int main(void) {
  int input = read_symbol(); // initialize input
  int sym_arr[255] = {};     // initialize array to store input
  int sym_occur[255] = {};   // initialize array to store count of occurrences
  int i = 0;                 // iterator for sym_arr
  int j = 0;                 // iterator for sym_counted and sym_occur

  // add input to sym_arr[], and count of input to the same index in
  // sym_occur[]:
  while (input != INVALID_SYMBOL) {
    sym_arr[i] = input;
    int count = occur_count(sym_arr, i, sym_arr[i]);
    sym_occur[j] = count;
    input = read_symbol();
    i++;
  }

  // only print if symbol is inputted:
  if (i != 0) {
    print_symbol(sym_arr[max_pos(sym_occur, i-1)]);
    printf("\n");
  }

  return 0;
}
