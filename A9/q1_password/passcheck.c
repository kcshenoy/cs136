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

#include "passcheck.h"
#include <string.h>
#include <assert.h>

////////////////////////////////////
// do not modify the following line:
const int MIN_PASSWORD_LENGTH = 8;
////////////////////////////////////

const int low_a = 97;   // lowercase a ASCII
const int low_z = 122;  // lowercase z ASCII
const int up_a = 65;    // uppercase a ASCII
const int up_z = 90;    // uppercase z ASCII

const int exc = 33;           // exclamation mark ASCII
const int for_slash = 47;     // forward slash ASCII
const int colon = 58;         // colon ASCII
const int at = 64;            // @ ASCII
const int square = 91;        // [ ASCII
const int apos = 96;          // ` ASCII
const int swirly_brack = 123; // { ASCII

const int zero = 48;    // number 0 ASCII
const int nine = 57;    // number 9 ASCII

// is_valid_password(s) determines if s is a valid password
//   (see the assignment for details)
// requires: s is not NULL
// time: O(n), n is length of s
bool is_valid_password(const char *s){
  assert(s);
  int len = strlen(s);
  int i = 0;
  bool up_case = false;  // track status of uppercase letters
  bool low_case = false; // track status of lowercase letters
  bool special = false;  // track status of special chars
  bool digit = false;    // track status of digits
  
  // if password is too short, return false:
  if (len < MIN_PASSWORD_LENGTH) {
    return false;
  }
  
  for (i = 0; i < len; i++) {    
    // if current char is lowercase, update low_case to true:
    if (s[i] >= low_a && s[i] <= low_z) {
      low_case = true;
    }
    // if current char is uppercase, update up_case to true:
    else if (s[i] >= up_a && s[i] <= up_z) {
      up_case = true;
    }
    // if current char is 0-9, update digit to true:
    else if (s[i] >= zero && s[i] <= nine) {
      digit = true;
    }
    // if current char is special, update special to true:
    else if ((s[i] >= exc && s[i] <= for_slash) ||
             (s[i] >= colon && s[i] <= at) ||
             (s[i] >= square && s[i] <= apos) ||
             (s[i] >= swirly_brack)) {
      special = true;
    }
    // if current char is invalid, return false:
    else {
      return false;
    }
  }
    
  // if all conditions are met, return true:
  return (low_case && up_case && digit && special);
}



