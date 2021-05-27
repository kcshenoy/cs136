// SEASHELL_READONLY

#include <stdbool.h>
#include "shopping_item.h"

// The set ADT implements a finite set.
struct shpg_set;

// set_create(capacity) returns a shopping set with an initial capacity. After
//   use, set_destroy must be called on returned set.
// effect: allocates heap memory
// requires: capacity must be positive
// time: O(1)
struct shpg_set *set_create(int capacity);

// set_read(capacity) returns a shopping set with an initial capacity using
//   values from input. This set can hold up to capacity items. After use,
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(i*n), where i is the number of shopping items and n is the maximum
//               length of the shopping item names
struct shpg_set *set_read(int capacity);

// set_destroy(s, list_len, shallow) frees all resoures used by s. After the
//   call, list is invalid.
// effect: frees heap memory
// time: O(n)
void set_destroy(struct shpg_set *s);

// set_is_element_of(s, value) returns true if value is present in s, and false
//   otherwise.
// time: O(log n)
bool set_is_element_of(const struct shpg_set *s, const struct shpg_item *item);

// set_add(s, value) adds value to s, if value was not present before and s is
//   not at capacity yet.
// effect: might mutate s
// time: O(n log n)
void set_add(struct shpg_set *s, struct shpg_item *item);

// set_remove(s, value) removes value to s, if value was present before.
// effect: might mutate s
// time: O(n log n)
void set_remove(struct shpg_set *s, const struct shpg_item *item);

// set_union(s, s, pred) returns the union of s and t. After use, set_destroy
//   must be called on returned set.
// effect: allocates heap memory
// time: O(m + n)
struct shpg_set *set_union(struct shpg_set *s, struct shpg_set *t);

// set_intersection(s, t, pred) returns the intersection of s and t. After use
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(m + n)
struct shpg_set *set_intersection(struct shpg_set *s, struct shpg_set *t);

// set_print(s) prints the content of s to output.
// effect: produces output
// time: O(n)
void set_print(struct shpg_set *s);