// SEASHELL_READONLY

// iotest_driver() reads and interprets the following instructions given via the
//   console or a .in-file:
//     INPUT:        BEHAVIOUR:
//     plus <int>    calls plus(int)
//     minus <int>   calls minus(int)
//     quit          returns from example_io
// effects: reads input
//          may generate output
void iotest_driver(void);