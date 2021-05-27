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

// your includes go here
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "merge_sort.h"
#include "cs136-trace.h"

// k_in_row(arr, arr_len, k) returns true if there are k of the
// same element in a row in arr.
// time: O(n)
bool k_in_row(const int *arr, int arr_len, int k) {
  int i = 0;
  int j = 0;

  for (j = i+1; j < arr_len; j++) {
    // if current = previous, and distance between arr[i]
    // and arr[j] is k, return true:
    if (arr[j] == arr[i] && (j-i+1) == k) {
      return true;
    }
    
    // if current = previous, keep looping
    if (arr[j] == arr[i]) {
      continue;
    }
    else {
      i = j;
    }
  }      
  return false;
}

// max_freq(arr, arr_len) returns the most frequent element in
// arr, and the first element if there is a tie
// time: O(nlogn)
// effects: may mutate arr
int max_freq(int *arr, int arr_len) {
  merge_sort(arr, arr_len); // sort arr in ascending order
  int i = 0;
  int max = arr[0];    // initialize max element
  int count = 1;       // initialize count for frequency
  int max_count = 0;   // initialize placeholder of
                       // count of max
  

  for (i = 1; i < arr_len; i++) {
    // if current = previous, add 1 to count and continue
    if (arr[i] == arr[i-1]) {
      count +=1;
    }
    else {
      // if count > count of max (right now), replace max
      if (count > max_count) {
        max_count = count;
        max = arr[i-1];
      }
      count = 1; // restart count for new element
    }
  }
  
  // case for if last num is most frequent
  if (count > max_count) { 
    max_count = count; 
    max = arr[arr_len - 1]; 
  } 
  return max;
}

// max_diff(arr, arr_len) returns the largest difference between
// 2 elements in arr
// time: O(n)
int max_diff(const int *arr, int arr_len) {
  int min = arr[0]; // initialize min
  int max = arr[0]; // initialize max
  int i = 0;
  int j = 0;
  
  // find max and min in array
  for (i = 0; i < arr_len; i++) {
    if (arr[i] > max) {
      max = arr[i];
    }
    if (arr[j] < min) {
      min = arr[j];
    }
  }
  return max-min; // largest - smallest = max_diff
} 
