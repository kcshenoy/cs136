// SEASHELL_READONLY

#include <stdbool.h>

// === LINKED LIST ==========================================================

// Represents a linked list
struct llist;

// list_create(print, destroy) creates a linked list with the functin print for
//   printing and destroy for destroying data. Caller must destroy the returned
//   list.
// effects: allocates heap memory
// time: O(1)
struct llist *list_create(void(*print)(const void *data), void(*destroy)(void *data));

// list_destroy(list) frees all resources used by list; list becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates list
// time: O(n)
void list_destroy(struct llist *list);

// list_append(list, str) appends value to list (i.e., adds str to the end
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(n+m), where n is the length of list and m is the length of str
void list_append(struct llist *list, void *data);

// list_remove_front(list) remove the item from the front of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
void *list_remove_front(struct llist *list);

// list_peek_front(list) returns the first item in list.
// requires: list must not be empty
// time: O(1)
const void *list_peek_front(const struct llist *list);

// list_is_empty(list) returns true of list is empty, and false otherwise
// time: O(1)
bool list_is_empty(const struct llist *list);

// list_print(list) prints the content of list to the console
// effect: prints to the console
// time O(n)
void list_print(const struct llist *list);

// === ITERATOR ==============================================================

// Represents an Iterator
struct iter;

// iter_get(list) returns an iterator for a list. The iterator self-destructs
//   once it reaches its end.
// effects: allocates heap memory.
// requires: list must not be empty
// time: O(1)
struct iter *iter_get(const struct llist *list);

// iter_current(e) returns the current element of e.
// time: O(1)
const void *iter_current(const struct iter *e);

// iter_next(e) moves to the next element and returns true if there is such an
//   element. If not, the functions frees e and returns false; in this case, e
//   becomes invalid.
// effects: might free heap memory
//          might invalidate e
// time: O(1)
bool iter_next(struct iter *e);