//
//  main.m
//  Euler12
//
//  Created by Ghislain Leblanc on 2014-09-20.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL hasFiveHundredDivisors(unsigned long long num)
{
  int ctr = 0;
  
  for (unsigned long long i = 1; i <= num / 2; i++)
    if (num % i == 0)
      ctr++;
  
  return ctr + 1 > 500;
}

int main(int argc, const char * argv[]) {
  @autoreleasepool
  {
    unsigned long long triangleNumber = 0;
    unsigned long long num = 0;
    do
    {
      triangleNumber = 0;
      for (unsigned long long i = 1; i <= num; i++)
        triangleNumber += i;
        
      num++;
    } while (! hasFiveHundredDivisors(triangleNumber));
    
    NSLog(@"The answer is: %llu", triangleNumber);
    
    return 0;
  }
}
