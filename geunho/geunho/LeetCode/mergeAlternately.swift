//
//  mergeAlternately.swift
//  geunho
//
//  Created by 정근호 on 10/28/25.
// https://leetcode.com/problems/merge-strings-alternately/?envType=study-plan-v2&envId=leetcode-75

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""

    let count = max(word1.count, word2.count)

    for i in 0...count {
        if i < word1.count {
            let index1 = word1.index(word1.startIndex, offsetBy: i)
            result.append(word1[index1])
        }
        if i < word2.count {
            let index2 = word2.index(word2.startIndex, offsetBy: i)
            result.append(word2[index2])
        }
    }
    
    return result
}


/// 모범답안
///
/// .zip(): 두 개의 시퀀스를 하나씩 묶어서 짝지어 튜플 반환
/// String에 Character 배열을 +로 추가 가능
func mergeAlternately2(_ word1: String, _ word2: String) -> String {
    var result = ""
    
    for (ch1, ch2) in zip(word1, word2) {
        result += [ch1, ch2]
        print([ch1, ch2])
        print(type(of: ch1))
        print(type(of: [ch1, ch2]))
    }
    
    if word1.count < word2.count {
        result += word2[word1.endIndex...]
    } else {
        result += word1[word2.endIndex...]
    }
    
    return result
}
