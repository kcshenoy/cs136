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

// saturn(diameter) draws a circle with a ring of height 3 in the centre.
// requires: diameter must be odd and larger than 3

void saturn(int diameter) {
  int radius = diameter/2;
  
  for (int y = radius; ((y <= radius) && (y >= -radius)); y -= 1) {
    // x and y represent the columns and rows of the circle respectively, and are 
    // given values based on their distance from the middle row/column (0)
    
    int x = radius;
    if (y == 0) {
      while ((x <= radius) && (x >= -radius)) {
        if (x == -radius) {
          printf("#\n");
        }
        else {
          printf("#");
        } x -= 1;
      }
    }
    else if (y == 1 || y == -1) {
      while ((x <= radius) && (x >= -radius)) {
        int in_circle = (x*x) + (y*y);

        if (x == -radius) {
          printf(" \n");
        }        
        else if (in_circle <= (radius*radius)) {
          printf("=");
        }
        else {
          printf(" ");
        } x -= 1;
      }
    }
    else {
      while ((x <= radius) && (x >= -radius)) {
        int in_circle = (x*x) + (y*y);
        
        if (in_circle <= (radius*radius)) {
          printf("*");
        }
        else if (x == -radius) {
          printf(" \n");
        }
        else {
          printf(" ");
        } x -= 1;
      }
    }
    
  }
}

//============================================================================
// This is the main function. DO NOT MODIFY UNLESS YOU KNOW WHAT YOU'RE DOING!
int main(void) {
  int in_diameter = read_int();
  while (READ_INT_FAIL != in_diameter) {
    saturn(in_diameter);
    in_diameter = read_int();
  }
  return 0;
}
//============================================================================