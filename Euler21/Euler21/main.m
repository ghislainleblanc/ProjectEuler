//
//  main.m
//  Euler21
//
//  Created by Ghislain Leblanc on 2015-11-03.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

#import <Foundation/Foundation.h>

int properSum(int n) {
    int sum = 0;
    for (int i = 1; i <= n/2; i++)
        if (n % i == 0)
            sum += i;
            
    return sum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int amicablesSum = 0;
        for (int i = 1; i < 10000; i++) {
            int sum = properSum(i);
            if (i != sum && properSum(sum) == i)
                amicablesSum += i;
        }
        
        NSLog(@"The answer is: %i", amicablesSum);
    }
    return 0;
}
