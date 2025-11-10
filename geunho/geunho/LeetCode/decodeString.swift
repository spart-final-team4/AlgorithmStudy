//
//  decodeString.swift
//  geunho
//
//  Created by 정근호 on 11/10/25.
//

import Foundation

func decodeString(_ s: String) -> String {
    var alphaStack = [String]()
    var digitStack = [Int]()
    var currentAlpha = String()
    var currentDigit = Int()

//    for ch in s {
//        
//        if let digit = Int(String(ch)) {
//            digitStack.append(digit)
//        } else if ch == "]" {
//            let alpha = alphaStack.removeLast()
//            let digit = digitStack.removeLast()
//            for i in 0..<digit {
//                result.append(alpha)
//            }
//        } else if ch != "[" {
//            alphaStack.append(String(ch))
//        }
//    }
    
    for ch in s {
        if ch == "[" {
            digitStack.append(currentDigit)
            alphaStack.append(currentAlpha)
            currentDigit = 0
            currentAlpha = ""
        } else if ch == "]" {
            let alpha = alphaStack.removeLast()
            let num = digitStack.removeLast()
            currentAlpha = alpha + String(repeating: currentAlpha, count: num)
        } else if let digit = Int(String(ch)) {
            currentDigit = currentDigit * 10 + digit
        } else {
            currentAlpha.append(String(ch))
        }
    }
    
    return currentAlpha
}
