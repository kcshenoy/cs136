#include <stdbool.h>

extern const int MIN_PASSWORD_LENGTH;

// is_valid_password(s) determines if s is a valid password
//   (see the assignment for details)
// requires: s is not NULL
// time: O(n), n is length of s
bool is_valid_password(const char *s);
