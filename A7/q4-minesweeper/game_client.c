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
#include <assert.h>
#include <limits.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include "game_core.h"
#include "cs136-trace.h"

// check_clamp(c, r, width, height) returns true if c and r 
// are within the given width and height:
// time: O(1)
bool check_clamp(const int c, const int r, const int width, const int height) {
  int min_row = 0;
  int max_row = height;
  int min_col = 0;
  int max_col = width;
  
  // return true if (c, r) is valid
  return ((min_row <= r && r < max_row) && 
          (min_col <= c && c < max_col));
}


// check_surround(c, r, width, height, count) adds 1 to count
// if the given position (c, r) is a mine:
// time: O(n)
// effects: may modify count
void check_surround(const int c, const int r, const int width, const int height, int *count) {
  if (check_clamp (c, r, width, height)) {
    // add 1 to count if current position is a mine
    if (mine_at(c, r)) {
      *count = *count + 1;
    }
  }
}


// step(c, r, width, height) returns true if (c,r) contains a mine,
// and false if it does not or it has been stepped on before. It
// also assigns it a number value for the mines surrounding (c, r)
// time: O(1)
bool step(const int c, const int r, const int width, const int height) {
  int pos = r*width + c; // convert 2-D array index to 1-D
  if (check_clamp (c, r, width, height)) {

    if (player_board[pos] == UNKNOWN && !(mine_at(c, r))) {
      int count = 0;
      // count mines in 8 surrounding squares, replace
      // player_board[pos] with the number
      check_surround(c-1, r-1, width, height, &count);
      check_surround(c-1, r, width, height, &count);
      check_surround(c-1, r+1, width, height, &count);
      check_surround(c, r-1, width, height, &count);
      check_surround(c, r+1, width, height, &count);
      check_surround(c+1, r-1, width, height, &count);
      check_surround(c+1, r, width, height, &count);
      check_surround(c+1, r+1, width, height, &count); 
      player_board[pos] = count;
      return false;
    }
    // if current position is a mine, return true
    else if (mine_at(c, r)) {
      return true;
    }
  }
  return false;
}


// mark(c, r, width, height) toggles the mark on (c, r).
// time: O(1)
bool mark(const int c, const int r, int width, int height) {
  int pos = r*width + c;
  
  // if valid position is marked, unmark. If unmarked, then mark
  if (check_clamp (c, r, width, height)) {
    if (player_board[pos] == UNKNOWN) {
      player_board[pos] = MARKED;
    } 
    else if (player_board[pos] == MARKED) {
      player_board[pos] = UNKNOWN;
    }
  }
  
  return board_complete(); // return true board is complete
}


// print_pos(c, r, width, height) prints the coordinate with
// the correct mark
// time: O(1)
void print_pos(const int c, const int r, const int width, const int height) {
  int pos = r*width + c;

  if (check_clamp (c, r, width, height)) {

    if (player_board[pos] == UNKNOWN) {     // if unknown, "_"
      printf("_");
    }
    else if (player_board[pos] == MARKED) { // if marked, "P"
      printf("P");
    }
    else if (player_board[pos] == MINE) {   // if mine, "X"
      printf("X");
    }
    else {
      printf("%d", player_board[pos]);      // else, print number
    }
  }
}


// print(width, height) prints player_board with the correct marks
// at each coordinate
// time: O(n^2)
void print(int width, int height) {
  int i = 0;
  int j = 0;
  int equal = 0;

  for (i = 0; i < height; i++) {
    for (j = 0; j < width-1; j++) {
      print_pos(j, i, width, height);
      printf(" ");
    }
    print_pos(j, i, width, height);
    printf("\n");
  }
  for (equal = 0; equal < width-1; equal++) {
    printf("==");
  }
  printf("=\n");
}


// declaration of step_adv for use in check_val
bool step_adv(const int c, const int r, const int width, const int height);

// check_val(c, r, width, height) returns false if (c, r) has
// been stepped on, and runs step_adv otherwise
// time: O(n)
bool check_val(const int c, const int r, const int width, const int height) {
  int pos = r*width + c;

  if (check_clamp (c, r, width, height)) {
    // if current is unknown, run step_adv for current (c, r)
    if (player_board[pos] == UNKNOWN) {
      step_adv(c, r, width, height);
    }
  }
  return false;
}


// step_adv(c, r, width, height) steps on all squares adjacent to
// 0 mines
// time: O(n)
bool step_adv(const int c, const int r, const int width, const int height) {
  if (check_clamp (c, r, width, height)) {
    int pos = r*width + c;
    
    // if current step is a mine, return true
    if (step(c, r, width, height)) {
      return true;
    }

    {
      // count number of adjacent squares which are mines
      int count = 0;
      check_surround(c-1, r-1, width, height, &count);
      check_surround(c-1, r, width, height, &count);
      check_surround(c-1, r+1, width, height, &count);
      check_surround(c, r-1, width, height, &count);
      check_surround(c, r+1, width, height, &count);
      check_surround(c+1, r-1, width, height, &count);
      check_surround(c+1, r, width, height, &count);
      check_surround(c+1, r+1, width, height, &count); 
      player_board[pos] = count;
      
      // if count == 0 ((c, r) == 0), run for all adjacent squares
      if (count == 0) {
        check_val(c-1, r-1, width, height);
        check_val(c-1, r, width, height);
        check_val(c-1, r+1, width, height);
        check_val(c, r-1, width, height);
        check_val(c, r+1, width, height);
        check_val(c+1, r-1, width, height);
        check_val(c+1, r, width, height);
        check_val(c+1, r+1, width, height); 
      }
      else {
        return false;
      }
    }
  }
  return false;
}