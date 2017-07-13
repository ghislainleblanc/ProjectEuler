//
//  main.m
//  Euler20
//
//  Created by Ghislain Leblanc on 2015-11-03.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JKBigInteger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        JKBigInteger *factorial = [[JKBigInteger alloc] initWithUnsignedLong:1000];
        for (int i = 999; i >= 1; i--)
            factorial = [factorial multiply:[[JKBigInteger alloc] initWithUnsignedLong:i]];
        
        NSString *factorialString = factorial.description;
        
        unsigned long long sum = 0;
        for (int i = 0; i < factorialString.length; i++) {
            unichar charAtIndex = [factorialString characterAtIndex:i];
            NSString *charString = [NSString stringWithFormat:@"%C", charAtIndex];
            sum += charString.intValue;
        }
        
        NSLog(@"The answer is: %llu", sum);
    }
    return 0;
}
