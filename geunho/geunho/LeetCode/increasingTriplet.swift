//
//  increasingTriplet.swift
//  geunho
//
//  Created by 정근호 on 11/6/25.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
//    var count = 3
//
//    for i in 0..<nums.count-1 {
//        if nums[i] < nums[i+1] {
//            count -= 1
//        } else {
//            count = 3
//        }
//        print(nums[i], count)
//        if count <= 1 { return true }
//    }
//    return false
    
    var (small, mid) = (Int.max, Int.max)
    
    for n in nums {
        if n <= small {
            small = n
        } else if n <= mid {
            mid = n
        } else {
            return true
        }
    }
    return false
}
