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

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>
#include "shopping_item.h"
// your includes go here
#include <string.h>
#include "cs136-trace.h"
#include <assert.h>

const int dollar = 100; // 100 cents represent 1 dollar
const int up_case = 32; // convert uppercase<->lowercase
const int low_a = 97;   // lowercase a
const int low_z = 122;  // lowercase z
const int up_a = 65;    // uppercase a
const int up_z = 90;    // uppercase z

// suggestion for a struct shpg_item; you may change this struct if necessary
struct shpg_item {
  char *name;
  int amount;
  int price;
  int priority;
};

// item_create(name, amount, priority, price) creates a shopping item with a
//   name, the amount to purchase, the price of one unit, and the priority of
//   the purchase. After use, item_destroy must be called on returned shpg_item.
// effect: allocates heap memory
// requires: price must be positive
//           amount must be non-negative
//           priority must be between 1 and 10 (both inclusive)
// time: O(n), where n is the length of name
struct shpg_item *item_create(const char *name, int amount, int price, int priority) {
  assert(price > 0);
  assert(amount >= 0);
  assert(0 <= priority && priority <= 10);
  struct shpg_item *item = malloc(sizeof(struct shpg_item));
  item->name = malloc(strlen(name) + 1);
  strcpy(item->name, name);
  item->amount = amount;
  item->price = price;
  item->priority = priority;
  return(item);
}

// item_clone(item) clones an item. After use, item_destroy must be called on
//   returned shpg_item.
// effect: allocates heap memory
// time: O(n), where n is the length of name
struct shpg_item *item_clone(const struct shpg_item *item) {
  struct shpg_item *clone = malloc(sizeof(struct shpg_item));
  char *temp = malloc(strlen(item->name) + 1);
  strcpy(temp, item->name);
  clone->amount = item->amount;
  clone->price = item->price;
  clone->priority = item->priority;
  clone->name = temp;
  return(clone);
}

// item_print(item) prints item.
// effect: produces output
// time: O(n), where n is the length of the name of item
int item_read(struct shpg_item **item) {
  char s[43];
  int amount = 0;
  int price = 0;
  int priority = 0;
  while (1) {
    scanf("%s %d %d %d",s,&amount,&price,&priority);
    *item = item_create(s, amount, price, priority);
    return 1;
  }
  return 0;
}

// item_destroy(item) frees all resoures used by item. After the call, item is
//   invalid.
// effect: frees heap memory
// time: O(1)
void item_destroy(struct shpg_item *item) {
  if (item != NULL) {
    free(item->name);
    free(item);
  }
}

// item_print(item) prints item.
// effect: produces output
// time: O(n), where n is the length of the name of item
void item_print(const struct shpg_item *item) {
  if (item != NULL) {
    int dollar_val = item->price / dollar; // dollar value
    int cent = item->price % dollar;       // cent value
    printf("%s: %dx, $%d.%02d, <%d>\n", 
           item->name, item->amount, dollar_val, cent, item->priority);
  }
}

// convert_lower(letter) converts uppercase letters to lowercase,
// then returns the letter.
int convert_lower(char letter) {
  if (letter >= up_a && letter <= up_z) {
    letter += up_case;
  }
  return letter;
}

// comp_by_name(i1, i2) returns -1 if the name of i1 comes before the one of
//   i2; 1 if the name of i1 comes after the one of i2; and 0 if the names are
//   the same (ignoring case).
// time: O(n) where n is the minimum length of the names of i1, i2
int comp_by_name(const struct shpg_item *i1, const struct shpg_item *i2) {
  int i = 0;
  int temp_i2 = 0; // temp for uppercase letters in i1
  int temp_i1 = 0; // temp for uppercase letters in i2
  int name = 0;
  int max_len_i1 = strlen(i1->name); // length of i1 name
  int max_len_i2 = strlen(i2->name); // length of i2 name

  for (i = 0; i < max_len_i1 && i < max_len_i2; i++) {

    temp_i1 = convert_lower(i1->name[i]);
    temp_i2 = convert_lower(i2->name[i]); 

    // if last letter of i1 name and i2 name are equal, 
    if (i == max_len_i1-1 && i == max_len_i2-1 && temp_i1 == temp_i2) {
      name = 0;
      break;
    }
    // if letter is the same but reach end of i1->name before i2,
    // return -1
    if (i == max_len_i1-1 && temp_i1 == temp_i2) {
      name = -1;
      break;
    }
    // if letter is the same but reach end of i2->name before i1,
    // return 1
    if (i == max_len_i2-1 && temp_i1 == temp_i2) {
      name = 1;
      break;
    }
    // if letter in index i of i1->name = i2->name then continue
    if (temp_i1 == temp_i2) {
      continue;
    }
    // if letter in same index of i1->name < i2->name, return -1
    else if (temp_i1 < temp_i2) {
      name = -1;
    }
    // if letter in same index of i1->name > i2->name, return -1
    else if (temp_i1 > temp_i2) {
      name = 1;
    }
  }

  return name;
}

// comp_by_priority(i1, i2) returns -1 if the priority of i1 is higher than the
//   one of i2; 1 if the priority of i1 is lower than the one of i2; and 0 if
//   the priorities are the same.
// time: O(1)
int comp_by_priority(const struct shpg_item *i1, const struct shpg_item *i2) {
  if (i1->priority < i2->priority) {
    return -1;
  }
  else if (i1->priority > i2->priority) {
    return 1;
  }
  return 0;
}

// item_combine(dest, source) includes the item source into dest, if they have
//   the same name.
// effect: may mutate dest
// time: O(max(m, n)) where m, n are the length of the names of dest, source
void item_combine(struct shpg_item *dest, const struct shpg_item *source) {
  if (dest != NULL && source != NULL) {
    // total amount of 2 shpg_items:
    int total_amount = dest->amount + source->amount;
    // total price of dest
    int dest_total = dest->price * dest->amount;
    // total price of source
    int source_total = source->price * source->amount;
    // result of alphabetical order of dest and source
    int same_name = comp_by_name(dest, source);

    // if dest->name is source->name, average their prices, 
    // add their amounts, and change priority accordingly
    if (same_name == 0) {
      dest->price = (dest_total + source_total) / total_amount;
      dest->amount += source->amount;
      if (source->priority > dest->priority) {
        dest->priority = source->priority;
      }
    }
  }
}







