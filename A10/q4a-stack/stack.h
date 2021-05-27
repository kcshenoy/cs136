// SEASHELL_READONLY

#include <stdbool.h>

// stack represents a stack ADT
struct stack;

// stack_create() creates a new stack. Caller must destroy returned stack.
// effects: allocates heap memory
// time: O(1)
struct stack *stack_create(void(*print)(const void *data), void(*destroy)(void *data));

// stack_destroy(stck) frees all resources used by stck; stck becomes invalid
//   after this call.
// effects: frees heap memory
//          invalidates stack
// time: O(n)
void stack_destroy(struct stack *s);

// stack_top(stck) returns the top item in stck.
// requires: stack must not be empty
// time: O(1)
const void *stack_top(const struct stack *stck);

// stack_pop(stck) returns the top item in stck and removes it from stck. Caller
//   might have to free the returned item.
// requires: stack must not be empty
// time: O(1)
void *stack_pop(struct stack *stck);

// stack_push(stck, item) pushes item on top of stck.
// time: O(1)
void stack_push(struct stack *stck, void *item);

// stack_is_empty(stck) returns true if stck is empty, and false otherwise.
// time: O(1)
bool stack_is_empty(struct stack *stck);

// stack_print(stck) prints the items on stck.
// effects: creates console output
// time: O(n)
void stack_print(const struct stack *stck);
