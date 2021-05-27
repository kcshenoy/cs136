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

#include "cs136.h"

int main(void) {
  char previous = 0; // represents odd chars/previous char when                          // flipping
  char current = 0;  // represents even chars/current char when                          // flipping

  while(1) {
    current = read_char(false);
    // when EOF is reached, if there are an even num of characters,
    // we break, if odd, then we print the last char then break.
    if (current == READ_CHAR_FAIL) {
      if (previous == 0) {
        break;
      }
      else {
        printf("%c", previous);
        break;
      }
    }
    
    // for every odd char, we assign it to the previous value
    // and loop again to get the even char.
    else if (previous == 0) {
      previous = current;
    }

    // for every even char, we print the current char, then the
    // previous char.
    else {
      printf("%c%c", current, previous);
      previous = 0;
    }
    
  }
  printf("\n");
  return 0;  
}
