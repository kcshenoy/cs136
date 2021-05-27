// SEASHELL_READONLY

#include <stdbool.h>

// The set ADT implements a finite set.
struct set;

// set_create(capacity) creates a set with an initial capacity. After use,
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// requires: capacity must be positive
// time: O(1)
struct set *set_create(int capacity);

// set_destroy(s) frees all resoures used by s. After call, s is invalid.
// effect: frees heap memory
// time: O(1)
void set_destroy(struct set *s);

// set_is_element_of(s, value) returns true if value is present in s, and false
//   otherwise.
// time: O(log n)
bool set_is_element_of(const struct set *s, int value);

// set_add(s, value) adds value to s, if value was not present before and s is
//   not at capacity yet.
// effect: might mutate s
// time: O(n log n)
void set_add(struct set *s, int value);

// set_remove(s, value) removes value to s, if value was present before.
// effect: might mutate s
// time: O(n log n)
void set_remove(struct set *s, int value);

// set_union(s1, s2, pred) returns the union of s1 and s2. After use,
//   set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(n1 + n2)
struct set *set_union(const struct set *s1, const struct set *s2);

// set_intersection(s1, s2, pred) returns the intersection of s1 and s2. After
//   use, set_destroy must be called on returned set.
// effect: allocates heap memory
// time: O(n1 + n2)
struct set *set_intersection(const struct set *s1, const struct set *s2);

// set_print(s) prints the content of s to output.
// effect: produces output
// time: O(n)
void set_print(const struct set *s);