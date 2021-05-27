// SEASHELL_READONLY

#include <stdbool.h>

// === DOUBLY LINKED LIST ====================================================

// Represents a doubly linked list
struct dllist;

// list_create() creates a doubly linked list. Caller must free the returned
//   list.
// effects: allocates heap memory
// time: O(1)
struct dllist *list_create();

// list_destroy(list) frees all resources used by list; list becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates list
// time: O(n)
void list_destroy(struct dllist *list);

// list_append(list, str) appends value to list (i.e., adds str to the end
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(m), where m is the length of str
void list_append(struct dllist *list, const char *str);

// list_prepend(list, str) prepends value to list (i.e., adds str to the front
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(m), where m is the length of str
void list_prepend(struct dllist *list, const char *str);

// list_insert_at(list, str, idx) inserts str at idx into list. Index idx
//   follows array numbering.
// effects: allocates heap memory
// requires: str must be a valid C string
//           idx must be between 0 and list length
// time: O(n+m), where n is the length of list and m is the length of str
void list_insert_at(struct dllist *list, const char *str, int idx);

// list_remove_front(list) remove the item from the front of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
char *list_remove_front(struct dllist *list);

// list_remove_back(list) removes the item from the back of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
char *list_remove_back(struct dllist *list);

// list_remove_at(list, idx) removes the item at idx from the list and returns
//   it. Index idx follows array numbering. Caller must free the returned
//   string.
// effects: frees heap memory
// requires: list must not be empty
//           idx must be between 0 and list length - 1
// time: O(n)
char *list_remove_at(struct dllist *list, int idx);

// list_peek_front(list) returns the first item in list.
// requires: list must not be empty
// time: O(1)
const char *list_peek_front(const struct dllist *list);

// list_peek_back(list) returns the last item in list.
// requires: list must not be empty
// time: O(1)
const char *list_peek_back(const struct dllist *list);

// list_is_empty(list) returns true of list is empty, and false otherwise.
// time: O(1)
bool list_is_empty(const struct dllist *list);

// list_print(list, dir) prints the content of list to the console, either
//   in dir FRONT_TO_BACK or BACK_TO_FRONT.
// effect: prints to the console
// time O(n)
void list_print(const struct dllist *list, int dir);

// === ITERATOR ==============================================================

// ITER_BACK_TO_FRONT indicates that the iterator traverses the underlying
//   data front to back
extern const int ITER_FRONT_TO_BACK;

// ITER_BACK_TO_FRONT indicates that the iterator traverses the underlying
//   data back to front
extern const int ITER_BACK_TO_FRONT;

// Represents an Iterator
struct iter;

// iter_get(list, dir) returns an iterator for a list. The iterator traverses
//   the list either BACK_TO_FRONT or FRONT TO_BACK. The iterator self-destructs
//   once it reaches its end.
// effects: allocates heap memory.
// requires: list must not be empty
//           dir must be ITER_FRONT_TO_BACK or ITER_BACK_TO_FRONT
// time: O(1)
struct iter *iter_get(const struct dllist *list, int dir);

// iter_current(e) returns the current element of e.
// time: O(1)
const char *iter_current(const struct iter *e);

// iter_next(e) moves to the next element and returns true if there is such an
//   element. If not, the functions frees e and returns false; in this case, e
//   becomes invalid.
// effects: might free heap memory
//          might invalidate e
// time: O(1)
bool iter_next(struct iter *e);