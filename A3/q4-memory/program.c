#include <stdio.h>

// SEASHELL_READONLY

// This code doesn't do anything special.
// We just wanted some fun names (identifiers)

const int bb = 8;
int rogue = 1;

int finn(int a);
int rey(int b);
int poe(int c, int d);

int finn(int a) {
  const int y = rey(poe(a - 1, a + 1));
  int z = poe(y, 2 * y);
  z += y;
  printf("printing within finn(%d)\n", a);
  return y + z + rogue + bb;
}

int rey(int b) {
  printf("printing within rey(%d)\n", b);
  int a = poe(b * -5, b * 5);
  return a;
}

int poe(int c, int d) {
  int e = c - d;
  rogue++;
  printf("printing within poe(%d, %d)\n", c, d);
  if (e >= 0) {
    return c / 2;
  } else {
    return d / 2;
  }
}


int main(void) {
  int x = finn(-6);
  printf("x = %d\n", x);
}
