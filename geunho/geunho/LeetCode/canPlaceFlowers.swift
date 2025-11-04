//
//  canPlaceFlowers.swift
//  geunho
//
//  Created by 정근호 on 11/4/25.
//

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
