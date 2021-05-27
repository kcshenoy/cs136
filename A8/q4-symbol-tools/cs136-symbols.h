// SEASHELL_READONLY

/****************************************************************************
  SYMBOL TOOLS
****************************************************************************/

// symbols follow the same naming convention as identifiers ("names") in C:
//   * they can only contain letters, underscores and numbers
//   * they must start with a letter
//   * they must be <= 63 characters
// at most there can be 255 symbols defined

// when reading or looking up symbols, they are assigned an int ID

// the constant MY_INVALID_SYMBOL is returned by lookup_symbol & read_symbol when:
// * the next symbol in the input or the parameter is invalid
// * the end of the input (e.g., EOF) is encountered (read_symbol)
// * a new symbol is being defined and 255 symbols have already been defined
extern const int MY_INVALID_SYMBOL;

// my_read_symbol(void) returns the ID for the next valid symbol from input
//   (which may be a new or existing ID) or MY_INVALID_SYMBOL
// effects: reads from input
int my_read_symbol(void);

// my_lookup_symbol(symbol_string) returns the ID for symbol_string
//   (which may be a new or existing ID) or MY_INVALID_SYMBOL
int my_lookup_symbol(const char *symbol_string);

// my_print_symbol(symbol_id) displays the symbol corresponding to symbol_id
// requires: symbol_id is a valid ID
// effects: displays a message
void my_print_symbol(int symbol_id);