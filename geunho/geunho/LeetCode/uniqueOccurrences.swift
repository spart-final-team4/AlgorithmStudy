//
//  uniqueOccurrences.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func uniqueOccurrences(_ arr: [Int]) -> Bool {
//    let setNums = Set(arr)
//            var count = 0
//            
//            for num in setNums {
//                let newCount = arr.filter { $0 == num }.count
//                if count == newCount {
//                    return false
//                }
//                count = newCount
//            }
//            return true
    let numSet = Set(arr)
    var countSet = Set<Int>()

    for num in numSet {
        let count = arr.filter { $0 == num }.count
        countSet.insert(count)
    }
    return numSet.count == countSet.count
}


func uniqueOccurrences1(_ arr: [Int]) -> Bool {
    var dict = [Int : Int]()
    
    for val in arr {
        dict[val, default: 0] += 1
    }
//    print(dict.count, dict.values.count, Set(dict.values), Set(dict.keys))
    return dict.count == Set(dict.values).count
}
