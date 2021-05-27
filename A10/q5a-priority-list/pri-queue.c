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
#include "pri-queue.h"
#include "cs136-trace.h"

// === HELPER STRUCT AND FUNCTIONS ===========================================

// Represents a node in a linked list
struct pqnode {
  char *data;
  int priority;
  struct pqnode *next;
};

// node_create(name, priority) creates a node. Caller must free the returned
//   node.
// effect: allocates heap memory
// requires: str must be a valid C string
// time: O(n), where n is the length of str
static struct pqnode *node_create(const char *name, int priority) {
  assert(name);
  struct pqnode *node = malloc(sizeof(struct pqnode));
  assert(node);
  node->data = malloc(sizeof(char) * (strlen(name) + 1));
  assert(node->data);
  strcpy(node->data, name);
  node->priority = priority;
  node->next = NULL;
  return node;
}

// node_destroy(node) frees all resources used by node; node becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates node
// time: O(1)
static void node_destroy(struct pqnode *node) {
  assert(node);
  free(node->data);
  free(node);
}

// === PRIORITY QUEUE STRUCT AND FUNCTIONS ===================================

// pri_queue represents a priority queue ADT
struct pri_queue {
  struct pqnode *front;
  // your implementation goes here
  int levels;
};

// queue_create(levels) creates a new queue with that many priority levels.
//   Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct pri_queue *queue_create(int levels) {
  struct pri_queue *new_queue = malloc(sizeof(struct pri_queue));
  new_queue->front = NULL;
  new_queue->levels = levels;
  return new_queue;
}

// queue_destroy(pq) frees all resources used by q, which includes all values
//   stored in the queue; q becomes invalid after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct pri_queue *pq) {
  assert(pq);
  struct pqnode *cur = pq->front;
  while (cur != NULL) {
    struct pqnode *tmp = cur;
    cur = cur->next;
    node_destroy(tmp);
  }
  free(pq);
}

// queue_enqueue(pq, name, priority) enqueues name with priority in pq.
// requires: priority must be between 0 and levels - 1 (inclusive)
// time: O(n)
void queue_enqueue(struct pri_queue *pq, const char *name, int priority) {
  assert(pq);
  assert(name);
  assert(priority < pq->levels && priority >= 0);
  struct pqnode *cur = pq->front;
  struct pqnode *item = node_create(name, priority);
  struct pqnode *prev = NULL;

  // if queue is empty, add to front:
  if (pq->front == NULL) {
    pq->front = item;
    return;
  }

  // loop until spot where we want to replace:
  while (cur) {
    if (item->priority <= cur->priority) {
      prev = cur;
      cur = cur->next;
      continue;
    }
    else {
      break;
    }
  }
  
  // if not inserting at front, insert, reindex prev and next:
  if (prev != NULL) {
    prev->next = item;
    item->next = cur;
  }
  // if inserting at front, front=new node and next=original front:
  else {
    pq->front = item;
    item->next = cur;
  }

}

// queue_dequeue(pq) returns the name with the highest priority and removes it
//   from pq. Caller has to free the returned item.
// requires: queue must not be empty
// time: O(1)
char *queue_dequeue(struct pri_queue *pq) {
  assert(pq);
  struct pqnode *item = pq->front;
  char *ret = item->data;
  pq->front = pq->front->next;
  free(item);
  return ret;
}

// queue_front(pq) returns the name with the highest priority from pq.
// requires: queue must not be empty
// time: O(1)
const char *queue_front(const struct pri_queue *pq) {
  assert(pq);
  return pq->front->data;
}

// queue_is_empty(pq) returns true if pq is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct pri_queue *pq) {
  assert(pq);
  return (pq->front == NULL);
}

// see pri-queue.h for documentation
void queue_print(const struct pri_queue *pq) {
  assert(pq);
  printf("[START]:");
  struct pqnode *cur = pq->front;
  while (cur != NULL) {
    printf("%s, <%d> -> ", cur->data, cur->priority);
    cur = cur->next;
  }
  printf("[END]\n");
}
