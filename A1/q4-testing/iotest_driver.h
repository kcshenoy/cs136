// SEASHELL_READONLY

// iotest_driver() reads and interprets the following instructions given via the
//   console or a .in-file:
//     INPUT:       BEHAVIOUR:
//     push <int>   pushes <int> onto the stack
//     pop          pops the top integer off of the stack and prints its value
//     top          prints the value of the top integer of the stack
//     isempty      prints true if the stack is empty and false otherwise
//     count        prints the number of integers that are stored on the stack
//     reset        removes all integers from the stack
//     quit         returns from the test
// effects: reads input
//          may generate output
void iotest_driver(void);