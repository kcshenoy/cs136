#include <stdio.h>
#include <stdlib.h>
#include "merge.h"

// SEASHELL_READONLY

const int MAX_STRING_LENGTH = 10;


int main(void){
   int first_len, second_len;

   // length of first sorted array of strings
   scanf("%d",&first_len);
   char **first_array = malloc(first_len * sizeof(char *));

   // populate first sorted array of strings
   for(int i = 0; i < first_len; ++i){
      first_array[i] = malloc((MAX_STRING_LENGTH+1) * sizeof(char));
      scanf("%s",first_array[i]);
   }

   // length of second sorted array of strings
   scanf("%d",&second_len);
   char **second_array = malloc(second_len * sizeof(char *));
   
   //populate second sorted array of strings
   for(int i = 0; i < second_len; ++i){
      second_array[i] = malloc((MAX_STRING_LENGTH+1) * sizeof(char));
      scanf("%s",second_array[i]);
   }

  char **ret_array = merge(first_array,first_len,second_array,second_len);
  for(int i = 0; i < first_len + second_len; ++i){
    printf("%s\n",ret_array[i]);
  }

  // will free ret_array but not the individual pointers in this array
  // since the original arrays still have pointers pointing to these strings
  free(ret_array);


  // first free strings in first_array
  for(int i = 0; i < first_len; ++i){
      free(first_array[i]);
   }
  // now free the array
  free(first_array);

   
  // first free strings in second_array
  for(int i = 0; i < second_len; ++i){
    free(second_array[i]);
  }
  // now free the array
  free(second_array);
 }

