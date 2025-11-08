//
//  maxVowels.swift
//  geunho
//
//  Created by 정근호 on 11/8/25.
//

import Foundation

//func maxVowels(_ s: String, _ k: Int) -> Int {
//    let s = Array(s)
//    var currentCount = isVowelCounting(s[0..<k])
//    var maxCount = currentCount
//    for i in k...s.count {
//        currentCount = isVowelCounting(s[i-k..<i])
//        maxCount = max(maxCount, currentCount)
//    }
//    return maxCount
//}
//
//func isVowelCounting(_ s: ArraySlice<Character>) -> Int {
//    let vowels = ["a","e","i","o","u"]
//    var count = 0
//    for ch in s {
//        if vowels.contains(String(ch)) {
//            count += 1
//        }
//    }
//    return count
//}


func maxVowels(_ s: String, _ k: Int) -> Int {
    
    let isVowelArray = s.map { ["a","e","i","o","u"].contains($0) ? 1 : 0 }
    var count = isVowelArray.prefix(k).reduce(0, +)
    if isVowelArray.count <= k { return count }
    var maxCount = count
    for i in k..<isVowelArray.count {
        count = count - isVowelArray[i-k] + isVowelArray[i]
        maxCount = max(maxCount, count)
    }
    
    return maxCount
}

func maxVowels1(_ s: String, _ k: Int) -> Int {
    let s = Array(s)
    let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
    
    // 첫 번째 윈도우 모음 개수
    var currentCount = 0
    for i in 0..<k {
        if vowels.contains(s[i]) {
            currentCount += 1
        }
    }
    
    // 첫 윈도우를 최댓값으로 초기화
    var maxCount = currentCount
    
    // 슬라이딩 윈도우
    for i in k..<s.count {
        if vowels.contains(s[i-k]) {
            currentCount -= 1
        }
        if vowels.contains(s[i]) {
            currentCount += 1
        }
        maxCount = max(maxCount, currentCount)
    }
    
    return maxCount
}
