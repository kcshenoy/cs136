// SEASHELL_READONLY

#ifndef _SEQUENCE_H
#define _SEQUENCE_H

// A module for an int sequence ADT

// This is an opaque structure definition.
struct sequence;

// sequence_create() returns a pointer to a new (empty) sequence. To avoid
//   memory leaks, sequence_destroy must be called on the returned sequence
//   after it is no longer needed.
struct sequence *sequence_create(void);

// sequence_destroy() releases all resources associated with seq.
void sequence_destroy(struct sequence *seq);

// sequence_length(seq) returns the number of items in seq.
int sequence_length(const struct sequence *seq);

// sequence_item_at(seq, pos) returns the item in seq at the given pos.
// requires: 0 <= pos < length(seq)
int sequence_item_at(const struct sequence *seq, const int pos);

// sequence_insert_at(seq, pos, val) inserts val at position pos in seq.
// requires: 0 <= pos <= length(seq)
// effects: modifies seq
void sequence_insert_at(struct sequence *seq, const int pos, const int val);

// sequence_remove_at(seq, pos) removes the item at position pos in seq and
//   returns the removed value.
// requires: 0 <= pos < length(seq)
// effects: modifies seq
int sequence_remove_at(struct sequence *seq, const int pos);

// sequence_print(seq) prints out the items in seq using the format:
//   "[length]: item_1 item_2 ... item_n\n" or "[empty]\n"
// effects: creates output
void sequence_print(const struct sequence *seq);

#endif