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
int my_pow(int b, int e) {
  assert(e >= 0);
  assert(!((b == e) && (e == 0)));
  int num = b;
  
  while (e >= 0) {
    if (e == 0) {
      return 1;
    } else if (e == 1) {
      return b;
    } else {
      b *= num;
    }
    e -= 1;
  }
  return b;
}

// count_digits(n) returns the number of digits excluding in n
int count_digits(int n) {
  int base = 0;
  if (n == 0){
    return 1;
  }
  while (n != 0) {
    if (n < 0 ){
      n *= -1;
    } else {
      base += 1;
      n /= 10;
    }
  }
  return base;
}

// sum_digits(n) returns the sum of all the digits in n
int sum_digits(int n) {
  int base = 0;
  while (n != 0) {
    if (n < 0 ){
      n *= -1;
    } else {
      int adder = n % 10;
      base += adder;
      n /= 10;
    }
  }
  return base;
}


// is_prime(n) returns true if n is prime
// requires: n >= 2
bool is_prime(int n) {
  assert(n >= 2);
  for(int i=2; i < n; i++) {
    if ((n%i == 0) && (i != n)) {
      return false;
    }
  }
    return true;
}

// fibonacci(n) returns the nth fibonacci number
// requires: n >= 0
int fibonacci(int n) {
  assert(n >= 0);
  int base = 0;
  int f_zero = 0;
  int f_one = 1;
  for (int i = 0; i < n+1; i++) {
    if (i <= 1) {
      base = i;
    }
    else {
      base = f_zero + f_one;
      f_zero = f_one;
      f_one = base;
    }
  }
  return base;
}

int main(void) {
  assert(my_pow(-2, 3) == -8);
  assert(my_pow(2, 3) == 8);
  assert(my_pow(7, 3) == 343);
  assert(my_pow(3,7) == 2187);
  assert(my_pow(1, 1) == 1);
  assert(my_pow(19, 0) == 1);
  assert(count_digits(0) == 1);
  assert(count_digits(-128736) == 6);
  assert(count_digits(12345) == 5);
  assert(count_digits(-11111) == 5);
  assert(sum_digits(12345) == 15);
  assert(sum_digits(-12345) == 15);
  assert(sum_digits(-2223345) == 21);
  assert(sum_digits(993) == 21);
  assert(sum_digits(0) == 0);
  assert(is_prime(2) == true);
  assert(is_prime(47) == true);
  assert(is_prime(4) == false);
  assert(is_prime(6) == false);
  assert(is_prime(34) == false);
  assert(fibonacci(7) == 13);
  assert(fibonacci(5) == 5);
  assert(fibonacci(1) == 1);
  assert(fibonacci(0) == 0);
  assert(fibonacci(14) == 377);
}
