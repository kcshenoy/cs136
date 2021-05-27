#include "editor.h"
#include <stdio.h>
#include <string.h>

// SEASHELL_READONLY

int main(void){
  struct document *pd = document_create();

  int at = -1;
  char command[10] = "";
  scanf("%s",command);
  while(strcmp(command,"quit")){
    if (!strcmp(command,"add")){ //add WORD
      char str[100];
      scanf("%s",str);     
      document_add(pd,str);
    } else if (!strcmp(command,"replace")){ //replace AT WORD
      scanf("%d",&at);
      char str[100];
      scanf("%s",str);     
      document_replace(pd,at,str);
    } else if (!strcmp(command,"mirror")){ //mirror AT
      scanf("%d",&at);
      document_mirror(pd,at);      
    } else if (!strcmp(command,"leet")){ // leet AT
      scanf("%d",&at);
      document_leet(pd,at);      
    } else if (!strcmp(command,"print")){ // print
      document_print(pd);
    } else if (!strcmp(command,"undo")){ // undo count
      int undo_count = 0;
      scanf("%d",&undo_count);
      document_undo(pd,undo_count);      
    } 
    scanf("%s",command);
  } // end while
  document_destroy(pd);
}
