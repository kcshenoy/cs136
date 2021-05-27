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

// shell_sort(data, data_len) sorts data using shell sort:
// time: O(n^2) ---> (O(n^3/2))
// effects: mutates data
void shell_sort(int *data, const int data_len) {
  assert(data_len > 0);
  int dist = 0;      // intialize dist value
  int i = 0;      
  int j = 0;
  int temp = 0;      // store temporary val to compare 
  int dist_val = 0;  // keep track of dist to avoid infinite loop
  
  
  for (dist = data_len; dist >= 1; dist = (2*(dist/4) + 1)) {
    
    // if dist == 1, break to avoid infinite loop
    if (dist_val == 1) {
      break;
    }
    
    else {
      dist_val = dist;
      
      // loop for every value in data
      for (i = dist; i < data_len; i++) {
        temp = data[i];
        
        // loop for values to the right of temp which are > temp
        for (j = i; j >= dist && temp < data[j - dist]; j -= dist) {
          data[j] = data[j - dist];
        }
        data[j] = temp;
      } array_print(data, data_len); // print each iteration
    }
  }
}