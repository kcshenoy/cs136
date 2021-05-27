// your includes go here
#include "adders.h"
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"



// This is a simple implementation of a main-function, which provides basic
//   assertion-based testing. Please feel free to modify it to fit your needs.
int main(void) {

  assert(AND(136, 42) == TRUE);
  assert(NOT(9001) == FALSE);
  assert(OR(1, 1) == TRUE);

  {
    BOOL sum = FALSE;
    BOOL carry = FALSE;
    HALF_ADDER(TRUE, TRUE, &sum, &carry);
    assert(sum == FALSE);
    assert(carry == TRUE);
  }

  {
    struct binary b = binary_make(1);
    BOOL overflow = FALSE;
    struct binary sum = NIBBLE_ADDER(&b, &b, &overflow);
    assert(sum._0 == 0);
    assert(sum._1 == 1);
    assert(sum._2 == 0);
    assert(sum._3 == 0);   
    assert(overflow == FALSE);
    
    assert(binary_to_decimal(&sum) == 2);
  }
  
  {
    struct binary c = binary_make(14);
    struct binary b = binary_make(1);
    BOOL overflow = FALSE;
    struct binary full = NIBBLE_ADDER(&b, &c, &overflow);
    assert(full._0 == 1);
    assert(full._1 == 1);
    assert(full._2 == 1);
    assert(full._3 == 1);
    assert(overflow == FALSE);
  }
  
  {
    struct binary c = binary_make(14);
    struct binary b = binary_make(2);
    BOOL overflow = FALSE;
    struct binary full_oflow = NIBBLE_ADDER(&b, &c, &overflow);
    assert(full_oflow._0 == 0);
    assert(full_oflow._1 == 0);
    assert(full_oflow._2 == 0);
    assert(full_oflow._3 == 0);
    assert(overflow == TRUE);
  }
    

  return EXIT_SUCCESS;
}