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

int up_a = 65;
int up_z = 90;

struct person {
  char name;
  int age;
  int height;
  struct person *child;
};

// person_make(name, age, height) outputs a person with fields: 
// name, age, height
struct person person_make(const char name, const int age, const int height) {
  assert(name >= up_a && name <= up_z);
  assert(age > 0 && height > 0);
  struct person new_person = {0, 0, 0};
  new_person.name = name;
  new_person.age = age;
  new_person.height = height;
  return new_person;
}

// add_child(parent, child) attaches a child to a parent if requirements are met
int add_child(struct person *parent, struct person *child) {
  assert(parent->name >= up_a && parent->name <= up_z);
  assert(parent->age > 0 && parent->height > 0);

  if (parent->age < child->age && (parent->child != NULL)) {
    return 3;
  }
  else if (parent->child != NULL) {
    return 1;
  }
  if (parent->age < child->age) {
    return 2;
  }
  else {
    parent->child = child;
    return 0;
  }
  return 0;
}

// person _print(p) prints out information on person p
// effects: produces output
void person_print(const struct person *p) {
  assert(p->name >= up_a && p->name <= up_z);
  assert(p->age > 0 && p->height > 0);

  if (p->child == NULL) {
    printf("Name %c: age %d, height %d, child -\n", p->name, p->age, p->height);
  }
  else {
    printf("Name %c: age %d, height %d, child %c\n", 
           p->name, p->age, p->height, p->child->name);
  }
}

// print_family(p) prints out information on person p and their
// family (child, child's child etc.)
// effects: produces output
void print_family(const struct person *p) { 
  while (p) {
    person_print(p);
    p = p->child;
  }
}

int main(void) {
  struct person me = person_make('M', 11, 145);
  struct person parent = person_make('P', 38, 165);
  add_child(&parent, &me);
  struct person grandparent = person_make('G', 65, 140);
  add_child(&grandparent, &parent);
  print_family(&grandparent);

  return EXIT_SUCCESS;
}