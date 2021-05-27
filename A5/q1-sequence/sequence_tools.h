// SEASHELL_READONLY

#include <stdbool.h>
#include "sequence.h"

// sequence_read(seq) reads integers from input and stores them in seq. The
//   order within seq is the same as the order in which the integers were read.
// effects: might mutate seq
void sequence_read(struct sequence *seq);

// sequence_map(seq, func) applies func to every item in seq.
// effects: might mutate seq
void sequence_map(struct sequence *seq, int (*func)(int));

// sequence_filter(seq, filter) applies filter to every item in seq. Only items
//   for which filter returns true are kept in seq.
// effects: might mutate seq
void sequence_filter(struct sequence *seq, bool (*filter)(int));

// sequence_foldr(seq, func) folds every values in seq using func, with base as
//   the base value of the fold.
int sequence_foldr(const struct sequence *seq, int (*func)(int, int), int base);

// sequence_sort(seq, comp) sorts seq using comp as predicate.
// effects: might mutate seq
void sequence_sort(struct sequence *seq, bool(*comp)(int, int));