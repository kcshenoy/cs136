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

#include <stdbool.h>
#include <stdlib.h>
// your includes go here
#include "cs136-trace.h"
#include "merge_sort.h"
#include <stdio.h>
#include <assert.h>

// suggestion for a struct set; you may change this struct if necessary
struct set {
  int *data;
  int len_max;
  int len_cur;
};

// set_create(capacity) creates a set with an initial capacity. After use,
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// requires: capacity must be positive
// time: O(1)
struct set *set_create(int capacity) {
  assert(capacity > 0);
  struct set *s = malloc(sizeof(struct set));
  s->len_max = capacity;
  s->len_cur = 0;
  s->data = malloc(s->len_max * sizeof(int)); 
  return s;
}

// set_destroy(s) frees all resoures used by s. After call, s is invalid.
// effect: frees heap memory
// time: O(1)
void set_destroy(struct set *s) {
  free(s->data);
  free(s);
}

// set_is_element_of(s, value) returns true if value is present in s, and false
//   otherwise.
// time: O(log n)
bool set_is_element_of(const struct set *s, int value) {
  int right = s->len_cur; // initialize right index
  int left = -1;          // initialize left index
  int mid = 0;            // initialize middle index

  // loop "divide and conquer" approach for s->data
  while (right > left + 1) {
    mid = (right+left)/2;

    // if value > middle number, loop for right side of s->data
    if (s->data[mid] < value) {
      left = mid;
    }
    // else loop for left side
    else {
      right = mid;
    }
  }

  // if right has changed, and value has been found,
  // return true
  if (right < s->len_cur && s->data[right] == value) {
    return true;
  }

  return false;
}

// set_add(s, value) adds value to s, if value was not present before and s is
//   not at capacity yet.
// effect: might mutate s
// time: O(n log n)
void set_add(struct set *s, int value) {   
  if (set_is_element_of(s, value) == false) {
    if (s->len_cur != s->len_max) {
      s->len_cur += 1;
      s->data[s->len_cur-1] = value;
      merge_sort(s->data, s->len_cur);
    }
  }

}

// set_remove(s, value) removes value to s, if value was present before.
// effect: might mutate s
// time: O(n log n)
void set_remove(struct set *s, int value) {
  int i = 0;
  int j = 0;
  
  for (i = 0; i < s->len_cur; i++) {
    if (s->data[i] == value) {
      break;
    }
  }

  // if value exists, remove value and move all numbers above
  // value back 1 index, and reduce len_cur:
  if (i != s->len_cur) {
    s->len_cur--;
    for (j = i; j < s->len_cur; j++) {
      s->data[j] = s->data[j+1];
    }
  }
}

// set_union(s1, s2, pred) returns the union of s1 and s2. After use,
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(n1 + n2), where n1 = length of s1->data
//                         n2 = length of s2->data
struct set *set_union(const struct set *s1, const struct set *s2) {
  struct set *u = malloc(sizeof(struct set));
  u->data = malloc(sizeof(int) * (s1->len_cur + s2->len_cur));
  u->len_max = s1->len_cur + s2->len_cur; // max size unique set
  int i = 0;
  int j = 0;
  int u_ind = 0;  // initialize index for u->data[]

  // loop through both arrays until end of one or the other:
  while (i < s1->len_cur && j < s2->len_cur) {

    // while s1->data elements < s2->data element at j,
    // keep adding to u->data:
    if (s1->data[i] < s2->data[j]) {
      u->data[u_ind] = s1->data[i];
      i++;
      u_ind++;
    }

    // while s2->data elements <= s1->data element at i,
    // keep adding to u->data:
    else if (s2->data[j] < s1->data[i]) {
      u->data[u_ind] = s2->data[j];
      j++;
      u_ind++;
    }
    
    else if (s2->data[j] == s1->data[i]) {
      u->data[u_ind] = s1->data[i];
      j++;
    }
  }

  // check the rest of s1->data if it has not been read yet
  if (i < s1->len_cur) {
    while (i < s1->len_cur) {
      // add if previous element != current
      if (u->data[u_ind-1] != s1->data[i]) {
        u->data[u_ind] = s1->data[i];
        u_ind++;
      }
      i++;
    }
  }

  // check the rest of s2->data if it has not been read yet
  else if (j < s2->len_cur) {
    while (j < s2->len_cur) {
      // add if previous element != current
      if (u->data[u_ind-1] == s2->data[j]) {
        u->data[u_ind] = s2->data[j];
        u_ind++;
      }
      j++;
    }
  }

  u->len_cur = u_ind; // update len_cur

  return u;
}

// set_intersection(s1, s2, pred) returns the intersection of s1 and s2. After
//   use, set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(n1 + n2), where n1 = length of s1->data
//                         n2 = length of s2->data
struct set *set_intersection(const struct set *s1, const struct set *s2) {
  struct set *u = malloc(sizeof(struct set));
  u->data = malloc(sizeof(int) * (s1->len_cur + s2->len_cur));
  u->len_max = s1->len_cur + s2->len_cur;
  int i = 0;
  int j = 0;
  int u_ind = 0;

  // assign max_len to the lowest len_cur
  if (s1->len_cur <= s2->len_cur) {
    u->len_max = s1->len_cur;
  }
  else {
    u->len_max = s2->len_cur;
  }

  while (i < s1->len_cur && j < s2->len_cur) {

    // loop s1->data elements < s2->data element at j,    
    if (s1->data[i] < s2->data[j]) {
      i++;
    }

    // loop s2->data elements < s1->data element at i,
    else if (s2->data[j] < s1->data[i]) {
      j++;
    }

    // if elements are equal, add to u->data
    else if (s2->data[j] == s1->data[i]) {
      u->data[u_ind] = s2->data[j];
      u_ind++;
      i++;
      j++;
    }
  }

  u->len_cur = u_ind; // update len_cur

  return u;
}

// set_print(s) prints the content of s to output.
// effect: produces output
// time: O(n)
void set_print(const struct set *s) {
  int i = 0;

  // if current or max length = 0, print empty:
  if (s->len_cur == 0 || s->len_max == 0) {
    printf("[%d/%d: empty]\n", s->len_cur, s->len_max);
  }

  else {
    printf("[%d/%d:", s->len_cur, s->len_max);

    for (i = 0; i <= s->len_cur-1; i++) {

      // for last number, print without ","
      if (i == s->len_cur-1) {
        printf(" %d", s->data[i]);
        break;
      }
      printf(" %d,", s->data[i]);
    }

    printf("]\n");
  }

}