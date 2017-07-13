//
//  main.m
//  Euler7
//
//  Created by Ghislain Leblanc on 2014-09-18.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPrime(unsigned long long num)
{
  for (unsigned long long i = 3; i <= sqrt(num); i = i + 2)
    if (num % i == 0)
      return NO;
  
  NSLog(@"%llu is prime...", num);
  
  return YES;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    unsigned int ctr = 0;
    unsigned long long num = 1;
    do
    {
      if (num % 2 != 0 && isPrime(num))
        ctr++;
      
      num++;
    } while (ctr < 10001);
    
    NSLog(@"The answer is: %llu", num - 1);
  }
  return 0;
}
