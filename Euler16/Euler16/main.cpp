//
//  main.cpp
//  Euler16
//
//  Created by Ghislain Leblanc on 2014-10-03.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#include <iostream>
#import "InfInt.h"

int main(int argc, const char * argv[]) {
  InfInt num = 2;
  unsigned long sum = 0;
  
  for (int i = 1; i < 1000; i++)
    num *= 2;
    
  for (unsigned long i = 0; i < num.numberOfDigits(); i++)
    sum += num.digitAt(i);
    
  std::cout << "The answer is: "<< sum << std::endl;
  
  return 0;
}
