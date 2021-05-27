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

// your includes go here
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "cs136-trace.h"
#include "array_tools.h"

// swap(px, py) swaps px and py in their array
// effects: modifies *px and *py
void swap(int *px, int *py) {
  int temp = *px;
  *px = *py;
  *py = temp;
}

// cocktailshaker_sort(data, data_len) sorts data with
// cocktail shaker sort
// time: O(n^2)
// effects: may mutate data
void cocktailshaker_sort(int *data, const int data_len) {
  bool sorted = true;
  int i = 0;
  int first = 0;  // index to start looping forward
  int new_len = data_len; // index to loop backwards (since len
                          // is const and we need it to change)
  array_print(data, data_len);

  while (sorted) {
    
    sorted = false; // if false after loop, data is sorted already
    
    // shift largest to the end:
    for (i = first; i < new_len-1; i++) {
      if (data[i] > data[i+1]) {
        swap(&data[i], &data[i+1]);
        sorted = true;
      }
    }    
    // if false, nothing was sorted (already sorted)
    if (sorted == false) {
      break;
    }    
    array_print(data, data_len); // print once element is at end
    new_len -= 1;  // subtract 1 from length since last element is sorted
    
    sorted = false; // reinitialize for next loop
    
    // shift smallest to start
    for (i = new_len-1; i > first; i--) {
      sorted = false;
      
      if (data[i] > data[i+1]) {
        swap(&data[i], &data[i+1]);
        sorted = true;
      }
    }
    // if false, nothing was sorted (already sorted)
    if (sorted == false) {
      break;
    }   
    array_print(data, data_len);
    first += 1; // add 1 to first since first element is already sorted
  }
}
        
          
          
          
          
          