//
//  findMaxAverage.swift
//  geunho
//
//  Created by 정근호 on 11/7/25.
//  https://leetcode.com/problems/maximum-average-subarray-i/description/

import Foundation

func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
//    var maxAvg = 0
//    if nums.count == k {
//        return Double(nums.reduce(0, +)) / Double(k)
//    }
//    for i in 0..<nums.count-k {
//        if maxAvg < nums[i..<i+k].reduce(0, +) {
//            maxAvg = nums[i..<i+k].reduce(0, +)
//        }
//        print(maxAvg)
//    }
//
//    return Double(maxAvg) / Double(k)

    var currentSum = 0
    for i in 0..<k {
        currentSum += nums[i] // k까지만의 합
    }
//    var currentSum1 = nums[0..<k].reduce(0, +)
//    var maxSum = 0 -> 0이 아닌 currentSum 저장, 예를들어 원소가 1일 때 바로 리턴을 하게되는데 그럼 0이 리턴
    var maxSum = currentSum
    for i in k..<nums.count {
        currentSum = currentSum - nums[i-k] + nums[i]
        maxSum = max(maxSum, currentSum)
    }
    return Double(maxSum) / Double(k)
}
