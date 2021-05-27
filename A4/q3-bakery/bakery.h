// SEASHELL_READONLY

// struct bakery keeps track of the state of one bakery.
struct bakery {
  int dough_count;
  int chips_count;
  int cookies_baked;
};

// run_bakery(my_bakery) uses my_bakery to store all information about the
//    bakery while reading and interpreting the following instructions given via
//    the console or a .in-file:
//     INPUT:       BEHAVIOUR:
//     show         displays information about the bakery
//     dough <int>  adds <int> amount of dough into the bowl
//     chips <int>  adds <int> amount of chocolate chips into the bowl
//     bake         attempts to bake one single cookie using all the dough and
//                    chips in the bowl
//     empty        empties the bowl
//     close        closes the bakery
// effects: reads input
//          may generate output
void run_bakery(struct bakery *my_bakery);
