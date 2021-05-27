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
#include "cs136-trace.h"
#include <assert.h>
#include "merge_sort.h"
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>

// create_art(count[], symbol[], len) prints symbol[i], count[i]
// times:
void create_art(int count[], char symbol[], int len) {
  int i = 0;
  int j = 0;

  for (i = 0; i < len; i++) {
    for (j = count[i]; j > 0; j--) {
      printf("%c", symbol[i]);
    }
  }
}

// read_art(count[], symbol[], len) fills up count and symbol based
// on the input, so that the input can be replicated through passing
// count and symbol through create_art.
// effects: mutates count[] and symbol[]
int read_art(int count[], char symbol[], int len) {
  int i = 0;
  char ch = 0;
  
  // if scanned char is not == last char read, push it onto
  // symbol[] and start the count for char. If it is == the last 
  // char read, then add to the count of that char:
  while (scanf("%c", &ch) == 1) {
    if (i == 0) {
      symbol[i] = ch;
      count[i] = 1;
      i++;
    }
    else if (ch != symbol[i-1]) {
      symbol[i] = ch;
      count[i] += 1;
      i++;
    }
    else if (ch == symbol[i-1]) {
      count[i-1] = count[i-1] + 1;
      continue;
    }
  }
  return i;
}

int main(void) {
  int count[1000] = {0};
  char symbol[1000] = {0};
  int len = read_art(count,symbol,1000);
  create_art(count,symbol,len);
}