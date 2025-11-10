//
//  mergeAlternately.swift
//  geunho
//
//  Created by 정근호 on 10/28/25.
// https://leetcode.com/problems/merge-strings-alternately/?envType=study-plan-v2&envId=leetcode-75

import Foundation

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    
    for (c1, c2) in zip(word1, word2) {
        result += [c1, c2]
//        print(type(of: [c1, c2]))
    }
    
    if word1.count < word2.count {
        result += word2[word1.endIndex...]
    } else {
        result += word1[word2.endIndex...]
    }
    
//    print(type(of: result))
    
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
