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
  bool char_exist[128] = {0}; // initialize array for 128 chars
  int i = 0;
  char ch = 0;
  
  // if scanned char has not been scanned before, make 
  // char_exist[ch] true:
  while(scanf("%c", &ch) == 1) {
    int num_char = ch;
    if (char_exist[num_char] == 0) {
      char_exist[num_char] = true;
    }
  }
  
  // check for all indexes which yield true (exist), then print the
  // index num as a char:
  for (i = 0; i < 128; i++) {
    if (char_exist[i]) {
      char c = i;
      printf("%c", c);
    }
  }
  
  printf("\n");
}
