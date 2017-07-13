//
//  main.swift
//  Euler23
//
//  Created by Ghislain Leblanc on 2015-11-20.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

import Foundation

func isAbundant(num: UInt) -> Bool {
    var sum: UInt = 0
    for (var i: UInt = 1; i <= num / 2; ++i) {
        if (num % i == 0) {
            sum += i
        }
    }
    
    return sum > num
}

var abundantNumbers: Set<UInt> = Set()

for (var i: UInt = 1; i <= 28123; ++i) {
    if (isAbundant(i)) {
        abundantNumbers.insert(i)
    }
}

var abundantSums: Set<UInt> = Set()

for (var i: UInt = 0; i <= 28123; ++i) {
    for (var j: UInt = i; j <= 28123; ++j) {
        if (i + j <= 28123 && abundantNumbers.contains(i) && abundantNumbers.contains(j)) {
            abundantSums.insert(i + j)
        }
    }
}

var sum: UInt = 0
for (var i: UInt = 1; i <= 28123; ++i) {
    if (!abundantSums.contains(i)) {
        sum += i
    }
}
print("The answer is: \(sum)")
