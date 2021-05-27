// SEASHELL_READONLY

#include <stdbool.h>

// The shpg_item ADT implements a single item to shop for.
struct shpg_item;

// item_create(name, amount, priority, price) creates a shopping item with a
//   name, the amount to purchase, the price of one unit, and the priority of
//   the purchase. After use, item_destroy must be called on returned shpg_item.
// effect: allocates heap memory
// requires: price must be positive
//           amount must be non-negative
//           priority must be between 1 and 10 (both inclusive)
// time: O(n), where n is the length of name
struct shpg_item *item_create(const char *name, int amount, int price, int priority);

// item_clone(item) clones an item. After use, item_destroy must be called on
//   returned shpg_item.
// effect: allocates heap memory
// time: O(n), where n is the length of name
struct shpg_item *item_clone(const struct shpg_item *item);

// item_read(item) creates a shopping item using value from input. The format
//   is: name amout price priority (<string> <int> <int> <int>). The function
//   returns the number of read shpg_item, i.e., 1 if it was succesful, and 0 if
//   it failed.
// effect: may allocate heap memory
//         may modify *item
// time: O(n), where n is the length of name
int item_read(struct shpg_item **item);

// item_destroy(item) frees all resoures used by item. After the call, item is
//   invalid.
// effect: frees heap memory
// time: O(1)
void item_destroy(struct shpg_item *item);

// item_combine(dest, source) includes the item source into dest, if they have
//   the same name.
// effect: may mutate dest
// time: O(max(m, n)) where m, n are the length of the names of dest, source
void item_combine(struct shpg_item *dest, const struct shpg_item *source);

// item_print(item) prints item.
// effect: produces output
// time: O(n), where n is the length of the name of item
void item_print(const struct shpg_item *item);

// === Compare functions ======================================================

// comp_by_priority(i1, i2) returns -1 if the priority of i1 is higher than the
//   one of i2; 1 if the priority of i1 is lower than the one of i2; and 0 if
//   the priorities are the same.
// time: O(1)
int comp_by_priority(const struct shpg_item *i1, const struct shpg_item *i2);

// comp_by_name(i1, i2) returns -1 if the name of i1 comes before the one of
//   i2; 1 if the name of i1 comes after the one of i2; and 0 if the names are
//   the same (ignoring case).
// time: O(n) where n is the minimum length of the names of i1, i2
int comp_by_name(const struct shpg_item *i1, const struct shpg_item *i2);