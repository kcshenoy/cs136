// SEASHELL_READONLY

#define BOOL int
#define TRUE 1
#define FALSE 0

// AND(a, b) implements an AND gate; it returns a ⋀ b.
BOOL AND(int a, int b);

// OR(a, b) implements an OR gate; it returns a ⋁ b.
BOOL OR(int a, int b);

// NOT(a, b) implements a NOT gate; it returns ¬a.
BOOL NOT(int a);

// NAND(a, b) implements a NAND gate; it returns a ↑ b.
BOOL NAND(int a, int b);

// NOR(a, b) implements a NOT gate; it returns a ↓ b.
BOOL NOR(int a, int b);

// XOR(a, b) implements a XOR gate; it returns a ⊕ b.
BOOL XOR(int a, int b);

// XNOR(a, b) implements a XNOR gate; it returns a ⊙ b.
BOOL XNOR(int a, int b);