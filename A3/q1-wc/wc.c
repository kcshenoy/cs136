/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from the following sources:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

# include "cs136.h"

int main(void){
  int words = 0;
  int characters = 0;
  int lines = 1;
  char previous = ' ';
  int ch = 0;

  while (1) {
    ch = read_char(false);
    if (ch == READ_CHAR_FAIL) {
      break;
    }
    
    characters += 1;
    
    // check if the previous char is a space and the current
    // char is a letter, so we add 1 to the word count.
    if (((ch > 32) && (ch <= 126)) && 
             ((previous == 32) || (previous == 10))) {
      words += 1;
      previous = ch;
    }
    
    // if the current char is a newline char, add 1 to the line
    // and character count.
    else if (ch == 10) {
      lines += 1;
      previous = ch;
    }
  
    else {
      previous = ch;
    }
  }


  printf("Lines: %d\nWords: %d\nCharacters: %d\n", lines, words, characters);
  return 0;
}
