#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "mirror.h"

// SEASHELL_READONLY

// a simple I/O test client for mirror

int main(void) {
  // fixed length array of size 100 this means that we are artifically
  // restricting ourselves with strings that
  // never exceed 100. Doing so will result in undefined behaviour
  char src[100] = "";
  char command[10] = "";
  scanf("%s",command);
  while(strcmp(command,"quit")){
    if (!strcmp(command,"read")){
      scanf("%s",src);
    } else if (!strcmp(command,"mirror")){
      mirror(src);
    } else if (!strcmp(command,"undo")){
      undo_mirror(src);
    } else if (!strcmp(command,"print")){
      printf("%s\n",src);
    }
    scanf("%s",command);
  }
}

