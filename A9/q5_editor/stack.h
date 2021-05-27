#include <stdbool.h>

// SEASHELL_READONLY


extern const int ADD;  // an add action
extern const int REPLACE; // a replace action
extern const int MIRROR; // a mirror action
extern const int LEET; // a leet encoding/action



// action: a struct to track an action performed on a document
struct action {
  int type; // the type of action (ADD/REPLACE/MIRROR/LEET)
  int index; // index of word on which the action was applied
  char old_str[100]; // used only by a REPLACE action to 
                     // store the string that was replaced
};



// interface for a stact ADT for struct action

struct stack;


// stack_create() returns an initialized heap allocated stack
//   stack_destroy must be called to free up memory
// effects: allocates heap memory
// time: O(1)
struct stack *stack_create(void);

// stack_is_empty(s) determines if stack s is empty
// requires: s is not NULL
// time: O(1)
bool stack_is_empty(const struct stack *s);

// stack_top(s) returns the top item in stack s
// requires: stack is not empty
// time: O(1)
struct action stack_top(const struct stack *s);

// stack_pop(s) returns and pops (removes) the top item in 
//   stack s
// requires: stack is not empty
// time: O(1)
struct action stack_pop(struct stack *s);

// stack_push(s) adds item to the top of stack s
// requires: s is not NULL
// time: O(n) where n is current length of the stack
void stack_push(struct action item, struct stack *s);

// stack_length(s) returns the number of items in the stack
// requires: s is not NULL
// time: O(1)
int stack_length(const struct stack *s);

// stack_destroy(s) deallocates the heap memory associated 
//   with s
// requires: s is not NULL
// effects: deallocates heap memory
// time: O(1)
void stack_destroy(struct stack *s);
