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

#include "cs136.h"
// can_add(num1, num2) returns true if the sum of num1 and num2
// does not cause overflow, and false otherwise
bool can_add(int num1, int num2) {
  if ((num1 > 0) && (num2 > 0)) {
    if ((num1 + num2) < 0) {
      return false;
    }
    else {
      return true;
    }
  }

  if ((num1 < 0) && (num2 < 0)) {
    if ((num1 + num2) > 0) {
      return false;
    }
    else {
      return true;
    }
  }
  else {
    return true;
  }
}

struct arithmetic {int base;
                   int diff;
                   int smallest;
                   int largest;
                   int series_count;
                  };

// create_arithmetic(base, d) returns a new arithmetic series
// using the given base and difference values.
struct arithmetic create_arithmetic(int base, int d) {
  struct arithmetic new = {0, 0, 0, 0, 0};
  new.base = base;
  new.diff = d;
  int total_1 = base; // find highest/lowest num before overflow
  int sum = 0;

  while (can_add(total_1, d)) {
    total_1 += d; // increment largest/smallest
  }
  if (d > 0) {
    new.smallest = base;
    new.largest = total_1;
  }
  else {
    new.largest = base;
    new.smallest = total_1;
  }
  total_1 = base;
  
  while (can_add(total_1, sum)) {
    sum += total_1;
    
    if (can_add(total_1, d)) {
      total_1 += d;
    }
    new.series_count += 1;
  }   
  return new;
}

// average3(first, second, third) returns the average of 3 numbers
int average3(int first, int second, int third) {
  return (first/3) + (second/3) + (third/3) +
    (((first%3) + (second % 3) + (third % 3)) / 3);
}

int main(void) {
  assert(can_add(1,1));
  assert(can_add(-2147483647, -1) == true);
  assert(can_add(2147483647, 1) == false);
  assert(can_add(-2000000000, 1000000000) == true);
  assert(can_add(-2000000000, -1000000000) == false);
  struct arithmetic a = create_arithmetic(1, 500000000);
  assert(a.smallest == 1);
  assert(a.largest == 2000000001);
  assert(a.series_count == 3);
  struct arithmetic b = create_arithmetic(10000000, 200000000);
  assert(b.series_count == 5);
  assert(b.largest == 2010000000);
  assert(b.smallest = 10000000);
  struct arithmetic c = create_arithmetic(10000000, -400000000);
  assert(c.smallest = -2010000000);
  assert(c.largest = 10000000);
  assert(c.series_count = 3);
  assert(average3(5, 6, 6) == 5);
  assert(average3(7, 8, 9) == 8);
  assert(average3(12987, 789534, 1400000) == 734173);
  struct arithmetic d = create_arithmetic(0, 2147483646);
  assert(d.base == 0);
  assert(d.diff == 2147483646);
  assert(d.smallest == 0);
  assert(d.largest == 2147483646);
  assert(d.series_count == 2);
  return 0;
}  
