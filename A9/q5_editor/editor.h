#include "stack.h"

// SEASHELL_READONLY

// interface for a document ADT

struct document;

// document_create() returns an initialized heap 
//   allocated document
// document_destroy must be called to free up memory
// effects: allocates heap memory
// time: O(1)
struct document *document_create(void);

// document_destroy(pd) frees up all heap memory 
//   associated with the heap allocated document
// requires: pd is not NULL
// effects: deallocates heap memory
// time: O(1)
void document_destroy(struct document *pd);

// document_print(pd) prints all the words in 
//   the document separated by a single space
// requires: pd is not NULL
// effects: produces output
// time: O(n) where n is the number of words in the document
void document_print(struct document *pd);

// document_add(pd, new_str) adds a new word to 
//   the end of the document
// requires: pd is not NULL, new_str is not NULL
// time: O(n) where n is the number of words in the document
void document_add(struct document *pd, const char *new_str);

// document_replace(pd,at,new_str) replaces the 
//   word at index at with the new word
// requires: pd is not NULL, at is a valid index for the 
//   document, new_str is not NULL
// time: O(1)
void document_replace(struct document *pd, const int at, const char *new_str);

// document_mirror(pd, at) mirrors the word at 
//   index at
// requires: pd is not NULL, at is a valid index for the document
// time: O(1) since words in document have a fixed length
void document_mirror(struct document *pd, const int at);

// document_leet(pd, at) applies a leet encoding 
//   to the word at index at
// requires: pd is not NULL, at is a valid index for the document
// time: O(1) since words in document have a fixed length
void document_leet(struct document *pd, const int at);

// document_undo(pd, undo_count) will undo the 
//   last undo_count actions. If undo_count is 
//   negative, the function does nothing. If 
//   undo_count is more than the total number of 
//   actions performed, extra undos do nothing
// requires: pd is not NULL
// time: O(n) where n is the number of undo actions to perform
void document_undo(struct document *pd, const int undo_count);
