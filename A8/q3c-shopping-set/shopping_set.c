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

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////

#include <stdbool.h>
#include <stdlib.h>
#include "shopping_item.h"
// your includes go here

// suggestion for a struct shpg_set; you may change this struct if necessary
struct shpg_set {
  struct shpg_item **data;
  int len_max;
  int len_cur;
};

struct shpg_set *set_create(int capacity) {
  // your code goes here
  return NULL;
}

struct shpg_set *set_read(int capacity) {
  // your code goes here
  return NULL;
}

void set_destroy(struct shpg_set *s) {
  // your code goes here
}

bool set_is_element_of(const struct shpg_set *s, const struct shpg_item *item) {
  // your code goes here
  return false;
}

void set_add(struct shpg_set *s, struct shpg_item *item) {
  // your code goes here
}

void set_remove(struct shpg_set *s, const struct shpg_item *item) {
  // your code goes here
}

struct shpg_set *set_union(struct shpg_set *s1, struct shpg_set *s2) {
  // your code goes here
  return NULL;
}

struct shpg_set *set_intersection(struct shpg_set *s1, struct shpg_set *s2) {
  // your code goes here
  return NULL;
}

void set_print(struct shpg_set *s) {
  // your code goes here
}