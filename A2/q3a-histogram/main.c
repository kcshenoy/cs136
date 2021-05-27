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

// find_max(val_1, val_2) returns the maximum value between val_1 and val_2
int find_max(val_1, val_2) {
  if (val_1 >= val_2) {
    return val_1;
  }
  else {
    return val_2;
  }
}

// give_max(c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9) returns
// the maximum of all 9 values.
int give_max (int c_0, int c_1, int c_2, int c_3, int c_4,
               int c_5, int c_6, int c_7, int c_8, int c_9) {
  int max = c_0;
  int max1 = find_max(max, c_0);
  int max2 = find_max(max1, c_1);
  int max3 = find_max(max2, c_2);
  int max4 = find_max(max3, c_3);
  int max5 = find_max(max4, c_4);
  int max6 = find_max(max5, c_5);
  int max7 = find_max(max6, c_6);
  int max8 = find_max(max7, c_7);
  int max9 = find_max(max8, c_8);
  int max_final = find_max(max9, c_9);
  return max_final;
  
  assert(give_max(0, 1, 2, 1, 5, 0, 0, 0, 1, 0) == 5);
  assert(give_max(9, 8, 7, 6, 5, 4, 3, 2, 1, 0) == 9);
}

// printer(y_val, max) prints a "#" on the histogram if the value is
// greatert than or equal to the max.
void printer (int y_val, int max) {
  if (y_val >= max) {
    printf(" #");
  }
  else {
    printf("  ");
  }
}

// draw_hist(c_0, c_1, c_2, c_3, c_4, c_5, c_6, c_7, c_8, c_9) draws
// a histogram for the x-values 0->9, using the corresponding y-values 
// c_0->c_9
// requires: c_0 - c_9>=0
// effects: produces output
void draw_hist (int c_0, int c_1, int c_2, int c_3, int c_4,
               int c_5, int c_6, int c_7, int c_8, int c_9) {
  
  assert(c_0 >= 0);
  assert(c_1 >= 0);
  assert(c_2 >= 0);
  assert(c_3 >= 0);
  assert(c_4 >= 0);
  assert(c_5 >= 0);
  assert(c_6 >= 0);
  assert(c_7 >= 0);
  assert(c_8 >= 0);
  assert(c_9 >= 0);
  
  int max_y = give_max(c_0, c_1, c_2, c_3, c_4,
               c_5, c_6, c_7, c_8, c_9);
  while (max_y > 0) {
    
    if ((max_y % 5) == 0) {
      printf("%2d |", max_y);
    }
    if (!((max_y % 5) == 0)) {
      printf("   |");
    }
    if ((!((max_y % 5) == 0)) || ((max_y % 5) == 0)) {
      printer(c_0, max_y);
      printer(c_1, max_y);
      printer(c_2, max_y);
      printer(c_3, max_y);
      printer(c_4, max_y);
      printer(c_5, max_y);
      printer(c_6, max_y);
      printer(c_7, max_y);
      printer(c_8, max_y);
      printer(c_9, max_y);
      printf("\n");
      max_y -= 1;
    }
  }
  printf("   +--------------------\n");
  printf("     0 1 2 3 4 5 6 7 8 9\n");
  
}

int main(void) {
  draw_hist(0, 1, 2, 1, 5, 0, 0, 0, 1, 0);
  draw_hist(9, 8, 7, 6, 5, 4, 3, 2, 1, 0);
  draw_hist(0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  draw_hist(9, 5, 6, 6, 5, 4, 9, 2, 4, 0);
}
