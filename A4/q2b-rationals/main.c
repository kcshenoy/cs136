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
#include "rtnl_math.h"

// rtnl_minus(a, b) subtracts 2 struct rtnl and simplifies the resulting
// struct rtnl
struct rtnl rtnl_minus(const struct rtnl *a, const struct rtnl *b) {
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

  int new_num = (new_a.num * new_b.den) - (new_a.den * new_b.num);
  int new_den = new_a.den * new_b.den;
  if (new_num == 0) {
    new_den = 1;
  }
  
  return(rtnl_make(new_num, new_den));
}

// rtnl_mult(a, b) multiplies 2 struct rtnl and simplifies the resulting
// struct rtnl
struct rtnl rtnl_mult(const struct rtnl *a, const struct rtnl *b) {
  assert(a->den != 0 && b->den != 0);
  int new_num = a->num * b->num;
  int new_den = a->den * b->den;
  return(rtnl_make(new_num, new_den));
}

struct p2d {
  struct rtnl x;
  struct rtnl y;
} ;

// p2d_make(x, y) creates a 2d point given an x-value and y-value struct rtnl
struct p2d p2d_make(struct rtnl *x, struct rtnl *y){
  assert(x->den != 0 && y->den != 0);
  struct p2d new_point;
  new_point.x = *x;
  new_point.y = *y;
  return new_point;
}

// p2d_dist_euclid(a, b) returns the euclidean distance from 2 given p2d.
struct rtnl p2d_dist_euclid(const struct p2d *a, const struct p2d *b) {
  
  struct p2d new_a;
  new_a.x = a->x;
  new_a.y = a->y;
  
  struct p2d new_b;
  new_b.x = b->x;
  new_b.y = b->y;
  
  struct rtnl change_x = rtnl_minus(&new_a.x, &new_b.x);
  struct rtnl change_y = rtnl_minus(&new_a.y, &new_b.y);
  
  // check if our result is 0:
  if ((change_x.num == 0) && (change_y.num == 0)) {
    struct rtnl dist = {0, 1};
    return dist;
  }
  
  else {
    struct p2d new_point;
    new_point.x = rtnl_minus(&a->x, &b->x);
    new_point.y = rtnl_minus(&a->y, &b->y);

    new_point.x = rtnl_mult(&new_point.x, &new_point.x);
    new_point.y = rtnl_mult(&new_point.y, &new_point.y);

    struct rtnl dist_point = rtnl_plus(&new_point.x, &new_point.y);
    return rtnl_sqrt(&dist_point);
  }
}

int main(void) {

  struct rtnl seven = rtnl_make(0,2);
  struct rtnl five = rtnl_make(38,7);
  struct rtnl diff_1 = rtnl_minus(&seven, &five);
  assert(diff_1.num == -38 && diff_1.den == 7);
  
  struct rtnl r_1 = rtnl_make(9, 6);
  struct rtnl r_2 = rtnl_make(1, 2);
  struct rtnl diff_2 = rtnl_minus(&r_1, &r_2);
  assert(diff_2.num == 1 && diff_2.den == 1);
  
  struct rtnl zero_1 = rtnl_make(0, -67);
  struct rtnl zero_2 = rtnl_make(0, 34);
  struct rtnl diff_3 = rtnl_minus(&zero_1, &zero_2);
  assert(diff_3.num == 0 && diff_3.den == 1);
  
  struct rtnl neg = rtnl_make(-35, -21);
  struct rtnl prime = rtnl_make(43, 7);
  struct p2d p1 = p2d_make(&r_1, &r_2);
  struct p2d p2 = p2d_make(&prime, &neg);
  struct rtnl dist_1 = p2d_dist_euclid(&p1, &p2);
  assert(dist_1.num == 4787 && dist_1.den == 1000);
  
  struct rtnl negative = rtnl_minus(&seven, &five);
  assert(negative.num == -38 && negative.den == 7);
  
  struct rtnl dist_2 = p2d_dist_euclid(&p1, &p1);
  assert(dist_2.num == 0 && dist_2.den == 1);
  
  struct p2d zero_point = p2d_make(&zero_1, &zero_2);
  struct rtnl dist_3 = p2d_dist_euclid(&zero_point, &p1);
  assert(dist_3.den == 1000 && dist_3.num == 1581);

  return EXIT_SUCCESS;
}