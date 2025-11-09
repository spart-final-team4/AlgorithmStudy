//
//  pivotIndex.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func pivotIndex(_ nums: [Int]) -> Int {
    for i in 1..<nums.count-1 {
        let leftSum = nums.prefix(i).reduce(0, +)
        let rightSum = nums.suffix(nums.count-1-i).reduce(0,+)
        if leftSum == rightSum {
            return i
        }
    }
    return -1
}

func pivotIndex1(_ nums: [Int]) -> Int {
    let totalSum = nums.reduce(0, +)
    var leftSum = 0
    
    for (i, num) in nums.enumerated() {
        if leftSum == totalSum - leftSum - num {
            return i
        }
        leftSum += num
    }
    return -1
}
