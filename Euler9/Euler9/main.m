//
//  main.m
//  Euler9
//
//  Created by Ghislain Leblanc on 2014-09-18.
//  Copyright (c) 2014 Ghisla.in. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
  @autoreleasepool
  {
    for (int i = 1; i <= 1000; i++)
      for (int j = i; j <= 1000; j++)
        for (int k = j; k <= 1000; k++)
          if (i < j < k && i + j + k == 1000 && (i * i) + (j * j) == (k * k))
            NSLog(@"The answer is: %d", i * j * k);
  }
  return 0;
}
