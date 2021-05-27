#include <assert.h>
#include "passcheck.h"

// simple test for passcheck

int main(void){
  assert(is_valid_password("Tru$tNo1"));
  assert(!is_valid_password("outer space"));
  assert(!is_valid_password("1o3#I"));
  assert(is_valid_password("Kr!shna_Sh3noy"));
}
