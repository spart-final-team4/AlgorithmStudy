//
//  removeStars.swift
//  geunho
//
//  Created by 정근호 on 11/9/25.
//

import Foundation

func removeStars(_ s: String) -> String {
    let s = Array(s)
    var result = ""
    
    for i in 0..<s.count {
        if s[i] == "*" {
            result.popLast()
        } else {
            result.append(s[i])
        }
    }
    return result
}


func removeStars1(_ s: String) -> String {
    s.reduce(into: "") { result, ch in
        if ch == "*" {
            result.removeLast()
        } else {
            result.append(ch)
        }
    }
}
