/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [https://algorithmtutor.com/Data-Structures/Tree/Binary-Heaps/]
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
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include "pri-queue.h"
#include "cs136-trace.h"

// Represents a node
struct pqnode {
  char *name;
  int priority;
  // add your implementation here
};

// pri_queue represents a priority queue ADT
struct pri_queue {
  struct pqnode **nodes;
  int levels;
  // add your implementation here
  int len;
  int maxlen;
};

// swap(px, py) swaps what px points at with what py points at,
// and vice versa.
// effects: modifies *px and *py
void swap(struct pqnode **px, struct pqnode **py) {
  assert(px);
  assert(py);
  struct pqnode *tmp = *py;
  *py = *px;
  *px = tmp;
}

// pqnode_create(levels) creates a new pqnode
// Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct pqnode *node_create(const char *name, int priority) {
  assert(name);
  struct pqnode *new_struct = malloc(sizeof(struct pqnode));
  new_struct->name = malloc(strlen(name)+1);
  strcpy(new_struct->name, name);
  new_struct->priority = priority;
  return new_struct;
}

// queue_create(levels) creates a new queue with that many priority levels.
//   Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct pri_queue *queue_create(int levels) {
  struct pri_queue *new_queue = malloc(sizeof(struct pri_queue));
  new_queue->maxlen = 1;
  struct pqnode **array = malloc(sizeof(struct pqnode *) * new_queue->maxlen);
  new_queue->nodes = array;
  new_queue->levels = levels;
  new_queue->len = 0;
  return new_queue;
}

// queue_destroy(pq) frees all resources used by q, which includes all values
//   stored in the queue; q becomes invalid after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct pri_queue *pq) {
  assert(pq);
  int i = 0;

  for (i = 0; i < pq->len; i++) {
    free(pq->nodes[i]->name);
    free(pq->nodes[i]);
  }

  free(pq->nodes);
  free(pq);
}

// queue_enqueue(pq, name, priority) enqueues name with priority in pq.
// requires: priority must be between 0 and levels - 1 (inclusive)
// time: O(n)
void queue_enqueue(struct pri_queue *pq, const char *name, int priority) {
  assert(priority >= 0 && priority < pq->levels);
  assert(name);
  assert(pq->nodes);
  assert(pq);

  // doubling strategy:
  if (pq->maxlen == pq->len) {
    pq->maxlen *= 2;
    pq->nodes = realloc(pq->nodes, pq->maxlen * sizeof(struct pqnode *));
  }

  // set end of array to new node:
  pq->nodes[pq->len] = node_create(name, priority);
  int i = pq->len;
  
  // use "bubble-up" approach like q6 to move node to correct spot:
  while (priority >= pq->nodes[(i-1)/2]->priority && i) {
    swap(&pq->nodes[i], &pq->nodes[(i-1)/2]);
    i = (i-1)/2;
  }
  pq->len++;  
}

// queue_dequeue(pq) returns the name with the highest priority and removes it
//   from pq. Caller has to free the returned item.
// requires: queue must not be empty
// time: O(1)
char *queue_dequeue(struct pri_queue *pq) {
  assert(pq);
  assert(pq->len > 0);
  assert(pq->nodes);

  // replace first node with last node, then free original
  // first node while storing name:
  struct pqnode *ret_max = pq->nodes[0];
  char *ret = pq->nodes[0]->name;
  free(ret_max);
  pq->nodes[0] = pq->nodes[pq->len-1];
  pq->len -= 1;

  int i = 0;
  
  // push current first node down tree by comparing priorities of
  // left and right, and replacing with higher priority, until
  // node is in correct spot:
  while (i < pq->len) {
    int l = (i*2) + 1;
    int r = (i*2) + 2;
    int cur = i;

    // if left path is valid, check if left node has higher
    // priority:
    if (l && (l <= pq->len)) {
      if (pq->nodes[l]->priority >= pq->nodes[cur]->priority) {
        cur = l;
      }
    }
    // if right path is valid, check if right node has higher
    // priority:
    if (r && (r <= pq->len)) {
      if (pq->nodes[r]->priority >= pq->nodes[cur]->priority) {
        cur = r;
      }
    }
    // if priority is is larger in left or right, swap accordingly:
    if (cur == r || cur == l) {
      swap(&pq->nodes[i], &pq->nodes[cur]);
      i = cur;
    }
    else {
      break;
    }
  }      
  return ret;
}

// queue_front(pq) returns the name with the highest priority from pq.
// requires: queue must not be empty
// time: O(1)
const char *queue_front(const struct pri_queue *pq) {
  assert(pq);
  assert(pq->len > 0);
  assert(pq->nodes); 
  return (pq->nodes[0]->name);
}

// queue_is_empty(pq) returns true if pq is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct pri_queue *pq) {
  assert(pq);
  return (pq->len == 0);
}