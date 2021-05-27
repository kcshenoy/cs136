// your includes go here
#include "adders.h"
#include "arc-adder.h"
#include "boolean.h"
#include "binary.h"
#include <assert.h>
#include "cs136-trace.h"
#include <stdlib.h>
#include <stdio.h>
// This is a simple implementation of a main-function, which provides basic
//   assertion-based testing. Please feel free to modify it to fit your needs.
int main(void) {

  {
    BOOL overflow = FALSE;
    struct binary p = binary_make(42);
    struct binary q = binary_make(19);
    struct binary sum = ARC_ADDER(&p, &q, &overflow);
    assert(binary_to_decimal(&sum) == 61);
    assert(overflow == FALSE);
  }

  {
    BOOL overflow = FALSE;
    struct binary start1 = binary_make(16);
    struct binary start2 = binary_make(16);
    struct binary sum2 = ARC_ADDER(&start1, &start2, &overflow);
    assert(binary_to_decimal(&sum2) == 32);
    assert(overflow == TRUE);
  }
    
    

      return EXIT_SUCCESS;
  }