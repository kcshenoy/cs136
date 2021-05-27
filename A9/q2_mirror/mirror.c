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

// Nonw

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include "mirror.h"
#include <assert.h>
#include <string.h>
#include <stdlib.h>
#include "cs136-trace.h"

// mirror(str) changes str by replacing it with the original 
//    str followed by the same string in reverse
// requires: str array be at least double the length of the original str
// effects: mutates *str
// time: O(n), n is the length of str
void mirror(char *str){
  int len = strlen(str); // initialize length of str
  int i = 0;

  if (len != 0) {
    // first char of mirror = last char of str,
    // second char of mirror = second last char of str...
    // for all chars in str:
    for (i = 0; i < len; i++) {
      str[len+i] = str[len-i-1];
    }
  }
}

// undo_mirror(str) reverses what mirror does
// requires: str contains a previously mirrored string
// effects: mutates *str
// time: O(n), n is the length of str
void undo_mirror(char *str){
  int len = strlen(str);
  int len_mid = len/2; // index of beginning of mirror

  // all mirror word chars = null terminator until first char
  // of mirror word
  for (int i = 0; i < len; ++i ) {
    str[len - i] = '\0'; 
    if (i == len_mid) {
      break;
    }
  }

}

