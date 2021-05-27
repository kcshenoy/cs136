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

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include <stdlib.h>
// your includes go here
#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include "cs136-trace.h"

// string_make(str) returns a copy of str. The returned string must be freed
//   after use.
// effect: allocates heap memory
// time: O(n)
char *string_make(const char *str) {
  char *wordd = malloc((strlen(str) + 1) * sizeof(char));
  strcpy(wordd, str);
  return wordd;
}

// string_read(str) returns input in a single string. The returned string must
//   be freed after use.
// effect: allocates heap memory
// time: O(s*n), s: number of strings; n: combined length of all strings
char *string_read(void) {
  char s[255];   // initialize char array
  int len = 0;
  int s_len = 0; // initialize length of s
  char *string = malloc(len * sizeof(char)); // allocate memory
  int i = 0;
  while (scanf(" %s", s) == 1) {
    // add length of current string to total length,
    // then reallocate with new length
    len += strlen(s) + 1;
    string = realloc(string, len * sizeof(char));

    s_len = strlen(s);
  
    // add s letter by letter to string
    for (i = s_len-1; i >= 0; i--) {
      string[len-i-2] = s[s_len-1-i];
    }
    string[len-1] = ' '; // add space after word
  }  
  string = realloc(string, len * sizeof(char));
  string[len-1] = '\0';
  return string; 
}

// string_find_next(str, find) returns the index of the next occurence of find
//   in str, or -1 if find does not occur in str.
// time: O(f*n), f: length of find; n: length of str
int string_find_next(const char *str, const char *find) {
  int i = 0;
  int j = 0;
  int str_len = strlen(str);   // length of str
  int find_len = strlen(find); // length of find
  int temp = 0;  // placeholder for index of str

  // if find is longer than str, return -1
  if (str_len < find_len) {
    return -1;
  }

  for (i = 0; i < str_len; i++) {
    temp = i;
    // check if each letter from j -> j+find_len-1 of find is 
    // equal to each letter from i -> i+find_len-1 of str
    for (j = 0; j < find_len; j++) {
      if (find[j] == str[i] && j == find_len - 1) {
        return temp;
      }
      if (find[j] == str[i]) {
        i++;
        continue;
      }
      else {
        break;
      }
    }
    i = temp;
  }
  return -1;
}

// string_count(str, find) counts the number of occurences of find in str.
// time: O(n^2), n: length of str
int string_count(const char *str, const char *find) {
  int i = 0;
  int j = 0;
  int str_len = strlen(str);    // length of str
  int find_len = strlen(find);  // length of find
  int temp = 0;    // placeholder for index of str
  int count = 0;   

  for (i = 0; i < str_len; i++) {
    temp = i;
    
    // check if each letter from j -> j+find_len-1 of find is 
    // equal to each letter from i -> i+find_len-1 of str
    for (j = 0; j < find_len; j++) {
      if (find[j] == str[i] && j == find_len - 1) {
        count++;
        break;
      }
      if (find[j] == str[i]) {
        i++;
        continue;
      }
      else {
        break;
      }
    }
    
    // if find was found, increment i by find_len
    if (count > 0) {
      i = temp + find_len - 1;
    }
    else {
      i = temp;
    }
  }
  return count;
}

// string_replace(str, find, replace) replaces every occurance of find in *str
//   with replace. The returned string must be freed after use.
// effect: allocates heap memory
//         frees *str
// time: O(n^3), n: length of str
void string_replace(char **str, const char *find, const char *replace) {
  int rep_len = strlen(replace); // length of replace
  int find_len = strlen(find);   // length of find
  int len = strlen(*str);        // length of str
  int count = string_count(*str, find); // count of find in str
  int i = 0;

  char *new_str;  // new_str represents new string
  new_str = malloc((len + (rep_len - find_len) * count + 1));

  char *old_str = *str; // old_str points to what str points at
                        // so loop is easier to work with

  while (*old_str != 0) { 
    // if old_str points to find, insert replace at current index
    if (strstr(old_str, find) == old_str) {
     strcpy(&new_str[i], replace);
      i += rep_len;
      old_str += find_len;
    } 
    
    // if not find, then push letter of old_str onto new_str
    else {
      new_str[i] = *old_str;
      i++;
      old_str++;
    }
  }
  new_str[i] = '\0'; 

  // free what str used to point at, change to new_str.
  free(*str);
  *str = new_str;
}







