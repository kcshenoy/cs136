// SEASHELL_READONLY

#include <stdbool.h>

// k_in_row(arr, arr_len, k) returns true if arr contains at least k equal
//   values in a row, and false otherwise.
// time: O(n + k)
bool k_in_row(const int *arr, int arr_len, int k);

// max_freq(arr, arr_len) returns the most frequent element in arr. If more
//   than one element has the same frequency, it select one arbitrarially.
// effects: arr may be mutated
// time: O(n log n)
int max_freq(int *arr, int arr_len);

// max_diff(arr, arr_len) finds the maximum difference between two elements in
//   arr
// time: O(n)
int max_diff(const int *arr, int arr_len);