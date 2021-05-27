// your includes go here

// This is a simple implementation of a main-function, which provides basic
//   assertion-based testing. Please feel free to modify it to fit your needs.
int main(void) {

  struct binary p = binary_make(10);
  struct binary q = binary_make(8);
  struct binary prod = PARALLEL_MULTIPLIER(&p, &q);
  assert(binary_to_decimal(&prod) == 80);

  return EXIT_SUCCESS;
}