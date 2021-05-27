// your includes go here

#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "boolean.h"


// This is a simple implementation of a main-function, which provides basic
//   assertion-based testing. Please feel free to modify it to fit your needs.
int main(void) {

  assert(AND(136, 42) == TRUE);
  assert(AND(136, 0) == FALSE);
  assert(AND(0, 42) == FALSE);
  assert(AND(0, 0) == FALSE);
  assert(OR(136, 0) == TRUE);
  assert(OR(136, 42) == TRUE);
  assert(OR(0, 42) == TRUE);
  assert(OR(0, 0) == FALSE);
  assert(XOR(0, 0) == FALSE);
  assert(XOR(1, 0) == TRUE);
  assert(XOR(0, 1234798) == TRUE);
  assert(XOR(12938, 2193487) == FALSE);
  assert(NOR(136, 0) == FALSE);
  assert(NOR(136, 42) == FALSE);
  assert(NOR(0, 42) == FALSE);
  assert(NOR(0, 0) == TRUE);
  assert(XNOR(136, 42) == TRUE);
  assert(XNOR(136, 0) == FALSE);
  assert(XNOR(0, 42) == FALSE);
  assert(XNOR(0, 0) == TRUE);
  assert(NAND(0, 0) == TRUE);
  assert(NAND(1, 0) == TRUE);
  assert(NAND(0, 1) == TRUE);
  assert(NAND(1, 1) == FALSE);
  assert(NOT(9001) == FALSE);
  assert(NOT(0) == TRUE);

  return EXIT_SUCCESS;
}