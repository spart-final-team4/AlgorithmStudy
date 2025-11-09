//
//  findDifference.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func findDifference(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
      
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    
    let subtract1 = set1.subtracting(set2)
    let subtract2 = set2.subtracting(set1)
    
    return [Array(subtract1), Array(subtract2)]
}


func findDifference1(_ nums1: [Int], _ nums2: [Int]) -> [[Int]] {
    
    var result = Array(repeating: [Int](), count: 2)
    
    let set1 = Set(nums1)
    let set2 = Set(nums2)
    
    for num in set1 {
        if !set2.contains(num) {
            result[0].append(num)
        }
    }
    
    for num in set2 {
        if !set1.contains(num) {
            result[1].append(num)
        }
    }
    
    return result
    
}
