//
//  main.m
//  Euler4
//
//  Created by Ghislain Leblanc on 2014-09-17.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL isPalindrome(unsigned long num)
{
  NSString *stringNum = [NSString stringWithFormat:@"%ld", num];
  
  for (unsigned long i = 0; i < stringNum.length; i++)
    if ([stringNum characterAtIndex:i] != [stringNum characterAtIndex:stringNum.length - 1 - i])
      return NO;
  
  return YES;
}

int main(int argc, const char * argv[])
{
  @autoreleasepool
  {
    unsigned long biggestPalindrome = 0;
    for (unsigned long i = 100; i <= 999; i++)
      for (unsigned long j = 100; j <= 999; j++)
        if (isPalindrome(i * j) && i * j > biggestPalindrome)
        {
          biggestPalindrome = i * j;
          NSLog(@"%ld is a palindrome...", biggestPalindrome);
        }
    NSLog(@"The answer is: %ld", biggestPalindrome);
  }
  return 0;
}

