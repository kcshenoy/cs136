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

// cube(dimension) draws a perspective cube with dimension as its length and
// height, and dimension / 2 (rounded up) as depth.
// requires: dimension must be odd and dimension > 3
void cube(int dimension) {
  int width = (dimension/2)+1;
  
  printf("+");
  for (int i = 0; i < dimension-2; i += 1) {
    printf("-");
  }
  printf("+\n");

  for (int i = 0; i < width-2; i += 1) {
    printf("|");
    for (int j = 0; j < dimension-2; j += 1) {
      printf(" ");
    } printf("|");
    for (int j = 0; j < i; j += 1) {
      printf(" ");
    } printf("\\\n");
  }

  printf("|");
  for (int i = 0; i < dimension-2; i += 1) {
    printf(" ");
  } printf("|");
  for (int i = 0; i < width-2; i += 1) {
    printf(" ");
  } printf("+\n");

  //print line with | '|'
  for (int i = 1 + (width-2); i < dimension-2; i += 1) {
    printf("|");
    for (int j = 0; j < dimension-2; j += 1) {
      printf(" ");
    } printf("|");
    for (int j = 0; j < width-2; j += 1) {
      printf(" ");
    } printf("|\n");
  }

  printf("+");
  for (int i = 0; i < dimension-2; i += 1) {
    printf("-");
  } printf("+");
  for (int j = 0; j < width-2; j += 1) {
    printf(" ");
  } printf("|\n");

  for (int i = 1; i < width-1; i += 1) {
    for (int j = 0; j < i; j += 1) {
      printf(" ");
    } printf("\\");
    for (int j = 0; j < dimension-2; j += 1) {
      printf(" ");
    } printf("\\");
    for (int j = 0; j < width-2-i; j += 1) {
      printf(" ");
    } printf("|\n");
  }

  for (int i = 1; i < width; i += 1) {
    printf(" ");
  } printf("+");
  for (int i = 0; i < dimension-2; i += 1) {
    printf("-");
  } printf("+\n");
}


//============================================================================
// This is the main function. DO NOT MODIFY UNLESS YOU KNOW WHAT YOU'RE DOING!
int main(void) {
  int in_dimension = read_int();
  while (READ_INT_FAIL != in_dimension) {
    cube(in_dimension);
    in_dimension = read_int();
  }
  return 0;
}
//============================================================================
