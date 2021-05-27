// SEASHELL_READONLY

#include "shopping_item.h"

// list_read(list, capacity) creates a shopping list using values from input.
//   This list can hold up to capacity items. The function returns the number
//   of read shpg_item.
// effect: may allocate heap memory
//         may modify **item
// time: O(i*n), where i is the number of shopping items and n is the maximum
//               length of the shopping item names
int list_read(struct shpg_item ***list, int capacity);

// list_destroy(list, list_len, shallow) frees all resoures used by list. After
//   the call, list is invalid.
// effect: frees heap memory
// time: O(n)
void list_destroy(struct shpg_item **list, int list_len);

// list_sort(list, list_len, comp) sorts list using comp as a comparator
//   function for the sort.
// effect: modifies list
// time: O(n^2)
void list_sort(struct shpg_item **list, int list_len,
               int(*comp)(const struct shpg_item *a, const struct shpg_item *b));

// comp_by_priority_name(i1, i2) returns -1 if the priority of i1 is higher than
//   the one of i2; 1 if the priority of i1 is lower than the one of i2. If the
//   priorities are equal, the function returns -1 if the name of i1 comes
//   before the one of i2; 1 if the name of i1 comes after the one of i2; and 0
//   if the names are the same (ignoring case).
// time: O(n) where n is the minimum length of the names of i1, i2
int comp_by_priority_name(const struct shpg_item *a, const struct shpg_item *b);

// list_print(list, list_len) prints list.
// effect: produces output
// time: O(i*n), where i is the number of shopping items and n is the maximum
//               length of the shopping item names
void list_print(struct shpg_item **list, int list_len);