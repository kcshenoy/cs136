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

const int upper_case = 32;   // convert lowercase <-> uppercase
const char question = 63;    // question mark value
const char exclamation = 33; // exclamation mark value
const char period = 46;      // period value
const char low_a = 97;       // lowercase a
const char low_z = 122;      // lowercase z
const char up_z = 90;        // uppercase z
const char up_a = 65;        // uppercase a


int main(void) {
  char two_before = 0; // 2 chars before current
  char previous = 0;   // 1 char before current
  char current = 0;    // current char being read

  while (1) {
    current = read_char(false);
    if (current == READ_CHAR_FAIL) {
      break;
    }

    // initialize loop, if first char is not a letter, continue
    // to next char, keep previous at 0.
    if (previous == 0) {
      if ((current <= up_z) && (current >= up_a)) {
        printf("%c", current);
        previous = current;
      }
      else if ((current >= low_a) && (current <= low_z)) {
        previous = current;    // previous = currently read char
        current -= upper_case; // convert lower -> uppercase
        printf("%c", current);
      }
    }

    // check if previous char is lowercase
    else if ((previous >= low_a) && (previous <= low_z)) {
      if ((((current == question) || (current == exclamation) || 
            (current == period))) || ((current >= low_a) && (current <= low_z))) {
        previous = current;    // print lowercase char or puncuation
        printf("%c", current);
      }
      else if ((current <= up_z) && (current >= up_a)) {
        current += upper_case; // convert upper->lowercase
        previous = current;    
        printf("%c", current);
      }
      // if char invalid, continue loop and store letter in 
      // two_before:
      else {
        two_before = previous;
        previous = current;
      }
    }

    // check if previous char is uppercase, with same checks as
    // lowercase char.
    else if ((previous <= up_z) && (previous >= up_a)) {
      if ((((current == question) || (current == exclamation) || 
            (current == period))) || ((current >= low_a) && (current <= low_z))) {
        previous = current;    
        printf("%c", current);
      }
      else if ((current <= up_z) && (current >= up_a)) {
        current += upper_case; 
        previous = current;    
        printf("%c", current);
      }
      else {
        two_before = previous;
        previous = current;
      }
    }
    
    // check if previous char is period, question/exclamation mark
    else if ((previous == question) || 
             (previous == exclamation) || 
             (previous == period)) {
      if ((current >= low_a) && (current <= low_z)) {
        current -= upper_case;   // convert lower->uppercase
        printf(" %c", current);  // print space and char
        previous = current;
      }
      else if ((current <= up_z) && (current >= up_a)) {
        printf(" %c", current);  // print space and uppercase char
        previous = current;
      }
    }
    
    // check if previous char is space
    else if (previous == 32) {
      if (current == 32) {
        previous = current;     // ignore additional spaces
      }
      else if ((current >= low_a) && (current <= low_z)) {
        printf(" %c", current); // print space and lowercase char
        previous = current;
      }
      else if ((current <= up_z) && (current >= up_a)) {
        current += upper_case;  // convert upper->lowercase
        printf(" %c", current); // print space and lowercase char
        previous = current;
      }
      else if ((current == question) || 
               (current == exclamation) ||
               (current == period)) {
        printf("%c", current);  // print punctuation
        previous = current;
      }
    }
    
    // check if previous char is invalid char
    else {
      if (current == 32) {
        previous = current;
      }
      // check for if invalid char is in a word:
      else if (((two_before <= up_z) && (two_before >= up_a)) ||
               ((two_before >= low_a) && (two_before <= low_z))) {
        if ((current <= up_z) && (current >= up_a)) {
          current += upper_case;
          printf(" %c", current);
          previous = current;
          two_before = 0;
        }
        else if ((current >= low_a) && (current <= low_z)) {
          printf(" %c", current);
          previous = current;
          two_before = 0;
        }
      }
    }

  }

  printf("\n");


}
