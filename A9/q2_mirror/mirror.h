// SEASHELL_READONLY


// mirror(str) changes str by replacing it with the original 
//    str followed by the same string in reverse
// requires: str array be at least double the length of the original str
// effects: mutates *str
// time: O(n), n is the length of str
void mirror(char *str);


// undo_mirror(str) reverses what mirror does
// requires: str contains a previously mirrored string
// effects: mutates *str
// time: O(n), n is the length of str
void undo_mirror(char *str);
