//
//  canPlaceFlowers.swift
//  geunho
//
//  Created by 정근호 on 11/4/25.
//  https://leetcode.com/problems/can-place-flowers/?envType=study-plan-v2&envId=leetcode-75

import Foundation

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    let bedCount = flowerbed.count
    var flowerbed = flowerbed
    var n = n
    if n == 0 {
        return true
    }
    if bedCount == 1 {
        if flowerbed[0] == 0 && n == 1 {
            return true
        } else {
            return false
        }
    }
    if flowerbed[0] == 0 && flowerbed[1] == 0 {
        flowerbed[0] = 1
        n -= 1
    }
    for i in 1..<bedCount-1 {
        if flowerbed[i-1] == 0 && flowerbed[i+1] == 0 && flowerbed[i] == 0{
            flowerbed[i] = 1
            n -= 1
        }
    }
    if flowerbed[bedCount-1] == 0 && flowerbed[bedCount-2] == 0 {
        flowerbed[bedCount-1] = 1
        n -= 1
    }
    
    return n <= 0 ? true : false
}

// MARK: - 모범답안
func canPlaceFlowers1(_ flowerbed: [Int], _ n: Int) -> Bool {
    var count = 0
    var flowerbed = flowerbed
    for i in 0..<flowerbed.count {
        if flowerbed[i] == 0 {
            let isEmptyLeft = (i == 0) || (flowerbed[i-1] == 0)
            let isEmptyRight = (i == flowerbed.count-1) || (flowerbed[i+1] == 0)
            
            if isEmptyLeft && isEmptyRight {
                flowerbed[i] = 1
                count += 1
                if count >= n {
                    return true
                }
            }
        }
    }
    return count >= n
}
