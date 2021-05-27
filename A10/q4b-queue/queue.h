// SEASHELL_READONLY

#include <stdbool.h>

// queue represents a queue ADT
struct queue;

// queue_create() creates a new queue. Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct queue *queue_create(void(*print)(const void *data), void(*destroy)(void *data));

// queue_destroy(q) frees all resources used by q; q becomes invalid after this
//   call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct queue *q);

// queue_front(q) returns the first (front) item in q.
// requires: queue must not be empty
// time: O(1)
const void *queue_front(const struct queue *q);

// queue_dequeue(q) returns the first (front) item in q and removes it from q.
//   Caller might have to free the returned item.
// requires: queue must not be empty
// time: O(1)
void *queue_dequeue(struct queue *q);

// queue_enqueue(q, item) enqueues item at the end of q.
// time: O(1)
void queue_enqueue(struct queue *q, void *item);

// queue_is_empty(q) returns true if q is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct queue *q);

// queue_print(q) prints the items on q.
// effects: creates console output
// time: O(n)
void queue_print(const struct queue *q);