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

// xbox(width, height) draws a box with a given width and height and draws an
//   'X' in its centre.
// requires: width and height must both be odd
//           width and height must both be larger than 1
void xbox(int width, int height) {
  for(int i = 1; i <= height; i += 1) { 
    int j = 1;
    
    if ((i == 1) || (i == height)) {
      while (j <= width) {
        if (j == 1) {
          printf("+");
        } else if (j == width) {
          printf("+\n");
        } else {
          printf("-");
        }
        j+=1;
      }
    }
    
    else if (i == (height/2 + 1)) {
      while (j <= width) {
        if (j == (width/2) + 1) {
          printf("X");
        } else if (j == 1) {
          printf("|");
        } else if (j == width) {
          printf("|\n");
        } else {
          printf(" ");
        }
        j += 1;
      }
    }
    
    else if (!((i == 1) || (i == height))) {
      while (j <= width) {
        if (j == 1) {
          printf("|");
        } else if (j == width) {
          printf("|\n");
        } else {
          printf(" ");
        }
        j += 1;
      }
    }
  }
}
    

//============================================================================
// This is the main function. DO NOT MODIFY UNLESS YOU KNOW WHAT YOU'RE DOING!
int main(void) {
  int in_width = read_int();
  int in_height = read_int();
  while ((READ_INT_FAIL != in_width) && (READ_INT_FAIL != in_height)) {
    xbox(in_width, in_height);
    in_width = read_int();
    in_height = read_int();
  }
  return 0;
}
//============================================================================
