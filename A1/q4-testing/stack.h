// SEASHELL_READ_OFF_ONLY

#include "cs136.h"

// Stack: provides an integer stack implementation

// stack_create() creates a new empty stack
//    MUST be called before using any other stack functions
// effects: client must call stack_destroy when done using stack
void stack_create(void);

// stack_is_empty() determines if the stack is empty
bool stack_is_empty(void);

// stack_count() returns the number of items on the stack
int stack_count(void);

// stack_top() returns the top item in the stack
// requires: the stack is not empty
int stack_top(void);

// stack_pop() returns and pops (removes) the top item in the stack
// requires: stack is not empty
int stack_pop(void);

// stack_push() adds item to the top of the stack
void stack_push(int item);

// stack_destroy() destroys the stack and cleans up any resources it used
// effects: the stack is no longer valid
void stack_destroy(void);

// stack_reset() destroys the stack and creates a new one
// effects: the original stack is gone
void stack_reset(void);
