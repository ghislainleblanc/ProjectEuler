//
//  main.swift
//  Euler25
//
//  Created by Ghislain Leblanc on 2015-11-26.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

import Foundation

var dynFib: Array<BigInt> = []

func fib(let n: BigInt) -> BigInt {
    if (n < dynFib.count) {
        return dynFib[n.toInt()]
    }
    
    if(n == 0) {
        return BigInt(intNr: 0)
    }
    if(n == 1) {
        return BigInt(intNr: 1)
    }
    
    return fib(n - 1) + fib(n - 2);
}

var n: BigInt = BigInt()
var ctr: BigInt = BigInt(intNr: 0)
while (n.toString().lengthOfBytesUsingEncoding(NSUTF8StringEncoding) < 1000) {
    n = fib(ctr)
    dynFib.append(n)
    ctr = ctr + 1
}

print("The answer is: \(ctr.toInt() - 1)")


