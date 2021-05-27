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
#include "stack.h"
#include "cs136-trace.h"
#include "array_tools.h"

// swap(px, py) swaps px and py in their array
// effects: modifies *px and *py
void swap(int *px, int *py) {
  int temp = *px;
  *px = *py;
  *py = temp;
}

// quick_sort(data, data_len) sorts data using a quick sort algorithm
// time: O(nlogn)
// effects: may modify data
void quick_sort(int *data, const int data_len) {
  int stack[MAX_LEN];   // treat array as stack
  int top = 1;

  stack[MAX_LEN-top] = data_len-1; // push right-most index
  top += 1;
  stack[MAX_LEN-top] = 0;          // push left-most index

  array_print(data, data_len);

  while (top != 1) {

    int first = stack[MAX_LEN-top]; // pop left index
    top -= 1;
    int last = stack[MAX_LEN-top];  // pop right index

    // if our right < left, continue without pushing onto stack
    if (last <= first) {
      continue;
    }

    int pivot = data[first];
    int pos = last;

    // move all elements > than pivot to the end, and <= the
    // pivot to the left
    for (int i = last; i > first; --i) {
      if (data[i] > pivot) {
        swap(&data[pos], &data[i]);
        --pos;
      }
    }

    swap(&data[first], &data[pos]); // switch pivot to correct spot

    // stack new "divide and conquer" indices:
    stack[MAX_LEN-top] = pos-1;
    top += 1;
    stack[MAX_LEN-top] = first;
    top += 1;
    stack[MAX_LEN-top] = last;
    top += 1;
    stack[MAX_LEN-top] = pos+1;
    array_print(data, data_len);
    //swapped = false;
  }
}

