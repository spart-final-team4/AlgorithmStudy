//
//  longestOnes.swift
//  geunho
//
//  Created by 정근호 on 11/8/25.
//

import Foundation

func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var zeroCount = 0
    var maxCount = 0
    var left = 0
    for i in 0..<nums.count {
        if nums[i] == 0 {
            zeroCount += 1
        }
        if zeroCount > k {
            left += 1
            if nums[left-1] == 0 {
                zeroCount -= 1
            }
        }
        if zeroCount <= k {
            maxCount = i - left + 1
        }
    }
    return maxCount
}

