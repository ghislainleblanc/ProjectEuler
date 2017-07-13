//
//  main.m
//  Euler3
//
//  Created by Ghislain Leblanc on 2014-09-16.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPrime(unsigned long long num)
{
  for (unsigned long long i = 3; i < sqrt(num); i = i + 2)
    if (num % i == 0)
      return NO;
  
  return YES;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    for (unsigned long long i = 300425737571; i >= 3 ; i = i - 2)
      if (600851475143 % i == 0 && isPrime(i))
        NSLog(@"The answer is: %llu", i);
  }
  return 0;
}

