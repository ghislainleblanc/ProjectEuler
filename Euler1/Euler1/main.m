//
//  main.m
//  Euler1
//
//  Created by Ghislain Leblanc on 2014-09-15.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    unsigned long long sum = 0;
    for (unsigned long long i = 0; i < 100000000; i++)
      if (!(i % 3) || !(i % 5))
        sum += i;
    
    NSLog(@"The answer is: %llu", sum);
  }
  return 0;
}

