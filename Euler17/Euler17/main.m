//
//  main.m
//  Euler17
//
//  Created by Ghislain Leblanc on 2014-10-03.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#define One 3
#define Two 3
#define Three 5
#define Four 4
#define Five 4
#define Six 3
#define Seven 5
#define Eight 5
#define Nine 4
#define Ten 3
#define Eleven 6
#define Twelve 6
#define Thirteen 8
#define Fourteen 8
#define Fifteen 7
#define Sixteen 7
#define Seventeen 9
#define Eighteen 8
#define Nineteen 8
#define Twenty 6
#define Thirty 6
#define Forty 5
#define Fifty 5
#define Sixty 5
#define Seventy 7
#define Eighty 6
#define Ninety 6
#define Hundred 7
#define Thousand 8
#define And 3

unsigned int spell(int num)
{
  if (num <= 20)
    switch (num)
    {
      case 1: return One;
      case 2: return Two;
      case 3: return Three;
      case 4: return Four;
      case 5: return Five;
      case 6: return Six;
      case 7: return Seven;
      case 8: return Eight;
      case 9: return Nine;
      case 10: return Ten;
      case 11: return Eleven;
      case 12: return Twelve;
      case 13: return Thirteen;
      case 14: return Fourteen;
      case 15: return Fifteen;
      case 16: return Sixteen;
      case 17: return Seventeen;
      case 18: return Eighteen;
      case 19: return Nineteen;
      case 20: return Twenty;
    }
  
  if (num == 30)
    return Thirty;
  
  if (num == 40)
    return Forty;
  
  if (num == 50)
    return Fifty;

  if (num == 60)
    return Sixty;
  
  if (num == 70)
    return Seventy;
  
  if (num == 80)
    return Eighty;
  
  if (num == 90)
    return Ninety;
  
  if (num == 100)
    return One + Hundred;
  
  if (num == 1000)
    return One + Thousand;
  
  if (num > 100)
  {
    if (num % 100 != 0)
      return spell(num / 100) + Hundred + And + spell(num % 100);
    else
      return spell(num / 100) + Hundred;
  }
  
  if (num > 10)
    return spell(num - num % 10) + spell(num % 10);

  return 0;
}

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    unsigned int totalLetters = 0;
    for (int i = 1; i <= 1000; i++)
      totalLetters += spell(i);
    
    NSLog(@"The answer is: %d", totalLetters);
  }
  
  return 0;
}
