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
#include "cs136.h"

int cbe(int n) {
  return (n * n * n);
}

// abs(n) returns the absolute value of n.
int abs(int n) {
  return (n >= 0) ? n : -n;
}

// neg(n) returns the negative value of n.
int neg(int n) {
  return -n;
}

// sgn(n) returns -1 if n is negative, 1 if n is positive, and 0 otherwise.
int sgn(int n) {
  return (n > 0) - (n < 0);
}

// map(func(int)) maps a given function onto integers from the output
void map(int (func)(int)) {
  assert(func);
  int num = INT_MIN;
  while (scanf("%d", &num) == 1) { // run loop while valid integers
    int value = func(num);
    printf("%d => %d\n", num, value);
  }
}

int main(void) {

  // Assigning a string to each of our mapping functions:
  int CMD_ABS = lookup_symbol("abs");
  int CMD_NEG = lookup_symbol("neg");
  int CMD_SGN = lookup_symbol("sgn");
  int CMD_CUBE = lookup_symbol("cbe");

  int command = read_symbol();

  while (INVALID_SYMBOL != command) { // running loop while commands are valid
    
    // check if "abs" command is inputed
    if (command == CMD_ABS) {
      map(abs);
    }
    
    // check if "neg" command is inputed
    else if (command == CMD_NEG) {
      map(neg);
    }
    
    // check if "sgn" command is inputed
    else if (command == CMD_SGN) {
      map(sgn);
    }
    
    else if (command == CMD_CUBE) {
      map(cbe);
    }
    
    // if command is valid, but not a function, print warning:
    else {
      printf("Invalid function.\n");
    }
    command = read_symbol(); // run loop until EOF
  }
  return 0;

}
