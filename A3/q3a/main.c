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

const int lower_a = 97;  // value of lowercase a
const int lower_z = 122; // value of lowercase z

#include "cs136.h"

int main(void) {
  int ch = 0;          // start char value for while loop
  int upper_case = 32; // value to conver lowercase to uppercase
  
  while (1) {
    ch = read_char(false);
    if (ch == READ_CHAR_FAIL) {
      break;
    }
    
    // check for lowercase letters, then convert to uppercase
    // and print
    if ((ch >= lower_a) && (ch <= lower_z)) {
      ch -= upper_case;
      printf("%c", ch);
    }
    
    // if the character is not lowercase, we can print
    // it as it is
    else {
      printf("%c", ch);
    }
  }
  
}
