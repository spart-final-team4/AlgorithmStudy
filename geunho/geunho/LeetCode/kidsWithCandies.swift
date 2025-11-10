//
//  kidsWithCandies.swift
//  geunho
//
//  Created by 정근호 on 11/3/25.
//

import Foundation

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let count = candies.count
    var result = Array(repeating: false, count: count)
    let greatest = candies.max()!
    
    for i in 0..<count {
        if candies[i] + extraCandies >= greatest {
            result[i] = true
        }
    }
    
    return result
}
