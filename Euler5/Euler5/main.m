//
//  main.m
//  Euler5
//
//  Created by Ghislain Leblanc on 2014-09-17.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isEvenlyDivisible(unsigned long long num)
{
  for (unsigned char i = 1; i <= 20; i++)
    if (num % i != 0)
      return NO;
  
  return YES;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    BOOL found = NO;
    unsigned long long num = 20;
    do
    {
      if (isEvenlyDivisible(num))
        found = YES;
      else
        num++;
    } while (!found);
    NSLog(@"The answer is: %llu", num);
  }
  return 0;
}

