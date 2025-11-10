//
//  gcdOfStrings.swift
//  geunho
//
//  Created by 정근호 on 11/2/25.
//

import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    let len1 = str1.count
    let len2 = str2.count
    let baseCount = min(len1, len2)

    func valid(k: Int) -> Bool {
        // 1. 길이 체크: k가 len1, len2를 모두 나누는지 확인
        if (len1 % k != 0) || (len2 % k != 0) {
            return false
        }
        
        // 2. 반복 체크
        let n1 = len1 / k
        let n2 = len2 / k
        
        // 공통 분할 문자열 (k 길이)
        let base = String(str1.prefix(k))
        
        // n1번 반복한 문자열이 str1과 같은지, n2번 반복한 문자열이 str2와 같은지 확인
        let repeatedStr1 = String(repeating: base, count: n1)
        let repeatedStr2 = String(repeating: base, count: n2)
        
        return (str1 == repeatedStr1) && (str2 == repeatedStr2)
    }

    // 가장 긴 길이부터 1까지 검사
    for k in stride(from: baseCount, through: 1, by: -1) {
        if valid(k: k) {
            // 가장 긴 공통 분할 문자열을 찾았으므로 바로 반환
            return String(str1.prefix(k))
        }
    }

    // 공통 분할 문자열이 없으면 빈 문자열 반환
    return ""
}

/// 순수 gcd 이용
func gcdOfStrings1(_ str1: String, _ str2: String) -> String {
    if str1 + str2 != str2 + str1 {
        return ""
    }
    
    /// 유클리드 호제법으로 최대공약수 구하기
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        } else {
        return gcd(y, x % y)
        }
    }

    let gcdLength = gcd(str1.count, str2.count)
    return String(str1.prefix(gcdLength))
}
