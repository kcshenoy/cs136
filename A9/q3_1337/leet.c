/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from the following sources:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include "leet.h"
#include <string.h>
#include <assert.h>
#include "cs136-trace.h"
#include <stdio.h>

const int a = 65; // 'A' ASCII
const int e = 69; // 'I' ASCII
const int i = 73; // 'I' ASCII
const int l = 76; // 'L' ASCII
const int o = 79; // 'O' ASCII
const int t = 84; // 'T' ASCII
const int u = 85; // 'U' ASCII

const char a_rep[3] = "/-\\"; // string to replace 'A'
const char e_rep[1] = "3";    // string to replace 'E'
const char i_rep[1] = "!";    // string to replace 'I'
const char l_rep[1] = "1";    // string to replace 'L'
const char o_rep[2] = "[]";   // string to replace 'O'
const char t_rep[1] = "7";    // string to replace 'T'
const char u_rep[3] = "|_|";  // string to replace 'U'

// leet(str) applies the leet encoding to the given string using:
//   O -> []   I -> !    E -> 3    T -> 7
//   A -> /-\  U -> |_|  L -> 1
//   The function assumes that the string array has enough 
//   space to hold the resulting leet string
// Implementation restriction: the function must not create
//   a new char array/string i.e. it must create the leet 
//   encoding "in place" by manipulating characters in the 
//   existing string
// requires: str is not NULL 
// effects: mutates *str
// time: O(n^2), n is the length of str
void leet(char *str){
  assert(str);
  int a_len = 3; // length of string to replace 'A'
  int o_len = 2; // length of string to replace 'O'
  int u_len = 3; // length of string to replace 'U'
  int len = strlen(str);

  int ind = 0;
  int j = 0;

  if (len != 0) {
    for (ind = 0; ind < len; ind++) {

      // replace all "single value" letters (e,i,l,t) at index:
      if (str[ind] == e) {
        str[ind] = e_rep[0];
      }
      if (str[ind] == i) {
        str[ind] = i_rep[0];
      }
      if (str[ind] == l) {
        str[ind] = l_rep[0];
      }
      if (str[ind] == t) {
        str[ind] = t_rep[0];
      }

      // replace all "multi-value" letters (a,o,u) at index, shift
      // chars forward according to length of replacement:
      if (str[ind] == a) {
        // shift chars by a_len:
        for (j = len - ind; j > 0; j--) {
          str[ind+a_len+j-1] = str[ind+j];
        }
        // replace indices with a_rep chars:
        for (j = 0; j < a_len; j++) {
          str[ind+j] = a_rep[j];
        }
        len += a_len-1; // change len since replace longer than a
        ind += a_len-1; // shift to read next char to replace
      }
      
      // repeat process for 'a' with o and u, using
      // respective lengths:
      if (str[ind] == o) {
        for (j = len - ind; j > 0; j--) {
          str[ind+o_len+j-1] = str[ind+j];
        }
        for (j = 0; j < o_len; j++) {
          str[ind+j] = o_rep[j];
        }
        len += o_len-1;
        ind += o_len-1;
      }
      if (str[ind] == u) {
        for (j = len - ind; j > 0; j--) {
          str[ind+u_len+j-1] = str[ind+j];
        }
        for (j = 0; j < u_len; j++) {
          str[ind+j] = u_rep[j];
        }
        len += u_len-1;
        ind += u_len-1;
      }
    }
  }
}

// undo_leet(str) will undo a string that had previously 
//   been leet encoded. The sequence of application of leet 
//   followed by undo_leet only produces str again if str 
//   does not originally contain any of the leet encodings 
//   to begin with. For example, if str already had a 3, 
//   undo_leet will change that to an E.
// requires: str is not NULL 
// effects: mutates *str
// time: O(n^2), n is the length of str
void undo_leet(char *str){
  assert(str);
  int ind = 0;
  int j = 0;
  int len = strlen(str)-1;

  int a_len = 3; // length of string to replace 'A'
  int o_len = 2; // length of string to replace 'O'
  int u_len = 3; // length of string to replace 'U'

  for (ind = 0; ind <= len; ind++) {
    
    // replace all "single value" chars (3,!,7,1) with respective
    // letters (e,i,t,l)
    if (str[ind] == '3') {
      str[ind] = e;
    }
    else if (str[ind] == '!') {
      str[ind] = i;
    }
    else if (str[ind] == '1') {
      str[ind] = l;
    }
    else if (str[ind] == '7') {
      str[ind] = t;
    }

    // replace all "multi-value" chars (/-\,|_|,[]) with
    // respective letters (a,u,o):
    
    // check for all 3 members of a_rep in a row:
    else if (str[ind] == '/'&&str[ind+1] == '-'&&str[ind+2] == '\\') {
      str[ind] = a; // replace current index with 'A'
      // shift letters back:
      for (j = 1; j+ind < len; j++) {
        str[ind+j] = str[ind+j+a_len-1];
      }
    }
    
    // repeat process in 'A' for 'O' and 'U', using respective
    // replaces and lengths:
    else if (str[ind] == '['&&str[ind+1] == ']') {
      str[ind] = o;
      for (j = 1; j+ind < len; j++) {
        str[ind+j] = str[ind+j+o_len-1];
      }
    }
    else if (str[ind] == '|'&&str[ind+1] == '_'&&str[ind+2] == '|') {
      str[ind] = u;
      for (j = 1; j < len; j++) {
        str[ind+j] = str[ind+j+u_len-1];
      }
    }
  }
}
















