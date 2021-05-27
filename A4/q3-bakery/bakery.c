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
#include "bakery.h"
#include "cs136.h"

//*** The following code allows run_bakery to call these six bakery-functions.
//*** DO NOT MODIFY THE LINES BELOW *******************************************
extern void show_bowl(const struct bakery *bakery);
extern void add_dough(struct bakery *bakery, int amount);
extern void add_chips(struct bakery *bakery, int amount);
extern void bake_cookie(struct bakery *bakery);
extern void empty_bowl(struct bakery *bakery);
extern void close_bakery(struct bakery *bakery);
//*** DO NOT MODIFY THE LINES ABOVE********************************************


void run_bakery(struct bakery *my_bakery) {
  
  // assign each valid command to a symbol:
  const int CMD_DOUGH = lookup_symbol("dough");
  const int CMD_CHIPS = lookup_symbol("chips");
  const int CMD_CLOSE = lookup_symbol("close");
  const int CMD_SHOW = lookup_symbol("show");
  const int CMD_EMPTY = lookup_symbol("empty");
  const int CMD_BAKE = lookup_symbol("bake");

  int command = read_symbol();
  
  while (INVALID_SYMBOL != command) { // loop while valid symbols are given
    if (command == CMD_CLOSE) {
      close_bakery(my_bakery);
      break;
    }
    
    // check if current command is "dough":
    else if (command == CMD_DOUGH) {
      int amount = INT_MIN;
      if (scanf("%d", &amount) == 0) { // check for valid integer input
        printf("Error: not a number\n");
        break;
      }
      else {
        add_dough(my_bakery, amount);
      }
    }
    
    // check if current command is "chips":
    else if(command == CMD_CHIPS) {
      int amount = INT_MIN;
      if (scanf("%d", &amount) == 0) { // check for valid integer input
        printf("Error: not a number\n");
        break;
      }
      else {
        add_chips(my_bakery, amount);
      }
    }
    
    // check if command is "show" (show bowl):
    else if (command == CMD_SHOW) {
      show_bowl(my_bakery);
    }
    
    // check if command is "empty" (empty bowl):
    else if (command == CMD_EMPTY) {
      empty_bowl(my_bakery);
    }
    
    // check if command is "bake" (bake_cookie):
    else if (command == CMD_BAKE) {
      bake_cookie(my_bakery);
    }
    
    // if current symbol is not a defined command, print warning message:
    else {
      printf("Error: not a command\n");
      break;
    }
    command = read_symbol(); // continue loop for next symbol
  }

}