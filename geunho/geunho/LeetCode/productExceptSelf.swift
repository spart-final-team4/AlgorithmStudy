//
//  productExceptSelf.swift
//  geunho
//
//  Created by 정근호 on 11/6/25.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    // 시간초과!
//    var result = [Int]()
//    for i in 0..<nums.count {
////        nums[i] = nums[0..<i].map { $0 * $1 } + nums[i..<num.count].map { $0 * $1 }
//        print(nums[0..<i], nums[i+1..<nums.count])
//        let leftProduct = nums[0..<i].reduce(1, *)
//        let rightProduct = nums[i+1..<nums.count].reduce(1, *)
//        result.append((leftProduct*rightProduct))
//    }
//    return result
    
    var prefix = Array(repeating: 1, count: nums.count)
    var suffix = Array(repeating: 1, count: nums.count)
    var result = Array(repeating: 0, count: nums.count)
    
    for i in 1..<nums.count {
        prefix[i] = prefix[i-1] * nums[i-1]
        print("이전 요소들 곱", prefix)
    }
    
    for i in (0..<nums.count-1).reversed() {
        suffix[i] = suffix[i+1] * nums[i+1]
        print("이후 요소들 곱", suffix)
    }
    
    for i in 0..<nums.count {
        result[i] = prefix[i] * suffix[i]
    }
    
    return result
    
}
