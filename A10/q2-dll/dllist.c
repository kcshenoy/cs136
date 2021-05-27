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

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dllist.h"
#include "cs136-trace.h"

// === HELPER STRUCT AND FUNCTIONS ===========================================

// Represents a node in a doubly-linked list
struct dllnode {
  char *data;
  struct dllnode *next;
  struct dllnode *prev;
};

// node_create(str) creates a node. Caller must free the returned node.
// effect: allocates heap memory
// requires: str must be a valid C string
// time: O(n), where n is the length of str
static struct dllnode *node_create(const char *str) {
  struct dllnode *node = malloc(sizeof(struct dllnode));
  assert(node);
  node->data = malloc(sizeof(char) * (strlen(str) + 1));
  assert(node->data);
  strcpy(node->data, str);
  node->next = NULL;
  node->prev = NULL;
  return node;
}

// node_destroy(noden) frees all resources used by node; node becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates node
// time: O(1)
static void node_destroy(struct dllnode *node) {
  assert(node);
  free(node->data);
  free(node);
}

// === LIST STRUCT AND FUNCTIONS =============================================

// Represents a doubly linked list
struct dllist {
  struct dllnode *first;
  // your fields go here
  struct dllnode *last;
};

// list_create() creates a doubly linked list. Caller must free the returned
//   list.
// effects: allocates heap memory
// time: O(1)
struct dllist *list_create() {
  struct dllist *new_list = malloc(sizeof(struct dllist));
  new_list->first = NULL;
  new_list->last = NULL;
  return new_list; 
}

// list_destroy(list) frees all resources used by list; list becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates list
// time: O(n)
void list_destroy(struct dllist *list) {
  assert(list);
  struct dllnode *cur = list->first;
  struct dllnode *next;
  while (cur != NULL) {
    next = cur->next;
    node_destroy(cur);
    cur = next;
  }
  free(list);
}

// list_append(list, str) appends value to list (i.e., adds str to the end
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(m), where m is the length of str
void list_append(struct dllist *list, const char *str) {
  assert(list);
  assert(str);
  
  // create node to insert, with prev of node being last:
  struct dllnode *new_node = node_create(str); 
  new_node->prev = list->last;

  // if list is empty, assign first and last to new_node:
  if (list->first == NULL && list->last == NULL) {
    list->first = new_node;
    list->last = new_node;
  } 
  // replace last with new_node:
  else {
    list->last->next = new_node;
    list->last = new_node;
  }
}

// list_prepend(list, str) prepends value to list (i.e., adds str to the front
//   of list).
// effects: allocates heap memory
// requires: str must be a valid C string
// time: O(m), where m is the length of str
void list_prepend(struct dllist *list, const char *str) {
  assert(list);
  assert(str);
  
  // create node to insert, with next of node being first:
  struct dllnode *new_node = node_create(str); 
  new_node->next = list->first;

  // if list is empty, assign first and last to new_node:
  if (list->first == NULL && list->last == NULL) {
    list->first = new_node;
    list->last = new_node;
  } 
  // replace first with new_node:
  else {
    list->first->prev = new_node;
    list->first = new_node;
  }
}

// list_insert_at(list, str, idx) inserts str at idx into list. Index idx
//   follows array numbering.
// effects: allocates heap memory
// requires: str must be a valid C string
//           idx must be between 0 and list length
// time: O(n+m), where n is the length of list and m is the length of str
void list_insert_at(struct dllist *list, const char *str, int idx) {
  assert(str);
  assert(list);

  struct dllnode *cur = list->first; // initialize current node
  int count = 1;

  // loop until we reach node we want to insert at:
  while (cur && count < idx) {
    count++;
    cur = cur->next;
  }
  
  // if inserting at front, call prepend:
  if (idx == 0) {
    list_prepend(list, str);
  } 
  // if inserting at back, call append:
  else if (cur == NULL) {
    list_append(list, str); 
  } 
  // if not front or back, then create new node for insertion, 
  // so cur <-> cur->next ==> cur <-> new_node <-> cur-next:
  else {
    struct dllnode *new_node;
    new_node = node_create(str); 
    new_node->prev = cur;
    new_node->next = cur->next;

    if (cur->next != NULL) {
      cur->next->prev = new_node;
    }
    cur->next = new_node;
  }

}

// list_remove_front(list) remove the item from the front of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
char *list_remove_front(struct dllist *list) {
  assert(list);
  assert(list->first);
  
  // initialize struct for first node:
  struct dllnode *cur = list->first;

  // if list contains 1 struct, first = NULL = last;
  if (cur->next == NULL) {
    list->first = NULL;
    list->last = NULL;    
  }
  // first = second, while original first = NULL:
  else {  
    list->first = list->first->next;
    list->first->prev = NULL;
  }
  char *ret = cur->data;
  free(cur);
  return ret; 
}

// list_remove_back(list) removes the item from the back of list and returns
//   it. Caller must free the returned string.
// effects: frees heap memory
// requires: list must not be empty
// time: O(1)
char *list_remove_back(struct dllist *list) {
  assert(list);
  // initialize struct for last of list:
  struct dllnode *cur = list->last;

  // if list has only 1 element, first = NULL = last:
  if (cur->prev == NULL) {
    list->first = NULL;
    list->last = NULL;    
  } 
  // last = second last, and original last is NULL:
  else {  
    list->last = list->last->prev;
    list->last->next = NULL;
  }

  char *ret = cur->data;
  free(cur);
  return ret;
}

// list_remove_at(list, idx) removes the item at idx from the list and returns
//   it. Index idx follows array numbering. Caller must free the returned
//   string.
// effects: frees heap memory
// requires: list must not be empty
//           idx must be between 0 and list length - 1
// time: O(n)
char *list_remove_at(struct dllist *list, int idx) {
  assert(list);
  int i = 0;
  struct dllnode *cur = list->first;
  char *ret;

  // loop until we reach node we want to remove at:
  while (cur && i < idx) {  
    cur = cur->next;
    i++;
  }  
  // if index is first struct, remove front:
  if (idx == 0) {
    ret = list_remove_front(list);      
  } 
  // if index is last struct, remove back:
  else if (i == idx && cur->next == NULL) {
    ret = list_remove_back(list); 
  } 
  else {   
    // initialize next and previous node of removed struct:
    struct dllnode *next = cur->next;
    struct dllnode *prev = cur->prev; 
    
    // prev <-> NULL <-> next ==> prev <-> next:
    prev->next = next;
    next->prev = prev;
    cur->next = NULL;
    cur->prev = NULL;
    ret = cur->data;
    free(cur);
  }
  
  return ret;
}

// list_peek_front(list) returns the first item in list.
// requires: list must not be empty
// time: O(1)
const char *list_peek_front(const struct dllist *list) {
  assert(list);
  assert(list->first);
  return list->first->data;
}

// list_peek_back(list) returns the last item in list.
// requires: list must not be empty
// time: O(1)
const char *list_peek_back(const struct dllist *list) {
  assert(list);
  assert(list->last > 0);
  return list->last->data;
}

// list_is_empty(list) returns true of list is empty, and false otherwise.
// time: O(1)
bool list_is_empty(const struct dllist *list) {
  assert(list);
  return (list->first == NULL);
}

// list_print(list, dir) prints the content of list to the console, either
//   in dir FRONT_TO_BACK or BACK_TO_FRONT.
// effect: prints to the console
// time O(n)
void list_print(const struct dllist *list, int direction) {
  assert(list);
  printf("[FRONT]: ");
  if (direction == ITER_FRONT_TO_BACK) {
    struct dllnode *cur = list->first;
    while (cur != NULL) {
      printf("%s -> ", cur->data);
      cur = cur->next;
    }
  } 
  else {
    struct dllnode *cur = list->last;
    while (cur) { 
      printf("%s -> ", cur->data);
      cur = cur->prev;
    }
  }
  printf("[BACK]\n");
}

// === ITERATOR STRUCT, CONSTS, AND FUNCTIONS ================================

const int ITER_FRONT_TO_BACK = 0;
const int ITER_BACK_TO_FRONT = 1;

// Represents an Iterator
struct iter {
  struct dllnode *cur;
  int dir;
};

// iter_get(list, dir) returns an iterator for a list. The iterator traverses
//   the list either BACK_TO_FRONT or FRONT TO_BACK. The iterator self-destructs
//   once it reaches its end.
// effects: allocates heap memory.
// requires: list must not be empty
//           dir must be ITER_FRONT_TO_BACK or ITER_BACK_TO_FRONT
// time: O(1)
struct iter *iter_get(const struct dllist *list, int dir) {
  assert(list);

  // for front to back, return struct of front,
  // for back to front, return struct of last:  
  struct iter *new_iter = malloc(sizeof(struct iter));
  if (dir == ITER_FRONT_TO_BACK) {
    new_iter->cur = list->first;
    new_iter->dir = ITER_FRONT_TO_BACK;
  }
  if (dir == ITER_BACK_TO_FRONT) {
    new_iter->cur = list->last;
    new_iter->dir = ITER_BACK_TO_FRONT;
  }

  return new_iter;
}

// iter_current(e) returns the current element of e.
// time: O(1)
const char *iter_current(const struct iter *e) {
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

  // for both directions, check if next/previous exists, if not,
  // free e and return false:
  if (e->dir == ITER_BACK_TO_FRONT) {
    e->cur = e->cur->prev;
    if (e->cur == NULL) {
      free(e->cur);
      free(e);
      return false;
    }
  }
  if (e->dir == ITER_FRONT_TO_BACK) {
    e->cur = e->cur->next;
    if (e->cur == NULL) {
      free(e->cur);
      free(e);
      return false;
    }
  }

  return true;
}
