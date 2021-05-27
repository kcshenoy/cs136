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
#include "pri-queue.h"
#include <assert.h>
#include "dllist.h"
#include <string.h>
#include  "cs136-trace.h"
// your includes go here

// pri_queue represents a priority queue ADT
struct pri_queue {
  // your implementation goes here
  struct dllist **pri_list;
  int levels;
  int len;
};

// queue_create() creates a new queue. Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct pri_queue *queue_create(int levels, void(*print)(const void *), void(*destroy)( void *)) {
	struct pri_queue *new_queue = malloc(sizeof(struct pri_queue));
  new_queue->pri_list = malloc(sizeof(struct dllist *) * levels);
  int i = 0;  
  // initialize list at each priority level:
  for (i = 0; i < levels; i++) {
    new_queue->pri_list[i] = list_create(print, destroy);
  }
  new_queue->levels = levels;
  new_queue->len = 0;
  return new_queue;

}

// queue_enqueue(pq, name, priority) enqueues name with priority in pq.
// time: O(1)
void queue_enqueue(struct pri_queue *pq, const char *item, int priority) {
  assert(item);
  assert(pq);
  assert(pq->pri_list);
  assert(priority >= 0 && priority < pq->levels);
  int len = strlen(item);
  // your implementation goes here
  char *tmp = malloc((len+1) * sizeof(char));
  strcpy(tmp, item);
  
  // add item to the front of corresponding priority list,
  // higher the priority, lower on the list:
  //        eg. priority 75 goes in list levels - 75 - 1
  //        to make dequeuing easier:
  list_prepend(pq->pri_list[pq->levels-priority-1], tmp);
  
  pq->len += 1;
}

// queue_dequeue(pq) returns the name with the highest priority and removes it
//   from pq. Caller has to free the returned item.
// requires: queue must not be empty
// time: O(1)
char *queue_dequeue(struct pri_queue *pq) {
  assert(pq);
  assert(pq->len > 0);
  assert(pq->pri_list);

  int i = 0;
  char *ret = NULL;

  // go to first non-empty list (highest priority inputted),
  // then remove the first inputted item:
  for (i = 0; i < pq->levels; i++) {
    if (!list_is_empty(pq->pri_list[i])) {
      ret = list_remove_back(pq->pri_list[i]);
      break;
    }
  }   
  pq->len -= 1;
  return ret;
}

// queue_front(pq) returns the name with the highest priority from pq.
// requires: queue must not be empty
// time: O(1)
const char *queue_front(const struct pri_queue *pq) {
  assert(pq);
  assert(pq->pri_list);
  int i = 0;    

  // go to first non-empty list (highest priority inputted),
  // then peek at the first inputted item:
  for (i = 0; i < pq->levels; i++) {
    if (!list_is_empty(pq->pri_list[i])) {
      return list_peek_back(pq->pri_list[i]);
    }
  }

  return NULL;
}

// queue_is_empty(pq) returns true if pq is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct pri_queue *pq) {
  assert(pq);
  assert(pq->pri_list);
  return (pq->len == 0);
}

// queue_destroy(pq) frees all resources used by q, which includes all values
//   stored in the queue; q becomes invalid after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct pri_queue *pq) {
  assert(pq);
  int i = 0;
  for (i = 0; i < pq->levels; i++) {
    list_destroy(pq->pri_list[i]);
  }
  free(pq->pri_list);
  free(pq);
}
