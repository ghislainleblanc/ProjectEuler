//
//  main.m
//  Euler6
//
//  Created by Ghislain Leblanc on 2014-09-18.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool
  {
    
    unsigned long long squareOfSum = 0;
    unsigned long long sumOfSquare = 0;
    
    for (int i = 1; i <= 100; i++)
      squareOfSum += i;
    
    squareOfSum = squareOfSum * squareOfSum;
    
    NSLog(@"Square of Sum is: %llu", squareOfSum);
    
    for (int i = 1; i <= 100; i++)
      sumOfSquare += i * i;
    
    NSLog(@"Sum of Square is: %llu", sumOfSquare);
    
    NSLog(@"The answer is: %llu", squareOfSum - sumOfSquare);
  }
  return 0;
}
