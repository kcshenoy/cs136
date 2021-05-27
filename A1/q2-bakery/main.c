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

#include "cs136.h"
#include "bakery.h"

// Define your own global variables here:

int dough = 0;
int chips = 0;
int cookies = 0;

// Complete the functions below (don't forget to document them):


// show_bowl(void) shows the amount of chips/dough, and the number of cookies.
// effects: produces output

void show_bowl(void) {
  printf("Amount of chocolate chips / dough in bowl: %d / %d.\n", chips, dough);
  printf("Number of cookies baked: %d\n", cookies);
}

// add_dough(amount) adds an acceptable amount of dough to the bowl
// effects: may produce output

void add_dough(int amount) {  
  if (amount < 0) {
    printf("Error: must add a positive amount of dough.\n");
  }
  
  else {
    dough += amount;
  }
  
}

// add_chips(amount) adds an acceptable amount of dough to the bowl
// effects: may produce output

void add_chips(int amount) {
  if (amount <= 0) {
    printf("Error: must add a positive amount of chips.\n");
  }
  
  else {
    chips += amount;
  }
  
}

// empty_bowl(void) clears the bowl of dough and chips
void empty_bowl(void) {
  dough = 0;
  chips = 0;
}

// bake_cookie(void) attempts to bake a cookie with all the ingredients in
// the bowl
// effects: may produce output

void bake_cookie(void) {
  
  int d2c_ratio = dough/chips;
  int d2c_decimal_1 = ((dough*10)/chips) % 10;
  int d2c_decimal_2 = ((dough*100)/chips) % 10;
  int dough_to_chips = (d2c_ratio*100 + d2c_decimal_1*10 + d2c_decimal_2);
  int dec = (d2c_decimal_1 * 10) + d2c_decimal_2;
  
  if (dough < 10 || dough > 30) {
    printf("Incorrect amount of dough used: %d\n", dough);
  }
  
  if ((dough_to_chips < 200) || (dough_to_chips > 400)) {    
    printf("Incorrect chips-to-dough ratio: 1:%d.%02d\n", 
           d2c_ratio, dec);
  }
  
  else if (((200 <= dough_to_chips) && (dough_to_chips <= 400)) && 
      ((10 <= dough) && (dough <= 30))) {
    dough = 0;
    chips = 0;
    cookies += 1;
  }
  
}

// close_bakery(void) empties the bowl and shows how many cookies were baked
// effects: produces output

void close_bakery(void) {
  dough = 0;
  chips = 0;
  if (cookies == 1) {
    printf("Bakery closed after %d cookie was baked!\n", cookies);
  }
  else {
    printf("Bakery closed after %d cookies were baked!\n", cookies);
  }
}

//==========================================
// This is the main function. DO NOT MODIFY!
int main(void) {
  run_bakery();
}
//==========================================