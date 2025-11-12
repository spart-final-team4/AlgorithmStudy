//
//  compress.swift
//  geunho
//
//  Created by 정근호 on 11/12/25.
//

import Foundation

func compress(_ chars: inout [Character]) -> Int {
    
//    let charArr = Array(chars)
//    var result = [Character]()
//    var index = 0
    
//    if chars.count == 1 {
//        return chars.count
//    }
//    
//    for i in 1..<charArr.count {
//        if charArr[i] != charArr[i-1] || i == charArr.count-1 {
//            result.append(charArr[i-1])
//            let count = charArr[index...i].count { $0 == charArr[i-1] }
//            if count > 1 {
//                result.append(contentsOf: String(count))
//            }
//            index = i
//        }
//    }
    
    var result = [Character]()
    var index = 0
    
    if chars.count == 1 { return 1}
    
    for i in 1..<chars.count {
        if chars[i] != chars[i-1] {
            result.append(chars[i-1])
            let count = i-index
            if count > 1 {
                result.append(contentsOf: String(count))
            }
            index = i
        }
    }
    
    result.append(chars[chars.count-1])
    let count = chars.count - index
    if count > 1 {
        result.append(contentsOf: String(count))
    }
    
    print(result)
    chars = result
    return result.count
}


func compress1(_ chars: inout [Character]) -> Int {
    var (i, res) = (0, 0)
    
    while i < chars.count {
        var groupLength = 1
        
        // 같은 문자가 계속되는 동안 카운트
        while i + groupLength < chars.count
              && chars[i + groupLength] == chars[i] {
            groupLength += 1
        }
        
        // 문자 쓰기
        chars[res] = chars[i]
        res += 1
        
        // 개수가 2개 이상이면 숫자 쓰기
        if groupLength > 1 {
            // 문자열의 각 문자 순회
            // 예) groupLength == 12일 때 String으로 변환 후 하나 씩 처리
            for digit in String(groupLength) {
                chars[res] = digit
                res += 1
            }
        }
        
        i += groupLength
    }
    
    return res
}
