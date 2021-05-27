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
#include "cs136.h"

// expt_num(num_1, num_2, num_3, num_4, num_5, num_6, num_7, num_8, num_9)
// takes the number of occurences of each digit and returns the corresponding
// exponent need for 10 when adding.

int expt_num (int num_1, int num_2, int num_3, int num_4, int num_5,
             int num_6, int num_7, int num_8, int num_9) {
  int expt_count = 0;
  
  if (num_1 > 0) {
    expt_count += 2;
  }
  if (num_2 > 0) {
    expt_count += 2;
  }
  if (num_3 > 0) {
    expt_count += 2;
  }
  if (num_4 > 0) {
    expt_count += 2;
  }
  if (num_5 > 0) {
    expt_count += 2;
  }
  if (num_6 > 0) {
    expt_count += 2;
  }
  if (num_7 > 0) {
    expt_count += 2;
  }
  if (num_8 > 0) {
    expt_count += 2;
  }
  if (num_9 > 0) {
    expt_count += 2;
  }
  return expt_count-1;

}

// ten_power(expt) returns the value of 10 to the expt'th power.
// requires: expt >= 0
int ten_power(int expt) {
  assert(expt >= 0);
  int base = 1;
  while (expt > 0) {
     base *= 10;
     expt -= 1;
  }  
  return base;
}

// return_num(num) returns the value of "looking and saying" num (11 => 21)
int return_num (int num) {

  int count_1 = 0;
  int count_2 = 0;
  int count_3 = 0;
  int count_4 = 0;
  int count_5 = 0;
  int count_6 = 0;
  int count_7 = 0;
  int count_8 = 0;
  int count_9 = 0;
  
    while (num != 0) {
        int digit = num%10;
        if (num < 0) {
          num *= -1;
        }
        if (digit == 1) {
          count_1 += 1;
          num/= 10;
        }
        if (digit == 2) {
          count_2 += 1;
          num/= 10;
        }
        if (digit == 3) {
          count_3 += 1;
          num/= 10;
        }
        if (digit == 4) {
          count_4 += 1;
          num/= 10;
        }
        if (digit == 5) {
          count_5 += 1;
          num/= 10;
        }
        if (digit == 6) {
          count_6 += 1;
          num/= 10;
        }
        if (digit == 7) {
          count_7 += 1;
          num/= 10;
        }
        if (digit == 8) {
          count_8 += 1;
          num/= 10;
        }
        if (digit == 9) {
          count_9 += 1;
          num/= 10;
        }
    }
  int sum = 0;
  int exponent = expt_num(count_1, count_2,count_3,count_4,count_5,
            count_6,count_7,count_8,count_9);
                  
  while (exponent >= 0) {
    if (count_1 > 0) {
      int new_1 = count_1 * ten_power(exponent);
      sum += new_1;
      exponent -= 1;
      sum += ten_power(exponent);
      count_1 = 0;
    }
    else if (count_2 > 0) {
      int new_2 = count_2 * ten_power(exponent);
      sum += new_2;
      exponent -= 1;
      sum += 2 * ten_power(exponent);
      count_2 = 0;
    }
    else if (count_3 > 0) {
      int new_3 = count_3 * ten_power(exponent);
      sum += new_3;
      exponent -= 1;
      sum += 3 * ten_power(exponent);
      count_3 = 0;
    }
    else if (count_4 > 0) {
      int new_4 = count_4 * ten_power(exponent);
      sum += new_4;
      exponent -= 1;
      sum += 4 * ten_power(exponent);
      count_4 = 0;
    }
    else if (count_5 > 0) {
      int new_5 = count_5 * ten_power(exponent);
      sum += new_5;
      exponent -= 1;
      sum += 5 * ten_power(exponent);
      count_5 = 0;
    }
    else if (count_6 > 0) {
      int new_6 = count_6 * ten_power(exponent);
      sum += new_6;
      exponent -= 1;
      sum += 6 * ten_power(exponent);
      count_6 = 0;
    }
    else if (count_7 > 0) {
      int new_7 = count_7 * ten_power(exponent);
      sum += new_7;
      exponent -= 1;
      sum += 7 * ten_power(exponent);
      count_7 = 0;
    }
    else if (count_8 > 0) {
      int new_8 = count_8 * ten_power(exponent);
      sum += new_8;
      exponent -= 1;
      sum += 8 * ten_power(exponent);
      count_8 = 0;
    }
    else if (count_9 > 0) {
      int new_9 = count_9 * ten_power(exponent);
      sum += new_9;
      exponent -= 1;
      sum += 9 * ten_power(exponent);
      count_9 = 0;
    } exponent -= 1;
  } return sum;                  
}

// sequence_val(num) returns the num'th value of the look and say
// sequence
int sequence_val (int num) {

  int base = 1;
  for(int i = 1; i <= num; ++i) {
    if (i == num) {
      return return_num(base);
    }
    else {
      base = return_num(base);
    }
  }
  return base;
}
  

int main(void) {
  trace_int(sequence_val(5));
  int seed = read_int();
  int n = read_int();
  int l_and_s = 0;
  if (((READ_INT_FAIL == seed) || (READ_INT_FAIL == n)) ||
      ((seed <= 0) || (n <= 0))) //|| (n < seed))
  {
    printf("Invalid inputs.\n");
  }
  else {
    for (int j = seed-1; j < n + seed-1; ++j) {
      l_and_s = sequence_val(j);
      printf("%d\n", l_and_s);
    }
  }

  return 0;
}