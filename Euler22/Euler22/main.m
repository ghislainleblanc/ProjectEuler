//
//  main.m
//  Euler22
//
//  Created by Ghislain Leblanc on 2015-11-13.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *fileContent = [NSString stringWithContentsOfFile:@"/Users/ghislainleblanc/Documents/Euler/Euler22/Euler22/p022_names.txt" encoding:NSUTF8StringEncoding error:nil];
        NSMutableArray *names = [fileContent componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@","]].mutableCopy;
        
        for (int i = 0; i < names.count; i++) {
            NSString *name = names[i];
            name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\""]];
            names[i] = name;
        }
            
        NSArray *sortedArray = [names sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
        
        unsigned long long sum = 0;
        for (int j = 0; j < sortedArray.count; j++) {
            NSString *name = sortedArray[j];
            int sumName = 0;
            for (int i = 0; i < name.length; i++) {
                unichar letter = [name characterAtIndex:i];
                sumName += letter - 64;
            }
            sumName *= j + 1;
            sum += sumName;
        }
        
        NSLog(@"The answer is: %llu", sum);
    }
    return 0;
}
