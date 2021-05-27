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
#include "hist.h"

int main(void) {
  int i = 0;
  int count_0 = 0;
  int count_1 = 0;
  int count_2 = 0;
  int count_3 = 0;
  int count_4 = 0;
  int count_5 = 0;
  int count_6 = 0;
  int count_7 = 0;
  int count_8 = 0;
  int count_9 = 0;
  
  while (scanf("%d", &i) == 1) {
    if (i == 0) {
      count_0 += 1;
    }
    if (i < 0) {
      i *= -1;
    }
    else {
      while (i != 0) {
        int digit = i%10;
        if (i < 0) {
          i *= -1;
        }
        if (digit == 0) {
          count_0 += 1;
          i/= 10;
        }
        if (digit == 1) {
          count_1 += 1;
          i/= 10;
        }
        if (digit == 2) {
          count_2 += 1;
          i/= 10;
        }
        if (digit == 3) {
          count_3 += 1;
          i/= 10;
        }
        if (digit == 4) {
          count_4 += 1;
          i/= 10;
        }
        if (digit == 5) {
          count_5 += 1;
          i/= 10;
        }
        if (digit == 6) {
          count_6 += 1;
          i/= 10;
        }
        if (digit == 7) {
          count_7 += 1;
          i/= 10;
        }
        if (digit == 8) {
          count_8 += 1;
          i/= 10;
        }
        if (digit == 9) {
          count_9 += 1;
          i/= 10;
        }
    } 
  }
   
  }

  draw_hist(count_0, count_1, count_2,count_3,count_4,count_5,
            count_6,count_7,count_8,count_9);
    return 0;
}
