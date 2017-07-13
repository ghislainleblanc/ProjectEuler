//
//  main.m
//  Euler14
//
//  Created by Ghislain Leblanc on 2014-09-30.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Collatz : NSObject
+ (NSArray *)collatzForNum:(unsigned long)num;
@end

@implementation Collatz

+ (NSArray *)collatzForNum:(unsigned long)num
{
  NSMutableArray *sequence = [NSMutableArray arrayWithCapacity:500];
  
  do
  {
    if (num % 2 == 0)
    {
      [sequence addObject:[NSNumber numberWithUnsignedLong:num / 2]];
      num = num / 2;
    }
    else
    {
      [sequence addObject:[NSNumber numberWithUnsignedLong:3 * num + 1]];
      num = 3 * num + 1;
    }
  } while (num > 1);
  
  return sequence;
}

@end


int main(int argc, const char * argv[]) {
  @autoreleasepool {
    unsigned long max = 0;
    unsigned long num = 0;
    
    for (unsigned long i = 999999; i >= 1; i--)
    {
      NSArray *sequenece = [Collatz collatzForNum:i];
      if (sequenece.count > max)
      {
        max = sequenece.count;
        num = i;
      }
    }
    
    NSLog(@"Collatz for %lu is %@", num, [Collatz collatzForNum:num]);
    NSLog(@"The answer is: %lu", num);
  }
  
  return 0;
}
