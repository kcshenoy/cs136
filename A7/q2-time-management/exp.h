// SEASHELL_READONLY

// slow_exp(b, n) computes b^n.
// requires: n >= 0
//           b and n cannot be 0 at the same time
// time: O(n)
int slow_exp(int b, int n);

// fast_exp(b, n) computes b^n.
// requires: n >= 0
//           b and n cannot be 0 at the same time
// time: O(log n)
int fast_exp(int b, int n);