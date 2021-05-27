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

#include "shopping_list.h"
// your includes go here
#include <assert.h>
#include "cs136-trace.h"
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "shopping_item.h"

// list_read(list, capacity) creates a shopping list using values from input.
//   This list can hold up to capacity items. The function returns the number
//   of read shpg_item.
// effect: may allocate heap memory
//         may modify **item
// time: O(i*n), where i is the number of shopping items and n is the maximum
//               length of the shopping item names
int list_read(struct shpg_item ***list, int capacity) {
  int i = 0;
  int count = 0;
  struct shpg_item **l = malloc(sizeof(struct shpg_item *) * capacity);

  // increment count for every successful struct created
  for (i = 0; i < capacity; i++) {
    if (item_read(&l[count]) == 1) {
      count += 1;
    }
    else {
      continue;
    }
  }
  *list = l; // list now points to l
  return count;
}

// list_print(list, list_len) prints list.
// effect: produces output
// time: O(i*n), where i is the number of shopping items and n is the maximum
//               length of the shopping item names
void list_print(struct shpg_item **list, int list_len) {
  printf("\n");
  int i = 0;

  for (i = 0; i < list_len; i++) {
    item_print(list[i]);
  }
}

// list_destroy(list, list_len, shallow) frees all resoures used by list. After
//   the call, list is invalid.
// effect: frees heap memory
// time: O(n)
void list_destroy(struct shpg_item **list, int list_len) {
  int i = 0;
  for (i = 0; i < list_len; i++) {
    item_destroy(list[i]);
  }
  free(list);
}

// comp_by_priority_name(i1, i2) returns -1 if the priority of i1 is higher than
//   the one of i2; 1 if the priority of i1 is lower than the one of i2. If the
//   priorities are equal, the function returns -1 if the name of i1 comes
//   before the one of i2; 1 if the name of i1 comes after the one of i2; and 0
//   if the names are the same (ignoring case).
// time: O(n) where n is the minimum length of the names of i1, i2
int comp_by_priority_name(const struct shpg_item *a, const struct shpg_item *b) {
  int p = comp_by_priority(a, b);
  int name = comp_by_name(a, b);

  if (p != 0) {
    return p;
  }
  else if (name != 0) {
    return name;
  }

  return 0;
}

// swap(a, b) makes a point to what b points to, and b point
// to what a points to
// requires: a and b not NULL
// effects: modifies *px and *py
void swap(struct shpg_item **a, struct shpg_item **b) {
  assert(a != NULL);
  assert(b != NULL);
  struct shpg_item *temp = *a;
  *a = *b;
  *b = temp;
}

// partition(low, high, comp) takes low as its pivot and rearranges
// so that pivot is in the right place
// requires: low and high not NULL
struct shpg_item **partition (struct shpg_item **low, struct shpg_item **high, int (*comp)(const struct shpg_item *a, const struct shpg_item *b)) {
  assert(low != NULL);
  assert(high != NULL);

  struct shpg_item **pivot = low; // set pivot
  struct shpg_item **p = high;    // set high val
  struct shpg_item **move = high; // set val you want to swap

  // rearrange all less than pivot to left, all greater to right
  for (move; move > low; move--) {
    // if pivot comes after move, swap:
    if (comp(*move, *pivot) == 1) {
      swap(move, p);
      p--;
    }
    continue;
  }
  swap(p, pivot); // 
  return p;
}

// quick_sort(low, high, comp) applies quick sort with comp
// as a predicate function
// requires: a and b not NULL
void quick_sort(struct shpg_item **low, struct shpg_item **high, int (*comp)(const struct shpg_item *a, const struct shpg_item *b)) {
  assert(low != NULL);
  assert(high != NULL);

  // partition, then sort using divide and conquer:
  if (low < high) {
    struct shpg_item **pivot = partition(low, high, comp);
    quick_sort(low, pivot-1, comp);
    quick_sort(pivot + 1, high, comp);
  }
}


// list_sort(list, list_len, comp) sorts list using comp as a comparator
//   function for the sort.
// effect: modifies list
// time: O(n^2)
void list_sort(struct shpg_item **list, int list_len, int(*comp)(const struct shpg_item *a, const struct shpg_item *b)) {
  assert(comp);
  assert(*list != NULL);
  assert(list_len > 0);
  quick_sort(list, list + list_len-1, comp);
}