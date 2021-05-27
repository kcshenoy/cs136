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

#include <stdlib.h>
#include "cs136-trace.h"
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include "llist.h"
//#include "dllist.h"
// your includes go here

// === HELPER STRUCT AND FUNCTIONS ===========================================

// Represents a node in a linked list
struct lnode {
  void *data;
  struct lnode *next;
};

// node_create(data) creates a node. Caller must free the returned node.
// effect: allocates heap memory
// time: O(1)
static struct lnode *node_create(void *data) {
  assert(data);
  struct lnode *node = malloc(sizeof(struct lnode));
  assert(node);
  node->data = data;
  node->next = NULL;
  return node;
}

// node_destroy(node, destroy) frees the node, and frees its data using destroy;
//   node becomes invalid after this call.
// effects: frees heap memory
//          invalidates node
// time: O(1)
static void node_destroy(struct lnode *node, void(*destroy)(void *)) {
  assert(node);
  destroy(node->data);
  free(node);
}

// === LIST STRUCT AND FUNCTIONS =============================================

// Represents a linked list
struct llist {
  struct lnode *front;
  // insert more fields here if necessary
  void (*print)(const void *);
  void (*destroy)(void *);
};

// list_create(print, destroy) creates a linked list with the functin print for
//   printing and destroy for destroying data. Caller must destroy the returned
//   list.
// effects: allocates heap memory
// time: O(1)
struct llist *list_create(void(*print)(const void *) , void(*destroy)(void *)) {
  struct llist *new_list = malloc(sizeof(struct llist));
  new_list->front = NULL;
  new_list->print = print;
  new_list->destroy = destroy;
  return new_list;
}

// list_destroy(list) frees all resources used by list; list becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates list
// time: O(n)
void list_destroy(struct llist *list) {
  assert(list);
  struct lnode *cur = list->front;
  while (cur != NULL) {
    struct lnode *tmp = cur;
    cur = cur->next;
    node_destroy(tmp, list->destroy);
  }
  free(list);
}

// list_append(list, str) appends value to list (i.e., adds str to the end
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(n+m), where n is the length of list and m is the length of str
void list_append(struct llist *list, void *data) {
  assert(list);
  assert(data);
  
  // initialize current node:
  struct lnode *cur = list->front;
  
  // if list is empty, create new_node for front:
  if (cur == NULL) {
    list->front = node_create(data);
  } 
  else {
    // loop until end of list:
    while (cur->next != NULL) {
      cur = cur->next;
    }
    // cur(last)->next is now our new node:
    cur->next = node_create(data);
  }
}

// list_is_empty(list) returns true of list is empty, and false otherwise
// time: O(1)
bool list_is_empty(const struct llist *list) {
  assert(list);
  return list->front == NULL;
}

// list_remove_front(list) remove the item from the front of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
void *list_remove_front(struct llist *list) {
  assert(list);
  assert(list_is_empty(list) == false);
  struct lnode *cur = list->front;
  void *ret = list->front->data;  // store data from node
  list->front = list->front->next;
  free(cur);
  return ret;
}

// list_peek_front(list) returns the first item in list.
// requires: list must not be empty
// time: O(1)
const void *list_peek_front(const struct llist *list) {
  assert(list);
  return list->front->data;
}

// list_peek_front(list) returns the first item in list.
// requires: list must not be empty
// time: O(1)
void list_print(const struct llist *list) {
  assert(list);
  printf("[FRONT]: ");
  struct iter *e = iter_get(list);
  do {
    (list->print)(iter_current(e));
  } while (iter_next(e));
  printf("[BACK]\n");
}

// === ITERATOR STRUCT AND FUNCTIONS =========================================

// Represents an Iterator
struct iter {
  struct lnode *cur;
};

// iter_get(list) returns an iterator for a list. The iterator self-destructs
//   once it reaches its end.
// effects: allocates heap memory.
// requires: list must not be empty
// time: O(1)
struct iter *iter_get(const struct llist *list) {
  assert(list);
  struct iter *new_iter = malloc(sizeof(struct iter));
  new_iter->cur = list->front;
  return new_iter;
}

// iter_current(e) returns the current element of e.
// time: O(1)
const void *iter_current(const struct iter *e) {
  assert(e);
  return e->cur->data;
}

// iter_next(e) moves to the next element and returns true if there is such an
//   element. If not, the functions frees e and returns false; in this case, e
//   becomes invalid.
// effects: might free heap memory
//          might invalidate e
// time: O(1)
bool iter_next(struct iter *e) {
  e->cur = e->cur->next;

  if (e->cur == NULL) {
    free(e->cur);
    free(e);
    return false;
  }

  return true;
}