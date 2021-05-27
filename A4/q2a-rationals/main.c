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

// gcd(num1, num2) calculates the gcd of 2 given numbers
int get_gcd(int num1, int num2) {
  int gcd = 0;
  int i = 0;

  // check if either number is negative, then convert to positive:
  if (num1 < 0) {
    num1 *= -1;
  }
  if (num2 < 0) {
    num2 *= -1;
  }

  // if we want to achieve num = 0 and den = 1 when we are adding 0's,
  // we set the gcd of 0 and any other number to 1.
  if (num1 == 0 || num2 == 0) {
    return 1;
  }

  // check for factors of num1 && num2 until we reach either.
  for (i = 1; i <= num1 && i <= num2; ++i) {
    if ((num1 % i == 0) && (num2 % i == 0)) {
      gcd = i;
    }
  }
  return gcd;
}

// creates a struct of a rational number, with numerator and denominator
struct rtnl {
  int num;
  int den;
};

// rtnl_simplify(r) simplifies the given struct rtnl, aka reduces
// the fraction num/den
// effects: modifies r
void rtnl_simplify(struct rtnl *r) {
  assert(r->den != 0);
  int gcd = get_gcd(r->num, r->den);
  if (r->den < 0) {
    r->den *= -1;
    r->num *= -1;
  }
  r->num /= gcd;
  r->den /= gcd;
}

// rtnl_make(num, den) returns a simplified struct rtnl new_rtnl given the 
// numerator (num) and denominator (den)
struct rtnl rtnl_make(int num, int den) {
  struct rtnl new_rtnl = {num, den};
  rtnl_simplify(&new_rtnl);
  return new_rtnl;
}

// rtnl_plus(a, b) adds 2 struct rtnl and simplifies the resulting
// struct rtnl
struct rtnl rtnl_plus(const struct rtnl *a, const struct rtnl *b) {
  assert(a->den != 0 && b->den != 0);
  // simplifying struct a to avoid possibility of overflow when multiplying
  struct rtnl new_a;
  new_a.num = a->num;
  new_a.den = a->den;
  rtnl_simplify(&new_a);

  // simplifying struct b to avoid possibility of overflow when multiplying
  struct rtnl new_b;
  new_b.num = b->num;
  new_b.den = b->den;
  rtnl_simplify(&new_b);

  int new_num = (new_a.num * new_b.den) + (new_a.den * new_b.num);
  int new_den = new_a.den * new_b.den;
  if (new_num == 0) {
    new_den = 1;
  }
  
  return(rtnl_make(new_num, new_den));
}

int main(void) {

  struct rtnl r = rtnl_make(9, 6);
  assert(r.num == 3 && r.den == 2);
  struct rtnl neg = rtnl_make(-35, -21);
  assert(neg.num == 5 && neg.den == 3);
  struct rtnl prime = rtnl_make(43, 7);
  assert(prime.num == 43 && prime.den == 7);
  struct rtnl change_sign = rtnl_make(220, -10);
  assert(change_sign.num == -22 && change_sign.den == 1);
  struct rtnl simple = rtnl_plus(&neg, &prime);
  assert(simple.num == 164 && simple.den == 21);
  struct rtnl den_2 = rtnl_plus(&r, &change_sign);
  assert(den_2.num == -41 && den_2.den == 2);
  struct rtnl whole_1 = rtnl_make(1, 3);
  struct rtnl whole_2 = rtnl_make(6, 9);
  struct rtnl add_one = rtnl_plus(&whole_1, &whole_2);
  assert(add_one.den == 1 && add_one.num == 1);
  struct rtnl add_zero = rtnl_make(-1, 3);
  struct rtnl add_zero2 = rtnl_make(2, 6);
  struct rtnl zero = rtnl_plus(&add_zero, &add_zero2);
  assert(zero.den == 1 && zero.num == 0);
  struct rtnl zero_add1 = rtnl_make(0, 5);
  struct rtnl zero_add2 = rtnl_make(0, 10);
  struct rtnl zero_add = rtnl_plus(&zero_add1, &zero_add2);
  assert(zero_add.den == 1 && zero_add.num == 0); 
  return EXIT_SUCCESS;
}