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

// my_pow(n, k) returns the value of n raised to k
// requires: k >= 0
int my_pow(int n, int k) {
  assert((k >= 0) == true);  
  if (k == 0) {
    return 1;
  }
  if (k == 1) {
    return n *= 1;
  }  
  else {
    return (n * my_pow(n, k-1)); 
    }
}

// count_digits(n) returns the number of digits in n
int count_digits(int n) {
  if ((n < 10) && (n > -10)) {
    return 1;
  }
  else {
    return (1 + count_digits(n/10));
    }
}

// sum_digits(n) returns the sum of all the digits in n
int sum_digits(int n) {
  if (n >= 0) {
    if ((n < 10) && (n > -10)) {
      return n;
    }
    else {
      return((n%10) + sum_digits(n/10));
    }
  }
  else {
    if ((n < 10) && (n > -10)) {
      return n;
    }
    else {
      return((-n%10) + sum_digits(-n/10));
    }
  }
}

// check_prime(num, check) returns true if num is prime

bool check_prime(int num, int check) {
  if (num < check){
    return false;
  }
  if (num < check*check) {
    return true;
  }
  if ((num % check) == 0) {
    return false;
  }
  else {
    return check_prime(num, check+1);
  }
}

// is_prime(n) returns true if n is prime
// requires: n >= 2
bool is_prime(int n) {
  assert(n >= 2);
  return check_prime(n, 2);
}


int main(void) {
  assert(count_digits(0) == 1);
  assert(sum_digits(0) == 0);
  assert(my_pow(1, 1) == 1);
  assert(my_pow(2, 3) == 8);
  assert(count_digits(12345) == 5);
  assert(count_digits(-12345) == 5);
  assert(sum_digits(12345) == 15);
  assert(is_prime(4) == false);
  trace_int(sum_digits(-12345));
  trace_int(sum_digits(-111134));
}
