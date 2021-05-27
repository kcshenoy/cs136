// SEASHELL_READONLY

// string_make(str) returns a copy of str. The returned string must be freed
//   after use.
// effect: allocates heap memory
// time: O(n)
char *string_make(const char *str);

// string_read(str) returns input in a single string. The returned string must
//   be freed after use.
// effect: allocates heap memory
// time: O(s*n), s: number of strings; n: combined length of all strings
char *string_read(void);

// string_find_next(str, find) returns the index of the next occurence of find
//   in str, or -1 if find does not occur in str.
// time: O(f*n), f: length of find; n: length of str
int string_find_next(const char *str, const char *find);

// string_count(str, find) counts the number of occurences of find in str.
// time: O(n^2), n: length of str
int string_count(const char *str, const char *find);

// string_replace(str, find, replace) replaces every occurance of find in *str
//   with replace. The returned string must be freed after use.
// effect: allocates heap memory
//         frees *str
// time: O(n^3), n: length of str
void string_replace(char **str, const char *find, const char *replace);