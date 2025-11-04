//
//  reverseVowels.swift
//  geunho
//
//  Created by 정근호 on 11/4/25.
//

import Foundation

func reverseVowels(_ s: String) -> String {
    let vowels = ["a", "e", "i", "o", "u"]
    var vowelArr = [Character]()
    var sArr = Array(s)
    
    for i in 0..<sArr.count {
        if vowels.contains(sArr[i].lowercased()) {
            vowelArr.append(sArr[i])
        }
    }
    for i in 0..<sArr.count {
        if vowels.contains(sArr[i].lowercased()) {
            if !vowelArr.isEmpty {
                sArr[i] = vowelArr.popLast()!
            } else {
                break
            }
        }
    }
    return String(sArr)
}

// MARK: - 모범답안
/// Tow Pointer 사용
func reverseVowelTwoPointer(_ s: String) -> String {
    // Set으로 O(1) 검색
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var sArr = Array(s)
    var left = 0
    var right = sArr.count - 1
    
    while left < right {
        // 왼쪽에서 모음 찾기
        while left < right && !vowels.contains(sArr[left]) {
            left += 1
        }
        
        // 오른쪽에서 모음 찾기
        while left < right && !vowels.contains(sArr[right]) {
            right -= 1
        }
        
        // 모음끼리 교환
        if left < right {
            sArr.swapAt(left, right)
            left += 1
            right -= 1
        }
    }
    
    return String(sArr)
}

