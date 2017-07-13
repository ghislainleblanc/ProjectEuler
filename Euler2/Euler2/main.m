//
//  main.m
//  Euler2
//
//  Created by Ghislain Leblanc on 2014-09-15.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

unsigned long long fibo(unsigned long long a, unsigned long long b)
{
  return a + b;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    unsigned long long prev1 = 0;
    unsigned long long prev2 = 1;
    unsigned long long fib = 0;
    unsigned long long sum = 0;
    
    while (fib <= 4000000)
    {
      NSLog(@"%llu", fib);
      fib = fibo(prev1, prev2);
      if (fib % 2 == 0)
        sum += fib;
      prev2 = prev1;
      prev1 = fib;
    }
    
    NSLog(@"The answer is: %llu", sum);
  }
  
  return 0;
}

