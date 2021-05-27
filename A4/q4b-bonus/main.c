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

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////
#include "cs136.h"

int sum(int a, int b) {
  return a + b;
}

int mult(int a, int b) {
  return a * b;
}

// foldl(hof) reads integers from input and folds them left using func.
// effects: prints output
int foldl(int (func)(int, int)) {
  // your code goes here
}

// foldl(hof) reads integers from input and folds them right using func.
// effects: prints output
int foldr(int (func)(int, int)) {
  // your code goes here
}

// hof_apply(hof) reads a function name from input and applies it to hof.
// effects: prints output
int hof_apply(int (hof)(int (func)(int, int))) {
  // your code goes here
}

int main(void) {
  const int HOF_FOLDR = lookup_symbol("foldr");
  const int HOF_FOLDL = lookup_symbol("foldl");

  int hof_cmd = read_symbol();

  while (hof_cmd != INVALID_SYMBOL) {
    if (hof_cmd == HOF_FOLDR) {
      printf(" => %d\n", hof_apply(foldr));
    } else if (hof_cmd == HOF_FOLDL) {
      printf(" => %d\n", hof_apply(foldl));
    } else {
      printf("Invalid higher-order function.");
      exit(1);
    }
    hof_cmd = read_symbol();
  }
  return EXIT_SUCCESS;
}
