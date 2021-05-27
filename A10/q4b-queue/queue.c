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

// none

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include "queue.h"
#include "stack.h"
#include "dllist.h"

// queue represents a queue ADT
struct queue {
  // your implementation goes here
  struct stack *in;   // stores added data
  struct stack *out;  // stores data when dequeuing
  void(*print)(const void *data);
  void(*destroy)(void *data);
};

// queue_create() creates a new queue. Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct queue *queue_create(void(*print)(const void *data), void(*destroy)(void *data)) {
  struct queue *new_queue = malloc(sizeof(struct queue));
  struct stack *stack_in = stack_create(print, destroy);
  struct stack *stack_out = stack_create(print, destroy);
  new_queue->in = stack_in;
  new_queue->out = stack_out;
  new_queue->print = print;
  new_queue->destroy = destroy;
  return new_queue;
}

// queue_destroy(q) frees all resources used by q; q becomes invalid after this
//   call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct queue *q) {
  assert(q);
  stack_destroy(q->in);
  stack_destroy(q->out);
  (q->destroy)(q);
  free(q);
}

// queue_front(q) returns the first (front) item in q.
// requires: queue must not be empty
// time: O(1)
const void *queue_front(const struct queue *q) {
  assert(q);
  assert(!queue_is_empty(q));

  // if out stack is empty, push data onto out stack:
  if (stack_is_empty(q->out)) {
    while (!stack_is_empty(q->in)) {
      void *cur = stack_pop(q->in);
      stack_push(q->out, cur);
    }
  }
  return stack_top(q->out); // return top of out stack
}

// queue_dequeue(q) returns the first (front) item in q and removes it from q.
//   Caller might have to free the returned item.
// requires: queue must not be empty
// time: O(1)
void *queue_dequeue(struct queue *q) {
  assert(q);
  assert(!queue_is_empty(q));
  struct stack *item = NULL;

  // if out stack is empty, push data onto out stack:
  if (stack_is_empty(q->out)) {
    while (!stack_is_empty(q->in)) {
      item = stack_pop(q->in);
      stack_push(q->out, item);
    }
  }
  return stack_pop(q->out); // return popped item of out stack
}

// queue_enqueue(q, item) enqueues item at the end of q.
// time: O(1)
void queue_enqueue(struct queue *q, void *item) {
  assert(q);
  assert(item);
  stack_push(q->in, item); // push item onto in stack
}

// queue_is_empty(q) returns true if q is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct queue *q) {
  assert(q);
  assert(q->in);
  assert(q->out);
  return (stack_is_empty(q->in) && stack_is_empty(q->out));
}

// queue_print(q) prints the items on q.
// effects: creates console output
// time: O(n)
void queue_print(const struct queue *q) {
  assert(q);
  printf("[START]\n");
  stack_print(q->out, ITER_FRONT_TO_BACK);
  stack_print(q->in, ITER_BACK_TO_FRONT);
  printf("[END]\n");
}