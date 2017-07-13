//
//  main.swift
//  Euler24
//
//  Created by Ghislain Leblanc on 2015-11-23.
//  Copyright © 2015 Ghislain Leblanc. All rights reserved.
//

import Foundation

func findPermutations(permutation: Array<String>, chars: Array<String>) {
    if (permutation.count == 10) {
        if (++permutationsCounter == 1000000) {
            var stringPermutation = ""
            for (character) in permutation {
                stringPermutation += character
            }
            print("The answer is: \(stringPermutation)")
            exit(0)
        }
    } else {
        var ctr = 0
        for (character) in chars {
            var newChars = chars
            newChars.removeAtIndex(ctr++)
            findPermutations(permutation + [character], chars: newChars)
        }
    }
}

var permutationsCounter = 0
findPermutations([], chars: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"])
