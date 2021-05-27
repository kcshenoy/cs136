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

const char low_a = 97;       // lowercase a
const char low_z = 122;      // lowercase z
const char up_z = 90;        // uppercase z
const char up_a = 65;        // uppercase a
const int upper_case = 32;

int main(void) {
  int i = 0;
  int char_arr[128] = {}; // initialize counter array for 128 chars
  char ch = 0;
  
  // convert uppercase letters to lowercase, then add to the letter
  // count in char_arr:
  while (scanf(" %c", &ch) == 1) {
    if (ch >= 65 && ch <= 90) {
      ch += 32;
    }
    int num_char = ch;
    char_arr[num_char] += 1;
  }
  
  // if the count isn't 0, print the char and its frequency:
  while (i < 128) {   
    if (char_arr[i]) {
      printf("%c: %d\n", i, char_arr[i]);
    }
    i++;
  }

  return 0;
}
