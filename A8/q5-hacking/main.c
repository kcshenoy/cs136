/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// ERROR_NO_INTEGRITY_STATEMENT

// Name: ERROR_NO_NAME
// login ID: ERROR_NO_LOGIN
/////////////////////////////////////////////////////////////////////////////
#include "cs136.h"
#include "credentials.h"

void pretty_print_passwords(struct credential *creds, int count) {
  // your code goes here
}


int main(void) {
  struct credential *creds = NULL;
  int count = INT_MIN;
  load_credentials(&creds, &count);
  printf("There are %d credentials stored in creds.\n", count);
  assert(is_valid(creds, "CS136", "Qwerty123") == true);
  
  pretty_print_passwords(creds, count);
  
  unload_credentials(creds);
  return EXIT_SUCCESS;
}