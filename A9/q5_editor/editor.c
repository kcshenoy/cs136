/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from the following sources:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////


#include <string.h>
#include <stdio.h>
#include <assert.h>
#include "mirror.h"
#include "leet.h"
#include <stdlib.h>
#include "editor.h"
#include "cs136-trace.h"

// a structure to represent a word in the document
// for simplicity we restrict words to a length of 100
struct word {
  char str[100];
};


struct stack {
  int len;
  int maxlen;
  struct action *data; //heap allocated, resizable
};


// A data structure to represent the document.

// The document contains an ever increasing number of words.
// Internally, the words are represented using a heap 
// allocated array that should be initialized to 1 when the 
// document is created. After that, whenever the array runs 
// out of space, the maximum number of words possible should 
// be doubled.

// The actions field is a heap allocated stack that is used 
// to record actions that change the state of the document. 
// Notice that any undo action also changes the state of 
// the document. Undo actions should NOT be stored in the 
// stack.
struct document {
  int len; // current number of words
  int maxlen; // maximum possible words
  struct word *doc; // heap allocated
  struct stack *actions; // heap allocated stack to track 
                         // actions (for undo)
};


// document_print(pd) prints all the words in 
//   the document separated by a single space
// requires: pd is not NULL
// effects: produces output
// time: O(n) where n is the number of words in the document
void document_print(struct document *pd){
  assert(pd);
  for(int i=0; i<pd->len; ++i){
    if(i) printf(" ");
    printf("%s", pd->doc[i].str);
  }
  printf("\n");
}



// document_create() returns an initialized heap 
//   allocated document
// document_destroy must be called to free up memory
// effects: allocates heap memory
// time: O(1)
struct document *document_create(){
  struct document *new_doc = malloc(sizeof(struct document));
  new_doc->len = 0;
  new_doc->maxlen = 1;
  new_doc->doc = malloc(sizeof(struct word) * new_doc->maxlen);
  new_doc->actions = stack_create();
  return new_doc; 
}


// document_destroy(pd) frees up all heap memory 
//   associated with the heap allocated document
// requires: pd is not NULL
// effects: deallocates heap memory
// time: O(1)
void document_destroy(struct document *pd){
  assert(pd);
  stack_destroy(pd->actions);
  free(pd->doc);
  //free(pd->actions);
  free(pd);
}


// document_add(pd, new_str) adds a new word to 
//   the end of the document
// requires: pd is not NULL, new_str is not NULL
// time: O(n) where n is the number of words in the document
void document_add(struct document *pd, const char *new_str){
  assert(new_str);
  assert(pd);
  
  // create new action for actions stack:
  struct action add;
  add.type = ADD;
  add.index = pd->len;
  
  // use doubling method to reallocate memory for document
  if (pd->maxlen == pd->len) {
    pd->maxlen *= 2;
    pd->doc = realloc(pd->doc, pd->maxlen * sizeof(struct word));
  }

  // add add as most recent action in actions stack
  stack_push(add, pd->actions);
  // add new string in document
  strcpy(pd->doc[pd->len].str, new_str);
  pd->len += 1;
}


// document_replace(pd,at,new_str) replaces the 
//   word at index at with the new word
// requires: pd is not NULL, at is a valid index for the 
//   document, new_str is not NULL
// time: O(1)
void document_replace(struct document *pd, const int at, 
                      const char *new_str){
  assert(pd);
  assert(at < pd->len && at >= 0);
  assert(new_str);
  
  // create new action for actions stack:
  struct action replace;
  replace.type = REPLACE;
  replace.index = at;
  strcpy(replace.old_str, pd->doc[at].str); // store replaced str
  
  // add replace as most recent action in actions stack
  stack_push(replace, pd->actions);
  // replace string with new_str
  strcpy(pd->doc[at].str, new_str);
}


// document_mirror(pd, at) mirrors the word at 
//   index at
// requires: pd is not NULL, at is a valid index for the document
// time: O(1) since words in document have a fixed length
void document_mirror(struct document *pd, const int at){
  assert(pd);
  assert(at < pd->len && at >= 0);
  
  // create new action for actions stack:
  struct action a_mirror;
  a_mirror.type = MIRROR;
  a_mirror.index = at;
  
  // mirror word at index "at"
  mirror(pd->doc[at].str);
  // add mirror as most recent action in actions stack
  stack_push(a_mirror, pd->actions);
}


// document_leet(pd, at) applies a leet encoding 
//   to the word at index at
// requires: pd is not NULL, at is a valid index for the document
// time: O(1) since words in document have a fixed length
void document_leet(struct document *pd, const int at){
  assert(pd);
  assert(at < pd->len && at >= 0);

  // create new action for actions stack:
  struct action a_leet;
  a_leet.type = LEET;
  a_leet.index = at;

  // add leet as most recent action in document
  stack_push(a_leet, pd->actions);
  // leet word at index "at"
  leet(pd->doc[at].str);
}


// document_undo(pd, undo_count) will undo the 
//   last undo_count actions. If undo_count is 
//   negative, the function does nothing. If 
//   undo_count is more than the total number of 
//   actions performed, extra undos do nothing
// requires: pd is not NULL
// time: O(n) where n is the number of undo actions to perform
void document_undo(struct document *pd, 
                   const int undo_count){
  assert(pd); 
  int i = 0;
  
  for (i = 0; i < undo_count; i++) {

    // stop looping if no more actions to undo:
    if (stack_is_empty(pd->actions)) { 
      break;
    }
    
    // get most recent action:
    struct action act = stack_pop(pd->actions);
    
    if (act.type == ADD) {
      pd->len -= 1; // reduce len to cut off last word added
    }
    // switch "replace" with string that was replaced:
    else if (act.type == REPLACE) {
      strcpy(pd->doc[pd->len-i-1].str, act.old_str);
    }
    // if leet, undo leet:
    else if (act.type == LEET) {
      undo_leet(pd->doc[pd->len-i-1].str);
    }
    // if mirror, undo mirror:
    else if (act.type == MIRROR) {
      undo_mirror(pd->doc[pd->len-i-1].str);
    }
  }
      
}

