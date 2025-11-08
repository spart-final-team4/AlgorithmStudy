//
//  longestSubarray.swift
//  geunho
//
//  Created by 정근호 on 11/8/25.
//

import Foundation

func longestSubarray(_ nums: [Int]) -> Int {
    
//    var maxCount = 0
//    var left = 0
//    var zeroCount = 0
//    for i in 0..<nums.count {
//        if nums[i] == 0 {
//            zeroCount += 1
//        }
//        if zeroCount == 2 {
//            let oneCount = nums[left...i].reduce(0, +)
//            maxCount = max(maxCount, oneCount)
//            left = i
//            zeroCount -= 1
//        } else if i == nums.count-1  {
//            maxCount = nums[left...i].reduce(0, +)
//        }
//    }
//    return maxCount
    
    var zeroCount = 0
    var maxCount = 0
    var left = 0
    
    for i in 0..<nums.count {
        if nums[i] == 0 {
            zeroCount += 1
        }
        while zeroCount >= 2 {
            if nums[left] == 0 {
                zeroCount -= 1
            }
            left += 1
        }
        maxCount = max(maxCount, i-left)
    }
    return maxCount
}
