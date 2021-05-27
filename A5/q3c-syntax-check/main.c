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
#include "cs136-trace.h"
#include "stack.h"
#include <stdio.h>
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>

const char round_brack_o = '(';   // constant value of "("
const char round_brack_c = ')';   // constant value of ")"
const char square_brack_o = '[';  // constant value of "["
const char square_brack_c = ']';  // constant value of "]"
const char curly_brack_o = '{';   // constant value of "{"
const char curly_brack_c = '}';   // constant value of "}"
const char double_quote = '"';    // constant value of """
const char single_quote = 39;     // constant value of "'"
const char back_slash = 92;       // constant value of "\"

// check_brackets(brack1, brack2) checks if brack1 is an open grouper and
// brack2 is the corresponding closing grouper
bool check_brackets(char brack1, char brack2) { 
  if (brack1 == round_brack_o && brack2 == round_brack_c) {
    return true;
  }
  if (brack1 == square_brack_o && brack2 == square_brack_c) {
    return true;
  }
  if (brack1 == curly_brack_o && brack2 == curly_brack_c) {
    return true;
  }
  if (brack1 == single_quote && brack2 == single_quote) {
    return true;
  }
  else {
    return false;
  }
}

// syntax_check(void) returns true if the input text adheres to CS136-syntax, 
// and false otherwise.
bool syntax_check(void) {
  struct stack *brack_trace = stack_create(); // initialize struct stack
  char ch = 0;
  int d_quote = -1;   // track double quote status
  int s_quote = -1;   // track single quote status
  int b_slash = -1;   // track backslash status
  bool tracer = true;

  while (scanf("%c", &ch) == 1) {

    // check if current char is backslash, then change state of b_slash:
    if (ch == back_slash) {
      b_slash = 1;
    }

    // check if current char is a single quote not in string:
    else if (ch == single_quote && d_quote == -1) {
      if (b_slash == -1) {
        s_quote *= -1;;
      }
    }

    // check if current char is double quote:
    else if (ch== double_quote) {
      if (b_slash == -1) {
        d_quote *= -1;
      }
    }

    // if an open "grouper" is inputted and not in quotes, push it to the stack:
    else if ((ch == round_brack_o || ch == square_brack_o || ch == curly_brack_o) &&
             (s_quote == -1) && (d_quote == -1)) {
      stack_push(brack_trace, ch);
    }

    // if a closed "grouper" is inputted and not in quotes, compare it to 
    // the current stack:
    else if ((ch == round_brack_c || ch == square_brack_c || ch == curly_brack_c) &&
             (s_quote == -1) && (d_quote == -1)) {
      // if current stack is empty, brackets don't match => false:
      if (stack_is_empty(brack_trace)) {
        tracer = false;
      }
      // if brackets dont match => false:
      else if (!(check_brackets(stack_pop(brack_trace), ch))) {
        tracer = false;
      }
      b_slash = -1;
    }
    else {
      b_slash = -1;
    }
  }

  // if tracer is true, if the stack is empty, brackets match:
  if (tracer == true) {
    if (stack_is_empty(brack_trace)) {
      stack_destroy(brack_trace);
      return (d_quote == -1 && s_quote == -1);
    }
    else {
      stack_destroy(brack_trace);
      return false;
    }
  }
  else {
    stack_destroy(brack_trace);
    return false;
  }

}


int main(void) {

  printf("%s\n", syntax_check() ? "true" : "false");

  return EXIT_SUCCESS;
}
