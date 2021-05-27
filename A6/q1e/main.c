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
#include <stdio.h>
#include "closest_char.h"

int main(void) {
  int arr[100] = {0};
  int arr_len = 0;
  char ch = 0;

  while (scanf("%c", &ch) == 1) {
    if (ch == '\n') {
      // Even length array
      if (arr_len % 2 == 0) {
        printf("%d\n", -1);
      } else { 
        // odd length array
        struct char_posn ch_pos = closest_char(arr, arr_len);
        printf("%c, %d, %c, %d\n", ch_pos.mid_char, ch_pos.mid_pos, ch_pos.closest_char, ch_pos.closest_pos);
      } 
      // reset array
      ch = 0;
      arr_len = 0; 
      for (int i=0; i<100; ++i) {
        arr[i] = 0;
      }
    }

    if ( ((ch >= '0') && (ch <= '9')) || \
        ((ch >= 'A') && (ch <= 'Z')) || \
        ((ch >= 'a') && (ch <= 'z'))) {
      arr[arr_len] = ch;
      ++arr_len;
    }
  }
}
