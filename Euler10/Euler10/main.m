//
//  main.m
//  Euler10
//
//  Created by Ghislain Leblanc on 2014-09-18.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPrime(unsigned long long num)
{
  for (unsigned long long i = 2; i < num; i++)
    if (num % i == 0)
      return NO;
  
  return YES;
}

int main(int argc, const char * argv[]) {
  @autoreleasepool
  {
    unsigned long long sum = 2;
    for (unsigned long long i = 3; i < 2000000; i += 2)
      if (isPrime(i))
        sum += i;
    
    NSLog(@"The answer is: %llu", sum);
  }
  return 0;
}
