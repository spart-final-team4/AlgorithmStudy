//
//  isSubsequence.swift
//  geunho
//
//  Created by 정근호 on 11/7/25.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var sIndex = 0
    
    if s.isEmpty { return true }
    
    for ch in t {
        if ch == s[s.index(s.startIndex, offsetBy: sIndex)] {
            if sIndex == s.count - 1 {
                return true
            }
            sIndex += 1
        }
    }
    return false
}


func isSubsequence1(_ s: String, _ t: String) -> Bool {
    let sArray = Array(s)
    var index = 0

    for char in t {
        guard index < sArray.count, sArray[index] == char else { continue }
        index += 1
    }
    return index == sArray.count
}
