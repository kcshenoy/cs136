#include <assert.h>
#include "cs136-trace.h"
#include <stdio.h>
#include <stdlib.h>
#include "editor.h"

int main(void) {
  {
    char *string = string_make("Hello world!");
    printf("%s\n", string);
    free(string);
  }

  {
    char *string = string_make("Hello world!");
    assert(string_find_next(string, "ll") == 2);
    assert(string_find_next(string, "ooo") == -1);
    assert(string_find_next(string, "o") == 4);
    assert(string_find_next(string, " ") == 5);
    assert(string_count(string, "l") == 3);
    assert(string_count(string, "o") == 2);
    assert(string_count(string, "a") == 0);
    assert(string_count(string, "ll") == 1);
    assert(string_count("Helllo world", "ll") == 1);
    free(string);
  }
  {
    char *string = string_make("Russellll Westbrooooook");
    assert(string_find_next(string, "ll") == 5);
    assert(string_count(string, "ll") == 2);
    assert(string_count(string, "oo") == 3);
    assert(string_count(string, "o") == 6);
    free(string);
  }

  {
    char *string = string_read();
    //printf("%s", string);

    string_replace(&string, "elite", "31337");
    string_replace(&string, "cod", "|<0|)");
    string_replace(&string, "me", "ME");
    string_replace(&string, "s", "5");
    string_replace(&string, "t", "7");
    string_replace(&string, "o", "0");
    string_replace(&string, "h", "|-|");
    string_replace(&string, "n", "|\\|");

    printf("%s\n", string);

    free(string);
  }

  return EXIT_SUCCESS;
}