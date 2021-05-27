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

// -----------------------------------------------------------------------
// -----------------------------------------------------------------------
// fibonacci(n) returns the nth number in the fibonacci sequence
// requires: n >= 0

int fibonacci(int n) {
  
  if (n == 0) {
    return 0;
  }
  
  if (n == 1) {
    return 1;
  }
  
  else {
    return(fibonacci(n-1) + fibonacci(n-2));
  }
}

// -----------------------------------------------------------------------
// recurse_fib(count, n) recursively returns each number of the fibonacci
// sequence from 0 to n using a counter.
// effects: produces output

void recurse_fib(int count,int n) {
   if (count == n) {
    printf("F(%d) = %d\n", n, fibonacci(n));
  }
  
  else {
    printf("F(%d) = %d\n", count, fibonacci(count));
    count += 1;
    recurse_fib(count, n);
  }
}

// -----------------------------------------------------------------------
// fibonacci_print(n) prints all the numbers in the fibonacci sequence from
// 0 to n.
// requirses: n >= 0
// effects: produces output

void fibonacci_print(int n) {
  int counter = 0;
  recurse_fib(counter, n);
}

//==========================================
// This is the main function. DO NOT MODIFY!
int main(void) {
  int input = read_int();
  if (input != READ_INT_FAIL) {
    fibonacci_print(input);
  } else {
    printf("Cannot read number.");
  }
  return 0;
}

