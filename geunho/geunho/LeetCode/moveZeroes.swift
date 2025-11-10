//
//  moveZeroes.swift
//  geunho
//
//  Created by 정근호 on 11/5/25.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
//    // 순서 보장 안됨!
//    if nums.count == 0 {
//        print(nums)
//    }
//    let zeroCount = nums.filter { $0 == 0 }.count
//    var movedCount = 0
//    for i in 0..<nums.count {
//        if zeroCount == movedCount {
//            break
//        }
//        if nums[i] == 0 {
//            let nonZeroEndIndex = nums.endIndex-1-movedCount
//            print(nonZeroEndIndex)
//            nums.swapAt(i, nonZeroEndIndex)
//            print(nums)
//            movedCount += 1
//        }
//    }
//    print(nums)
    
    var writeIndex = 0
    
    for readIndex in 0..<nums.count {
        if nums[readIndex] != 0 {
            nums[writeIndex] = nums[readIndex]
            writeIndex += 1
        }
    }
    
    for i in writeIndex..<nums.count {
        nums[i] = 0
    }
    print(nums)
}

func moveZeroes1(_ nums: inout [Int]) {
    var writeIndex = 0
    for readIndex in 0..<nums.count {
        if nums[readIndex] != 0 {
            nums.swapAt(writeIndex, readIndex)
            writeIndex+=1
        }
    }
    print(nums)
}


