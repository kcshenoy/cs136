// SEASHELL_READONLY

#ifndef _ARRAY_TOOLS
#define _ARRAY_TOOLS

#define MAX_LEN 100

// VALUE_MIN is is the smallest integer that can be store in a struct array.
// VALUE_MIN is 0.
extern const int VALUE_MIN;

// VALUE_MIN is the largest integer that can be store in a struct array.
// VALUE_MIN is INT_MAX.
extern const int VALUE_MAX;

// struct array is a container for an array that also includes its length.
struct array {
  int data[MAX_LEN];
  int data_len;
};

// array_create() creates an empty array. array_destroy must be called once
//   array is no longer needed.
// effects: allocates heap memory
// time:    O(1)
struct array *array_create();

// array_read() creates an array and fills it with up to MAX_LEN values from
//   input. Values must be between VALUE_MIN and VALUE_MAX (inclusive).
//   array_destroy must be called once array is no longer needed.
// effects: reads input
//          allocates heap memory
// time:    O(n)
struct array *array_read();

// array_destroy(arr) frees all resources used by arr.
// effects: arr becomes invalid
// time:    O(1)
void array_destroy(struct array *arr);

// array_append_value(destination, value) appends value to destination.
// requires: the combined length must not exceed MAX_LEN
// effects: modifies destination
// time: O(1)
void array_append_value(struct array *destination, const int value);

// array_append_array(arr, source) appends all values from source to arr. All
//   values in source must be between VALUE_MIN and VALUE_MAX (inclusive).
// requires: the combined length must not exceed MAX_LEN
// effects: modifies arr
// time: O(n), where n is the length of source
void array_append_array(struct array *arr, const struct array *source);

// array_clear(arr) removes all elemtens from arr.
// effects: modifies arr
// time: O(1)
void array_clear(struct array *arr);

// array_print(arr) prints the content of arr if length of arr is larger than 0.
//   Otherwise, it does not print anything.
// effects: might produce output
// time:    O(n)
void array_print(const struct array *arr);

#endif