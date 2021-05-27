// SEASHELL_READONLY

#include "cs136.h"

// Please refer to the assignment for documentation.
struct rtnl {
  int num;
  int den;
};

// Please refer to the assignment for documentation.
void rtnl_simplify(struct rtnl *r);

// Please refer to the assignment for documentation.
struct rtnl rtnl_plus(const struct rtnl *a, const struct rtnl *b);

// rtnl_sqrt(r) calculates the square root of r. Be aware that due to the nature
//    of square root and limitation of C, the results are inherently imprecise.
struct rtnl rtnl_sqrt(const struct rtnl *r);