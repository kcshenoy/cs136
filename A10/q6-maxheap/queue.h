// SEASHELL_READONLY

#include <stdbool.h>

// queue: provides a general queue ADT
struct queue;

// queue_create() creates a new empty queue.
// effects: allocates memory (client must call stack_destroy)
struct queue *queue_create();

// queue_is_empty(q) determines if queue q is empty.
bool queue_is_empty(const struct queue *q);

// queue_front(q) returns the front item in queue q.
// requires: stack is not empty
void *queue_front(const struct queue *q);

// queue_dequeue(q) returns and removes the first item in queue q.
// requires: stack is not empty
void *queue_dequeue(struct queue *q);

// queue_enqueue(q, item) adds item to the end of queue q.
void queue_enqueue(struct queue *q, void *item);

// queue_destroy(q) frees all resources of queue q.
// effects: q is no longer valid
void queue_destroy(struct queue *q);

// queue_print(q) prints out queue q.
// effects: creates output
void queue_print(struct queue *q, void(*prnt)(void *));
