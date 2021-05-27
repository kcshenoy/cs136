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

// ======================================================================
// ======================================================================
// Useful Helpers and Definitions:

struct p2d {
  struct rtnl x;
  struct rtnl y;
} ;

struct l2d {
  struct p2d p1;
  struct p2d p2;
} ;

struct rtnl make_rtnl(int num, int den) {
  struct rtnl new_rtnl = {num, den};
  rtnl_simplify(&new_rtnl);
  return new_rtnl;
}

struct p2d p2d_make(struct rtnl *x, struct rtnl *y){
  assert(x->den != 0 && y->den != 0);
  struct p2d new_point;
  new_point.x = *x;
  new_point.y = *y;
  return new_point;
}

// rtnl_minus(a, b) subtracts 2 struct rtnl and simplifies the resulting
// struct rtnl
struct rtnl rtnl_minus(const struct rtnl *a, const struct rtnl *b) {
  assert(a->den != 0 && b->den != 0);
  // check if we are subtracting 0's:
  if (a->num == 0 && b->num == 0) {
    struct rtnl base = {0,1};
    return base;
  }
  
  // if numerator of a is 0, return b as a negative struct rtnl (0 - b) < 0:n
  else if (a->num == 0) {
    struct rtnl base;
    base.num = b->num;
    base.den = b->den;
    return base;
  }
  
  // if numerator of b is 0, return b as a negative struct rtnl (a - 0) > 0:
  else if (b->num == 0) {
    struct rtnl base;
    base.num = a->num;
    base.den = a->den;
    return base;
  }
  else {
    int new_num = (a->num * b->den) - (a->den * b->num);
    int new_den = a->den * b->den;
    return(make_rtnl(new_num, new_den));
  }
}

// rtnl_mult(a, b) multiplies 2 struct rtnl and simplifies the resulting
// struct rtnl
struct rtnl rtnl_mult(const struct rtnl *a, const struct rtnl *b) {
  assert(a->den != 0 && b->den != 0);
  int new_num = a->num * b->num;
  int new_den = a->den * b->den;
  return(make_rtnl(new_num, new_den));
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

  if ((change_x.num == 0) && (change_y.num == 0)) {
    struct rtnl dist = {0, 1};
    return dist;
  }
  struct p2d new_point;
  new_point.x = rtnl_minus(&a->x, &b->x);
  new_point.y = rtnl_minus(&a->y, &b->y);
  new_point.x = rtnl_mult(&new_point.x, &new_point.x);
  new_point.y = rtnl_mult(&new_point.y, &new_point.y);
  struct rtnl dist_point = rtnl_plus(&new_point.x, &new_point.y);
  return rtnl_sqrt(&dist_point); 
}

// ======================================================================
// ======================================================================

// get_slope(line_seg) returns the slope of an l2d
struct rtnl get_slope (const struct l2d *line_seg) {
  struct p2d get_slope;
  
  // slope = (y1 - y2) / (x1 - x2):
  get_slope.y = rtnl_minus(&line_seg->p1.y, &line_seg->p2.y);
  get_slope.x = rtnl_minus(&line_seg->p1.x, &line_seg->p2.x);
  
  // since we cant divide change in y by change in x, we multiply
  // change in y by the reciprocal of change in x:
  struct rtnl reciprocal = {get_slope.x.den, get_slope.x.num};
  struct rtnl slope_val;
  slope_val = rtnl_mult(&get_slope.y, &reciprocal);
  return slope_val;
}

// ret_b_val(slope, start_line) returns b in y=mx+b
struct rtnl ret_b_val(const struct rtnl *slope, const struct p2d *start_line) {
  struct rtnl b_val;
  struct rtnl mx_val;
  mx_val = rtnl_mult(slope, &start_line->x);
  b_val = rtnl_minus(&start_line->y, &mx_val);
  return b_val;
}

// make_l2d(point1, point2) creates an l2d given 2 p2d.
struct l2d make_l2d(const struct p2d *point1, const struct p2d *point2) {
  struct l2d new_l2d;
  new_l2d.p1 = *point1;
  new_l2d.p2 = *point2;
  return new_l2d;
}

struct rtnl neg_recip(const struct rtnl *slope) {
  struct rtnl neg_reciprocal;
  neg_reciprocal.num = slope->den * -1;
  neg_reciprocal.den = slope->num;
  rtnl_simplify(&neg_reciprocal);
  return neg_reciprocal;
}

// get_xval(b_val1, slope_1, b_val2, slope_2) returns the x-coordinate
// of the intersection of 2 lines with equations y = mx + b and y = nx + c:
struct rtnl get_xval(const struct rtnl *b_val1, const struct rtnl *slope_1,
                     const struct rtnl *b_val2, const struct rtnl *slope_2) {
  // equating the 2 equations, we get mx + b = nx + c:
  
  // x_coefficient represents x(m-n):
  struct rtnl x_coefficient = rtnl_minus(slope_1, slope_2);  
  // final_bval represents c-b:
  struct rtnl final_bval = rtnl_minus(b_val2, b_val1);
  
  // isolating for x, we get x = (c-b)/(m-n) = (c-b) * (n/m), so 
  // reciprocal converts m/n => n/m:
  struct rtnl reciprocal = {x_coefficient.den, x_coefficient.num};
  struct rtnl x_val = rtnl_mult(&final_bval, &reciprocal);
  return x_val;
}

// get_yval(slope, xval, bval) returns the y value given an x value,
// a slope, and a b value by using y = mx + b.
struct rtnl get_yval(const struct rtnl *slope, const struct rtnl *x_val, 
                     const struct rtnl *bval) {
  struct rtnl y_val;
  struct rtnl mx_val;
  mx_val = rtnl_mult(slope, x_val);
  y_val = rtnl_plus(&mx_val, bval);
  return y_val;
}

// dist_points(line, point) returns a p2d representing a point on the l2d
struct p2d dist_points(const struct l2d *line, const struct p2d *point) {
  struct p2d dist_calc;
  
  // Using equations of the lines from point->line and line to
  // initialize the x and y coordinate of their intercept:
  struct rtnl slope = get_slope(line);
  struct rtnl bval_line = ret_b_val(&slope, &line->p1);
  struct rtnl point_slp = neg_recip(&slope);
  struct rtnl point_b = ret_b_val(&point_slp, point);
  struct rtnl x_intercept = get_xval(&bval_line, &slope, &point_b, &point_slp);
  struct rtnl y_intercept = get_yval(&slope, &x_intercept, &bval_line);
  
  dist_calc.x = x_intercept;
  dist_calc.y = y_intercept;
  
  return dist_calc;
}
  
// l2d_dist_to_p2d(l, p) returns the shortest distance from p2d to
// l2d as a struct rtnl
struct rtnl l2d_dist_to_p2d(const struct l2d *l, const struct p2d *p) {
  struct l2d new_line;
  new_line.p1 = l->p1;
  new_line.p2 = l->p2;
  struct p2d new_point;
  new_point.x = p->x;
  new_point.y = p->y;
  
  struct p2d find_dist = dist_points(&new_line, &new_point);
  struct rtnl final_dist = p2d_dist_euclid(&find_dist, &new_point);
  return final_dist;
}

int main(void) {
  struct rtnl test_x = make_rtnl(3, 1);
  struct rtnl test_y = make_rtnl(1, 1);
  struct p2d test_point = p2d_make(&test_x, &test_y);
  struct rtnl r_1 = make_rtnl(0, 6);
  struct rtnl r_2 = make_rtnl(0, 2);
  struct rtnl seven = make_rtnl(7, 1);
  struct rtnl four = make_rtnl(-8, -2);
  struct p2d p1 = p2d_make(&r_1, &r_2);
  struct p2d p2 = p2d_make(&seven, &four);
  struct l2d line_seg1 = make_l2d(&p1, &p2);
  struct rtnl dist_1 = l2d_dist_to_p2d(&line_seg1, &test_point);
  assert(dist_1.num == 6201 && dist_1.den == 10000);
  
  struct rtnl two_slopex_1 = make_rtnl(1, 1);
  struct rtnl two_slopey_1 = make_rtnl(5, 1);
  struct rtnl two_slopex_2 = make_rtnl(7, 2);
  struct rtnl two_slopey_2 = make_rtnl(10, 1);
  struct p2d seg_1 = p2d_make(&two_slopex_1, &two_slopey_1);
  struct p2d seg_2 = p2d_make(&two_slopex_2, &two_slopey_2);
  struct l2d line_2 = make_l2d(&seg_1, &seg_2);
  struct rtnl point_x = make_rtnl(8, 1);
  struct rtnl point_y = make_rtnl(4, 1);
  struct p2d test_point2 = p2d_make(&point_x, &point_y);
  struct rtnl dist_2 = l2d_dist_to_p2d(&line_2, &test_point2);
  assert(dist_2.num == 1677 && dist_2.den == 250);
  
  struct rtnl dist_3 = l2d_dist_to_p2d(&line_seg1, &p1);
  assert(dist_3.num == 0 && dist_3.den == 1);
  
  struct rtnl on_line_x = make_rtnl(14, 1);
  struct rtnl on_line_y = make_rtnl(8, 1);
  struct p2d on_line = p2d_make(&on_line_x, &on_line_y);
  struct rtnl dist_4 = l2d_dist_to_p2d(&line_seg1, &on_line);
  assert(dist_4.num == 0 && dist_4.den == 1);
  return EXIT_SUCCESS;
}