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

int up_a = 65; // value for uppercase a
int up_z = 90; // value for uppercase z

struct person {
  char name;
  int age;
  int height;
};

// person_make(name, age, height) outputs a person with fields: 
// name, age, height
struct person person_make(char name, int age, int height) {
  assert(name >= up_a && name <= up_z);
  assert(age > 0 && height > 0);
  struct person new_person = {name, age, height};
  return new_person;
}

// birthday_byvalue(p) takes a constant struct person and returns
// a struct person with their age increased by 1, and height changed accordingly
struct person birthday_byvalue(const struct person p) {
  assert(p.name >= up_a && p.name <= up_z);
  assert(p.age > 0 && p.height > 0);
  struct person new_person = {p.name, p.age, p.height};
  new_person.age += 1;
  
  if (new_person.age <= 18) {
    new_person.height += 6;
  }
  
  return new_person;
}

// birthday_byref(p) takes a struct person and increases the age by 1,
// and changes the height accordingly.
// effects: modifies p
void birthday_byref(struct person *p) {
  assert(p->name >= up_a && p->name <= up_z);
  assert(p->age > 0 && p->height > 0);
  
  p->age += 1;
  
  if (p->age <= 18) {
    p->height += 6;
  }
}

// person_print(p) takes a struct person and prints out their name,
// age, and height.
// effects: produces output.
void person_print(const struct person *p) {
  assert(p->name >= up_a && p->name <= up_z);
  assert(p->age > 0 && p->height > 0);
  printf("Name %c: age %d, height %d\n", p->name, p->age, p->height);
}

int main(void) {

  // read values from input
  char name = '\0';
  int age = INT_MIN;
  int height = INT_MIN;

  if (scanf("%c", &name) != 1) {
    return EXIT_FAILURE;
  }
  if (scanf("%d", &age) != 1) {
    return EXIT_FAILURE;
  }
  if (scanf("%d", &height) != 1) {
    return EXIT_FAILURE;
  }

  // do some basic testing
  struct person me = person_make(name, age, height);
  assert(me.name == name);
  assert(me.age == age);
  assert(me.height == height);
  person_print(&me);
  birthday_byref(&me);
  person_print(&me);
  struct person new_me = birthday_byvalue(me);
  person_print(&new_me);
  
  return EXIT_SUCCESS;
}