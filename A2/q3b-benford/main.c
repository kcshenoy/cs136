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

// ret_sid_dig(num) returns the leading significant digit of a number
int ret_sig_dig (int num) {
  while (num >= 10) {
      num /= 10;
    } return num;
}
  
// convert(num) returns the absolute value of the single digit integer
// representing the leading significant digit
int convert (int num) {
  if (num < 0) {
    return num *= -1;
  }
  else {
    return num;
  }
}

int main(void) {
  
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
  int n = 0;
  
  while (scanf("%d", &n) == 1) {
    int lead_dig = ret_sig_dig(convert(n));
    if (lead_dig == 0) {
      count_0 += 1;
    } 
    if (lead_dig == 1) {
      count_1 += 1;
    } 
    if (lead_dig == 2) {
      count_2 += 1;
    }
    if (lead_dig == 3) {
      count_3 += 1;
    }
    if (lead_dig == 4) {
      count_4 += 1;
    }
    if (lead_dig == 5) {
      count_5 += 1;
    }
    if (lead_dig == 6) {
      count_6 += 1;
    }
    if (lead_dig == 7) {
      count_7 += 1;
    }
    if (lead_dig == 8) {
      count_8 += 1;
    }
    if (lead_dig == 9) {
      count_9 += 1;
    }
  }
  
  draw_hist(count_0, count_1, count_2, count_3, count_4, count_5, 
            count_6, count_7, count_8, count_9);
  return 0;
}

