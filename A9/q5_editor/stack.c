#include <assert.h>
#include <stdlib.h>
#include "stack.h"

// SEASHELL_READONLY

// define the action types
const int ADD = 0;
const int REPLACE = 1;
const int MIRROR = 2;
const int LEET = 3;



struct stack {
  int len;
  int maxlen;
  struct action *data; //heap allocated, resizable
};



struct stack *stack_create(void) {
  struct stack *s = malloc(sizeof(struct stack));
  assert(s);
  s->len = 0;
  s->maxlen = 1; // initial capacity is 1
  s->data = malloc(s->maxlen * sizeof(struct action));
  return s;
}





void stack_push(struct action item, struct stack *s) {
  assert(s);
  if (s->len == s->maxlen) {
    s->maxlen *= 2; // doubling strategy
    s->data = realloc(s->data, s->maxlen * sizeof(struct action));
  }
  s->data[s->len] = item;
  s->len += 1;
}



bool stack_is_empty(const struct stack *s) {
  assert(s);
  return s->len == 0;
}

struct action stack_top(const struct stack *s) {
  assert(s);
  assert(s->len);
  return s->data[s->len - 1];
}

struct action stack_pop(struct stack *s) {
  assert(s);
  assert(s->len);
  --s->len;
  return s->data[s->len];
}

int stack_length(const struct stack *s){
  assert(s);
  return s->len;
}


void stack_destroy(struct stack *s) {
  assert(s);
  free(s->data);
  free(s);
}