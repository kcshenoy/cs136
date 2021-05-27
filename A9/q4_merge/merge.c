/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from the following sources:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include "merge.h"
#include "cs136-trace.h"

// merge(first_array,first_len,second_array,second_len) 
//   takes two arrays (first_array and second_array) that 
//   contain pointers to strings. The arrays and the 
//   strings are all heap allocated. The strings in each 
//   argument array are already lexicographically sorted. 
//   The function returns a new heap allocated array of 
//   pointers to the original strings, sorted 
//   lexicographically.
// Important implementation note 1: The function should 
//   NOT make copies of the strings. 
// Important implementation note 2: The function should 
//   NOT mutate the arguments in any way.
// requires: first_array and second_array are not null. 
//   strings within first_array and second_array are not 
//   null
// time: O(n), n is the SUM of first_len and second_len
char **merge(char **first_array, const int first_len, 
             char **second_array, const int second_len){
  assert(first_array);
  assert(second_array);
  assert(first_len >= 0);
  assert(second_len >= 0);
  
  int i = 0;
  int j = 0;
  int ind = 0;
  int len = first_len + second_len; // initialize length of merge
  char **merged = malloc(len*10);   // initialize merged array
  
  while (i < first_len && j < second_len) {

    assert(first_array[i]);  // string not null in first_array
    assert(second_array[j]); // string not null in second_array
    
    // if word in first_array comes before word in second_array,
    // add first_array word to merge and continue searching through
    // first_array
    if (strcmp(first_array[i], second_array[j]) == -1) {
      merged[ind] = first_array[i];
      i++;
      ind++;
    }
    // if word in second_array comes before word in first_array,
    // add second_array word to merge and continue searching through
    // second_array
    else if (strcmp(first_array[i], second_array[j]) == 1) {
      merged[ind] = second_array[j];
      j++;
      ind++;
    }
    // if words are equal, add both to merged and continue
    else if (strcmp(first_array[i], second_array[j]) == 0) {
      merged[ind] = first_array[i];
      merged[ind+1] = second_array[j];
      j++;
      i++;
      ind+=2;
    }
  }
  
  // if first_array has not been fully searched, add to merged:
  if (i < first_len) {
    while (i < first_len){
      assert(first_array[i]);
      merged[ind] = first_array[i];
      ind++;
      i++;
    }
  }
  
  // if second_array has not been fully searched, add to merged:
  if (j < second_len) {
    while (j < second_len) {
      assert(second_array[j]);
      merged[ind] = second_array[j];
      ind++;
      j++;
    }
  }

  return merged;
}