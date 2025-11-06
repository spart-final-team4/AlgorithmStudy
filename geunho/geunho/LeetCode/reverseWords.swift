//
//  reverseWords.swift
//  geunho
//
//  Created by 정근호 on 11/6/25.
//

import Foundation

func reverseWords(_ s: String) -> String {
    var words = s.split(separator: " ")
    words.reverse()
    let reversedWords = words.joined(separator: " ")
    return reversedWords
}
