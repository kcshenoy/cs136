// SEASHELL_READONLY

#include <stdbool.h>

// pri_queue represents a priority queue ADT
struct pri_queue;

// queue_create(levels) creates a new queue with that many priority levels.
//   Caller must destroy returned queue.
// effects: allocates heap memory
// time: O(1)
struct pri_queue *queue_create(int levels);

// queue_destroy(pq) frees all resources used by q, which includes all values
//   stored in the queue; q becomes invalid after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void queue_destroy(struct pri_queue *pq);

// queue_enqueue(pq, name, priority) enqueues name with priority in pq.
// requires: priority must be between 0 and levels - 1 (inclusive)
// time: O(n)
void queue_enqueue(struct pri_queue *pq, const char *name, int priority);

// queue_dequeue(pq) returns the name with the highest priority and removes it
//   from pq. Caller has to free the returned item.
// requires: queue must not be empty
// time: O(1)
char *queue_dequeue(struct pri_queue *pq);

// queue_front(pq) returns the name with the highest priority from pq.
// requires: queue must not be empty
// time: O(1)
const char *queue_front(const struct pri_queue *pq);

// queue_is_empty(pq) returns true if pq is empty, and false otherwise.
// time: O(1)
bool queue_is_empty(const struct pri_queue *pq);
