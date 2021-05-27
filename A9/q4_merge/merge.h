// SEASHELL_READONLY

// merge(first_array,first_len,second_array,second_len) 
//   takes two arrays (first_array and second_array) that 
//   contain pointers to strings. The arrays and the 
//   strings are all heap allocated. The strings in each 
//   argument array are already lexicographically sorted. 
//   The function returns a new heap allocated array of 
//   pointers to the original strings, sorted 
//   lexicographically.
// Important implementation note 1: The function should 
//   NOT make copies of the strings. 
// Important implementation note 2: The function should 
//   NOT mutate the arguments in any way.
// requires: first_array and second_array are not null. 
//   strings within first_array and second_array are not 
//   null
// time: O(n), n is the SUM of first_len and second_len
char **merge(char **first_array, const int first_len, 
             char **second_array, const int second_len);