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

// your includes go here
#include "cs136-trace.h"
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>

// === ONLY CHANGE THE CODE BELOW IF YOU KNOW WHAT YOU ARE DOING ==============

const int MY_INVALID_SYMBOL = 0;

// The maximum length for a single symbol
static const int SYMBOL_MAX_LENGTH = 64;

// The maximum number of symbols
static const int SYMBOL_MAX_COUNT = 256;

// The current count of symbols; use this global variable at your discretion.
static int _count = 1;

// The table that stores all existing symbols; use this global variable at your discretion.
static char _symbol_table[256][64] = { "INVALID_SYMBOL" };

// === ONLY CHANGE THE CODE ABOVE IF YOU KNOW WHAT YOU ARE DOING ==============

const int low_a = 97;   // lowercase a ASCII
const int low_z = 122;  // lowercase z ASCII
const int up_a = 65;    // uppercase a ASCII
const int up_z = 90;    // uppercase z ASCII
const int underscore = 95;  // underscore ASCII
const int zero = 48;    // number 0 ASCII
const int nine = 57;    // number 9 ASCII

// my_lookup_symbol(symbol_string) returns the ID for symbol_string
//   (which may be a new or existing ID) or MY_INVALID_SYMBOL
// effects: may modify _symbol_table
// time: O(n^2)
int my_lookup_symbol(const char *symbol_string) {
  assert(strlen(symbol_string) > 0);
  assert(strlen(symbol_string) < SYMBOL_MAX_LENGTH); 

  int i = 0;
  int j = 0;
  int id = 0;
  int max_len = strlen(symbol_string);
  char temp1 = 0;// initialize placeholder for symbol_table letter
  char temp2 = 0;// initialize placeholder for symbol_string letter

  // if symbol_table is full or symbol string is too long,
  // return id of 0
  if (_count == SYMBOL_MAX_COUNT - 1 || max_len > 63) {
    return MY_INVALID_SYMBOL;
  }

  // if first char of symbol_string is a letter, continue
  if ((symbol_string[0] >= low_a && symbol_string[0] <= low_z) ||
      (symbol_string[0] >= up_a && symbol_string[0] <= up_z)) {

    // loop symbol_string to check for any char that is
    // not '_', a letter or a number.
    for (i = 1; i < max_len; i++) {
      if ((symbol_string[i] == underscore ) ||
          (symbol_string[i]>= low_a && symbol_string[i] <= low_z)||
          (symbol_string[i] >= up_a && symbol_string[i] <= up_z)||
          (symbol_string[i] >= zero && symbol_string[i] <= nine)) {
        continue;
      }
      else {
        return MY_INVALID_SYMBOL;
      }
    }

    i = 0; // 0 to start new loop

    // if symbol_string already exists in _symbol_table, 
    // return its id.
    for (i = 0; i < _count; i++) {
      int len = strlen(_symbol_table[i]);
      for (j = 0; j < max_len && j < len; j++) {
        temp1 = _symbol_table[i][j];
        temp2 = symbol_string[j];    
        if (j == len-1 && j == max_len-1 && temp1 == temp2) {
          return id;
          break;
        }
        if (temp1 == temp2) {
          continue;
        }
        else {
          id++;
          break;
        }
      }
    }

    // if symbol_string does not exist in symbol_table, add
    // to the end of _symbol_table
    if (i == _count) {
      _count++;
      for (j = 0; j < max_len; j++) {
        _symbol_table[i][j] = symbol_string[j];
      }
      return id;
    }
  }
  return MY_INVALID_SYMBOL;
}

// my_read_symbol(void) returns the ID for the next valid symbol from input
//   (which may be a new or existing ID) or MY_INVALID_SYMBOL
// effects: reads from input
// time: O(n^2)
int my_read_symbol(void) {
  char s[64];
  int id = 0;
  trace_int(1);
  while (scanf(" %s", s) == 1) {
    // if MY_INVALID_SYMBOL, keep reading
    if (my_lookup_symbol(s) == 0) {
      continue;
    }
    // else, assign id value
    else {
      id = my_lookup_symbol(s);
      break;
    }
  }
  return id;
}

// my_print_symbol(symbol_id) displays the symbol corresponding to symbol_id
// requires: symbol_id is a valid ID
// effects: displays a message
void my_print_symbol(int symbol_id) {
  assert(symbol_id >= 0);

  if (symbol_id > _count) {
    printf("%s\n", _symbol_table[MY_INVALID_SYMBOL]);
  }
  else {
    printf("%s\n", _symbol_table[symbol_id]);
  }

}




