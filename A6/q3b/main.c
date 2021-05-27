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
///////////////////////////////////////////////////////////////////

#include "cs136-trace.h"
#include "merge_sort.h"
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

int main(void) {
  char ch = 0;
  int char_arr[128] = {0};  // initialize arr for freq count of 128 char
  int i = 0;
  int seen_dup = 0;         // initialize counter for duplicates
  
  // count frequency of ch in char_arr[], using ch as an index value
  while (scanf("%c", &ch) == 1) {
    int num_char = ch;
    char_arr[num_char] += 1;
  }
  
  // check for any frequencies above 1, then increment seen_dup
  for (i = 0; i < 128; i++) {
    if (char_arr[i] >= 2) {
      seen_dup += 1;
    }
  } 
  
  printf("%d\n", seen_dup);
  return 0;
}
