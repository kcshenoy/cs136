#include <stdbool.h>

// Credential holds informatin about a user. You assume that sensitive
// information might be stored in this structure.
struct credential;

// get_username(credArray, index, name, length) copies the username from the
// credential array at [index] in [name]. [length] indicates the length of
// [name].
void get_username(struct credential *credArray, int index, char *name, int length);

// is_valid(credArray, name, password) checks if the [name] and the [password]
// match at least one credential stored in the credential array.
bool is_valid(struct credential *credArray, char *name, char *password);

// load_credentials(credArray, count) stores an array of credential structs in
// [credArray] and the number of credentials in [count].
void load_credentials(struct credential **credArray, int *count);

// unload_credentials(credArray) unloads credArray from memory
void unload_credentials(struct credential *credArray);
