//
//  Array 1.swift
//  geunho
//
//  Created by 정근호 on 11/27/25.
//

import Foundation

func getConcatenation(_ nums: [Int]) -> [Int] {
    return nums + nums
}

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    
//    let nums1 = nums[0..<n] // ArraySlice
//    let nums2 = nums[n..<nums.count] // ArraySlice
    // ArraySlice를 명시적으로 Array 타입으로 변환해야함!
    let nums1 = Array(nums[0..<n])
    let nums2 = Array(nums[n..<nums.count])
    var answer = [Int]()

    for i in 0..<n {
        answer.append(nums1[i])
        answer.append(nums2[i])
    }

    return answer
}

func shuffle1(_ nums: [Int], _ n: Int) -> [Int] {
    let nums1 = nums[0..<n]
    let nums2 = nums[n..<nums.count]
    let zipped = zip(nums1, nums2)
    
    let answer = zipped.flatMap { [$0, $1] } // (x, y) -> [x, y] 변환 필요

    return answer
}

func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxCount = 0
    var currentCount = 0

    for num in nums {
        if num == 1 {
            currentCount += 1
        } else {
            currentCount = 0
        }
        maxCount = max(maxCount, currentCount)
    }
    
    return maxCount
}


