/////////////////////////////////////////////////////////////////////////////
// INTEGRITY INSTRUCTIONS (v2)

// Explicitly state the level of collaboration on this question
// Examples:
//   * I discussed ideas with classmate(s) [include name(s)]
//   * I worked together with classmate(s) in the lab [include name(s)]
//   * Classmate [include name] helped me debug my code
//   * I consulted website [include url]
//   * None
//
// A "None" indicates you completed this question entirely by yourself
// (or with assistance from course staff, which you do not have to mention)
/////////////////////////////////////////////////////////////////////////////
// INTEGRITY STATEMENT:
// I received help from and/or collaborated with:

// None

// Name: Krishna Shenoy
// login ID: kshenoy
/////////////////////////////////////////////////////////////////////////////

#include "boolean.h" 

// AND(a, b) gives the same result as the AND gate
BOOL AND(int a, int b) {
  if (a != 0) {
    if (b != 0) {
      return TRUE;
    }
  }
  return FALSE;
}

// OR(a, b) gives the same result as the OR gate
BOOL OR(int a, int b) {
  if (a != 0) {
    return TRUE;
  }
  else if (b != 0) {
    return TRUE;
  }
  else {
    return FALSE;
  }
}

// NOT(a, b) gives the same result as the NOT gate
BOOL NOT(int a) {
  if (a != 0) {
    return FALSE;
  }
  else {
    return TRUE;
  }
}

// XOR(a, b) gives the same result as the XOR gate
BOOL XOR(int a, int b) {
  if (a != 0) {
    if (b == 0) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  else if (b != 0) {
    return TRUE;
  }
  else {
    return FALSE;
  }
}

// NOR(a, b) gives the same result as the NOR gate
BOOL NOR(int a, int b) {
  if (OR(a, b) == TRUE) {
    return FALSE;
  }
  else {
    return TRUE;
  }
}

// XNOR(a, b) gives the same result as the XNOR gate
BOOL XNOR(int a, int b) {
  if (a != 0) {
    if (b != 0) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
  else {
    if (b == 0) {
      return TRUE;
    }
    else {
      return FALSE;
    }
  }
}

// NAND(a, b) gives the same result as the NAND gate
BOOL NAND(int a, int b) {
  return (OR(NOT(a), NOT(b)));
}