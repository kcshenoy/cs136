// SEASHELL_READONLY

// max_heap represents a max heap ADT
struct max_heap;

// heap_create() creates a new max heap. Caller must destroy returned max heap.
// effects: allocates heap memory
// time: O(1)
struct max_heap *heap_create(void);

// queue_destroy(heap) frees all resources used by heap; heap becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates queue
// time: O(n)
void heap_destroy(struct max_heap *heap);

// heap_insert(heap, name, priority) inserts an item with name and priority into
//   heap. Priority must be unique; otherwise, behaviour is undefined.
// time: O(log n)
void heap_insert(struct max_heap *heap, const char *name, int priority);

// heap_remove(heap) removes the root from max heap, i.e., the item with the
//   largest priority value. The function returns the name of the item. Caller
//   must free returned string.
// effects: frees heap memory
// time: O(log n)
char *heap_remove(struct max_heap *heap);

// heap_print(heap) prints the heap to console. This function is for debugging
//   purposes and has limitations regarding the size of the printed heap.
// effects: generates console output
// time: O(n)
void heap_print(struct max_heap *heap);