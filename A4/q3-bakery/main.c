// SEASHELL_READONLY

#include "cs136.h"
#include "bakery.h"

// Global consts
const int min_dough = 10; // Minimum amount of dough required for cookie
const int max_dough = 30; // Maximum amount of dough allowed for cookie
const int max_ratio = 2; // Minimum value of dough / chips
const int min_ratio = 4; // Maximum value of dough / chips

// show_bowl() prints information about the bakery.
// effects: prints to output
void show_bowl(const struct bakery *bakery) {
  printf("Amount of chocolate chips / dough in bowl: %d / %d.\n",
         bakery->chips_count,
         bakery->dough_count);
  printf("Number of cookies baked: %d\n", bakery->cookies_baked);
}

// add_dough(amount) adds amount of dough to the bowl.
// effects: may mutate global variables
//          may print to output
void add_dough(struct bakery *bakery, int amount) {
  if (amount > 0) {
    bakery->dough_count += amount;
  } else {
    printf("Error: must insert a positive amount of dough.\n");
  }
}

// add_chips(amount) adds amount of chocolate chips to the bowl.
// effects: may mutate global variables
//          may print to output
void add_chips(struct bakery *bakery, int amount) {
  if (amount > 0) {
    bakery->chips_count += amount;
  } else {
    printf("Error: must insert a positive amount of chips.\n");
  }
}

// empty_bowl() empties the bowl.
// effects: mutates global variables
void empty_bowl(struct bakery *bakery) {
  bakery->dough_count = 0;
  bakery->chips_count = 0;
}

// bake_cookie() attempts to bake one cookie.
// effects: may mutate global variables
//          may print to output
void bake_cookie(struct bakery *bakery) {
  bool success = true;

  // check amount restictions
  if ((min_dough > bakery->dough_count) || (bakery->dough_count > max_dough)) {
    printf("Incorrect amount of dough used: %d\n", bakery->dough_count);
    success = false;
  }
  // check ratio restictions
  if ((bakery->chips_count * min_ratio < bakery->dough_count) ||
      (bakery->chips_count * max_ratio > bakery->dough_count)) {
    printf("Incorrect chips-to-dough ratio: 1:%d.%02d\n",
           bakery->dough_count / bakery->chips_count,
           (bakery->dough_count * 100 / bakery->chips_count) % 100);
    success = false;
  }

  if (success) {
    ++(bakery->cookies_baked);
    bakery->dough_count = 0;
    bakery->chips_count = 0;
    empty_bowl(bakery);
  }
}

// close_bakery() empties the bowl and closes the bakery,
// effects: prints to output
void close_bakery(struct bakery *bakery) {
  empty_bowl(bakery);
  if (bakery->cookies_baked == 1) {
    printf("Bakery closed after %d cookie was baked!\n", bakery->cookies_baked);
  } else {
    printf("Bakery closed after %d cookies were baked!\n", bakery->cookies_baked);
  }
}

int main(void) {
  // my_bakery keeps track of the state of my bakery
  struct bakery my_bakery = { 0, 0, 0 };
  run_bakery(&my_bakery);
  
  return EXIT_SUCCESS;
}