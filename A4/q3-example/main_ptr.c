//SEASHELL_READONLY

#include "cs136.h"

// *** The three functions to test ********************************************

int plus(const int a, const int b) {
  return a + b;
}

int minus(const int a, const int b) {
  return a - b;
}

void print(const int a) {
  printf("Value: %d\n", a);
}

// ****************************************************************************


// *** The I/O-test suite *****************************************************

// exec_func() executes func with value as its first parameter. The second
//   parameter is read from input. On success, the result of func is written
//   into value.
// effect: may mutate value
//         may print output
void exec_func(int *value, int func(int, int)) {
  assert(value);
  assert(func);
  int param = INT_MIN;
  if (scanf("%d", &param) == 0) {
    printf("Warning: invalid number input\n");
  } else {
    *value = func(*value, param);
  }
}

int main(void) {
  // value keeps track of the result of our operations
  int value = 0;
  
  // we are registering the four supported commands by assigning a string,
  //   such as, "plus", to a const int, here CMD_PLUS.
  const int CMD_PLUS = lookup_symbol("plus");
  const int CMD_MINUS = lookup_symbol("minus");
  const int CMD_PRINT = lookup_symbol("print");
  const int CMD_QUIT = lookup_symbol("quit");

  int cmd = read_symbol(); // read_symbol reads a string from input and either
                           //   returns a number unique to this string, or
                           //   INVALID_SYMBOL, if the input cannot be read.
  
  while(INVALID_SYMBOL != cmd) {
    
    // We are now comparing the command that we just read using read_symbol with
    //   the four const int that we have registered above.
    if (CMD_QUIT == cmd) {         // quit-command detected
      printf("Bye!\n");
      break;
    } else if (CMD_PLUS == cmd) {  // plus-command detected
      exec_func(&value, plus);
    } else if (CMD_MINUS == cmd) { // minus-command detected
      exec_func(&value, minus);
    } else if (CMD_PRINT == cmd) { // print-command detected
      print(value);
    } else {                       // The command that we just read was not
                                   //   among the four registered above.
      printf("Warning: invalid command\n");
    }
    cmd = read_symbol();           // read next command, continue while loop
  }
  
  return EXIT_SUCCESS;
}
