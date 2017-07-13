//
//  main.m
//  Euler67
//
//  Created by Ghislain Leblanc on 2015-11-03.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *content = [NSString stringWithContentsOfFile:@"/Users/ghislainleblanc/Documents/Euler/Euler67/Euler67/p067_triangle.txt"
                                                      encoding:NSUTF8StringEncoding
                                                         error:NULL];
        NSArray *parsedArray = [content componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        int index = 0;
        int grid[100][100] = {};
        for (int i = 0; i <= 99; i++) {
            for (int j = 99 - i; j <= 99; j++) {
                NSString *stringNum = parsedArray[index++];
                grid[i][j] = [stringNum intValue];
            }
        }
        
        for (int i = 1; i <= 99; i++) {
            for (int j = 99 - i; j <= 99; j++) {
                if (j + i == 99)
                    grid[i][j] += grid[i - 1][j + 1];
                else if (j == 99)
                    grid[i][j] += grid[i - 1][j];
                else {
                    int leftSum = grid[i][j] + grid[i - 1][j];
                    int rightSum = grid[i][j] + grid[i - 1][j + 1];
                    if (leftSum >= rightSum)
                        grid[i][j] = leftSum;
                    else
                        grid[i][j] = rightSum;
                }
            }
        }
        
        int max = 0;
        for (int i = 0; i <= 99; i++)
            if (grid[99][i] > max)
                max = grid[99][i];
        
        NSLog(@"The answer is: %i", max);
    }
    return 0;
}
